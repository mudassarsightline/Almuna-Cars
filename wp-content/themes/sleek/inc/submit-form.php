<?php
# Emails $_POST['form_data'] to admin
add_action('wp_ajax_sleek_submit_form', 'sleek_submit_form');
add_action('wp_ajax_nopriv_sleek_submit_form', 'sleek_submit_form');

function sleek_set_html_content_type () {
	return 'text/html';
}

function sleek_replace_post_vars ($str) {
	foreach ($_POST['form_data'] as $k => $v) {
		$str = str_replace('$' . $k, $v, $str);
	}

	return $str;
}

function sleek_submit_form () {
	# Store data in session for later use
	$_SESSION['form_data'] = isset($_SESSION['form_data']) ? $_SESSION['form_data'] : array();
	$_SESSION['form_data'] = array_merge($_SESSION['form_data'], $_POST['form_data']);

	# Create email HTML
	$adminEmail	= '<table>';
	$userEmail	= '<table>';

	foreach ($_POST['form_data'] as $k => $v) {
		$v = is_array($v) ? implode(', ', $v) : $v;

		if (!empty($v)) {
			$tableRow	= '<tr><th scope="row">' . __($k, 'sleek') . '</th><td>' . $v . '</td></tr>';
			$adminEmail	.= $tableRow;

			# Ignore some fields for the user's email
			if (!in_array($k, array('email_again'))) {
				$userEmail .= $tableRow;
			}
		}
	}

	# Include the user's IP
	$adminEmail .=  '<tr><th scope="row">' . __('IP', 'sleek') . '</th><td>' . $_SERVER['REMOTE_ADDR'] . '</td></tr>';

	# And referrer
	$adminEmail .=  '<tr><th scope="row">' . __('Referrer', 'sleek') . '</th><td>' . $_SERVER['HTTP_REFERER'] . '</td></tr>';

	# And user agent
	$adminEmail .=  '<tr><th scope="row">' . __('User Agent', 'sleek') . '</th><td>' . $_SERVER['HTTP_USER_AGENT'] . '</td></tr>';

	$adminEmail	.= '</table>';
	$userEmail	.= '</table>';

	# Send email to admin
	add_filter('wp_mail_content_type', 'sleek_set_html_content_type');

	$prefix		= isset($_POST['admin_email']) ? __($_POST['admin_email'], 'sleek') . '<hr>' : '';
	$prefix		= $prefix ? sleek_replace_post_vars($prefix) : $prefix;
	$subject	= sprintf(__('Email from %s', 'sleek'), get_bloginfo('name'));
	$to			= array(get_option('admin_email'));

	wp_mail($to, $subject, $prefix . $adminEmail);

	# And user
	if (isset($_SESSION['form_data']['email']) and isset($_POST['user_email'])) {
		$subject	= sprintf(__('Email from %s', 'sleek'), get_bloginfo('name'));
		$headers	= 'From: ' . get_bloginfo('name') . '<' . get_option('admin_email') . ">\r\n";
		$prefix		= sleek_replace_post_vars(__($_POST['user_email'], 'sleek') . '<hr>');

		wp_mail($_SESSION['form_data']['email'], $subject, $prefix . $userEmail, $headers);
	}

	remove_filter('wp_mail_content_type', 'sleek_set_html_content_type');

	# Clear session if form wants it
	if (isset($_POST['clear_session'])) {
		unset($_SESSION['form_data']);
	}

	# Dump data or redirect
	if (XHR) {
		echo json_encode($_POST['form_data']);
	}
	else {
		if (isset($_POST['redirect_to'])) {
			redirect($_POST['redirect_to']);
		}
		else {
			redirectToReferrer('submitted=1');
		}
	}

	die;
}
