<?php
# Some config
define('DUBICARS_ID', 'dubai-humera-automobile-fzco-322');
define('SERP_SLUG', 'our-cars');

define('IFRAME_HSHSC', 'hs=' . urlencode(home_url('/')) . '&hsc=' . md5('hsc == ' . urlencode(home_url('/'))));
define('IFRAME_CBCBC', 'cb=' . urlencode(home_url('/')) . SERP_SLUG . '&cbc=' . md5('cbc == ' . urlencode(home_url('/') . SERP_SLUG)));

define('IFRAME_SERP', 'https://www.dubicars.com/' . DUBICARS_ID . '?iframe=serp&dealerlayout&t=1&fullwidth=1&view=grid&' . IFRAME_HSHSC);
define('IFRAME_SEARCH', 'https://www.dubicars.com/' . DUBICARS_ID . '?iframe=search&dealerlayout&t=1&fullwidth=1&v=1&noprice=0&nokm=1&sb=v&' . IFRAME_CBCBC . '&' . IFRAME_HSHSC);
define('IFRAME_RECENT', 'https://www.dubicars.com/' . DUBICARS_ID . '?iframe=recent&dealerlayout&t=1&fullwidth=1&view=grid&latest&limit=3&t=1&' . IFRAME_CBCBC . '&' . IFRAME_HSHSC);

# More config
define('RECAPTCHA_SITE_KEY', false);
define('RECAPTCHA_SECRET', false);
define('DISQUS_SHORTNAME', false);
define('GOOGLE_ANALYTICS', false);

# Register our CSS and JS - parent Sleek doesn't register anything
add_action('wp_enqueue_scripts', 'templateone_register_css_js');

function templateone_register_css_js () {
	# Theme Head/Foot JS
	if (WP_DEBUG) {
		wp_register_script('templateone_foot', get_stylesheet_directory_uri() . '/js/foot.php', array(), null, true);
	}
	else {
		wp_register_script('templateone_foot', get_stylesheet_directory_uri() . '/js/foot.js', array(), filemtime(get_stylesheet_directory() . '/js/foot.js'), true);
	}

	wp_enqueue_script('templateone_foot');

	# Theme CSS
	wp_register_style('templateone', get_stylesheet_directory_uri() . '/css/all.css', array(), filemtime(get_stylesheet_directory() . '/css/all.css'));
	wp_enqueue_style('templateone');

	# Fonts
	wp_register_style('google_font', 'http://fonts.googleapis.com/css?family=Lato:300,500,700', array(), 1);
	wp_enqueue_style('google_font');

	# Google Maps
	wp_register_script('google_maps', 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false');
	wp_enqueue_script('google_maps');
}

# Thumbnails sizes
# add_action('init', 'templateone_post_thumbnails');

function templateone_post_thumbnails () {
	add_image_size('sleek-child-small', 120, 120, true);
	add_image_size('sleek-child-hd', 1920, 1080, true);
}

# Sidebars
add_action('init', 'templateone_register_sidebars');

function templateone_register_sidebars () {
	sleek_register_sidebars(array(
		'aside'		=> 'Aside', 
		'header'	=> 'Header', 
		'footer'	=> 'Footer', 
		'top'		=> 'Top'
	));
}

# Custom post types and taxonomies
# add_action('init', 'templateone_register_post_types');

function templateone_register_post_types () {
	sleek_register_post_types(
		# Post types (slug => description)
		array('movies' => 'My movie collection', 'directors' => 'My favorite directors.'), 

		# Taxonomies and which post types they belong to
		array(
			'genres' => array('movies'), 
			'countries' => array('directors', 'movies')
		), 

		# Translation textdomain (for URLs)
		'templateone'
	);
}

# Short codes
# add_action('init', 'templateone_register_shortcodes');

function templateone_register_shortcodes () {
	# Include - include any module through [include mod=random-testimonial]
	add_shortcode('include', 'sleek_shortcode_include_module');

	# Get Posts short code, see sleek/inc/get-posts.php for details
	# add_shortcode('get-posts', 'sleek_shortcode_get_posts');

	# MarkdownFile
	# add_shortcode('markdown-file', 'sleek_shortcode_markdown_file');
}

# Add some fields to users
# add_filter('user_contactmethods', 'templateone_add_user_fields');

function templateone_add_user_fields () {
	$fields['googleplus'] = __('Google+', 'sleek');
	$fields['stackoverflow'] = __('StackOverflow', 'sleek');
	$fields['github'] = __('GitHub', 'sleek');

	return $fields;
}

# Set up for translation (put your mo/po-files in your-theme/lang/ and uncomment this)
# add_action('after_setup_theme', 'templateone_setup_lang');

function templateone_setup_lang () {
	load_theme_textdomain('templateone', get_stylesheet_directory() . '/lang');
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
add_action('init', 'templateone_register_simple_fields');

function templateone_register_simple_fields () {
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

	simple_fields_register_field_group('map_group', array(
		'name'			=> __('Map', 'h5b'), 
		'description'	=> __('Add a map to this page.', 'h5b'), 
		'repeatable'	=> false, 
		'fields'		=> array(
			array(
				'slug'			=> 'map', 
				'name'			=> __('Map', 'h5b'), 
				'type'			=> 'googlemaps', 
				'options'		=> array(
					'defaultZoomLevel'		=> 10,
					'defaultMapTypeId'		=> 'HYBRID', // ROADMAP | SATELLITE | HYBRID | TERRAIN
					'defaultLocationLat'	=> 40.71435,
					'defaultLocationLng'	=> -74.00597,
					'defaultZoomLevel'		=> 10
				)
			)
		)
	));

	simple_fields_register_field_group('connected_posts_group', array(
		'name'			=> __('Connected Posts', 'h5b'), 
		'description'	=> __('Use to connect other posts (of any type) to this post.', 'h5b'), 
		'repeatable'	=> true, 
		'fields'		=> array(
			array(
				'slug'			=> 'connected_posts', 
				'name'			=> __('Connected Post', 'h5b'), 
				'type'			=> 'post', 
				'options'		=> array(
					'enabled_post_types' => array('post', 'page')
				)
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
			array('slug' => 'images_group', 'context' => 'side', 'priority' => 'default'), 
			array('slug' => 'map_group', 'context' => 'side', 'priority' => 'default'), 
			array('slug' => 'connected_posts_group', 'context' => 'side', 'priority' => 'default')
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
