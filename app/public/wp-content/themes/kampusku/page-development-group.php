<?php
/* Template Name: Development Group Page */

get_header();

get_template_part('template-parts/header/site-header');
get_template_part(
    'template-parts/content/content-with-subnav',
    null,
    array(
        'subnav_heading' => 'Gugus Pengembangan',
        'subnav_name' => 'development-group'
    )
);
get_template_part('template-parts/footer/site-footer');

get_footer();
