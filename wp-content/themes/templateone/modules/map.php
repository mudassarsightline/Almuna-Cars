<?php
	$mapData = simple_fields_fieldgroup('map_group');
?>

<?php if ($mapData and $mapData['lat'] and $mapData['lng']) : ?>
	<section id="map">

		<div class="map">
			<img src="<?php echo $mapData['static_maps']['large'] ?>">
		</div>

	</section>
<?php endif ?>
