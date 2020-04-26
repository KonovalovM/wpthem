<article class="post">

    <div class="entry-header cf">

        <h1><a href="single.html" title=""><?php the_title(); ?></a></h1>

        <p class="post-meta">

            <time class="date" datetime="2014-01-14T11:24"><?php the_time('F, jS, Y'); ?></time>
            /
            <span class="categories">
                <!--                           виводиться мітка -->
                <?php the_tags('',' / '); ?>
            </span>

        </p>

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
