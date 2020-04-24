<?php

add_action('wp_enqueue_scripts', 'style_them');
add_action('wp_footer', 'scripts_them');
//add_action( 'wp_enqueue_scripts', 'my_scripts_method' );
//Реєструємо меню
add_action('after_setup_theme', 'myMenu');

function myMenu (){
    register_nav_menu('topMenu', 'Верхнє меню');
    register_nav_menu('downMenu', 'Нижнє меню');
}
function style_them(){
    wp_enqueue_style('style', get_stylesheet_uri());
    wp_enqueue_style('default', get_template_directory_uri() . '/assets/css/default.css');
    wp_enqueue_style('layout', get_template_directory_uri() . '/assets/css/layout.css');
    wp_enqueue_style('media', get_template_directory_uri() . '/assets/css/media-queries.css');
    wp_enqueue_style('fonts', get_template_directory_uri() . '/assets/css/fonts.css');

}

function scripts_them (){

    wp_enqueue_style('jquery', get_template_directory_uri() . '/assets/js/jquery.flexslider.js');
    wp_enqueue_style('doubletaptogo', get_template_directory_uri() . '/assets/js/doubletaptogo.js');
    wp_enqueue_style('init', get_template_directory_uri() . '/assets/js/init.js');
}
?>
