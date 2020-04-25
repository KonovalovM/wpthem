<?php get_header()?>

<!-- Page Title
   ================================================== -->
<div id="page-title">

    <div class="row">

        <div class="ten columns centered text-center">
            <h1> Category <span>.</span></h1>

            <p>Aenean condimentum, lacus sit amet luctus lobortis, dolores et quas molestias excepturi
                enim tellus ultrices elit, amet consequat enim elit noneas sit amet luctu. </p>
        </div>

    </div>

</div> <!-- Page Title End-->

<!-- Content
   ================================================== -->
<div class="content-outer">

    <div id="page-content" class="row">

        <div id="primary" class="eight columns">
<!--                якщо є записи-->
            <?php if (have_posts()){
//              поки є записи
                while (have_posts()){
//                  виводимо записи
                    the_post();
                ?>

            <article class="post">

                <div class="entry-header cf">
<!--the_permalink - посилання на пост--> <!--                   виводиться заголовок-->
                    <h1><a href="<?php the_permalink(); ?>" title=""><?php the_title(); ?></a></h1>

                    <p class="post-meta">
<!--                       виводиться дата створення поста-->
                        <time class="date" datetime="2014-01-14T11:24"><?php the_time('F, jS, Y'); ?></time>

                        <span class="categories">
<!--                           виводиться мітка -->
                            <?php the_tags('',' / '); ?>
                        </span>

                    </p>

                </div>

                <div class="post-thumb">
                   <!--the_permalink - посилання на пост--><!--виводиться картинка-->
                    <a href="<?php the_permalink(); ?>" title=""><?php the_post_thumbnail('post_thumb'); ?></a>
                </div>

                <div class="post-content">
<!--                    виводиться частина контенту-->
                    <p><?php the_excerpt(); ?> </p>

                </div>

            </article> <!-- post end -->

                <?php
                } // end while ?>
<!--                       виводиться пагінація-->
                        <?php the_posts_pagination (); ?>
                <?php
            } // end if ?>

        </div> <!-- Primary End-->

        <div id="secondary" class="four columns end">

            <?php get_sidebar(); ?>

        </div> <!-- Secondary End-->

    </div>

</div> <!-- Content End-->

<!-- Tweets Section
   ================================================== -->
<section id="tweets">

    <div class="row">

        <div class="tweeter-icon align-center">
            <i class="fa fa-twitter"></i>
        </div>

        <ul id="twitter" class="align-center">
            <li>
                <span>
                    This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
                    Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum
                    <a href="#">http://t.co/CGIrdxIlI3</a>
                </span>
                <b><a href="#">2 Days Ago</a></b>
            </li>
            <!--
            <li>
               <span>
               This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
               Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum
               <a href="#">http://t.co/CGIrdxIlI3</a>
               </span>
               <b><a href="#">3 Days Ago</a></b>
            </li>
            -->
        </ul>

        <p class="align-center"><a href="#" class="button">Follow us</a></p>

    </div>

</section> <!-- Tweets Section End-->

<?php get_footer()?>
