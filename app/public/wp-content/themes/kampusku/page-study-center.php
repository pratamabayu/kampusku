<?php
/* Template Name: Study Center Page */

get_header();

get_template_part('template-parts/header/site-header');
get_template_part(
    'template-parts/content/content-with-subnav',
    null,
    array(
        'subnav_heading' => 'Pusat Kajian',
        'subnav_name' => 'study-center'
    )
);
get_template_part('template-parts/footer/site-footer');

get_footer();
