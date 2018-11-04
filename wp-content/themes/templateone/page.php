<?php get_header() ?>

<?php sleek_get_module('map') ?>

<main>

	<?php sleek_get_module('post-content') ?>
	<?php sleek_get_module('sub-nav') ?>
	<?php comments_template('/modules/comments.php') ?>

</main>

<?php sleek_get_module('connected-posts') ?>

<aside id="aside">

	<?php dynamic_sidebar('aside') ?>

</aside>

<?php get_footer() ?>
