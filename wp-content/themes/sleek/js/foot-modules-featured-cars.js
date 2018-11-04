App.modules.FeaturedCars = {
	init: function (mod) {
		jQuery(mod).find('ul.fadeshow').fadeshow({el: 'li', nav: 'insertAfter', pagination: 'insertAfter'});
	}
};
