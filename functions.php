<?php
//реєструються стилі
add_action('wp_enqueue_scripts', 'style_them');
//реєструються скрипти
add_action('wp_footer', 'scripts_them');
//реєструються меню
add_action('after_setup_theme', 'myMenu');
//реєструються віджети
add_action('widgets_init', 'reg_my_widget');

//    виводить заголовок на вкладку браузера
add_theme_support('title-tag');
//    добавляє можливість загрузки картинок в пости
add_theme_support('post-thumbnails', array('post'));
//добавляєвибір формату постів в записах
add_theme_support('post-formats', array('video', 'aside', 'gallery'));
//    реєструється розмір мініатюри
add_image_size('post_thumb', 1300, 500, true);


function reg_my_widget (){
    register_sidebar(array (
    'name' => 'LeftSidebar',
    'id' => 'left_sidebar',
    'description' => 'Опис сайдбара',
//        які теги ставити до віджета
    'before_widget' => '<div class="widget %2$s">',
//        які теги ставити після віджета
    'after_widget' => '</div>',
//        які теги ставити до заголовка
    'before_title' => '<h5 class="widgettitle">',
//        які теги ставити після заголовка
    'after_title' => '</h5>'
    ));

}

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

//підключається файл filters.php
include (TEMPLATEPATH . '/filters.php');
include (TEMPLATEPATH . '/shortcode.php');
?>
