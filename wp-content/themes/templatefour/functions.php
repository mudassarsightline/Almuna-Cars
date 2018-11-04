<?php
# Some config
define('DUBICARS_ID', 'sharjah-al-muna-used-cars-exhibition-839');
define('SERP_SLUG', 'our-cars');

define('IFRAME_HSHSC', 'hs=' . urlencode(home_url('/')) . '&hsc=' . md5('hsc == ' . urlencode(home_url('/'))));
define('IFRAME_CBCBC', 'cb=' . urlencode(home_url('/')) . SERP_SLUG . '&cbc=' . md5('cbc == ' . urlencode(home_url('/') . SERP_SLUG)));

define('IFRAME_SERP', 'https://www.dubicars.com/' . DUBICARS_ID . '?iframe=serp&dealerlayout&t=1&fullwidth=1&view=grid&' . IFRAME_HSHSC);
define('IFRAME_SEARCH', 'https://www.dubicars.com/' . DUBICARS_ID . '?iframe=search&dealerlayout&t=1&fullwidth=1&h=1&noprice=0&nokm=1&sb=v&view=grid&tfont=1&' . IFRAME_CBCBC . '&' . IFRAME_HSHSC);
define('IFRAME_RECENT', 'https://www.dubicars.com/' . DUBICARS_ID . '?iframe=recent&dealerlayout&t=1&fullwidth=1&view=grid&latest&limit=6&' . IFRAME_CBCBC . '&' . IFRAME_HSHSC);

# More config
define('RECAPTCHA_SITE_KEY', false);
define('RECAPTCHA_SECRET', false);
define('DISQUS_SHORTNAME', false);
define('GOOGLE_ANALYTICS', false);

# Register our CSS and JS - parent Sleek doesn't register anything
add_action('wp_enqueue_scripts', 'templatefour_register_css_js');

function templatefour_register_css_js () {
	# Theme Head/Foot JS
	if (WP_DEBUG) {
		wp_register_script('templatefour_foot', get_stylesheet_directory_uri() . '/js/foot.php', array(), null, true);
	}
	else {
		wp_register_script('templatefour_foot', get_stylesheet_directory_uri() . '/js/foot.js', array(), filemtime(get_stylesheet_directory() . '/js/foot.js'), true);
	}

	wp_enqueue_script('templatefour_foot');

	# Theme CSS
	wp_register_style('templatefour', get_stylesheet_directory_uri() . '/css/all.css', array(), filemtime(get_stylesheet_directory() . '/css/all.css'));
	wp_enqueue_style('templatefour');

	# Fonts
	wp_register_style('google_font', '//fonts.googleapis.com/css?family=Raleway:300,500,700', array(), 1);
	wp_enqueue_style('google_font');

	# Google Maps
	wp_register_script('google_maps', 'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBPmFuKltNQP0KAmgWJZH1yyDBMNS4rPMQ');
	wp_enqueue_script('google_maps');
}

# Thumbnails sizes
# add_action('init', 'templatefour_post_thumbnails');

function templatefour_post_thumbnails () {
	add_image_size('sleek-child-small', 120, 120, true);
	add_image_size('sleek-child-hd', 1920, 1080, true);
}

# Sidebars
add_action('init', 'templatefour_register_sidebars');

function templatefour_register_sidebars () {
	sleek_register_sidebars(array(
		'aside'		=> 'Aside', 
		'header'	=> 'Header', 
		'footer'	=> 'Footer'
	));
}

# Custom post types and taxonomies
# add_action('init', 'templatefour_register_post_types');

function templatefour_register_post_types () {
	sleek_register_post_types(
		# Post types (slug => description)
		array('movies' => 'My movie collection', 'directors' => 'My favorite directors.'), 

		# Taxonomies and which post types they belong to
		array(
			'genres' => array('movies'), 
			'countries' => array('directors', 'movies')
		), 

		# Translation textdomain (for URLs)
		'templatefour'
	);
}

# Short codes
# add_action('init', 'templatefour_register_shortcodes');

function templatefour_register_shortcodes () {
	# Include - include any module through [include mod=random-testimonial]
	add_shortcode('include', 'sleek_shortcode_include_module');

	# Get Posts short code, see sleek/inc/get-posts.php for details
	# add_shortcode('get-posts', 'sleek_shortcode_get_posts');

	# MarkdownFile
	# add_shortcode('markdown-file', 'sleek_shortcode_markdown_file');
}

# Add some fields to users
# add_filter('user_contactmethods', 'templatefour_add_user_fields');

function templatefour_add_user_fields () {
	$fields['googleplus'] = __('Google+', 'sleek');
	$fields['stackoverflow'] = __('StackOverflow', 'sleek');
	$fields['github'] = __('GitHub', 'sleek');

	return $fields;
}

# Set up for translation (put your mo/po-files in your-theme/lang/ and uncomment this)
# add_action('after_setup_theme', 'templatefour_setup_lang');

function templatefour_setup_lang () {
	load_theme_textdomain('templatefour', get_stylesheet_directory() . '/lang');
}

# Cleanup HEAD
add_action('init', 'sleek_cleanup_head');

# Allow Markdown in excerpts and advanced custom fields
# add_action('init', 'sleek_more_markdown');

# Upgrade Browser warning for old versions of IE etc
# add_action('wp_head', 'sleek_register_browser_update_js');

# Show all post types when browsing author
# add_filter('pre_get_posts', 'sleek_show_all_post_types_for_author');

# Remove HOME from Yoast Breadcrumbs
# add_filter('wpseo_breadcrumb_links', 'sleek_remove_home_from_breadcrumb');

# Give pages excerpts
# add_action('init', 'sleek_add_excerpts_to_pages');

# Remo Emoji CSS/JS from head added since WP 4.2.2
add_action('init', 'sleek_remove_emoji_css_js');

# Simple Fields
add_action('init', 'templatefour_register_simple_fields');

function templatefour_register_simple_fields () {
	# Fields
	simple_fields_register_field_group('images_group', array(
		'name'			=> __('Images', 'h5b'), 
		'description'	=> __('Add any number of images to this post.', 'h5b'), 
		'repeatable'	=> true, 
		'fields'		=> array(
			array(
				'slug'			=> 'images', 
				'name'			=> __('Image', 'h5b'), 
				'type'			=> 'file'
			)
		)
	));

	# Connectors
	# Page Connector
	simple_fields_register_post_type_default('page_connector', 'page');

	simple_fields_register_post_connector('page_connector', array(
		'name'			=> __('Page Connector', 'h5b'),  
		'post_types'	=> 'page', 
		'field_groups'	=> array(
			array('slug' => 'images_group', 'context' => 'side', 'priority' => 'default')
		)
	));

	# Post Connector
	simple_fields_register_post_type_default('post_connector', 'post');

	simple_fields_register_post_connector('post_connector', array(
		'name'			=> __('Post Connector', 'h5b'),  
		'post_types'	=> 'post', 
		'field_groups'	=> array(
			array('slug' => 'images_group', 'context' => 'side', 'priority' => 'default')
		)
	));
}
