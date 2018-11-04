App.modules.Serp = {
	init: function (mod) {
		ResizeIframe.init(mod.getElementsByTagName('iframe')[0], 'serp', 'dubicars.com');
	}
};
