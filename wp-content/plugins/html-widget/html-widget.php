<?php
/*
Plugin Name: HTML Widget
Description: Better arbitrary text or HTML.

Author: Andreas Lagerkvist
Author URI: http://andreaslagerkvist.com

Version: 1.0
License: GPL
*/
add_action('widgets_init', 'h5b_html_widget_register_widget');

function h5b_html_widget_register_widget () {
	register_widget('H5BHTMLWidget');
}

class H5BHTMLWidget extends WP_Widget {
	# Kickoff
	public function __construct () {
		parent::__construct('html-widget', __('HTML Widget', 'h5b'), array(
			'description' => __('Better arbitrary text or HTML.', 'h5b')
		));
	}

	# Displays the widget
	public function widget ($args, $widget) {
		$title		= apply_filters('widget_title', $widget['title']);
		$id			= isset($widget['id']) ? $widget['id'] : false;
		$element	= isset($widget['element']) ? $widget['element'] : false;
		$classes	= isset($widget['classes']) ? $widget['classes'] : false;
		$content	= isset($widget['content']) ? do_shortcode($widget['content']) : false;

		if ($element) {
			echo "<$element" . ($id ? " id=\"$id\"" : '') . ($classes ? " class=\"$classes\"" : '' ) . ">" . ($title ? "<h2>$title</h2>" : '') . do_shortcode($content) . "</$element>";
		}
		else {
			echo ($title ? "<h2>$title</h2>" : '') . do_shortcode($content);

		}
	}

	# Displays the form
	public function form ($widget) {
		$title		= isset($widget['title']) ? $widget['title'] : __('Untitled', 'h5b');
		$id			= isset($widget['id']) ? $widget['id'] : false;
		$element	= isset($widget['element']) ? $widget['element'] : 'div';
		$classes	= isset($widget['classes']) ? $widget['classes'] : 'html-widget';
		$content	= isset($widget['content']) ? $widget['content'] : false;

		include 'form.php';
	}

	# Updates options
	public function update ($newWidget, $oldWidget) {
		$widget				= array();
		$widget['title']	= !empty($newWidget['title']) ? strip_tags($newWidget['title']) : '';
		$widget['id']		= !empty($newWidget['id']) ? strip_tags($newWidget['id']) : false;
		$widget['element']	= !empty($newWidget['element']) ? strip_tags($newWidget['element']) : false;
		$widget['classes']	= !empty($newWidget['classes']) ? $newWidget['classes'] : false;
		$widget['content']	= !empty($newWidget['content']) ? $newWidget['content'] : '';

		return $widget;
	}
}
