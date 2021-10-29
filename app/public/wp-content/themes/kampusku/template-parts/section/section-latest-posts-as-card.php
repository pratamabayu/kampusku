<?php
$query_args = array(
    'numberposts' => $args['numberposts'],
    'post_status' => 'publish',
    'category_name' => $args['category_name']
);
$recent_posts = wp_get_recent_posts($query_args);
?>

<?php if (count($recent_posts) > 0) : ?>
<section>
    <div class="flex align-items-center justify-content-between">
        <div>
            <h4><?= $args['heading'] ?></h4>
        </div>
        <div><a href="/category/<?= $args['category_name']; ?>" class="button">Selengkapnya ...</a></div>
    </div>
</section>

<section class="grid grid-2-columns grid-1-columns@s grid-column-gap-medium grid-column-gap-small@s grid-column-row-small">
    <?php foreach ($recent_posts as $recent) : ?>
        <section>
        <a href="<?= esc_url(get_permalink($recent['ID'])); ?>" class="margin-medium margin-remove-horizontal@s display-block animation-grow-on-hover" style="--animation-duration: .2s; --animation-delay: .1s; color:inherit">
            <div class="card box-shadow-xlarge">
                <?php if (has_post_thumbnail($recent['ID'])) : ?>
                    <div class="background background-cover height-small width-1/1 border-radius-2xsmall border-radius-remove-bottom-left border-radius-remove-bottom-right" style="background-image: url(<?= esc_url(get_the_post_thumbnail_url($recent['ID'], 'full')) ?>);"></div>
                <?php endif; ?>
                <div class="card-header">
                    <?php
                    $author_name = get_post_field('post_extras_' . 'author_name', $recent['ID']);
                    $author_photo_url = get_post_field('post_extras_' . 'author_photo_url', $recent['ID']);
                    ?>
                    <?php if (!empty($author_name)) : ?>
                        <div class="margin-small margin-remove-horizontal flex align-items-center justify-content-start">
                            <?php if (!empty($author_photo_url)) : ?>
                                <img src="<?= $author_photo_url; ?>" width="24" class="border-radius-1/2" />
                            <?php endif; ?>
                            <div class="margin-small margin-remove-vertical"><?= $author_name; ?></div>
                        </div>
                    <?php endif; ?>
                    <ul class="list-style-none padding-remove-left">
                        <li><h5><?= apply_filters('the_title', $recent['post_title'], $recent['ID']); ?></h5></li>
                        <li><?= PrettyDateTimeUtility::parseToID(new DateTime($recent['post_date'] . ' ' . wp_timezone_string())); ?></li>
                    </ul>
                </div>
                <div class="card-body">
                    <p><?= str_replace('[&hellip;]', '...', get_the_excerpt($recent['ID'])); ?></p>
                </div>
            </div>
            </a>
        </section>
    <?php endforeach; ?>
</section>

<section class="margin-large margin-remove-horizontal margin-remove-top"></section>
<?php endif; ?>