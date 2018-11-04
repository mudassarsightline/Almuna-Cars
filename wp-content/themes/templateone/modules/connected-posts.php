<?php
	global $post;

	$connectedPosts = simple_fields_fieldgroup('connected_posts_group');
?>

<?php if ($connectedPosts) : ?>
	<nav id="connected-posts">

		<ul>
			<?php foreach ($connectedPosts as $cp) : ?>
				<?php $post = get_post($cp); setup_postdata($post) ?>
				<li>
					<a href="<?php the_permalink() ?>">
						<?php $mapData = simple_fields_fieldgroup('map_group') ?>
						<?php if ($mapData and $mapData['lat'] and $mapData['lng']) : ?>
							<img src="<?php echo $mapData['static_maps']['thumbnail'] ?>" class="static">
						<?php elseif (has_post_thumbnail()) : ?>
							<?php the_post_thumbnail('thumbnail') ?>
						<?php endif ?> 
						<?php the_title() ?>
					</a>
				</li>
			<?php endforeach; wp_reset_postdata() ?>
		</ul>

	</nav>
<?php endif ?>
