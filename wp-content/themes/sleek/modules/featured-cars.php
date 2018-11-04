<?php
	$data = file_get_contents('https://www.dubicars.com/api/' . DUBICARS_ID . '/recent');
	$data = json_decode($data);
?>

<section id="featured-cars">

	<?php sleek_get_module('search-dubicars') ?>

	<ul class="fadeshow">
		<?php $i = 0; foreach ($data->items as $item) : $i++ ?>
			<?php $dcURL = get_permalink(get_page_by_path(SERP_SLUG)) . '?tl=%2F' . $item->slug . '.html' ?>
			<li<?php if ($i == 1) : ?> class="active"<?php endif ?>>
				<figure>

					<a href="<?php echo $dcURL ?>"><img src="<?php echo 'https:' . $item->{'image-medium'} ?>"></a>

					<figcaption>

						<h3>
							<a href="<?php echo $dcURL ?>">
								<?php echo $item->title ?>
							</a>
						</h3>

						<p><?php echo substr($item->description, 0, 40) ?>...</p>

						<p class="price">
							<a href="<?php echo $dcURL ?>">
								<strong>
									<?php if (isset($item->on_request)) : ?>
										<?php _e('Price on request', 'h5b') ?>
									<?php elseif (isset($item->reduced_price)) : ?>
										<?php echo $item->reduced_price ?>
									<?php elseif (isset($item->price)) : ?>
										<?php echo $item->price ?>
									<?php endif ?>
								</strong>
							</a>
						</p>

					</figcaption>

				</figure>
			</li>
		<?php endforeach ?>
	</ul>

</section>
