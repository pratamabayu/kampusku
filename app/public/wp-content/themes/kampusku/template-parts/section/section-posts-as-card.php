<?php
$paged = get_query_var('page', 1);

$posts_query = new WP_Query(array(
    'category_name'       => $args['category_name'],
    'posts_per_page'      => 10,
    'paged'               => $paged,
));
?>

<section class="grid grid-2-columns grid-1-columns@s grid-column-gap-medium grid-column-gap-small@s grid-column-row-small">
    <?php while ($posts_query->have_posts()) : $posts_query->the_post(); ?>
        <section>
        <a href="<?= esc_url(get_permalink()); ?>" class="margin-medium display-block animation-grow-on-hover" style="--animation-duration: .2s; --animation-delay: .1s; color:inherit">
            <div class="card box-shadow-xlarge">
                <?php if (has_post_thumbnail()) : ?>
                    <div class="background background-cover height-small width-1/1 border-radius-2xsmall border-radius-remove-bottom-left border-radius-remove-bottom-right" style="background-image: url(<?= esc_url(get_the_post_thumbnail_url(null, 'full')) ?>);"></div>
                <?php endif; ?>
                <div class="card-header">
                    <?php
                    $author_name = get_post_field('post_extras_' . 'author_name');
                    $author_photo_url = get_post_field('post_extras_' . 'author_photo_url');
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
                        <li><h5><?= get_the_title(); ?></h5></li>
                        <li><?= PrettyDateTimeUtility::parseToID(new DateTime(get_post_field('post_date') . ' ' . wp_timezone_string())); ?></li>
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
            <a href="/category/<?= $posts_query->query_vars['category_name']; ?>/?page=<?= $paged + 1 ?>" class="text-right"><i class="gg-chevron-left icon-gg"></i>Postingan lama</a>
        <?php endif; ?>
    </div>
    <div>
        <?php if ($paged > 1) : ?>
            <a href="/category/<?= $posts_query->query_vars['category_name']; ?>/?page=<?= $paged - 1 ?>" class="text-right">Postingan lebih baru<i class="gg-chevron-right icon-gg"></i></a>
        <?php endif; ?>
    </div>
</div>