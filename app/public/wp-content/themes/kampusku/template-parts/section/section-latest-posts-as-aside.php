<?php
$query_args = array(
    'numberposts' => isset($args['numberposts']) ? $args['numberposts'] : '5',
    'post_status' => 'publish',
    'category_name' => $args['category_name']
);
$recent_posts = wp_get_recent_posts($query_args);
?>
<div class="margin-large margin-remove-horizontal margin-remove-top">
    <div class="flex align-items-center justify-content-between">
        <div>
            <h4><?= $args['heading']; ?></h4>
        </div>
    </div>
    <ul class="list list-style-none list-divider">
        <?php if (count($recent_posts) > 0) : ?>
            <?php foreach ($recent_posts as $recent) : ?>
                <li>
                    <?php
                    $author_name = get_post_field('post_extras_' . 'author_name', $recent['ID']);
                    $author_photo_url = get_post_field('post_extras_' . 'author_photo_url', $recent['ID']);
                    ?>
                    <?php if (!empty($author_name)) : ?>
                        <div class="margin-xsmall margin-remove-horizontal flex align-items-center justify-content-start">
                            <?php if (!empty($author_photo_url)) : ?>
                                <img src="<?= $author_photo_url; ?>" width="24" class="border-radius-1/2" />
                            <?php endif; ?>
                            <div class="margin-small margin-remove-vertical"><?= $author_name; ?></div>
                        </div>
                    <?php endif; ?>
                    <ul class="list-style-none padding-remove-left">
                        <li><a href="<?= esc_url(get_permalink($recent['ID'])); ?>" class="dark-color"><strong><?= apply_filters('the_title', $recent['post_title'], $recent['ID']); ?></strong></a></li>
                        <li><?= PrettyDateTimeUtility::parseToID(new DateTime($recent['post_date'] . ' ' . wp_timezone_string())); ?></li>
                    </ul>
                </li>
            <?php endforeach; ?>
        <?php else : ?>
            <li>Belum tersedia</li>
        <?php endif; ?>
    </ul>
</div>