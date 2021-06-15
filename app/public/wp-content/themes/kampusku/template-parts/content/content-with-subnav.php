<main class="margin-large grid grid-4-columns grid-1-columns@m grid-column-gap-small grid-column-row-small">
    <aside>
        <div class="margin-xlarge margin-remove-horizontal margin-remove-all@m"></div>
        <div>
            <h4><?= $args['subnav_heading']; ?></h4>
        </div>
        <?php
        get_template_part(
            'blocks/block-nav',
            null,
            array(
                'name' => $args['subnav_name'],
                'class' => 'margin-medium@m margin-remove-horizontal@m'
            )
        );
        ?>
    </aside>
    <section class="column-span-3 column-span-1@m">
        <div>
            <h1><?php the_title(); ?></h1>
        </div>
        <div class="margin-large margin-remove-horizontal margin-remove-top"></div>
        <div>
            <?php the_content(); ?>
        </div>
    </section>
</main>