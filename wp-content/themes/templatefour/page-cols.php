<?php /* Template Name: Columns */ ?>
<?php get_header() ?>

<section id="hero">

	<h1><?php the_title() ?></h1>

	<?php sleek_get_module('slideshow') ?>

</section>

<main>

	<?php sleek_get_module('post-content') ?>
	<?php comments_template('/modules/comments.php') ?>

</main>

<aside id="aside">

	<?php dynamic_sidebar('aside') ?>

</aside>

<?php get_footer() ?>
