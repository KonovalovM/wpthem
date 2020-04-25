<?php

//створюється шорткод, щоб його використати в любому місці тексту прописати [my_short]
add_shortcode('my_short', 'short_function');

function short_function(){
    return 'Я шорткод!';
}

add_shortcode('iframe', 'Generate_iframe');
// использование: [iframe href="http://www.exmaple.com" height="480" width="640"]
//Вставка iframe через шорткод
function Generate_iframe( $atts ) {
	$atts = shortcode_atts( array(
		'href'   => 'https://wp-kama.ru/function/add_shortcode',
		'height' => '550px',
		'width'  => '600px',
	), $atts );

	return '<iframe src="'. $atts['href'] .'" width="'. $atts['width'] .'" height="'. $atts['height'] .'"> <p>Your Browser does not support Iframes.</p></iframe>';
}

?>
