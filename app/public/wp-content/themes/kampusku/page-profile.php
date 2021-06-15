<?php
/* Template Name: Profile Page */

get_header();

get_template_part('template-parts/header/site-header');
get_template_part(
    'template-parts/content/content-with-subnav',
    null,
    array(
        'subnav_heading' => 'Tentang Kami',
        'subnav_name' => 'profile'
    )
);
get_template_part('template-parts/footer/site-footer');

get_footer();
