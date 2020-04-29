<?php
//реєструються стилі
add_action('wp_enqueue_scripts', 'style_them');
//реєструються скрипти
add_action('wp_footer', 'scripts_them');
//реєструються меню
add_action('after_setup_theme', 'myMenu');
//реєструються віджети
add_action('widgets_init', 'reg_my_widget');
//реєстрація новогопосттипу
add_action( 'init', 'register_post_types' );
// хук для регистрации таксономії
add_action( 'init', 'create_taxonomy' );
//хуки для ajax
add_action('wp_ajax_send_mail', 'send_mail');
add_action('wp_ajax_nopriv_send_mail', 'send_mail');

//    виводить заголовок на вкладку браузера
add_theme_support('title-tag');
//    добавляє можливість загрузки картинок в пости
add_theme_support('post-thumbnails', array('post', 'portfolio'));
//добавляєвибір формату постів в записах
add_theme_support('post-formats', array('video', 'aside', 'gallery'));
//    реєструється розмір мініатюри
add_image_size('post_thumb', 1300, 500, true);


function style_them(){
    wp_enqueue_style('style', get_stylesheet_uri());
    wp_enqueue_style('default', get_template_directory_uri() . '/assets/css/default.css');
    wp_enqueue_style('layout', get_template_directory_uri() . '/assets/css/layout.css');
    wp_enqueue_style('media', get_template_directory_uri() . '/assets/css/media-queries.css');
    wp_enqueue_style('fonts', get_template_directory_uri() . '/assets/css/fonts.css');

}

function scripts_them (){
    wp_deregister_script('jquery');
    wp_register_script('jquery', '//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js');
    wp_enqueue_script('jquery');
    wp_enqueue_script('flexslider', get_template_directory_uri() . '/assets/js/jquery.flexslider.js', ['jquery'], null, true);
    wp_enqueue_script('doubletaptogo', get_template_directory_uri() . '/assets/js/doubletaptogo.js', ['jquery'], null, true);
    wp_enqueue_script('init', get_template_directory_uri() . '/assets/js/init.js', ['jquery'], null, true);
    wp_enqueue_script('modernizr', get_template_directory_uri() . '/assets/js/modernizr.js', 'null', null, true);
    wp_enqueue_script('main', get_template_directory_uri() . '/assets/js/main.js', ['jquery'], null, true);
}

function myMenu (){
    register_nav_menu('topMenu', 'Верхнє меню');
    register_nav_menu('downMenu', 'Нижнє меню');
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

function register_post_types(){
	register_post_type( 'portfolio', [
		'label'  => null,
		'labels' => [
			'name'               => 'Портфоліо', // основное название для типа записи
			'singular_name'      => 'Портфоліо', // название для одной записи этого типа
			'add_new'            => 'Добавити роботу', // для добавления новой записи
			'add_new_item'       => 'Добавлення роботи', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Редагування роботи', // для редактирования типа записи
			'new_item'           => 'Нова робота', // текст новой записи
			'view_item'          => 'Перегляд роботи', // для просмотра записи этого типа.
			'search_items'       => 'Шукати роботу в портфоліо', // для поиска по этим типам записи
			'not_found'          => 'Не знайдено', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Не знайдено в корзині', // если не было найдено в корзине
			'parent_item_colon'  => '', // для родителей (у древовидных типов)
			'menu_name'          => 'Портфоліо', // название меню
		],
//        короткий опис
            'description'         => 'Це наші роботи в портфоліо',
            'public'              => true,
            'publicly_queryable'  => true, // зависит от public
//        виключаємо для пошуку таксономії
            'exclude_from_search' => false, // зависит от public
            'show_ui'             => true, // зависит от public
            'show_in_nav_menus'   => true, // зависит от public
            'show_in_menu'        => true, // показывать ли в меню адмнки
            'show_in_admin_bar'   => true, // зависит от show_in_menu
//        включення редактора Gutenberg
//            'show_in_rest'        => true, // добавить в REST API. C WP 4.7
            'rest_base'           => null, // $post_type. C WP 4.7
            'menu_position'       => 4,
            'menu_icon'           => 'dashicons-portfolio',
		//'capability_type'   => 'post',
		//'capabilities'      => 'post', // массив дополнительных прав для этого типа записи
		//'map_meta_cap'      => null, // Ставим true чтобы включить дефолтный обработчик специальных прав
		'hierarchical'        => false,
		'supports'            => [ 'title', 'editor','thumbnail','excerpt','post-formats', 'taxonomies'], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
//        до цього посту выдноситься таксономыя skills
		'taxonomies'          => ['skills'],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );
}

function create_taxonomy(){

	register_taxonomy( 'skills', [ 'portfolio' ], [
		'label'                 => '', // определяется параметром $labels->name
		'labels'                => [
			'name'              => 'Навики',
			'singular_name'     => 'Навик',
			'search_items'      => 'Знайти навик',
			'all_items'         => 'Всі навики',
			'view_item '        => 'Переглянути навики',
			'parent_item'       => 'Батьківський навик',
			'parent_item_colon' => 'Батьківський Навик:',
			'edit_item'         => 'Редагувати навик',
			'update_item'       => 'Оновити навик',
			'add_new_item'      => 'Добавити новий навик',
			'new_item_name'     => 'Нове імя навика',
			'menu_name'         => 'Навики',
		],
		'description'           => 'Навики які використовувалися в роботі над проектом', // описание таксономии
		'public'                => true,
        'publicly_queryable'    => true, // равен аргументу public
//        якщо в таксономіє є гілки ставимо true
		'hierarchical'          => false,

		'rewrite'               => true,
		//'query_var'             => $taxonomy, // название параметра запроса
		'capabilities'          => array(),
		'meta_box_cb'           => null, // html метабокса. callback: `post_categories_meta_box` или `post_tags_meta_box`. false — метабокс отключен.
		'show_admin_column'     => false, // авто-создание колонки таксы в таблице ассоциированного типа записи. (с версии 3.5)
		'show_in_rest'          => null, // добавить в REST API
		'rest_base'             => null, // $taxonomy
		// '_builtin'              => false,
		//'update_count_callback' => '_update_post_term_count',
	] );
}
//функція для відправки повідомлень в формі контакти
function send_mail (){
    $contactName = $POST['contactName'];
    $contactEmail = $POST['contactEmail'];
    $contactSubject = $POST['contactSubject'];
    $ontactMessage = $POST['ontactMessage'];

//    береться електрока з адмінки
    $to = get_option('admin_email');
//    видалити фыльтри, якы можуть змынити заголовок $headers
    remove_all_filters('wp_mail_from');
    remove_all_filters('wp_mail_from_name');

    $headers = array (
        'From: Me Myself <me@ghf.com>',
        'content-type: text/html',
        'Cc: John Q Codex <fg@jh.iou>',
        'Cc: gfgh@hjgj.ljh',
    );
        wp_mail($to, $contactSubject, $ontactMessage, $headers);
    wp_die ();
}
//підключається файл filters.php
include (TEMPLATEPATH . '/filters.php');
include (TEMPLATEPATH . '/shortcode.php');
?>
