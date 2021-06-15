<?php
$starts_on_meta_key = 'event_extras_' . 'starts_on';
$location_meta_key = 'event_extras_' . 'location';

$the_query = new WP_Query(array(
    'post_type'       => $args['post_type'],
    'posts_per_page'  => 5,
    'paged'           => 1,
    'meta_key'        => $starts_on_meta_key,
    'orderby'         => 'meta_value',
    'order'           => 'ASC',
    'meta_query'      => array(
        array(
            'key'       => $starts_on_meta_key,
            'value'     => date("Ymd"),
            'compare'   => '>=',
            'type'      => 'DATE'
        )
    )
));
?>

<div class="margin-large margin-remove-horizontal margin-remove-top">
    <div class="flex align-items-center justify-content-between">
        <div>
            <h4><?= $args['heading']; ?></h4>
        </div>
    </div>
    <ul class="list list-style-none list-divider">
        <?php if ($the_query->post_count > 0) : ?>
            <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
                <li>
                    <div class="flex justify-content-start">
                        <?php
                        $starts_on = strtotime(get_post_field($starts_on_meta_key));
                        $location = get_post_field($location_meta_key);;
                        ?>
                        <div class="primary-background-color light-color padding-small border-radius-2xsmall">
                            <h4 class="margin-remove-bottom text-center"><?= date('j', $starts_on); ?></h4>
                            <p class="text-center"><?= date('M', $starts_on); ?></p>
                        </div>
                        <div class="margin-small margin-remove-vertical margin-remove-right">
                            <ul class="list-style-none padding-remove-left">
                                <li><a href="<?= esc_url(get_permalink(get_the_id())); ?>" class="dark-color"><strong><?= get_the_title(); ?></strong></a></li>
                                <li><?= date('g:i A', $starts_on); ?> &bull; <?= $location; ?></li>
                            </ul>
                        </div>
                    </div>
                </li>
            <?php endwhile; ?>
        <?php else : ?>
            <li>Belum tersedia</li>
        <?php endif; ?>
    </ul>
</div>