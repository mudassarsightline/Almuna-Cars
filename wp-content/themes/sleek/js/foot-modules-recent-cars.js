App.modules.RecentCars = {
	init: function (mod) {
		ResizeIframe.init(mod.getElementsByTagName('iframe')[0], 'recent', 'dubicars.com');
	}
};
