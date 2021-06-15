<main class="margin-large">
    <section class="grid grid-4-columns grid-1-columns@m grid-column-gap-medium grid-column-row-small">
        <section class="column-span-3 column-span-1@m">
            <div><h1><?= the_title(); ?></h1></div>
            <div class="margin-large margin-remove-horizontal margin-remove-top"></div>
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
        </aside>
    </section>
</main>