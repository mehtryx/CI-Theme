<?php
// Custom theme functions go here, typically these are the items we are testing against, or rather contain the many user generated functions

/**
 * Proper way to enqueue scripts and styles
 */
function ci_theme_scripts() {
	wp_register_style( 'main_stylesheet', bloginfo( 'stylesheet_url' ) );
	wp_enqueue_style( 'main_stylesheet' );
}

add_action( 'wp_enqueue_scripts', 'ci_theme_scripts' );