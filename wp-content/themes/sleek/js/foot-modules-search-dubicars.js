App.modules.SearchDubicars = {
	init: function (mod) {
		ResizeIframe.init(mod.getElementsByTagName('iframe')[0], 'search', 'dubicars.com');
	}
};
