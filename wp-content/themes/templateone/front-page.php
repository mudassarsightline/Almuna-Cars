<?php get_header() ?>

<section id="hero">

	<?php sleek_get_module('featured-cars') ?>

</section>

<?php sleek_get_module('map') ?>
<?php sleek_get_module('recent-cars') ?>

<main>

	<?php sleek_get_module('connected-posts') ?>

</main>

<aside id="aside">

	<?php dynamic_sidebar('aside') ?>

</aside>

<?php get_footer() ?>
