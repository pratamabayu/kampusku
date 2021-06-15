<?php if (has_nav_menu($args['name'])) : ?>
    <?php $menu_items = pb_get_menu_array($args['name']); ?>
    <ul class="nav <?= $args['class'] ?>">
        <?php foreach ($menu_items as $item) : ?>
            <?php if (empty($item['url'])) : ?>
                <li class="nav-header"><?= $item['title'] ?></li>
            <?php else : ?>
                <li>
                    <a href="<?= $item['url'] ?>" title="<?= $item['title'] ?>"><?= $item['title'] ?></a>
                    <?php if (!empty($item['children'])) : ?>
                        <ul class="nav-nested">
                            <?php foreach ($item['children'] as $child) : ?>
                                <li>
                                    <a href="<?= $child['url'] ?>" title="<?= $child['title'] ?>"><?= $child['title'] ?></a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>
<?php endif; ?>