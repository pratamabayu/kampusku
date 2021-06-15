<main class="margin-large">
    <section>
        <div>
            <h1>Agenda</h1>
        </div>
    </section>
    <section class="grid grid-4-columns grid-1-columns@m grid-column-gap-medium grid-column-row-small">
        <section class="column-span-3 column-span-1@m">
            <?php get_template_part(
                'template-parts/section/section-events-as-card',
                null,
                array(
                    'heading' => 'Agenda',
                    'post_type' => 'events'
                )
            ); ?>
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