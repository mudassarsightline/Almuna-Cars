App.modules.Slideshow = {
	init: function (mod) {
		jQuery(mod).fadeshow({el: 'img', nav: 'appendTo', pagination: false});

		// Autoplay
		var autoplayInterval = setInterval(function () {
			jQuery(mod).find('nav.fadeshow-nav').find('a.next').trigger('click', ['autoplay']);
		}, 5000);

		jQuery(mod).find('nav.fadeshow-nav').find('a').click(function (e, from) {
			if (from != 'autoplay') {
				clearInterval(autoplayInterval);
			}
		});
	}
};
