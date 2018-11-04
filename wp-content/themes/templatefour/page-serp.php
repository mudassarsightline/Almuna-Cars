<?php /* Template Name: SERP */ ?>
<?php get_header() ?>

<section id="hero">

	<h1><?php the_title() ?></h1>

	<?php sleek_get_module('slideshow') ?>

</section>

<main>

	<?php sleek_get_module('post-content') ?>
	<?php comments_template('/modules/comments.php') ?>
	<?php sleek_get_module('serp-dubicars') ?>

</main>

<aside id="aside">

	<?php dynamic_sidebar('aside') ?>

</aside>

<?php sleek_get_module('map') ?>

<?php get_footer() ?>
