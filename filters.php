<?php
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

//заміна сепаратора на вклвдкі браузера
add_filter('document_title_separator', 'my_sep');
function my_sep($sep){
//    заміна на символ |
    $sep= ' | ';
    return $sep;
}

//добавляє в кінці контету текст
add_filter('the_content', 'change_content');
function change_content($content){
    $content.= 'Дякуємо за перегляд!';
    return $content;
}

?>
