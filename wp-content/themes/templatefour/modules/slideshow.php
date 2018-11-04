<?php
	global $post;
	$sf_posts = simple_fields_fieldgroup('images_group');
?>

<section id="slideshow">

	<?php $i = 0; if (count($sf_posts)) : foreach ($sf_posts as $pid) : $i++ ?>
		<?php $image =  wp_get_attachment_image_src($pid, 'full') ?>
		<img src="<?php echo $image[0] ?>" width="<?php echo $image[1] ?>" height="<?php echo $image[2] ?>"<?php if ($i == 1) : ?> class="active"<?php endif ?>>
	<?php endforeach; elseif (has_post_thumbnail()) : ?>
		<?php the_post_thumbnail('full', array('class' => 'active')) ?>
	<?php else : ?>
		<img src="<?php echo get_stylesheet_directory_uri() ?>/css/gfx/default-hero.jpg" class="active">
	<?php endif ?>

</section>
