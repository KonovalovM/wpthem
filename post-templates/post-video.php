<article class="post">

    <div class="entry-header cf">
        <h1><a href="single.html" title=""><?php the_title(); ?></a></h1>
    </div>

    <div class="post-thumb">
        <!--                   вивод картинки-->
        <?php the_post_thumbnail(); ?>
    </div>

    <div class="post-content">
        <!--                   вивод контента-->
        <?php the_content(); ?>
    </div>

</article> <!-- post end -->
