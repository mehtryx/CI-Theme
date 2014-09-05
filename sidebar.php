<div id="sidebar">
	<h2><?php esc_html_e( 'Categories' ) ?></h2>
	<ul>
		<?php wp_list_cats( 'sort_column=name&optioncount=1&hierarchical=0' ); ?>
	</ul>
	<h2><?php esc_html_e( 'Archives' ) ?></h2>
	<ul>
		<?php wp_get_archives( 'type=monthly' ); ?>
	</ul>
</div>