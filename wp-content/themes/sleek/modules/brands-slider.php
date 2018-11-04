<?php
	$data = file_get_contents('https://www.dubicars.com/api/' . DUBICARS_ID . '/makes');
	$data = json_decode($data);
	$ignore = array('Others');
?>

<section id="cars-in-stock">

	<h2>Our brands</h2>

	<div id="make-slideshow">
		<ul class="owl-carousel">
			<?php foreach ($data->makes as $make) : if (!in_array($make->name, $ignore)) : ?>
				<li>
					<a href="<?php echo get_permalink(get_page_by_path('our-cars')) ?>?make=<?php echo $make->id ?>">
						<img src="<?php echo $make->logo_url ?>">
					</a>
				</li>
			<?php endif; endforeach ?>
		</ul>
	</div>

</section>