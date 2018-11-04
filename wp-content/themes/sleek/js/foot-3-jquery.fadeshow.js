(function ($) {
	$.fn.fadeshow = function (conf) {
		var config = $.extend({
			el: 'li', 
			nav: 'appendTo', 
			pagination: 'appendTo'
		}, conf);

		return this.each(function () {
			var mod = $(this);
			var pagination = $('<nav class="fadeshow-pagination"></nav>');

			// Only run if more than one slide
			if ($(mod).children(config.el).length < 2) {
				return;
			}

			// Goes to next slide
			var gotoNext = function () {
				var current = mod.children(config.el + '.active');
				var next = current.next(config.el);

				if (!next.length) {
					next = mod.children(config.el).eq(0);
				}

				current.removeClass('active');
				next.addClass('active');
			};

			// Goes to previous slide
			var gotoPrev = function () {
				var current = mod.children(config.el + '.active');
				var next = current.prev(config.el);

				if (!next.length) {
					next = mod.children(config.el + ':last');
				}

				current.removeClass('active');
				next.addClass('active');
			};

			// Goes to specific slide
			var goto = function (which) {
				mod.children(config.el + '.active').removeClass('active');
				mod.children(config.el).eq(which).addClass('active');
			};

			// Sets active pagination link
			var setActivePagination = function () {
				var all = mod.children(config.el);
				var current = all.filter('.active');

				pagination.find('a').removeClass('active').eq(all.index(current)).addClass('active');
			};

			// Add pagination
			if (config.nav) {
				var nav = $('<nav class="fadeshow-nav"><a href="#" class="prev">&lt;</a><a href="#" class="next">&gt;</a></nav>')[config.nav](mod);

				nav.find('a').click(function () {
					if ($(this).is('.prev')) {
						gotoPrev();
						setActivePagination();
					}
					else {
						gotoNext();
						setActivePagination();
					}

					return false;
				});
			}

			if (config.pagination) {
				var links = '';

				mod.children(config.el).each(function (i) {
					links += '<a href="#">' + i + '</a>';
				});

				pagination.html(links)[config.pagination](mod);
				pagination.find('a').eq(0).addClass('active');

				pagination.find('a').click(function () {
					goto(parseInt($(this).text()));
					setActivePagination();

					return false;
				});
			}
		});
	};
})(jQuery);
