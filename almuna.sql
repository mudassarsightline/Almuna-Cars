-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2018 at 11:15 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almuna`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=774 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/almuna', 'yes'),
(2, 'home', 'http://localhost/almuna', 'yes'),
(3, 'blogname', 'Al Muna Used Cars Exhibition', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'darko@dubicars.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:50:"google-analytics-for-wordpress/googleanalytics.php";i:2;s:27:"html-widget/html-widget.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:59:"simple-fields-map-extension/simple-fields-map-extension.php";i:5;s:31:"simple-fields/simple_fields.php";i:6;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '4', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:85:"/Applications/XAMPP/xamppfiles/htdocs/almuna/wp-content/themes/templatefour/style.css";i:1;s:89:"/Applications/MAMP/htdocs/diamondclass/wp-content/plugins/simple-fields/simple_fields.php";i:2;s:0:"";}', 'no'),
(41, 'template', 'sleek', 'yes'),
(42, 'stylesheet', 'templatefour', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '38590', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '320', 'yes'),
(60, 'thumbnail_size_h', '200', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '960', 'yes'),
(63, 'medium_size_h', '540', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1920', 'yes'),
(66, 'large_size_h', '1080', 'yes'),
(67, 'image_default_link_type', '', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:50:"google-analytics-for-wordpress/googleanalytics.php";s:35:"monsterinsights_lite_uninstall_hook";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(85, 'page_on_front', '2', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31535', 'yes'),
(89, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;s:20:"wpseo_manage_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:2:{i:0;s:10:"nav_menu-4";i:1;s:10:"nav_menu-5";}s:5:"aside";a:1:{i:0;s:13:"html-widget-2";}s:6:"header";a:1:{i:0;s:10:"nav_menu-3";}s:6:"footer";a:2:{i:0;s:10:"nav_menu-6";i:1;s:13:"html-widget-3";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:8:{i:1541067855;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1541075611;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1541118921;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1541120140;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1541147055;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1541147125;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1541345820;a:1:{s:35:"monsterinsights_usage_tracking_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_random_seed', '29da881159b04943f1bc4f9d4cc87a2e', 'yes'),
(128, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(129, 'widget_nav_menu', 'a:6:{i:1;a:0:{}i:3;a:1:{s:8:"nav_menu";i:2;}i:4;a:2:{s:5:"title";s:10:"Categories";s:8:"nav_menu";i:2;}i:5;a:1:{s:8:"nav_menu";i:4;}i:6;a:1:{s:8:"nav_menu";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(130, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(132, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1431995763;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'Templatefour', 'yes'),
(137, 'theme_mods_templatefour', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(143, 'WPLANG', '', 'yes'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'widget_html-widget', 'a:3:{i:2;a:5:{s:5:"title";s:16:"+971 55 917 1712";s:2:"id";b:0;s:7:"element";s:3:"div";s:7:"classes";b:0;s:7:"content";s:219:"<h2>+971 65 59 5448</h2>\r\n<p>Sheikh Mohammed Bin Zayed St 311 Souq Al Haraj For Cars Showroom No : 119, Sharjah, UAE</p>\r\n<a href="http://localhost/almuna/contact-us"><button class="button-clear">Contact us</button></a>";}i:3;a:5:{s:5:"title";s:0:"";s:2:"id";b:0;s:7:"element";s:1:"p";s:7:"classes";b:0;s:7:"content";s:211:"<img src="http://localhost/almuna/wp-content/themes/templatefour/css/gfx/almuna.png" style="max-width: 300px;"><br>\r\n© Copyright 2018 | Powered by <a href="https://www.dubicars.com" target="_blank">Dubicars</a>";}s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(169, 'wpcf7', 'a:1:{s:7:"version";s:5:"5.0.2";}', 'yes'),
(214, 'simple_fields_db_version', '2', 'yes'),
(215, 'simple_fields_groups', 'a:3:{i:1;a:12:{s:2:"id";i:1;s:3:"key";s:12:"images_group";s:4:"slug";s:12:"images_group";s:4:"name";s:6:"Images";s:11:"description";s:38:"Add any number of images to this post.";s:10:"repeatable";b:1;s:6:"fields";a:1:{i:0;a:11:{s:4:"slug";s:6:"images";s:4:"name";s:5:"Image";s:4:"type";s:4:"file";s:2:"id";i:0;s:11:"description";s:0:"";s:17:"type_post_options";a:2:{s:18:"enabled_post_types";a:0:{}s:20:"additional_arguments";s:0:"";}s:25:"type_taxonomyterm_options";a:1:{s:20:"additional_arguments";s:0:"";}s:7:"deleted";i:0;s:7:"options";a:1:{s:4:"file";a:0:{}}s:17:"type_file_options";a:0:{}s:11:"field_group";a:6:{s:2:"id";i:1;s:4:"name";s:6:"Images";s:4:"slug";s:12:"images_group";s:11:"description";s:38:"Add any number of images to this post.";s:10:"repeatable";b:1;s:12:"fields_count";i:1;}}}s:14:"fields_by_slug";a:1:{s:6:"images";a:11:{s:4:"slug";s:6:"images";s:4:"name";s:5:"Image";s:4:"type";s:4:"file";s:2:"id";i:0;s:11:"description";s:0:"";s:17:"type_post_options";a:2:{s:18:"enabled_post_types";a:0:{}s:20:"additional_arguments";s:0:"";}s:25:"type_taxonomyterm_options";a:1:{s:20:"additional_arguments";s:0:"";}s:7:"deleted";i:0;s:7:"options";a:1:{s:4:"file";a:0:{}}s:17:"type_file_options";a:0:{}s:11:"field_group";a:6:{s:2:"id";i:1;s:4:"name";s:6:"Images";s:4:"slug";s:12:"images_group";s:11:"description";s:38:"Add any number of images to this post.";s:10:"repeatable";b:1;s:12:"fields_count";i:1;}}}s:7:"deleted";b:0;s:8:"gui_view";s:4:"list";s:15:"added_with_code";b:1;s:12:"fields_count";i:1;}i:2;a:12:{s:2:"id";i:2;s:3:"key";s:9:"map_group";s:4:"slug";s:9:"map_group";s:4:"name";s:3:"Map";s:11:"description";s:23:"Add a map to this page.";s:10:"repeatable";b:0;s:6:"fields";a:1:{i:0;a:10:{s:4:"slug";s:3:"map";s:4:"name";s:3:"Map";s:4:"type";s:10:"googlemaps";s:7:"options";a:1:{s:10:"googlemaps";a:4:{s:16:"defaultZoomLevel";i:10;s:16:"defaultMapTypeId";s:6:"HYBRID";s:18:"defaultLocationLat";d:40.71435000000000314912540488876402378082275390625;s:18:"defaultLocationLng";d:-74.0059700000000049158188630826771259307861328125;}}s:2:"id";i:0;s:11:"description";s:0:"";s:17:"type_post_options";a:2:{s:18:"enabled_post_types";a:0:{}s:20:"additional_arguments";s:0:"";}s:25:"type_taxonomyterm_options";a:1:{s:20:"additional_arguments";s:0:"";}s:7:"deleted";i:0;s:11:"field_group";a:6:{s:2:"id";i:2;s:4:"name";s:3:"Map";s:4:"slug";s:9:"map_group";s:11:"description";s:23:"Add a map to this page.";s:10:"repeatable";b:0;s:12:"fields_count";i:1;}}}s:14:"fields_by_slug";a:1:{s:3:"map";a:10:{s:4:"slug";s:3:"map";s:4:"name";s:3:"Map";s:4:"type";s:10:"googlemaps";s:7:"options";a:1:{s:10:"googlemaps";a:4:{s:16:"defaultZoomLevel";i:10;s:16:"defaultMapTypeId";s:6:"HYBRID";s:18:"defaultLocationLat";d:40.71435000000000314912540488876402378082275390625;s:18:"defaultLocationLng";d:-74.0059700000000049158188630826771259307861328125;}}s:2:"id";i:0;s:11:"description";s:0:"";s:17:"type_post_options";a:2:{s:18:"enabled_post_types";a:0:{}s:20:"additional_arguments";s:0:"";}s:25:"type_taxonomyterm_options";a:1:{s:20:"additional_arguments";s:0:"";}s:7:"deleted";i:0;s:11:"field_group";a:6:{s:2:"id";i:2;s:4:"name";s:3:"Map";s:4:"slug";s:9:"map_group";s:11:"description";s:23:"Add a map to this page.";s:10:"repeatable";b:0;s:12:"fields_count";i:1;}}}s:7:"deleted";b:0;s:8:"gui_view";s:4:"list";s:15:"added_with_code";b:1;s:12:"fields_count";i:1;}i:3;a:12:{s:2:"id";i:3;s:3:"key";s:21:"connected_posts_group";s:4:"slug";s:21:"connected_posts_group";s:4:"name";s:15:"Connected Posts";s:11:"description";s:54:"Use to connect other posts (of any type) to this post.";s:10:"repeatable";b:1;s:6:"fields";a:1:{i:0;a:10:{s:4:"slug";s:15:"connected_posts";s:4:"name";s:14:"Connected Post";s:4:"type";s:4:"post";s:7:"options";a:1:{s:4:"post";a:3:{s:18:"enabled_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:6:"values";a:0:{}s:20:"additional_arguments";s:0:"";}}s:2:"id";i:0;s:11:"description";s:0:"";s:17:"type_post_options";a:2:{s:18:"enabled_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:20:"additional_arguments";s:0:"";}s:25:"type_taxonomyterm_options";a:1:{s:20:"additional_arguments";s:0:"";}s:7:"deleted";i:0;s:11:"field_group";a:6:{s:2:"id";i:3;s:4:"name";s:15:"Connected Posts";s:4:"slug";s:21:"connected_posts_group";s:11:"description";s:54:"Use to connect other posts (of any type) to this post.";s:10:"repeatable";b:1;s:12:"fields_count";i:1;}}}s:14:"fields_by_slug";a:1:{s:15:"connected_posts";a:10:{s:4:"slug";s:15:"connected_posts";s:4:"name";s:14:"Connected Post";s:4:"type";s:4:"post";s:7:"options";a:1:{s:4:"post";a:3:{s:18:"enabled_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:6:"values";a:0:{}s:20:"additional_arguments";s:0:"";}}s:2:"id";i:0;s:11:"description";s:0:"";s:17:"type_post_options";a:2:{s:18:"enabled_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:20:"additional_arguments";s:0:"";}s:25:"type_taxonomyterm_options";a:1:{s:20:"additional_arguments";s:0:"";}s:7:"deleted";i:0;s:11:"field_group";a:6:{s:2:"id";i:3;s:4:"name";s:15:"Connected Posts";s:4:"slug";s:21:"connected_posts_group";s:11:"description";s:54:"Use to connect other posts (of any type) to this post.";s:10:"repeatable";b:1;s:12:"fields_count";i:1;}}}s:7:"deleted";b:0;s:8:"gui_view";s:4:"list";s:15:"added_with_code";b:1;s:12:"fields_count";i:1;}}', 'yes'),
(216, 'simple_fields_post_connectors', 'a:4:{i:1;a:10:{s:2:"id";i:1;s:3:"key";s:14:"page_connector";s:4:"slug";s:14:"page_connector";s:4:"name";s:14:"Page Connector";s:12:"field_groups";a:1:{i:1;a:7:{s:2:"id";i:1;s:4:"slug";s:12:"images_group";s:3:"key";s:12:"images_group";s:4:"name";s:6:"Images";s:7:"deleted";i:0;s:7:"context";s:4:"side";s:8:"priority";s:7:"default";}}s:10:"post_types";a:1:{i:0;s:4:"page";}s:7:"deleted";i:1;s:11:"hide_editor";b:0;s:15:"added_with_code";b:0;s:18:"field_groups_count";i:1;}i:2;a:10:{s:2:"id";i:2;s:3:"key";s:14:"post_connector";s:4:"slug";s:14:"post_connector";s:4:"name";s:14:"Post Connector";s:12:"field_groups";a:1:{i:1;a:7:{s:2:"id";i:1;s:4:"slug";s:12:"images_group";s:3:"key";s:12:"images_group";s:4:"name";s:6:"Images";s:7:"deleted";i:0;s:7:"context";s:4:"side";s:8:"priority";s:7:"default";}}s:10:"post_types";a:1:{i:0;s:4:"post";}s:7:"deleted";b:0;s:11:"hide_editor";b:0;s:15:"added_with_code";b:1;s:18:"field_groups_count";i:1;}i:3;a:10:{s:2:"id";i:3;s:3:"key";s:16:"post_connector_3";s:4:"slug";s:16:"post_connector_3";s:4:"name";s:16:"post_connector_3";s:12:"field_groups";a:0:{}s:10:"post_types";a:0:{}s:7:"deleted";b:1;s:11:"hide_editor";b:0;s:15:"added_with_code";b:0;s:18:"field_groups_count";i:0;}i:4;a:10:{s:2:"id";i:4;s:3:"key";s:14:"page_connector";s:4:"slug";s:14:"page_connector";s:4:"name";s:14:"Page connector";s:12:"field_groups";a:3:{i:3;a:5:{s:2:"id";s:1:"3";s:4:"name";s:15:"Connected Posts";s:7:"deleted";s:1:"1";s:7:"context";s:6:"normal";s:8:"priority";s:3:"low";}i:1;a:5:{s:2:"id";s:1:"1";s:4:"name";s:6:"Images";s:7:"deleted";s:1:"0";s:7:"context";s:4:"side";s:8:"priority";s:3:"low";}i:2;a:5:{s:2:"id";s:1:"2";s:4:"name";s:3:"Map";s:7:"deleted";s:1:"0";s:7:"context";s:4:"side";s:8:"priority";s:3:"low";}}s:10:"post_types";a:1:{i:0;s:4:"page";}s:7:"deleted";b:0;s:11:"hide_editor";b:0;s:15:"added_with_code";b:0;s:18:"field_groups_count";i:2;}}', 'yes'),
(217, 'simple_fields_post_type_defaults', 'a:2:{s:4:"page";i:1;s:4:"post";i:2;}', 'yes'),
(237, 'db_upgraded', '', 'yes'),
(260, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"darko@dubicars.com";s:7:"version";s:5:"4.9.8";s:9:"timestamp";i:1540983044;}', 'no'),
(269, 'theme_mods_templateone', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1464106942;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:5:"aside";a:2:{i:0;s:13:"html-widget-2";i:1;s:10:"nav_menu-4";}s:6:"header";a:1:{i:0;s:10:"nav_menu-3";}s:6:"footer";a:1:{i:0;s:13:"html-widget-3";}s:3:"top";a:1:{i:0;s:10:"nav_menu-5";}}}}', 'yes'),
(337, 'yst_ga', 'a:1:{s:10:"ga_general";a:25:{s:10:"ga_general";a:23:{s:17:"analytics_profile";N;s:22:"analytics_profile_code";N;s:14:"manual_ua_code";i:0;s:20:"manual_ua_code_field";N;s:26:"track_internal_as_outbound";N;s:23:"track_internal_as_label";N;s:14:"track_outbound";i:0;s:14:"anonymous_data";i:0;s:16:"enable_universal";i:1;s:12:"demographics";i:0;s:12:"ignore_users";a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}s:19:"dashboards_disabled";i:0;s:13:"anonymize_ips";i:0;s:17:"track_download_as";s:5:"event";s:19:"extensions_of_files";s:30:"doc,exe,js,pdf,ppt,tgz,zip,xls";s:14:"track_full_url";s:6:"domain";s:18:"subdomain_tracking";N;s:16:"tag_links_in_rss";i:0;s:12:"allow_anchor";i:0;s:16:"add_allow_linker";i:0;s:25:"enhanced_link_attribution";i:0;s:11:"custom_code";N;s:10:"debug_mode";i:0;}s:19:"dashboards_disabled";i:0;s:17:"analytics_profile";N;s:22:"analytics_profile_code";N;s:14:"manual_ua_code";i:0;s:20:"manual_ua_code_field";N;s:26:"track_internal_as_outbound";N;s:23:"track_internal_as_label";N;s:14:"track_outbound";i:0;s:14:"anonymous_data";i:0;s:16:"enable_universal";i:1;s:12:"demographics";i:0;s:12:"ignore_users";a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}s:13:"anonymize_ips";i:0;s:17:"track_download_as";s:5:"event";s:19:"extensions_of_files";s:30:"doc,exe,js,pdf,ppt,tgz,zip,xls";s:14:"track_full_url";s:6:"domain";s:18:"subdomain_tracking";N;s:16:"tag_links_in_rss";i:0;s:12:"allow_anchor";i:0;s:16:"add_allow_linker";i:0;s:25:"enhanced_link_attribution";i:0;s:11:"custom_code";N;s:10:"debug_mode";i:0;s:7:"version";s:5:"5.5.3";}}', 'yes'),
(340, 'wpseo', 'a:19:{s:15:"ms_defaults_set";b:0;s:7:"version";s:5:"7.5.1";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:0;s:18:"first_activated_on";i:1525940725;}', 'yes'),
(342, 'wpseo_titles', 'a:65:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:0;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:17:"stripcategorybase";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:23:"display-metabox-pt-post";b:1;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:23:"display-metabox-pt-page";b:1;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:23:"post_types-post-maintax";i:0;s:22:"noindex-subpages-wpseo";b:0;}', 'yes'),
(343, 'wpseo_social', 'a:18:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(471, 'monsterinsights_welcome_1', '1', 'yes'),
(620, 'monsterinsights_usage_tracking_config', 'a:6:{s:3:"day";i:0;s:4:"hour";i:15;s:6:"minute";i:37;s:6:"second";i:0;s:6:"offset";i:56220;s:8:"initsend";i:1527435420;}', 'yes'),
(621, 'monsterinsights_over_time', 'a:3:{s:17:"installed_version";s:5:"7.0.6";s:14:"installed_date";i:1527150229;s:13:"installed_pro";b:0;}', 'yes'),
(622, 'monsterinsights_db_version', '6.2.0', 'yes'),
(623, 'monsterinsights_settings_version', '7.0.0', 'yes'),
(624, 'monsterinsights_current_version', '7.0.6', 'yes'),
(625, 'monsterinsights_settings', 'a:23:{s:19:"dashboards_disabled";i:0;s:17:"analytics_profile";N;s:22:"analytics_profile_code";N;s:14:"manual_ua_code";i:0;s:20:"manual_ua_code_field";N;s:26:"track_internal_as_outbound";N;s:23:"track_internal_as_label";N;s:12:"demographics";i:0;s:12:"ignore_users";a:2:{i:0;s:13:"administrator";i:1;s:6:"editor";}s:13:"anonymize_ips";i:0;s:17:"track_download_as";s:5:"event";s:19:"extensions_of_files";s:30:"doc,exe,js,pdf,ppt,tgz,zip,xls";s:18:"subdomain_tracking";N;s:16:"tag_links_in_rss";i:0;s:12:"allow_anchor";i:0;s:16:"add_allow_linker";i:0;s:25:"enhanced_link_attribution";i:0;s:11:"custom_code";N;s:10:"debug_mode";i:0;s:13:"tracking_mode";s:9:"analytics";s:11:"events_mode";s:3:"php";s:14:"allow_tracking";i:1;s:13:"oauth_version";s:5:"1.0.0";}', 'yes'),
(627, '_amn_mi-lite_last_checked', '1541030400', 'yes'),
(628, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(629, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(630, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(631, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(632, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(633, 'page_for_posts', '0', 'yes'),
(634, 'finished_splitting_shared_terms', '1', 'yes'),
(635, 'site_icon', '0', 'yes'),
(636, 'medium_large_size_w', '768', 'yes'),
(637, 'medium_large_size_h', '0', 'yes'),
(638, 'wp_page_for_privacy_policy', '0', 'yes'),
(642, 'can_compress_scripts', '0', 'no'),
(644, 'wpseo_license_server_version', '2', 'yes'),
(645, '_transient_timeout_wpseo_link_table_inaccessible', '1558686325', 'no'),
(646, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(647, '_transient_timeout_wpseo_meta_table_inaccessible', '1558686325', 'no'),
(648, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(651, 'rewrite_rules', 'a:107:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"amn_mi-lite/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"amn_mi-lite/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"amn_mi-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"amn_mi-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"amn_mi-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"amn_mi-lite/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"amn_mi-lite/([^/]+)/embed/?$";s:44:"index.php?amn_mi-lite=$matches[1]&embed=true";s:32:"amn_mi-lite/([^/]+)/trackback/?$";s:38:"index.php?amn_mi-lite=$matches[1]&tb=1";s:40:"amn_mi-lite/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?amn_mi-lite=$matches[1]&paged=$matches[2]";s:47:"amn_mi-lite/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?amn_mi-lite=$matches[1]&cpage=$matches[2]";s:36:"amn_mi-lite/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?amn_mi-lite=$matches[1]&page=$matches[2]";s:28:"amn_mi-lite/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"amn_mi-lite/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"amn_mi-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"amn_mi-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"amn_mi-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"amn_mi-lite/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(652, 'wpseo_sitemap_cache_validator_global', '3cCjs', 'no'),
(653, 'fresh_site', '0', 'yes'),
(663, 'wpseo_sitemap_1_cache_validator', '46QJQ', 'no'),
(664, 'wpseo_sitemap_page_cache_validator', '46QJR', 'no'),
(666, 'wpseo_sitemap_nav_menu_item_cache_validator', '3Sj1Q', 'no'),
(668, 'wpseo_sitemap_wpcf7_contact_form_cache_validator', '4B68i', 'no'),
(679, 'wpseo_sitemap_post_cache_validator', '3P5al', 'no'),
(717, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1541046702;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(720, '_site_transient_timeout_browser_25002fe8b97cfd00f44806507a3febdd', '1541587855', 'no'),
(721, '_site_transient_browser_25002fe8b97cfd00f44806507a3febdd', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"70.0.3538.77";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(732, 'new_admin_email', 'darko@dubicars.com', 'yes'),
(738, 'wpseo_sitemap_13_cache_validator', '3ZTJI', 'no'),
(739, 'wpseo_sitemap_14_cache_validator', '3ZTJJ', 'no'),
(740, 'wpseo_sitemap_102_cache_validator', '3ZTJL', 'no'),
(759, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1541046707;s:7:"checked";a:5:{s:5:"sleek";s:18:"0.0.0 (semver.org)";s:12:"templatefour";s:27:"Version: 0.0.0 (semver.org)";s:11:"templateone";s:27:"Version: 0.0.0 (semver.org)";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:1:{s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}}s:12:"translations";a:0:{}}', 'no'),
(760, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1541052898;s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.5";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.5.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:50:"google-analytics-for-wordpress/googleanalytics.php";O:8:"stdClass":12:{s:2:"id";s:44:"w.org/plugins/google-analytics-for-wordpress";s:4:"slug";s:30:"google-analytics-for-wordpress";s:6:"plugin";s:50:"google-analytics-for-wordpress/googleanalytics.php";s:11:"new_version";s:5:"7.3.0";s:3:"url";s:61:"https://wordpress.org/plugins/google-analytics-for-wordpress/";s:7:"package";s:79:"https://downloads.wordpress.org/plugin/google-analytics-for-wordpress.7.3.0.zip";s:5:"icons";a:3:{s:2:"2x";s:83:"https://ps.w.org/google-analytics-for-wordpress/assets/icon-256x256.png?rev=1598927";s:2:"1x";s:75:"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927";s:3:"svg";s:75:"https://ps.w.org/google-analytics-for-wordpress/assets/icon.svg?rev=1598927";}s:7:"banners";a:2:{s:2:"2x";s:86:"https://ps.w.org/google-analytics-for-wordpress/assets/banner-1544x500.png?rev=1598927";s:2:"1x";s:85:"https://ps.w.org/google-analytics-for-wordpress/assets/banner-772x250.png?rev=1598927";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"9.0.3";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.9.0.3.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}s:6:"tested";s:5:"4.9.8";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:27:"html-widget/html-widget.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/html-widget";s:4:"slug";s:11:"html-widget";s:6:"plugin";s:27:"html-widget/html-widget.php";s:11:"new_version";s:5:"0.1.0";s:3:"url";s:42:"https://wordpress.org/plugins/html-widget/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/html-widget.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/html-widget/assets/icon-256x256.png?rev=1688240";s:2:"1x";s:64:"https://ps.w.org/html-widget/assets/icon-128x128.png?rev=1688240";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/html-widget/assets/banner-1544x500.png?rev=1688240";s:2:"1x";s:66:"https://ps.w.org/html-widget/assets/banner-772x250.png?rev=1688240";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}s:31:"simple-fields/simple_fields.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/simple-fields";s:4:"slug";s:13:"simple-fields";s:6:"plugin";s:31:"simple-fields/simple_fields.php";s:11:"new_version";s:6:"1.4.11";s:3:"url";s:44:"https://wordpress.org/plugins/simple-fields/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/simple-fields.1.4.11.zip";s:5:"icons";a:1:{s:7:"default";s:64:"https://s.w.org/plugins/geopattern-icon/simple-fields_fafafa.svg";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/simple-fields/assets/banner-772x250.png?rev=594573";}s:11:"banners_rtl";a:0:{}}s:59:"simple-fields-map-extension/simple-fields-map-extension.php";O:8:"stdClass":9:{s:2:"id";s:41:"w.org/plugins/simple-fields-map-extension";s:4:"slug";s:27:"simple-fields-map-extension";s:6:"plugin";s:59:"simple-fields-map-extension/simple-fields-map-extension.php";s:11:"new_version";s:5:"1.3.4";s:3:"url";s:58:"https://wordpress.org/plugins/simple-fields-map-extension/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/simple-fields-map-extension.1.3.4.zip";s:5:"icons";a:1:{s:7:"default";s:78:"https://s.w.org/plugins/geopattern-icon/simple-fields-map-extension_d8dde0.svg";}s:7:"banners";a:1:{s:2:"1x";s:81:"https://ps.w.org/simple-fields-map-extension/assets/banner-772x250.png?rev=594467";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(764, '_transient_timeout_wpseo-statistics-totals', '1541139292', 'no'),
(765, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:"scores";a:0:{}s:8:"division";b:0;}}', 'no'),
(766, '_transient_timeout_plugin_slugs', '1541139299', 'no'),
(767, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:50:"google-analytics-for-wordpress/googleanalytics.php";i:3;s:27:"html-widget/html-widget.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:5;s:31:"simple-fields/simple_fields.php";i:6;s:59:"simple-fields-map-extension/simple-fields-map-extension.php";i:7;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(768, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1541063741', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(769, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4516;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:3092;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2598;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2455;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1888;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1688;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1683;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1461;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1410;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1407;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1405;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1338;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1285;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1255;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1119;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1079;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1054;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1041;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:942;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:900;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:836;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:819;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:812;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:742;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:712;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:699;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:695;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:690;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:685;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:670;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:669;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:663;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:651;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:647;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:625;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:624;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:619;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:608;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:603;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:602;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:574;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:556;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:549;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:545;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:534;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:528;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:526;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:518;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:517;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:513;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:510;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:500;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:493;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:490;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:485;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:482;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:465;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:463;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:457;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:452;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:445;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:438;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:431;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:426;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:423;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:421;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:418;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:418;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:411;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:393;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:389;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:385;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:374;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:372;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:371;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:370;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:368;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:364;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:355;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:354;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:351;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:350;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:345;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:342;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:340;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:338;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:335;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:332;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:315;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:313;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:310;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:309;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:307;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:305;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:303;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:303;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:303;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:303;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:302;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:299;}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1540986703:1'),
(3, 2, '_edit_last', '1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1527168671:1'),
(6, 7, '_edit_last', '1'),
(7, 7, '_edit_lock', '1540986865:1'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1540986694:1'),
(39, 16, '_menu_item_type', 'post_type'),
(40, 16, '_menu_item_menu_item_parent', '0'),
(41, 16, '_menu_item_object_id', '9'),
(42, 16, '_menu_item_object', 'page'),
(43, 16, '_menu_item_target', ''),
(44, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 16, '_menu_item_xfn', ''),
(46, 16, '_menu_item_url', ''),
(48, 17, '_menu_item_type', 'post_type'),
(49, 17, '_menu_item_menu_item_parent', '0'),
(50, 17, '_menu_item_object_id', '7'),
(51, 17, '_menu_item_object', 'page'),
(52, 17, '_menu_item_target', ''),
(53, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 17, '_menu_item_xfn', ''),
(55, 17, '_menu_item_url', ''),
(57, 18, '_menu_item_type', 'post_type'),
(58, 18, '_menu_item_menu_item_parent', '0'),
(59, 18, '_menu_item_object_id', '5'),
(60, 18, '_menu_item_object', 'page'),
(61, 18, '_menu_item_target', ''),
(62, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 18, '_menu_item_xfn', ''),
(64, 18, '_menu_item_url', ''),
(66, 19, '_menu_item_type', 'post_type'),
(67, 19, '_menu_item_menu_item_parent', '0'),
(68, 19, '_menu_item_object_id', '2'),
(69, 19, '_menu_item_object', 'page'),
(70, 19, '_menu_item_target', ''),
(71, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 19, '_menu_item_xfn', ''),
(73, 19, '_menu_item_url', ''),
(81, 7, '_wp_page_template', 'default'),
(82, 9, '_wp_page_template', 'default'),
(83, 5, '_wp_page_template', 'page-serp.php'),
(84, 29, '_form', '<h2>Talk to us</h2>\n\n<p>[text your-name placeholder "Your full name"]</p>\n\n<p>[email your-email placeholder "Email"]</p>\n\n<p>[tel your-phone placeholder "Phone number"]</p>\n\n<p>[textarea your-message placeholder "Comment"]</p>\n\n<p>[submit "Submit"]</p>'),
(85, 29, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:25:"New message from customer";s:6:"sender";s:42:"[your-name] <wordpress@formulaautofze.com>";s:9:"recipient";s:20:"zeead.al@hotmail.com";s:4:"body";s:48:"From: [your-name] <[your-email]>\n\n[your-message]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(86, 29, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:39:"Template<b>4</b> <wordpress@dubiwp.dev>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:131:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Template&lt;b&gt;4&lt;/b&gt; (http://localhost/almuna)";s:18:"additional_headers";s:29:"Reply-To: powerbuoy@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(87, 29, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:31:"Please fill the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'),
(88, 29, '_additional_settings', ''),
(89, 29, '_locale', 'en_US'),
(95, 2, '_simple_fields_selected_connector', '4'),
(96, 2, '_simple_fields_been_saved', '1'),
(108, 9, '_simple_fields_selected_connector', '4'),
(109, 7, '_simple_fields_selected_connector', '4'),
(137, 9, '_simple_fields_been_saved', '1'),
(165, 7, '_simple_fields_been_saved', '1'),
(175, 5, '_simple_fields_selected_connector', '4'),
(176, 5, '_simple_fields_been_saved', '1'),
(189, 70, '_menu_item_type', 'custom'),
(190, 70, '_menu_item_menu_item_parent', '0'),
(191, 70, '_menu_item_object_id', '70'),
(192, 70, '_menu_item_object', 'custom'),
(193, 70, '_menu_item_target', ''),
(194, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 70, '_menu_item_xfn', ''),
(196, 70, '_menu_item_url', 'tel:+971503500672'),
(198, 71, '_menu_item_type', 'custom'),
(199, 71, '_menu_item_menu_item_parent', '0'),
(200, 71, '_menu_item_object_id', '71'),
(201, 71, '_menu_item_object', 'custom'),
(202, 71, '_menu_item_target', ''),
(203, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(204, 71, '_menu_item_xfn', ''),
(205, 71, '_menu_item_url', 'tel:+97143333357'),
(250, 89, '_wp_attached_file', '2015/05/car-1920x8381.jpg'),
(251, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:838;s:4:"file";s:25:"2015/05/car-1920x8381.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"car-1920x8381-320x200.jpg";s:5:"width";i:320;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"car-1920x8381-960x419.jpg";s:5:"width";i:960;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"car-1920x8381-1920x838.jpg";s:5:"width";i:1920;s:6:"height";i:838;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"car-1920x8381-320x320.jpg";s:5:"width";i:320;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(258, 96, '_wp_attached_file', '2015/05/nissan_patrol.jpg'),
(259, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:838;s:4:"file";s:25:"2015/05/nissan_patrol.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"nissan_patrol-320x200.jpg";s:5:"width";i:320;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"nissan_patrol-960x419.jpg";s:5:"width";i:960;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"nissan_patrol-1920x838.jpg";s:5:"width";i:1920;s:6:"height";i:838;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"nissan_patrol-320x320.jpg";s:5:"width";i:320;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(264, 97, '_wp_attached_file', '2015/05/toyota_land_cruiser.jpg'),
(265, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:838;s:4:"file";s:31:"2015/05/toyota_land_cruiser.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"toyota_land_cruiser-320x200.jpg";s:5:"width";i:320;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"toyota_land_cruiser-960x419.jpg";s:5:"width";i:960;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"toyota_land_cruiser-1920x838.jpg";s:5:"width";i:1920;s:6:"height";i:838;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"toyota_land_cruiser-320x320.jpg";s:5:"width";i:320;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(270, 98, '_wp_attached_file', '2015/05/range_rover.jpg'),
(271, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:838;s:4:"file";s:23:"2015/05/range_rover.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"range_rover-320x200.jpg";s:5:"width";i:320;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"range_rover-960x419.jpg";s:5:"width";i:960;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"range_rover-1920x838.jpg";s:5:"width";i:1920;s:6:"height";i:838;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"range_rover-320x320.jpg";s:5:"width";i:320;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(366, 107, 'notification_id', '741'),
(367, 107, 'type', 'info'),
(368, 107, 'dismissable', '1'),
(369, 107, 'location', '["everywhere"]'),
(370, 107, 'version', ''),
(371, 107, 'viewed', '1'),
(372, 107, 'expiration', '1527289200'),
(373, 107, 'plans', '[]'),
(383, 2, '_yoast_wpseo_content_score', '30'),
(384, 5, '_simple_fields_fieldGroupID_2_fieldID_added_numInSet_0', '1'),
(385, 5, '_simple_fields_fieldGroupID_2_fieldID_0_numInSet_0', 'a:6:{s:3:"lat";s:10:"25.1714329";s:3:"lng";s:18:"55.379476299999965";s:4:"name";s:0:"";s:17:"formatted_address";s:0:"";s:18:"address_components";s:2:"[]";s:14:"preferred_zoom";s:2:"10";}'),
(386, 5, '_yoast_wpseo_content_score', '30'),
(387, 5, '_yoast_wpseo_post_image_cache', 'a:0:{}'),
(392, 7, '_yoast_wpseo_content_score', '60'),
(395, 9, '_yoast_wpseo_content_score', '90'),
(419, 2, '_simple_fields_fieldGroupID_1_fieldID_added_numInSet_0', '1'),
(420, 2, '_simple_fields_fieldGroupID_1_fieldID_added_numInSet_1', '1'),
(421, 2, '_simple_fields_fieldGroupID_1_fieldID_added_numInSet_2', '1'),
(422, 2, '_simple_fields_fieldGroupID_1_fieldID_0_numInSet_0', '97'),
(423, 2, '_simple_fields_fieldGroupID_1_fieldID_0_numInSet_1', '98'),
(424, 2, '_simple_fields_fieldGroupID_1_fieldID_0_numInSet_2', '96'),
(425, 2, '_simple_fields_fieldGroupID_2_fieldID_added_numInSet_0', '1'),
(426, 2, '_simple_fields_fieldGroupID_2_fieldID_0_numInSet_0', 'a:6:{s:3:"lat";s:9:"25.345217";s:3:"lng";s:17:"55.47822999999994";s:4:"name";s:0:"";s:17:"formatted_address";s:0:"";s:18:"address_components";s:2:"[]";s:14:"preferred_zoom";s:2:"10";}'),
(427, 9, '_simple_fields_fieldGroupID_2_fieldID_added_numInSet_0', '1'),
(428, 9, '_simple_fields_fieldGroupID_2_fieldID_0_numInSet_0', 'a:6:{s:3:"lat";s:9:"25.345217";s:3:"lng";s:17:"55.47822999999994";s:4:"name";s:0:"";s:17:"formatted_address";s:0:"";s:18:"address_components";s:2:"[]";s:14:"preferred_zoom";s:2:"10";}'),
(429, 9, '_yoast_wpseo_post_image_cache', 'a:0:{}'),
(430, 7, '_simple_fields_fieldGroupID_2_fieldID_added_numInSet_0', '1'),
(431, 7, '_simple_fields_fieldGroupID_2_fieldID_0_numInSet_0', 'a:6:{s:3:"lat";s:10:"25.1714329";s:3:"lng";s:18:"55.379476299999965";s:4:"name";s:0:"";s:17:"formatted_address";s:0:"";s:18:"address_components";s:2:"[]";s:14:"preferred_zoom";s:2:"10";}'),
(432, 7, '_yoast_wpseo_post_image_cache', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2015-05-19 00:33:31', '2015-05-19 00:33:31', '', 'Welcome to Al Muna Used Cars Exhibition', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-31 15:26:52', '2018-10-31 11:26:52', '', 0, 'http://localhost/almuna/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-05-19 00:55:38', '2015-05-19 00:55:38', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/almuna/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Home', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-19 00:55:38', '2015-05-19 00:55:38', '', 2, 'http://localhost/almuna/index.php/2015/05/19/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2015-05-19 00:55:45', '2015-05-19 00:55:45', '', 'Our Cars', '', 'publish', 'closed', 'open', '', 'our-cars', '', '', '2018-05-24 17:32:43', '2018-05-24 13:32:43', '', 0, 'http://localhost/almuna/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-05-19 00:55:45', '2015-05-19 00:55:45', '', 'Our Cars', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-05-19 00:55:45', '2015-05-19 00:55:45', '', 5, 'http://localhost/almuna/index.php/2015/05/19/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-05-19 00:55:50', '2015-05-19 00:55:50', '<h2>About us</h2>', 'About Al Muna Used Cars Exhibition', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-10-31 15:54:24', '2018-10-31 11:54:24', '', 0, 'http://localhost/almuna/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-05-19 00:55:50', '2015-05-19 00:55:50', '', 'About Us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-05-19 00:55:50', '2015-05-19 00:55:50', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-05-19 00:55:57', '2015-05-19 00:55:57', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nSheikh Mohammed Bin Zayed St 311 Souq Al Haraj For Cars Showroom No : 119, Sharjah, UAE\r\n<h3>Phone</h3>\r\n<a href="tel:+971559171712">+971 55 917 1712</a>\r\n<a href="tel:+97165595448">+971 65 59 5448</a>\r\n\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-10-31 15:30:00', '2018-10-31 11:30:00', '', 0, 'http://localhost/almuna/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-05-19 00:55:57', '2015-05-19 00:55:57', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-19 00:55:57', '2015-05-19 00:55:57', '', 9, 'http://localhost/almuna/index.php/2015/05/19/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2015-05-19 01:02:46', '2015-05-19 01:02:46', '', 'Contact <b>us</b>', '', 'publish', 'open', 'open', '', '16', '', '', '2015-05-22 07:04:38', '2015-05-22 07:04:38', '', 0, 'http://localhost/almuna/?p=16', 4, 'nav_menu_item', '', 0),
(17, 1, '2015-05-19 01:02:46', '2015-05-19 01:02:46', '', 'About <b>us</b>', '', 'publish', 'open', 'open', '', '17', '', '', '2015-05-22 07:04:38', '2015-05-22 07:04:38', '', 0, 'http://localhost/almuna/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2015-05-19 01:02:46', '2015-05-19 01:02:46', '', '<b>Our</b> Cars', '', 'publish', 'open', 'open', '', '18', '', '', '2015-05-22 07:04:38', '2015-05-22 07:04:38', '', 0, 'http://localhost/almuna/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2015-05-19 01:02:46', '2015-05-19 01:02:46', '', 'Home', '', 'publish', 'open', 'open', '', '19', '', '', '2015-05-22 07:04:38', '2015-05-22 07:04:38', '', 0, 'http://localhost/almuna/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2015-05-19 02:16:28', '2015-05-19 02:16:28', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/almuna/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', '"Your slogan here"', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-19 02:16:28', '2015-05-19 02:16:28', '', 2, 'http://localhost/almuna/index.php/2015/05/19/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-05-24 17:37:36', '2018-05-24 13:37:36', '<h2>About us</h2>\nFormula Auto FZE Automotive is a leader in auto re-export and supply chain services in the region.\n\nFormula Auto FZE Automotive was established in the UAE in 2010 to provide and sustain mobility in world markets.\n\nWe specialize in exporting cars to all over the world:\n\nHaving established solid relationships with a network of car dealerships in more than 100 countries and with the regional center for global trade and export, Formula Auto FZE has established itself as a regional leader in global auto re-export solutions.\n\nDevelop infrastructure for customer convenience:\n\nOur advanced infrastructure ensures maximum convenience for our customers through our e-commerce website.\nIn addition to exporting cars and experience in spare parts and accessories, Formula Auto FZE also provides installation, maintenance and mechanical repairs services at our dedicated service centers, with a team of professionals who are well versed in all our products and services.\n\nServices of re-export:\n\nWith more than two decades of experience, Formula Auto FZE has built relationships with its customers, established a professional team and a network of partners across its supply chain, enabling us to provide our clients with an integrated experience of re-export services, from purchase and installation of accessories, To financial services, logistics, shipping and clearance.\n\nOur vision:\n\nWe aim to provide exceptional value by building long-term partnerships and providing complete solutions for auto re-export services.\n\nOur Mission:\n\nWe strive to provide the highest level of quality in the automotive sector products and services at competitive prices and with ease and smoothness.\n\nOur Values:\n<ul>\n 	<li> Customer Focus: We are committed to delivering the highest standards of customer satisfaction by focusing on meeting the needs of our customers.</li>\n 	<li> Quality: We pride ourselves in continuously providing high quality products, services and solutions from reliable sources.</li>\n 	<li> Integrity: We deal with all our partners and customers with the utmost honesty, respect and ethical standards.</li>\n 	<li> Responsibility: We work responsibly and efficiently in all our business to achieve long-term success.</li>\n 	<li> Passion: We are constantly working to initiate and seek new opportunities.</li>\n 	<li> Community Participation: We always strive to participate in community activities and to expand our resources and assistance wherever possible.</li>\n</ul>\n\n\nفورملا اوتو م .م .ح  للسيارات هي شركة رائدة في مجال خدمات إعادة تصدير السيارات وسلسلة التوريد في المنطقة\nتم تأسيس شركة فورملا اوتو م. م. ح  للسيارات في دولة الإمارات العربية المتحدة في عام2010 لتوفير واستدامة التنقل في الأسواق العالمية.\n\nمتخصصون بتصدير السيارات الى جميع أنحاء العالم\nوبعد أن أقامت شركة فورملا اوتو م.م.ح  للسيارات علاقات راسخة مع شبكة من وكلاء السيارات في أكثر من 100 دولة، فضلا عن الاستفادة من المركز الاقليمي للتجارة العالمية وللتصدير، فقد ازدهرت لتصبح رائدة إقليميا في مجال حلول إعادة تصدير السيارات على مستوى عالمي.\n\nتطوير البنية التحتية لراحة العملاء\nإن بنيتنا التحتية المتطورة تضمن أقصى قدر من الراحة للعملاء من خلال موقعنا الإلكتروني للتجارة الإلكترونية.\nبالإضافة إلى تصدير السيارات وخبرة قطع الغيار والإكسسوارات، توفر فورملا اوتو  للسيارات أيضا خدمات التركيب والصيانة والإصلاحات الميكانيكية في مراكز الخدمة المخصصة لدينا، مع فريق من المهنيين الذين هم على دراية جيدة في جميع المنتجات والخدمات التي نقدمها.\n\nخدمات متكاملة لإعادة التصدير\nمع أكثر من عقدين من الخبرة تمكنت شركة فورملا اوتو م.م.ح  من بناء علاقات وتيدة مع عملائها، كما انشأت فريقا محترفاً وشبكة من الشركاء عبر سلسلة التوريد لديها، مما سمح لنا بتزويد عملائنا بتجربة متكاملة لخدمات إعادة التصدير، بدءا من الشراء وتركيب الإكسسوارات، إلى الخدمات المالية واللوجستية والشحن والتخليص.\n\nرؤيتنا\nنهدف إلى تقديم قيمة استثنائية من خلال بناء شراكات طويلة الأمد وتوفير حلول متكاملة لخدمات إعادة تصدير السيارات.\n\nرسالتنا\nنسعى جاهدين الى توفير أعلى مستوى من الجودة في منتجات وخدمات قطاع السيارات بأسعار تنافسية وبكل سهولة وسلاسة.\n\nقيمنا\n\n	التركيز على العميل: نحن ملتزمون بتقديم أعلى معايير رضا العملاء وذلك بالتركيز على تلبية احتياجات عملائنا.\n	الجودة: نحن نفخر في توفير مستمر لمنتجات وخدمات وحلول ذات جودة عالية ومن مصادر موثوقة.\n	النزاهة: نحن نتعامل مع كل شركائنا وعملائنا بأقصى قدر من الصدق والاحترام والمعايير الأخلاقية.\n	المسؤولية: نحن نعمل بمسؤولية وكفاءة في كل أعمالنا لتحقيق النجاح على المدى الطويل.\n	الشغف: نحن نعمل باستمرار للمبادرة والسعي إلى فرص جديدة.\n	المشاركة المجتمعية: نسعى دائماً إلى المشاركة بنشاطات مجتمعية والى توسيع مواردنا والمساعدة أينما أمكن.\n\n', 'About Formula Auto FZE', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2018-05-24 17:37:36', '2018-05-24 13:37:36', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-autosave-v1/', 0, 'revision', '', 0),
(24, 1, '2015-05-19 02:43:44', '2015-05-19 02:43:44', '<h2>About us</h2>\r\n<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-150x150.jpg" alt="car" width="150" height="150" />\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum simply', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-05-19 02:43:44', '2015-05-19 02:43:44', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-05-19 02:44:30', '2015-05-19 02:44:30', '<h2>Contact us</h2>', 'Lorem ipsum difficultly', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-19 02:44:30', '2015-05-19 02:44:30', '', 9, 'http://localhost/almuna/index.php/2015/05/19/9-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-05-19 02:45:08', '2015-05-19 02:45:08', '<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-150x150.jpg" alt="car" width="150" height="150" />\r\n\r\n<h2>About us</h2>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The story about us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-05-19 02:45:08', '2015-05-19 02:45:08', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-05-19 02:45:20', '2015-05-19 02:45:20', '<h2>Contact us</h2>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-19 02:45:20', '2015-05-19 02:45:20', '', 9, 'http://localhost/almuna/index.php/2015/05/19/9-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-05-19 02:47:58', '2015-05-19 02:47:58', '', '"Your slogan here"', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-19 02:47:58', '2015-05-19 02:47:58', '', 2, 'http://localhost/almuna/index.php/2015/05/19/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-05-19 04:51:10', '2015-05-19 04:51:10', '<h2>Talk to us</h2>\r\n\r\n<p>[text your-name placeholder "Your full name"]</p>\r\n\r\n<p>[email your-email placeholder "Email"]</p>\r\n\r\n<p>[tel your-phone placeholder "Phone number"]</p>\r\n\r\n<p>[textarea your-message placeholder "Comment"]</p>\r\n\r\n<p>[submit "Submit"]</p>\n1\nNew message from customer\n[your-name] <wordpress@formulaautofze.com>\nzeead.al@hotmail.com\nFrom: [your-name] <[your-email]>\r\n\r\n[your-message]\n\n\n\n\n\n[your-subject]\nTemplate<b>4</b> <wordpress@dubiwp.dev>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Template&lt;b&gt;4&lt;/b&gt; (http://localhost/almuna)\nReply-To: powerbuoy@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nThis input is too long.\nThis input is too short.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nYour entered code is incorrect.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2018-05-24 17:48:47', '2018-05-24 13:48:47', '', 0, 'http://localhost/almuna/?post_type=wpcf7_contact_form&#038;p=29', 0, 'wpcf7_contact_form', '', 0),
(30, 1, '2015-05-19 04:52:15', '2015-05-19 04:52:15', '<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-300x300.jpg" alt="car" width="300 height="300" />\r\n\r\n<h2>About us</h2>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The story about us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-05-19 04:52:15', '2015-05-19 04:52:15', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-05-19 05:11:31', '2015-05-19 05:11:31', '<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-250x250.jpg" alt="car" width="250" height="250" />\r\n\r\n<h2>About us</h2>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The story about us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-05-19 05:11:31', '2015-05-19 05:11:31', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-05-19 05:13:33', '2015-05-19 05:13:33', '<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-250x250.jpg" alt="car" width="250" height="250" />\r\n\r\n<h2>About us</h2>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.', 'The story about us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-05-19 05:13:33', '2015-05-19 05:13:33', '', 7, 'http://localhost/almuna/index.php/2015/05/19/7-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-05-21 07:10:51', '2015-05-21 07:10:51', '<h2>Contact us</h2>\r\n\r\n[contact-form-7 id="29" title="Contact form 1"]', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-21 07:10:51', '2015-05-21 07:10:51', '', 9, 'http://localhost/almuna/index.php/2015/05/21/9-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-10-31 15:28:38', '2018-10-31 11:28:38', '<div>\n\n[contact-form-7 id="29"]\n\n</div>\n<div>\n<h3>Main address</h3>\n</div>\n<div>\n\nSheikh Mohammed Bin Zayed St 311 Souq Al Haraj For Cars Showroom No : 119, Sharjah, UAE\n<h3>Phone</h3>\n<a href="tel:+971559171712">+97155 917 1712</a>\n\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-autosave-v1', '', '', '2018-10-31 15:28:38', '2018-10-31 11:28:38', '', 9, 'http://localhost/almuna/index.php/2015/05/21/9-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2015-05-21 07:14:01', '2015-05-21 07:14:01', '<div class="cols-1-3">\r\n\r\n<div>\r\n\r\n<h2>Talk to us</h2>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n...\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\n...\r\n\r\n<h3>Office phone</h3>\r\n\r\n...\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n...\r\n\r\n<h3>Fax</h3>\r\n\r\n...\r\n\r\n</div>\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-21 07:14:01', '2015-05-21 07:14:01', '', 9, 'http://localhost/almuna/index.php/2015/05/21/9-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2015-05-21 07:15:04', '2015-05-21 07:15:04', '<div class="cols-1-3">\r\n\r\n<div>\r\n\r\n<h2>Talk to us</h2>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x600&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\n...\r\n\r\n<h3>Office phone</h3>\r\n\r\n...\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n...\r\n\r\n<h3>Fax</h3>\r\n\r\n...\r\n\r\n</div>\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-21 07:15:04', '2015-05-21 07:15:04', '', 9, 'http://localhost/almuna/index.php/2015/05/21/9-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-05-21 07:24:12', '2015-05-21 07:24:12', '<div>\r\n\r\n<h2>Talk to us</h2>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x600&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\n...\r\n\r\n<h3>Office phone</h3>\r\n\r\n...\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n...\r\n\r\n<h3>Fax</h3>\r\n\r\n...\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-21 07:24:12', '2015-05-21 07:24:12', '', 9, 'http://localhost/almuna/index.php/2015/05/21/9-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-05-22 07:38:20', '2015-05-22 07:38:20', '<div>\r\n\r\n<h2>Talk to us</h2>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x600&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:38:20', '2015-05-22 07:38:20', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-05-22 07:44:34', '2015-05-22 07:44:34', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x600&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:44:34', '2015-05-22 07:44:34', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2015-05-22 07:48:46', '2015-05-22 07:48:46', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x400&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:48:46', '2015-05-22 07:48:46', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-05-22 07:49:17', '2015-05-22 07:49:17', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x450&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore consectetur adipiscing elit tempor incididunt.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:49:17', '2015-05-22 07:49:17', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-05-22 07:54:37', '2015-05-22 07:54:37', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="//maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x450&maptype=roadmap\r\n&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318\r\n&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore consectetur adipiscing elit tempor incididunt.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:54:37', '2015-05-22 07:54:37', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-05-22 07:56:41', '2015-05-22 07:56:41', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="//maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x450&maptype=roadmap&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318&markers=color:red%7Clabel:C%7C40.718217,-73.998284">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore consectetur adipiscing elit tempor incididunt.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:56:41', '2015-05-22 07:56:41', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-05-22 07:58:44', '2015-05-22 07:58:44', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="//maps.googleapis.com/maps/api/staticmap?center=59.333447,18.064237&zoom=16&size=600x450&maptype=roadmap&markers=59.333447,18.064237&sensor=false&scale=2">\r\n</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore consectetur adipiscing elit tempor incididunt.\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nAuto Market, \r\nRas Al Khor, \r\nDubai, UAE\r\n\r\n<h3>Office phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971-0200-222-333\r\n\r\n<h3>Fax</h3>\r\n\r\n+971-0200-222-333\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-05-22 07:58:44', '2015-05-22 07:58:44', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2015-07-30 17:00:50', '2015-07-30 13:00:50', '', 'Find your perfect car at Saleem Motors', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-30 17:00:50', '2015-07-30 13:00:50', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-07-30 17:06:14', '2015-07-30 13:06:14', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="//maps.googleapis.com/maps/api/staticmap?center=25.174873352051,55.370407104492&zoom=16&size=600x450&maptype=roadmap&markers=25.174873352051,55.370407104492&sensor=false&scale=2">\r\n</div>\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nShowroom 119,\r\nAuto Market, \r\nRas Al Khor,\r\nDubai, UAE\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971 52 767 9111\r\n\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-07-30 17:06:14', '2015-07-30 13:06:14', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-07-30 17:09:16', '2015-07-30 13:09:16', '<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-250x250.jpg" alt="car" width="250" height="250" />\r\n\r\n<h2>About us</h2>\r\n\r\nSaleem Motors are proud to give you a great service and a wide variety of cars to choose from. We have used cars for sale as well as new cars.', 'The story about us', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-30 17:09:16', '2015-07-30 13:09:16', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2015-10-27 17:52:30', '2015-10-27 13:52:30', '', 'Welcome to Romeo Cars', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-10-27 17:52:30', '2015-10-27 13:52:30', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-11-04 12:15:47', '2015-11-04 08:15:47', '<img class="alignleft size-thumbnail wp-image-21" src="http://localhost/almuna/wp-content/uploads/2015/05/car-250x250.jpg" alt="car" width="250" height="250" />\r\n\r\n<h2>About us</h2>\r\n\r\nWe at Romeo Car Showroom offer you a wide variety of popular cars to choose from. We mainly have used cars for sale and are happy to buy or trade in your car.', 'About Romeo Car Showroom', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-11-04 12:15:47', '2015-11-04 08:15:47', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-11-04 12:24:10', '2015-11-04 08:24:10', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="//maps.googleapis.com/maps/api/staticmap?center=25.174194335938,55.368732452393&zoom=16&size=600x450&maptype=roadmap&markers=25.174194335938,55.368732452393&sensor=false&scale=2">\r\n</div>\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nShowroom 86,\r\nAuto Market, \r\nRas Al Khor,\r\nDubai, UAE\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971 52 767 9111\r\n\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-11-04 12:24:10', '2015-11-04 08:24:10', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2015-11-04 12:24:50', '2015-11-04 08:24:50', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Location</h3>\r\n\r\n<div class="map">\r\n<img src="//maps.googleapis.com/maps/api/staticmap?center=25.174194335938,55.368732452393&zoom=16&size=600x450&maptype=roadmap&markers=25.174194335938,55.368732452393&sensor=false&scale=2">\r\n</div>\r\n\r\n</div>\r\n\r\n<div>\r\n\r\n<h3>Main address</h3>\r\n\r\nShowroom 86,\r\nAuto Market, \r\nRas Al Khor,\r\nDubai, UAE\r\n\r\n<h3>Mobile phone</h3>\r\n\r\n+971 55 884 7000\r\n\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-11-04 12:24:50', '2015-11-04 08:24:50', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-11-04 14:03:07', '2015-11-04 10:03:07', '<img class="alignleft size-thumbnail wp-image-53" src="http://localhost/almuna/wp-content/uploads/2015/11/aston-concept-250x250.jpg" alt="aston-concept" width="250" height="250" />\r\n<h2>About us</h2>\r\nWe at Romeo Car Showroom offer you a wide variety of popular cars to choose from. We mainly have used cars for sale and are happy to buy or trade in your car.', 'About Romeo Car Showroom', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-11-04 14:03:07', '2015-11-04 10:03:07', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-11-04 14:21:46', '2015-11-04 10:21:46', '', 'Welcome to<br>Romeo Cars', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-04 14:21:46', '2015-11-04 10:21:46', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-11-17 10:13:16', '2015-11-17 06:13:16', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 86,\r\nAuto Market,\r\nRas Al Khor,\r\nDubai, UAE\r\n<h3>Mobile phone</h3>\r\n+971 55 884 7000\r\n\r\n</div>', 'Feel free to contact us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-11-17 10:13:16', '2015-11-17 06:13:16', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-11-17 10:38:57', '2015-11-17 06:38:57', '', 'Welcome to Diamond Class Motors', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-11-17 10:38:57', '2015-11-17 06:38:57', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-11-17 10:46:33', '2015-11-17 06:46:33', '<img class="alignleft wp-image-64 size-full" src="http://localhost/almuna/wp-content/uploads/2015/05/diamond_class_logo.png" alt="diamond_class_logo" width="300" height="215" />\r\n<h2>About us</h2>\r\nWe at Romeo Car Showroom offer you a wide variety of popular cars to choose from. We mainly have used cars for sale and are happy to buy or trade in your car.', 'About Romeo Car Showroom', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-11-17 10:46:33', '2015-11-17 06:46:33', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-11-17 13:36:57', '2015-11-17 09:36:57', '<img class="alignleft wp-image-64 size-full" src="http://localhost/almuna/wp-content/uploads/2015/05/diamond_class_logo.png" alt="diamond_class_logo" width="300" height="215" />\r\n<h2>About us</h2>\r\nDiamond Class Motors is proud to offer you premium quality cars like Porsche, Mercedes-Benz, Land Rover and BMW.', 'About Diamond Class Motors', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-11-17 13:36:57', '2015-11-17 09:36:57', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2015-11-17 16:20:46', '2015-11-17 12:20:46', '', 'Contact us: +971503500672', '', 'publish', 'open', 'closed', '', '971-52-716-6716', '', '', '2018-10-31 15:03:08', '2018-10-31 11:03:08', '', 0, 'http://localhost/almuna/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2015-11-17 16:20:46', '2015-11-17 12:20:46', '', '+9714 333 3357', '', 'publish', 'open', 'closed', '', '971-50-477-3348', '', '', '2018-10-31 15:03:08', '2018-10-31 11:03:08', '', 0, 'http://localhost/almuna/?p=71', 2, 'nav_menu_item', '', 0),
(72, 1, '2015-11-17 16:40:24', '2015-11-17 12:40:24', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 86,\r\nAuto Market,\r\nRas Al Khor,\r\nDubai, UAE\r\n<h3>Mobile phone</h3>\r\n+971 55 884 7000\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-11-17 16:40:24', '2015-11-17 12:40:24', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-11-17 16:41:33', '2015-11-17 12:41:33', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 19,\r\nAuto Market,\r\nRas Al Khor,\r\nDubai, UAE\r\n<h3>Mobile phone</h3>\r\n+971 52 716 6716<br>\r\n+971 50 477 3348\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-11-17 16:41:33', '2015-11-17 12:41:33', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-03-21 11:27:58', '2016-03-21 07:27:58', '', 'Welcome to Diablto Motors', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2016-03-21 11:27:58', '2016-03-21 07:27:58', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2016-03-21 11:31:14', '2016-03-21 07:31:14', '<img class="alignleft size-full wp-image-76" src="http://localhost/almuna/wp-content/uploads/2016/03/diablto_320.png" alt="diablto_320" width="320" height="200" />\r\n<h2>About us</h2>\r\nDiablto Motors offers you the best cars with top quality. We have hand-picked our inventory to give you the best offers available.', 'About Diamond Class Motors', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-03-21 11:31:14', '2016-03-21 07:31:14', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2016-03-21 11:33:37', '2016-03-21 07:33:37', '<img class="alignleft size-full wp-image-76" src="http://localhost/almuna/wp-content/uploads/2016/03/diablto_320.png" alt="diablto_320" width="320" height="200" />\r\n<h2>About us</h2>\r\nDiablto Motors offers you the best cars with top quality. We have hand-picked our inventory to give you the best offers available.', 'About Diablto Motors', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-03-21 11:33:37', '2016-03-21 07:33:37', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2016-03-21 11:37:46', '2016-03-21 07:37:46', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 19,\r\nAuto Market,\r\nRas Al Khor,\r\nDubai, UAE\r\n<h3>Mobile phone</h3>\r\n+971 52 716 6716\r\n+971 50 477 3348\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-03-21 11:37:46', '2016-03-21 07:37:46', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2016-03-21 11:39:28', '2016-03-21 07:39:28', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nNew Auto Market Block 6 - Showroom 60, Used Cars Complex,\r\nRas Al Khor, Dubai, United Arab Emirates\r\n<h3>Phone</h3>\r\n<a href="tel:+97143208777">+971 4 320 8777</a><br><a href="tel:+971563332066">+971 56 333 2066</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-03-21 11:39:28', '2016-03-21 07:39:28', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-05-24 20:28:26', '2016-05-24 16:28:26', '<img class="alignleft size-full wp-image-76" src="http://localhost/almuna/wp-content/uploads/2016/03/diablto_320.png" alt="diablto_320" width="320" height="200" />\r\n<h2>About us</h2>\r\nDiablto Motors offers you the best cars with top quality. We have hand-picked our inventory to give you the best offers available.', 'About Humera Automobile FZCO', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-05-24 20:28:26', '2016-05-24 16:28:26', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2016-05-24 20:28:43', '2016-05-24 16:28:43', '', 'Welcome to Humera Automobile', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2016-05-24 20:28:43', '2016-05-24 16:28:43', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-05-25 10:47:36', '2016-05-25 06:47:36', '<img class="alignleft size-full wp-image-76" src="http://localhost/almuna/wp-content/uploads/2016/03/diablto_320.png" alt="diablto_320" width="320" height="200" />\r\n<h2>About us</h2>\r\nHumera Automobile FZCO offers you the best cars with top quality. We have hand-picked our inventory to give you the best offers available.', 'About Humera Automobile FZCO', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-05-25 10:47:36', '2016-05-25 06:47:36', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2016-05-25 10:48:11', '2016-05-25 06:48:11', '<h2>About us</h2>\r\nHumera Automobile FZCO offers you the best cars with top quality. We have hand-picked our inventory to give you the best offers available.', 'About Humera Automobile FZCO', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-05-25 10:48:11', '2016-05-25 06:48:11', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-05-25 10:51:10', '2016-05-25 06:51:10', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 188, Dubai Auto Zone Ducamz, Ras Al Khor Al Aweer Free Zone\r\n<h3>Phone</h3>\r\n<a href="tel:+971504522617">+97150 452 2617</a><br><a href="tel:+971552232972">+97155 223 2972</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-05-25 10:51:10', '2016-05-25 06:51:10', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-05-25 11:01:39', '2016-05-25 07:01:39', '', 'car-1920x838', '', 'inherit', 'open', 'open', '', 'car-1920x838', '', '', '2016-05-25 11:01:39', '2016-05-25 07:01:39', '', 2, 'http://localhost/almuna/wp-content/uploads/2015/05/car-1920x8381.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2016-06-13 19:23:51', '2016-06-13 15:23:51', '<h2>About us</h2>\r\nU.S Motors offers you the best cars with top quality.', 'About U.S Motors', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2016-06-13 19:23:51', '2016-06-13 15:23:51', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-06-13 19:24:09', '2016-06-13 15:24:09', '', 'Welcome to U.S Motors', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2016-06-13 19:24:09', '2016-06-13 15:24:09', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2016-06-13 19:25:57', '2016-06-13 15:25:57', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 20, Auto Market, Ras Al Khor\r\n<h3>Phone</h3>\r\n<a href="tel:+971503500672">+97150 350 0672</a><br><a href="tel:+97143333357">+9714 333 3357</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2016-06-13 19:25:57', '2016-06-13 15:25:57', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-01-22 13:01:04', '2017-01-22 09:01:04', '', 'Welcome to Formula Auto FZE', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2017-01-22 13:01:04', '2017-01-22 09:01:04', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-01-22 15:47:59', '2017-01-22 11:47:59', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nShowroom 83 & 89, Auto Market, Ras Al Khor\r\n<h3>Phone</h3>\r\n<a href="tel:+971558098006">+97155 809 8006</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2017-01-22 15:47:59', '2017-01-22 11:47:59', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-01-22 15:49:54', '2017-01-22 11:49:54', '<h2>About us</h2>\r\nFormula Auto FZE offers you the best cars with top quality.', 'About Formula Auto FZE', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2017-01-22 15:49:54', '2017-01-22 11:49:54', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-01-22 15:58:23', '2017-01-22 11:58:23', '', 'nissan_patrol', '', 'inherit', 'open', 'open', '', 'nissan_patrol', '', '', '2017-01-22 15:58:23', '2017-01-22 11:58:23', '', 2, 'http://localhost/almuna/wp-content/uploads/2015/05/nissan_patrol.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-01-22 16:02:35', '2017-01-22 12:02:35', '', 'toyota_land_cruiser', '', 'inherit', 'open', 'open', '', 'toyota_land_cruiser', '', '', '2017-01-22 16:02:35', '2017-01-22 12:02:35', '', 2, 'http://localhost/almuna/wp-content/uploads/2015/05/toyota_land_cruiser.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-02-05 12:41:48', '2017-02-05 08:41:48', '', 'range_rover', '', 'inherit', 'open', 'open', '', 'range_rover', '', '', '2017-02-05 12:41:48', '2017-02-05 08:41:48', '', 2, 'http://localhost/almuna/wp-content/uploads/2015/05/range_rover.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2017-09-17 17:09:18', '2017-09-17 13:09:18', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nDubai Auto Zone, Showroom 193, Ras Al Khor, Dubai, United Arab Emirates\r\n<h3>Phone</h3>\r\n<a href="tel:+971558098006">+97155 809 8006</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2017-09-17 17:09:18', '2017-09-17 13:09:18', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-05-24 12:23:51', '0000-00-00 00:00:00', '<p>\n<strong>New Resource: WordPress and GDPR Compliance (in Plain English)</strong><br />\nAre you confused by GDPR, and how it will impact your WordPress site? We have gotten dozens of emails from users asking us to explain GDPR in plain English and share tips on how to make your WordPress site GDPR compliant. So we created an ultimate guide to explain everything you need to know about GDPR and WordPress (without the complex legal jargon).\n</p>\n<p><a href="http://www.wpbeginner.com/beginners-guide/the-ultimate-guide-to-wordpress-and-gdpr-compliance-everything-you-need-to-know/?utm_source=wpdashboard&#038;utm_medium=amnotification&#038;utm_campaign=gdprguide" target="_blank" class="button button-primary">Read our WordPress and GDPR Compliance Guide &raquo;</a></p>\n<p>\nSyed Balkhi<br />\nFounder of WPBeginner and MonsterInsights</p>\n', '', '', 'draft', 'open', 'open', '', '', '', '', '2018-05-24 12:23:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/almuna/?post_type=amn_mi-lite&p=107', 0, 'amn_mi-lite', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2018-05-24 17:36:34', '2018-05-24 13:36:34', '<h2>About us</h2>\r\n\r\nFormula Auto FZE Automotive is a leader in auto re-export and supply chain services in the region.\r\n\r\nFormula Auto FZE Automotive was established in the UAE in 2010 to provide and sustain mobility in world markets.\r\n\r\n\r\n\r\nWe specialize in exporting cars to all over the world:\r\n\r\nHaving established solid relationships with a network of car dealerships in more than 100 countries and with the regional center for global trade and export, Formula Auto FZE has established itself as a regional leader in global auto re-export solutions.\r\n\r\n\r\nDevelop infrastructure for customer convenience:\r\n\r\nOur advanced infrastructure ensures maximum convenience for our customers through our e-commerce website.\r\nIn addition to exporting cars and experience in spare parts and accessories, Formula Auto FZE also provides installation, maintenance and mechanical repairs services at our dedicated service centers, with a team of professionals who are well versed in all our products and services.\r\n\r\n\r\nServices of re-export:\r\n\r\nWith more than two decades of experience, Formula Auto FZE has built relationships with its customers, established a professional team and a network of partners across its supply chain, enabling us to provide our clients with an integrated experience of re-export services, from purchase and installation of accessories, To financial services, logistics, shipping and clearance.\r\n\r\n\r\nOur vision:\r\n\r\nWe aim to provide exceptional value by building long-term partnerships and providing complete solutions for auto re-export services.\r\n\r\n\r\nOur Mission:\r\n\r\nWe strive to provide the highest level of quality in the automotive sector products and services at competitive prices and with ease and smoothness.\r\n\r\n\r\n\r\nOur Values:\r\n\r\n	Customer Focus: We are committed to delivering the highest standards of customer satisfaction by focusing on meeting the needs of our customers.\r\n	Quality: We pride ourselves in continuously providing high quality products, services and solutions from reliable sources.\r\n	Integrity: We deal with all our partners and customers with the utmost honesty, respect and ethical standards.\r\n	Responsibility: We work responsibly and efficiently in all our business to achieve long-term success.\r\n	Passion: We are constantly working to initiate and seek new opportunities.\r\n	Community Participation: We always strive to participate in community activities and to expand our resources and assistance wherever possible.\r\n', 'About Formula Auto FZE', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-24 17:36:34', '2018-05-24 13:36:34', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-05-24 17:37:50', '2018-05-24 13:37:50', '<h2>About us</h2>\r\nFormula Auto FZE Automotive is a leader in auto re-export and supply chain services in the region.\r\n\r\nFormula Auto FZE Automotive was established in the UAE in 2010 to provide and sustain mobility in world markets.\r\n\r\nWe specialize in exporting cars to all over the world:\r\n\r\nHaving established solid relationships with a network of car dealerships in more than 100 countries and with the regional center for global trade and export, Formula Auto FZE has established itself as a regional leader in global auto re-export solutions.\r\n\r\nDevelop infrastructure for customer convenience:\r\n\r\nOur advanced infrastructure ensures maximum convenience for our customers through our e-commerce website.\r\nIn addition to exporting cars and experience in spare parts and accessories, Formula Auto FZE also provides installation, maintenance and mechanical repairs services at our dedicated service centers, with a team of professionals who are well versed in all our products and services.\r\n\r\nServices of re-export:\r\n\r\nWith more than two decades of experience, Formula Auto FZE has built relationships with its customers, established a professional team and a network of partners across its supply chain, enabling us to provide our clients with an integrated experience of re-export services, from purchase and installation of accessories, To financial services, logistics, shipping and clearance.\r\n\r\nOur vision:\r\n\r\nWe aim to provide exceptional value by building long-term partnerships and providing complete solutions for auto re-export services.\r\n\r\nOur Mission:\r\n\r\nWe strive to provide the highest level of quality in the automotive sector products and services at competitive prices and with ease and smoothness.\r\n\r\nOur Values:\r\n<ul>\r\n 	<li> Customer Focus: We are committed to delivering the highest standards of customer satisfaction by focusing on meeting the needs of our customers.</li>\r\n 	<li> Quality: We pride ourselves in continuously providing high quality products, services and solutions from reliable sources.</li>\r\n 	<li> Integrity: We deal with all our partners and customers with the utmost honesty, respect and ethical standards.</li>\r\n 	<li> Responsibility: We work responsibly and efficiently in all our business to achieve long-term success.</li>\r\n 	<li> Passion: We are constantly working to initiate and seek new opportunities.</li>\r\n 	<li> Community Participation: We always strive to participate in community activities and to expand our resources and assistance wherever possible.</li>\r\n</ul>\r\nفورملا اوتو م .م .ح للسيارات هي شركة رائدة في مجال خدمات إعادة تصدير السيارات وسلسلة التوريد في المنطقة\r\nتم تأسيس شركة فورملا اوتو م. م. ح للسيارات في دولة الإمارات العربية المتحدة في عام2010 لتوفير واستدامة التنقل في الأسواق العالمية.\r\n\r\nمتخصصون بتصدير السيارات الى جميع أنحاء العالم\r\nوبعد أن أقامت شركة فورملا اوتو م.م.ح للسيارات علاقات راسخة مع شبكة من وكلاء السيارات في أكثر من 100 دولة، فضلا عن الاستفادة من المركز الاقليمي للتجارة العالمية وللتصدير، فقد ازدهرت لتصبح رائدة إقليميا في مجال حلول إعادة تصدير السيارات على مستوى عالمي.\r\n\r\nتطوير البنية التحتية لراحة العملاء\r\nإن بنيتنا التحتية المتطورة تضمن أقصى قدر من الراحة للعملاء من خلال موقعنا الإلكتروني للتجارة الإلكترونية.\r\nبالإضافة إلى تصدير السيارات وخبرة قطع الغيار والإكسسوارات، توفر فورملا اوتو للسيارات أيضا خدمات التركيب والصيانة والإصلاحات الميكانيكية في مراكز الخدمة المخصصة لدينا، مع فريق من المهنيين الذين هم على دراية جيدة في جميع المنتجات والخدمات التي نقدمها.\r\n\r\nخدمات متكاملة لإعادة التصدير\r\nمع أكثر من عقدين من الخبرة تمكنت شركة فورملا اوتو م.م.ح من بناء علاقات وتيدة مع عملائها، كما انشأت فريقا محترفاً وشبكة من الشركاء عبر سلسلة التوريد لديها، مما سمح لنا بتزويد عملائنا بتجربة متكاملة لخدمات إعادة التصدير، بدءا من الشراء وتركيب الإكسسوارات، إلى الخدمات المالية واللوجستية والشحن والتخليص.\r\n\r\nرؤيتنا\r\nنهدف إلى تقديم قيمة استثنائية من خلال بناء شراكات طويلة الأمد وتوفير حلول متكاملة لخدمات إعادة تصدير السيارات.\r\n\r\nرسالتنا\r\nنسعى جاهدين الى توفير أعلى مستوى من الجودة في منتجات وخدمات قطاع السيارات بأسعار تنافسية وبكل سهولة وسلاسة.\r\n\r\nقيمنا\r\n<ul>\r\n 	<li>التركيز على العميل: نحن ملتزمون بتقديم أعلى معايير رضا العملاء وذلك بالتركيز على تلبية احتياجات عملائنا.</li>\r\n 	<li> الجودة: نحن نفخر في توفير مستمر لمنتجات وخدمات وحلول ذات جودة عالية ومن مصادر موثوقة.</li>\r\n 	<li> النزاهة: نحن نتعامل مع كل شركائنا وعملائنا بأقصى قدر من الصدق والاحترام والمعايير الأخلاقية.</li>\r\n 	<li> المسؤولية: نحن نعمل بمسؤولية وكفاءة في كل أعمالنا لتحقيق النجاح على المدى الطويل.</li>\r\n 	<li> الشغف: نحن نعمل باستمرار للمبادرة والسعي إلى فرص جديدة.</li>\r\n 	<li> المشاركة المجتمعية: نسعى دائماً إلى المشاركة بنشاطات مجتمعية والى توسيع مواردنا والمساعدة أينما أمكن.</li>\r\n</ul>', 'About Formula Auto FZE', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-24 17:37:50', '2018-05-24 13:37:50', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-05-24 17:38:46', '2018-05-24 13:38:46', '<h2>About us</h2>\r\nFormula Auto FZE Automotive is a leader in auto re-export and supply chain services in the region.\r\n\r\nFormula Auto FZE Automotive was established in the UAE in 2010 to provide and sustain mobility in world markets.\r\n\r\nWe specialize in exporting cars to all over the world:\r\n\r\nHaving established solid relationships with a network of car dealerships in more than 100 countries and with the regional center for global trade and export, Formula Auto FZE has established itself as a regional leader in global auto re-export solutions.\r\n\r\nDevelop infrastructure for customer convenience:\r\n\r\nOur advanced infrastructure ensures maximum convenience for our customers through our e-commerce website.\r\nIn addition to exporting cars and experience in spare parts and accessories, Formula Auto FZE also provides installation, maintenance and mechanical repairs services at our dedicated service centers, with a team of professionals who are well versed in all our products and services.\r\n\r\nServices of re-export:\r\n\r\nWith more than two decades of experience, Formula Auto FZE has built relationships with its customers, established a professional team and a network of partners across its supply chain, enabling us to provide our clients with an integrated experience of re-export services, from purchase and installation of accessories, To financial services, logistics, shipping and clearance.\r\n\r\nOur vision:\r\n\r\nWe aim to provide exceptional value by building long-term partnerships and providing complete solutions for auto re-export services.\r\n\r\nOur Mission:\r\n\r\nWe strive to provide the highest level of quality in the automotive sector products and services at competitive prices and with ease and smoothness.\r\n\r\nOur Values:\r\n<ul>\r\n 	<li> Customer Focus: We are committed to delivering the highest standards of customer satisfaction by focusing on meeting the needs of our customers.</li>\r\n 	<li> Quality: We pride ourselves in continuously providing high quality products, services and solutions from reliable sources.</li>\r\n 	<li> Integrity: We deal with all our partners and customers with the utmost honesty, respect and ethical standards.</li>\r\n 	<li> Responsibility: We work responsibly and efficiently in all our business to achieve long-term success.</li>\r\n 	<li> Passion: We are constantly working to initiate and seek new opportunities.</li>\r\n 	<li> Community Participation: We always strive to participate in community activities and to expand our resources and assistance wherever possible.</li>\r\n</ul>\r\n<div dir="rtl">فورملا اوتو م .م .ح للسيارات هي شركة رائدة في مجال خدمات إعادة تصدير السيارات وسلسلة التوريد في المنطقة\r\nتم تأسيس شركة فورملا اوتو م. م. ح للسيارات في دولة الإمارات العربية المتحدة في عام2010 لتوفير واستدامة التنقل في الأسواق العالمية.متخصصون بتصدير السيارات الى جميع أنحاء العالم\r\nوبعد أن أقامت شركة فورملا اوتو م.م.ح للسيارات علاقات راسخة مع شبكة من وكلاء السيارات في أكثر من 100 دولة، فضلا عن الاستفادة من المركز الاقليمي للتجارة العالمية وللتصدير، فقد ازدهرت لتصبح رائدة إقليميا في مجال حلول إعادة تصدير السيارات على مستوى عالمي.\r\n\r\nتطوير البنية التحتية لراحة العملاء\r\nإن بنيتنا التحتية المتطورة تضمن أقصى قدر من الراحة للعملاء من خلال موقعنا الإلكتروني للتجارة الإلكترونية.\r\nبالإضافة إلى تصدير السيارات وخبرة قطع الغيار والإكسسوارات، توفر فورملا اوتو للسيارات أيضا خدمات التركيب والصيانة والإصلاحات الميكانيكية في مراكز الخدمة المخصصة لدينا، مع فريق من المهنيين الذين هم على دراية جيدة في جميع المنتجات والخدمات التي نقدمها.\r\n\r\nخدمات متكاملة لإعادة التصدير\r\nمع أكثر من عقدين من الخبرة تمكنت شركة فورملا اوتو م.م.ح من بناء علاقات وتيدة مع عملائها، كما انشأت فريقا محترفاً وشبكة من الشركاء عبر سلسلة التوريد لديها، مما سمح لنا بتزويد عملائنا بتجربة متكاملة لخدمات إعادة التصدير، بدءا من الشراء وتركيب الإكسسوارات، إلى الخدمات المالية واللوجستية والشحن والتخليص.\r\n\r\nرؤيتنا\r\nنهدف إلى تقديم قيمة استثنائية من خلال بناء شراكات طويلة الأمد وتوفير حلول متكاملة لخدمات إعادة تصدير السيارات.\r\n\r\nرسالتنا\r\nنسعى جاهدين الى توفير أعلى مستوى من الجودة في منتجات وخدمات قطاع السيارات بأسعار تنافسية وبكل سهولة وسلاسة.\r\n\r\nقيمنا\r\n<ul>\r\n 	<li>التركيز على العميل: نحن ملتزمون بتقديم أعلى معايير رضا العملاء وذلك بالتركيز على تلبية احتياجات عملائنا.</li>\r\n 	<li> الجودة: نحن نفخر في توفير مستمر لمنتجات وخدمات وحلول ذات جودة عالية ومن مصادر موثوقة.</li>\r\n 	<li> النزاهة: نحن نتعامل مع كل شركائنا وعملائنا بأقصى قدر من الصدق والاحترام والمعايير الأخلاقية.</li>\r\n 	<li> المسؤولية: نحن نعمل بمسؤولية وكفاءة في كل أعمالنا لتحقيق النجاح على المدى الطويل.</li>\r\n 	<li> الشغف: نحن نعمل باستمرار للمبادرة والسعي إلى فرص جديدة.</li>\r\n 	<li> المشاركة المجتمعية: نسعى دائماً إلى المشاركة بنشاطات مجتمعية والى توسيع مواردنا والمساعدة أينما أمكن.</li>\r\n</ul>\r\n</div>', 'About Formula Auto FZE', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-24 17:38:46', '2018-05-24 13:38:46', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-10-31 14:50:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-31 14:50:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/almuna/?p=111', 0, 'post', '', 0),
(112, 1, '2018-10-31 14:59:45', '2018-10-31 10:59:45', '', 'Welcome to Al Muna Used Cars Exhibition', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-31 14:59:45', '2018-10-31 10:59:45', '', 2, 'http://localhost/almuna/2-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-10-31 15:30:00', '2018-10-31 11:30:00', '<div>\r\n\r\n[contact-form-7 id="29"]\r\n\r\n</div>\r\n<div>\r\n<h3>Main address</h3>\r\n</div>\r\n<div>\r\n\r\nSheikh Mohammed Bin Zayed St 311 Souq Al Haraj For Cars Showroom No : 119, Sharjah, UAE\r\n<h3>Phone</h3>\r\n<a href="tel:+971559171712">+971 55 917 1712</a>\r\n<a href="tel:+97165595448">+971 65 59 5448</a>\r\n\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-10-31 15:30:00', '2018-10-31 11:30:00', '', 9, 'http://localhost/almuna/9-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-10-31 15:54:24', '2018-10-31 11:54:24', '<h2>About us</h2>', 'About Al Muna Used Cars Exhibition', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-10-31 15:54:24', '2018-10-31 11:54:24', '', 7, 'http://localhost/almuna/7-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Social Menu', 'social-menu', 0),
(4, 'Contact Menu', 'contact-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(70, 4, 0),
(71, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,wp496_privacy,theme_editor_notice'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"c2d07e365ad0ff287f2b921fb6646d95bb32ef29b53baa718ed8595291422fb7";a:4:{s:10:"expiration";i:1541155850;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36";s:5:"login";i:1540983050;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '111'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '3'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&align=left&urlbutton=none&imgsize=thumbnail'),
(20, 1, 'wp_user-settings-time', '1527169122'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(23, 1, 'wpseo_ignore_tour', '1'),
(24, 1, '_yoast_wpseo_profile_updated', '1505655312'),
(25, 1, 'wpseo_dismissed_gsc_notice', '1'),
(26, 1, 'wpseo_seen_about_version', '2.3.5'),
(27, 1, 'wpseo_title', ''),
(28, 1, 'wpseo_metadesc', ''),
(29, 1, 'wpseo_metakey', ''),
(30, 1, 'wpseo_noindex_author', ''),
(31, 1, 'googleplus', ''),
(32, 1, 'twitter', ''),
(33, 1, 'facebook', ''),
(34, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:"message";s:1075:"We''ve noticed you''ve been using Yoast SEO for some time now; we hope you love it! We''d be thrilled if you could <a href="https://yoa.st/rate-yoast-seo?php_version=5.5.27&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.5.1&role=administrator">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href="https://yoa.st/bugreport?php_version=5.5.27&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.5.1&role=administrator">please file a bug report</a> and we''ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=''https://yoa.st/premium-notification?php_version=5.5.27&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.5.1&role=administrator''>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class="button" href="http://localhost/almuna/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell">Please don''t show me this notification anymore</a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:19:"wpseo-upsell-notice";s:5:"nonce";N;s:8:"priority";d:0.8000000000000000444089209850062616169452667236328125;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:166:"Don''t miss your crawl errors: <a href="http://localhost/almuna/wp-admin/admin.php?page=wpseo_search_console&tab=settings">connect with Google Search Console here</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BLHh2hz/U5bAEWZDhpsOUECO3piUzd1', 'admin', 'darko@dubicars.com', '', '2015-05-19 00:33:31', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE IF NOT EXISTS `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(2, 'tel:+971559171712', 9, 0, 'external'),
(3, 'tel:+97165595448', 9, 0, 'external');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE IF NOT EXISTS `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 0, 0),
(5, 0, 0),
(7, 0, 0),
(9, 0, 0),
(13, 0, 0),
(14, 0, 0),
(102, 0, 0),
(106, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=774;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=433;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
