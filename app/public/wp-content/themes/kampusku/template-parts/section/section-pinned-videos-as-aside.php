<?php
$video_kind_meta_key = 'video_extras_' . 'video_kind';
$video_url_meta_key = 'video_extras_' . 'video_url';

$query_args = array(
    'post_type'     => 'videos',
    'post_status'   => 'publish',
    'order'         => 'ASC'
);
$the_query = new WP_Query($query_args);
?>

<div class="margin-large margin-remove-horizontal margin-remove-top">
    <div class="flex align-items-center justify-content-between">
        <div>
            <h4><?= $args['heading']; ?></h4>
        </div>
    </div>
    <ul class="list list-style-none">
        <?php if ($the_query->post_count > 0) : ?>
            <?php while ($the_query->have_posts()) : $the_query->the_post(); ?>
                <li>
                    <?php
                        $video_kind = get_post_field($video_kind_meta_key);
                        $video_url = get_post_field($video_url_meta_key);
                    ?>

                    <?php if ($video_kind == 'youtube'): ?>
                        <div class="video-container">
                            <iframe width="560" height="315" title="YouTube video player" src="<?= $video_url; ?>?rel=0&modestbranding=1&autohide=1&showinfo=0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                            </iframe>
                        </div>
                        <p><strong><?= get_the_title(); ?></strong></p>
                    <?php endif; ?>
                </li>
            <?php endwhile; ?>
        <?php else : ?>
            <li>Belum tersedia</li>
        <?php endif; ?>
    </ul>
</div>