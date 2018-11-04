<section id="recent-cars">

	<iframe src="<?php echo IFRAME_RECENT ?>" width="100%" height="169" scrolling="no"></iframe>

</section>

<?php /*
	$data = file_get_contents('https://www.dubicars.com/api/' . DUBICARS_ID . '/recent');
	$data = json_decode($data);
?>

<section id="recent-cars">

	<h2><?php _e('Our newest cars', 'h5b') ?></h2>

	<ul class="cols-1-3">
		<?php $i = 0; foreach ($data->items as $item) : if ($i++ < 3) : ?>
			<li class="car">
				<h3>
					<a href="<?php echo get_permalink(get_page_by_path(SHOWROOM_SLUG)) ?>?id=<?php echo $item->slug ?>">
						<span class="car-img">
							<img src="<?php echo $item->image ?>">
							<span class="photos">8x</span>
						</span>
						<?php echo $item->title ?>
					</a>
				</h3>

				<dl class="data">
					<dt><?php _e('Year', 'sleek') ?></dt>
					<dd>2012</dd>
					<dt><?php _e('Km', 'sleek') ?></dt>
					<dd>10,681</dd>
					<dt><?php _e('Color', 'sleek') ?></dt>
					<dd>Black</dd>
					<dt><?php _e('Price', 'sleek') ?></dt>
					<dd>
						<strong class="price">
							<a href="<?php echo get_permalink(get_page_by_path(SHOWROOM_SLUG)) ?>?id=<?php echo $item->slug ?>">
								AED 385,000
							</a>
						</strong>
					</dd>
				</dl>
			</li>
		<?php endif; endforeach ?>
	</ul>

</section> */ ?>
