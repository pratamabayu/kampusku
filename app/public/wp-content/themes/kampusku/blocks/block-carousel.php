<?php
$query_args = array(
    'post_type' => $args['name'],
    'order' => 'ASC'
);
$the_query = new WP_Query($query_args); 
?>

<?php if ($the_query->have_posts()) : ?>
    <div class="carousel <?= $args['class'] ?>">
        <ol class="carousel-viewport">
            <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
                <li class="carousel-slide">
                    <div class="background background-cover height-1/1 width-1/1" style="background-image: url(<?= esc_url(get_the_post_thumbnail_url(get_the_ID(), 'full')) ?>);">
                        <?php the_content(); ?>
                    </div>
                    <div class="carousel-snapper"></div>
                </li>
            <?php endwhile; ?>
        </ol>
    </div>

    <?php wp_reset_postdata(); ?>

<?php endif; ?>