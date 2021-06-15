<?php
$featured_video_url_meta_key = 'hero_extras_' . 'featured_video_url';

$query_args = array(
    'post_type'     => 'heroes',
    'post_status'   => 'publish',
    'posts_per_page' => 1,
    'order'         => 'ASC'
);
$the_query = new WP_Query($query_args);
?>

<?php if ($the_query->have_posts()) : ?>
    <div class="position-relative height-80vh height-auto@m height-max-80vh overflow-hidden">
        <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
            <?php $featured_video_url = get_post_field($featured_video_url_meta_key); ?>
            <div class="<?php if(!empty($featured_video_url)): ?>display-none display-block@s<?php endif; ?>">
                <img src="<?= esc_url(get_the_post_thumbnail_url(get_the_ID(), 'full')) ?>" width="100%" />
            </div>
            <?php if (!empty($featured_video_url)) : ?>
                <div class="display-none@s">
                    <video width="100%" height="100%" muted="muted" autoplay="true" loop="true">
                        <source src="<?= $featured_video_url; ?>" type="video/mp4" />
                    </video>
                </div>
            <?php endif; ?>
            <?php the_content(); ?>
        <?php endwhile; ?>
    </div>
<?php endif; ?>