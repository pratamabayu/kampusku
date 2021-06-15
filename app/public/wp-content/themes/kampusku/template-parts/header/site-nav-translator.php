<?php if (shortcode_exists('gtranslate')) : ?>
    <section class="position-fixed z-4" style="right:0">
        <div class="margin-large margin-remove-top margin-remove-right padding-small primary-background-color border-radius-xsmall border-radius-remove-top-left border-radius-remove-top-right border-radius-remove-bottom-right">
            <?= do_shortcode('[gtranslate]'); ?>
        </div>
    </section>
<?php endif; ?>