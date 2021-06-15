<?php if (has_nav_menu('primary')) : ?>
    <section class="offcanvas offcanvas-flip" id="sidebar-primary">
        <div class="offcanvas-overlay">
            <a href="#close" class="display-block height-100vh"></a>
        </div>
        <div class="offcanvas-bar">
            <h4 class="margin-medium margin-remove-horizontal">Hi,</h4>
            <?php
            get_template_part(
                'blocks/block-nav',
                null,
                array(
                    'name' => 'primary',
                    'class' => 'margin-medium margin-remove-horizontal'
                )
            );
            ?>
        </div>
    </section>
<?php endif; ?>