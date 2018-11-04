<?php get_header() ?>

<section id="hero">

	<h1><?php the_title() ?></h1>

	<?php sleek_get_module('slideshow') ?>

</section>

<?php sleek_get_module('search-dubicars') ?>

<main>

	<?php # sleek_get_module('post-content') ?>
	<?php sleek_get_module('recent-cars') ?>

</main>

<aside id="aside">

	<?php dynamic_sidebar('aside') ?>

</aside>

<?php sleek_get_module('map') ?>

<?php get_footer() ?>
