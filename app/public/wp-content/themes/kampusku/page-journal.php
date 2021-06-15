<?php
/* Template Name: Journal Page */

get_header();

get_template_part('template-parts/header/site-header');
get_template_part(
    'template-parts/content/content-with-subnav',
    null,
    array(
        'subnav_heading' => 'Jurnal Akademik',
        'subnav_name' => 'journal'
    )
);
get_template_part('template-parts/footer/site-footer');

get_footer();
