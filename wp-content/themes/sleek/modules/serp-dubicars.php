<?php
	$url = IFRAME_SERP;

	# Specific car
	if (isset($_GET['tl'])) {
		$url = 'https://www.dubicars.com/' . $_GET['tl'] . '?' . IFRAME_HSHSC . '&dealerlayout&tlc=' . md5('tlc == ' . urlencode($_GET['tl']));
	}

	if (isset($_GET['ma'])) {
		$url .= '&' . $_SERVER['QUERY_STRING'];
	}
	
	if (isset($_GET['make'])) {
		$url .= '&ma=' . $_GET['make'];
	}
?>

<section id="serp">

	<iframe src="<?php echo $url ?>" width="100%" height="1300" scrolling="no"></iframe>

</section>
