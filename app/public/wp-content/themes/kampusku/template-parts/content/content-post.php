<?php
$author_name = get_post_field('post_extras_' . 'author_name');
$author_photo_url = get_post_field('post_extras_' . 'author_photo_url');
$author_biography = get_post_field('post_extras_' . 'author_biography');

if (empty($author_name)) {
    $author_name = get_the_author_meta('display_name', get_post_field('post_author', $the_ID));
    $author_photo_url = get_avatar_url(get_post_field('post_author', $the_ID), 128);
    $author_biography = get_the_author_meta('description', get_post_field('post_author', $the_ID));
}
?>

<main class="margin-large">
    <section>
        <div class="margin-medium margin-remove-horizontal">
            <a href="/category/<?= get_the_category()[0]->slug; ?>" class="flex align-items-center"><span class="dark-color">dalam&nbsp;</span><span><?= get_the_category()[0]->cat_name; ?></span></a>
        </div>
    </section>
    <section class="grid grid-4-columns grid-1-columns@m grid-column-gap-medium grid-column-row-small">
        <section class="column-span-3 column-span-1@m">
            <h1><?= the_title(); ?></h1>
            <div class="flex align-items-center justify-content-start">
                <?php if (!empty($author_name)) : ?>
                    <?php if (!empty($author_photo_url)) : ?>
                        <div><img src="<?= $author_photo_url; ?>" width="32" class="border-radius-1/2" /></div>
                    <?php endif; ?>
                    <div class="margin-small margin-remove-vertical"><?= $author_name; ?></div>
                <?php endif; ?>
                <div><?= PrettyDateTimeUtility::parseToID(new DateTime(get_post_field('post_date') . ' ' . wp_timezone_string())); ?></div>
            </div>
            <figure>
                <?php if (has_post_thumbnail($the_ID)) : ?>
                    <img class="width-1/1 border-radius-2xsmall" src="<?= esc_url(get_the_post_thumbnail_url($the_ID, 'full')) ?>" />
                <?php endif; ?>
            </figure>
            <div><?php the_content(); ?></div>
            <?php if (!empty($author_name) && !empty($author_photo_url) && !empty($author_biography)) : ?>
                <div class="margin-large flex align-items-start justify-content-start flex-column@s">
                    <div class="margin-medium@s">
                        <img src="<?= $author_photo_url; ?>" width="128" class="border-radius-1/2" />
                    </div>
                    <div>
                        <ul class="margin-medium margin-remove-vertical margin-remove-right list-style-none padding-remove-left">
                            <li>
                                <h4><?= $author_name; ?></h4>
                            </li>
                            <li>
                                <p><?= $author_biography; ?></p>
                            </li>
                        </ul>
                    </div>
                </div>
            <?php endif; ?>
            <div class="margin-large margin-remove-horizontal flex align-items-start justify-content-between">
                <div>
                    <?php
                    $prev_post = get_previous_post(true);
                    if (!empty($prev_post)) : ?>
                        <a href="<?= get_permalink($prev_post->ID); ?>">
                            <i class="gg-chevron-left icon-gg"></i><?= apply_filters('the_title', $prev_post->post_title); ?>
                        </a>
                    <?php endif; ?>
                </div>
                <div>
                    <?php
                    $next_post = get_next_post(true);
                    if (!empty($next_post)) : ?>
                        <a href="<?= get_permalink($next_post->ID); ?>" class="text-right">
                            <?= apply_filters('the_title', $next_post->post_title); ?><i class="gg-chevron-right icon-gg"></i>
                        </a>
                    <?php endif; ?>
                </div>
            </div>
        </section>
        <aside>
            <div class="margin-large@m margin-remove-horizontal@m margin-remove-top@m"></div>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-aside',
                null,
                array(
                    'heading' => get_the_category()[0]->cat_name . ' terkini',
                    'category_name' => get_the_category()[0]->cat_name
                )
            ); ?>
        </aside>
    </section>
</main>