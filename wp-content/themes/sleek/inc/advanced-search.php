<?php
# Show all post types when browsing author
# add_filter('pre_get_posts', 'sleek_show_all_post_types_for_author');

function sleek_show_all_post_types_for_author ($qry) {
	if ($qry->is_main_query() and $qry->is_author) {
		$qry->set('post_type', 'any');
	}
}

# This was for a specific project, I'm keeping the code for future reference
# http://wordpress.stackexchange.com/questions/25899/the-right-way-to-create-a-custom-search-page-for-complex-custom-post-types
# add_filter('pre_get_posts', 'sleek_pre_get_posts');

function sleek_pre_get_posts ($qry) {
	$priceKey		= '_simple_fields_fieldGroupID_4_fieldID_3_numInSet_0';
	$validOrders	= array('price', 'date', 'relevance');
	$orderBy		= (isset($_GET['myorder']) and in_array($_GET['myorder'], $validOrders)) ? $_GET['myorder'] : 'relevance';

	# Only run on search, custom post type archive and taxonomy pages
	if (
		!is_admin() and 
		(
			(
				$qry->is_search or 
				$qry->is_post_type_archive(array('items', 'locations')) or 
				$qry->is_tax
			) 
			and $qry->is_main_query()
		)
	) {
		# Add tax query
		if (isset($_GET['tax'])) {
			$taxQry = array('relation' => 'AND');

			foreach ($_GET['tax'] as $tax => $val) {
				if (!empty($val)) {
					$taxQry[] = array(
						'taxonomy' => $tax, 
						'field' => 'id', 
						'terms' => $val
					);
				}
			}

			$qry->set('tax_query', $taxQry);
		}

		# Only include items and locations in search (because other post types don't have a price set)
		if ($qry->is_search) {
		#	$qry->set('post_type', array('items', 'locations'));
		}

		if ($orderBy == 'price') {
			$qry->set('orderby', 'meta_value_num');
			$qry->set('order', 'ASC');
			$qry->set('meta_key', $priceKey);
		}
		elseif ($orderBy == 'date') {
			$qry->set('orderby', 'date');
			$qry->set('order', 'DESC');
		}
		else {
		#	$qry->set('orderby', 'relevance');
		#	$qry->set('order', 'DESC');
		}
	}

	return $qry;
}
