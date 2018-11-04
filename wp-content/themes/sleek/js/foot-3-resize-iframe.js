var ResizeIframe = {
	init: function (iframe, iframeName, origin) {
		jQuery(window).on('message', function (event) {
			var event = event.originalEvent;

			if (event.data.iframe && event.data.iframe != iframeName) {
				return;
			}

			if (
				event.origin == 'https://www.' + origin || 
				event.origin == 'https://www.' + origin + '/' || 
				event.origin == 'https://' + origin || 
				event.origin == 'https://' + origin + '/' || 
				event.origin == 'http://www.' + origin || 
				event.origin == 'http://www.' + origin + '/' || 
				event.origin == 'http://' + origin || 
				event.origin == 'http://' + origin + '/'
			) {
				// Scroll up
				if (event.data == 'scrollToTop') {
					setTimeout(function () {
						jQuery('html, body').animate({scrollTop: 450}, 500);
					}, 200);
				}
				// Resize
				else if (!isNaN(event.data) && parseInt(event.data)) {
					iframe.height = parseInt(event.data);
					iframe.style.height = parseInt(event.data) + 'px';
				}
				else if (event.data.iframe && !isNaN(event.data.height) && parseInt(event.data.height)) {
					iframe.height = parseInt(event.data.height);
					iframe.style.height = parseInt(event.data.height) + 'px';
				}
			}
		});
	}
};
