<?php if (has_nav_menu('primary')) : ?>
    <nav class="navbar navbar-dark flex align-items-center justify-content-between" id="navbar">
        <div class="margin-large margin-remove-vertical margin-remove-left@l">
            <a href="/" class="navbar-brand">
                <img src="<?php echo get_template_directory_uri() . '/assets/images/logo.png'; ?>" height="42" />
            </a>
        </div>
        <div class="margin-large margin-remove-vertical margin-remove-right@l">
            <?php $primary_menu_items = pb_get_menu_array('primary'); ?>
            <ul class="navbar-nav display-none@l">
                <?php foreach ($primary_menu_items as $item) : ?>
                    <li>
                        <a href="<?= $item['url'] ?>" title="<?= $item['title'] ?>"><?= $item['title'] ?></a>
                        <?php if (!empty($item['children'])) : ?>
                            <div class="navbar-dropdown position-bottom-left-out margin-small margin-remove-horizontal border-radius-2xsmall box-shadow-xlarge">
                                <ul class="navbar-dropdown-nav nav">
                                    <?php foreach ($item['children'] as $child) : ?>
                                        <li>
                                            <a href="<?= $child['url'] ?>" title="<?= $child['title'] ?>"><?= $child['title'] ?></a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                        <?php endif; ?>
                    </li>
                <?php endforeach; ?>
            </ul>
            <ul class="display-none display-inline-block@l navbar-nav">
                <li><a href="#sidebar-primary"><i class="gg-menu-right icon-gg"></i></a></li>
            </ul>
        </div>
    </nav>
<?php endif; ?>