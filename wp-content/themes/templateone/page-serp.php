<?php /* Template Name: SERP */ ?>
<?php get_header() ?>

<?php sleek_get_module('map') ?>

<main>

	<?php # sleek_get_module('post-content') ?>
	<?php comments_template('/modules/comments.php') ?>
	<?php sleek_get_module('serp-dubicars') ?>

</main>

<?php sleek_get_module('connected-posts') ?>

<aside id="aside">

	<?php dynamic_sidebar('aside') ?>

</aside>

<?php get_footer() ?>
