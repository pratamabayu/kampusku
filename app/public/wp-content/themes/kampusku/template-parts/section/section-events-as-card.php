<?php
$paged = get_query_var('page', 1);
$starts_on_meta_key = 'event_extras_' . 'starts_on';
$location_meta_key = 'event_extras_' . 'location';

$posts_query = new WP_Query(array(
    'post_type'         => $args['post_type'],
    'posts_per_page'    => 10,
    'paged'             => $paged,
    'meta_key'          => $starts_on_meta_key,
    'orderby'           => 'meta_value',
    'order'             => 'DESC'
));
?>

<section class="grid grid-2-columns grid-1-columns@s grid-column-gap-medium grid-column-row-small">
    <?php while ($posts_query->have_posts()) : $posts_query->the_post(); ?>
        <section>
            <a href="<?= esc_url(get_permalink()); ?>" class="margin-medium display-block animation-grow-on-hover" style="--animation-duration: .2s; --animation-delay: .1s; color:inherit">
                <div class="card box-shadow-xlarge">
                    <?php
                    $starts_on = strtotime(get_post_field($starts_on_meta_key));
                    ?>
                    <?php if (has_post_thumbnail()) : ?>
                        <div class="background background-cover height-small width-1/1 border-radius-2xsmall border-radius-remove-bottom-left border-radius-remove-bottom-right" style="background-image: url(<?= esc_url(get_the_post_thumbnail_url(null, 'full')) ?>);"></div>
                    <?php endif; ?>
                    <div class="card-header">
                        <ul class="list-style-none padding-remove-left">
                            <li>
                                <h5><?= get_the_title(); ?></h5></li>
                            <li><?= date('F j, Y g:i A', $starts_on); ?></li>
                            <li><?= get_post_field($location_meta_key); ?></li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <p><?= str_replace('[&hellip;]', '...', get_the_excerpt()); ?></p>
                    </div>
                </div>
            </a>
        </section>
    <?php endwhile; ?>
</section>
<div class="margin-large margin-remove-horizontal flex align-items-start justify-content-between">
    <div>
        <?php if ($paged < $posts_query->max_num_pages) : ?>
            <a href="/<?= $args['post_type']; ?>/?page=<?= $paged + 1 ?>" class="text-right"><i class="gg-chevron-left icon-gg"></i>Agenda lama</a>
        <?php endif; ?>
    </div>
    <div>
        <?php if ($paged > 1) : ?>
            <a href="/<?= $args['post_type']; ?>/?page=<?= $paged - 1 ?>" class="text-right">Agenda lebih baru<i class="gg-chevron-right icon-gg"></i></a>
        <?php endif; ?>
    </div>
</div>