<?php
$starts_on_meta_key = 'event_extras_' . 'starts_on';
$ends_on_meta_key = 'event_extras_' . 'ends_on';
$location_meta_key = 'event_extras_' . 'location';

$starts_on = strtotime(get_post_field($starts_on_meta_key));
$ends_on = strtotime(get_post_field($ends_on_meta_key));
?>
<main class="margin-large">
    <section>
        <div class="margin-medium margin-remove-horizontal">
            <a href="/events" class="flex align-items-center"><span class="dark-color">dalam&nbsp;</span><span>Agenda</span></a>
        </div>
    </section>
    <section class="grid grid-4-columns grid-1-columns@m grid-column-gap-medium grid-column-row-small">
        <section class="column-span-3 column-span-1@m">
            <h1><?= the_title(); ?></h1>
            <ul class="list-style-none padding-remove-left">
                <li><?= date('F j, Y \a\t g:i A', $starts_on); ?> - <?= date('F j, Y \a\t g:i A', $ends_on); ?></li>
                <li><?= get_post_field($location_meta_key); ?></li>
            </ul>
            <?php if (has_post_thumbnail($the_ID)) : ?>
                <figure>
                    <img class="width-1/1 border-radius-2xsmall" src="<?= esc_url(get_the_post_thumbnail_url($the_ID, 'full')) ?>" />
                </figure>
            <?php endif; ?>
            <div><?php the_content(); ?></div>
        </section>
        <aside>
            <div class="margin-large@m margin-remove-horizontal@m margin-remove-top@m"></div>
            <?php get_template_part(
                'template-parts/section/section-latest-events-as-aside',
                null,
                array(
                    'heading' => 'Agenda terdekat',
                    'post_type' => 'events'
                )
            ); ?>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-aside',
                null,
                array(
                    'heading' => 'Kabar kampus terkini',
                    'category_name' => 'kabar-kampus',
                    'numberposts' => '10'
                )
            ); ?>
        </aside>
    </section>
</main>