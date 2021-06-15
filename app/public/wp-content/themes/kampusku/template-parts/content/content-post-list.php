<main class="margin-large">
    <section>
        <div>
            <h1><?= single_cat_title('', false); ?></h1>
        </div>
    </section>
    <section class="grid grid-4-columns grid-1-columns@m grid-column-gap-medium grid-column-row-small">
        <section class="column-span-3 column-span-1@m">
            <?php get_template_part(
                'template-parts/section/section-posts-as-card',
                null,
                array(
                    'heading' => single_cat_title('', false),
                    'category_name' => single_cat_title('', false)
                )
            ); ?>
        </section>
        <aside>
            <div class="margin-large@m margin-remove-horizontal@m margin-remove-top@m"></div>
            <?php get_template_part(
                'template-parts/section/section-latest-posts-as-aside',
                null,
                array(
                    'heading' => single_cat_title('', false) . ' terkini',
                    'category_name' => single_cat_title('', false)
                )
            ); ?>
        </aside>
    </section>
</main>