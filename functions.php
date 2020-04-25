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
//    реєструється розмір мініатюри
add_image_size('post_thumb', 1300, 500, true);
//добавляється фільтр для виводу частини контенту
add_filter('excerpt_more', 'new_excrpt_more');

function new_excrpt_more ($more){
    global $post;
//    добавляється посилання на пост (читати далі)
    return '<a href="'. get_permalink($post->ID) .'"> Читати далі...</a>';
    }

// удаляет H2 из шаблона пагинации
add_filter('navigation_markup_template', 'my_navigation_template', 10, 2 );
function my_navigation_template( $template, $class ){
	/*
	Вид базового шаблона:
	<nav class="navigation %1$s" role="navigation">
		<h2 class="screen-reader-text">%2$s</h2>
		<div class="nav-links">%3$s</div>
	</nav>
	*/
	return '
	<nav class="navigation %1$s" role="navigation">
		<div class="nav-links">%3$s</div>
	</nav>
	';
}

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
?>
