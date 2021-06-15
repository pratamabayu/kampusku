<?php
/* Template Name: Study Program Page */

get_header();

get_template_part('template-parts/header/site-header');
get_template_part(
    'template-parts/content/content-with-subnav',
    null,
    array(
        'subnav_heading' => 'Program Studi',
        'subnav_name' => 'study-program'
    )
);
get_template_part('template-parts/footer/site-footer');

get_footer();
