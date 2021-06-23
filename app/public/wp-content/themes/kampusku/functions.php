<?php

require_once("inc/MetaBox.php");
require_once("inc/PrettyDateTimeUtility.php");

function pb_add_theme_scripts()
{
    wp_enqueue_style('font-family', 'https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300&display=swap');
    wp_enqueue_style('grafel', get_template_directory_uri() . '/assets/css/grafel.css');
    wp_enqueue_style('gstatic', 'https://unpkg.com/css.gg/icons/all.css');

    wp_enqueue_style('style', get_stylesheet_uri());
}
add_action('wp_enqueue_scripts', 'pb_add_theme_scripts');

register_nav_menus(
    array(
        'primary' => esc_html__('Primary', 'kampusku'),
        'secondary-1' => esc_html__('Secondary-1', 'kampusku'),
        'secondary-2' => esc_html__('Secondary-2', 'kampusku'),
        'secondary-3' => esc_html__('Secondary-3', 'kampusku'),
        'profile' => esc_html__('Profile', 'kampusku'),
        'journal' => esc_html__('Journal', 'kampusku'),
        'study-program' => esc_html__('Study Program', 'kampusku'),
        'proceeding-and-conference' => esc_html__('Proceeding and Conference', 'kampusku'),
        'development-group' => esc_html__('Development Group', 'kampusku'),
        'study-center' => esc_html__('Study Center', 'kampusku'),
        'cooperation' => esc_html__('Cooperation', 'kampusku')
    )
);

function pb_get_menu_array($current_menu)
{
    $array_menu = wp_get_nav_menu_items($current_menu);
    $menu = array();
    foreach ($array_menu as $m) {
        if (empty($m->menu_item_parent)) {
            $menu[$m->ID] = array();
            $menu[$m->ID]['ID']          =   $m->ID;
            $menu[$m->ID]['title']       =   $m->title;
            $menu[$m->ID]['url']         =   $m->url;
            $menu[$m->ID]['children']    =   array();
        }
    }
    $submenu = array();
    foreach ($array_menu as $m) {
        if ($m->menu_item_parent) {
            $submenu[$m->ID] = array();
            $submenu[$m->ID]['ID']       =   $m->ID;
            $submenu[$m->ID]['title']    =   $m->title;
            $submenu[$m->ID]['url']      =   $m->url;
            $menu[$m->menu_item_parent]['children'][$m->ID] = $submenu[$m->ID];
        }
    }
    return $menu;
}

if (function_exists('add_theme_support')) {
    add_theme_support('post-thumbnails');
}

function pb_add_hero_post_type()
{
    register_post_type(
        'heroes',
        array(
            'labels' => array(
                'name' => __('Heroes'),
                'singular_name' => __('Hero'),
                'all_items' => __('All Heroes'),
                'add_item' => __('Add New'),
            ),
            'public' => true,
            'has_archive' => true,
            'show_in_rest' => true,
            'show_in_nav_menus' => false,
            'supports' => array('title', 'editor', 'thumbnail'),
            'can_export' => true
        )
    );
}

add_action('init', 'pb_add_hero_post_type');

function pb_add_event_post_type()
{
    register_post_type(
        'events',
        array(
            'labels' => array(
                'name' => __('Events'),
                'singular_name' => __('Event'),
                'all_items' => __('All Events'),
                'add_item' => __('Add New'),
            ),
            'public' => true,
            'has_archive' => true,
            'rewrite' => array('slug' => 'events'),
            'show_in_rest' => true,
            'show_in_nav_menus' => false,
            'supports' => array('title', 'editor', 'excerpt', 'author', 'thumbnail', 'custom-fields'),
            'can_export' => true
        )
    );
}

add_action('init', 'pb_add_event_post_type');

MetaBox::build(array(
    'id' => 'event_extras',
    'name' => 'Extras',
    'post_type' => 'events',
    'fields' => array(
        array(
            'id' => 'starts_on',
            'label' => 'Starts on',
            'type' => 'datetime-local'
        ),
        array(
            'id' => 'ends_on',
            'label' => 'Ends on',
            'type' => 'datetime-local'
        ),
        array(
            'id' => 'location',
            'label' => 'Location',
            'type' => 'text'
        )
    )
));

MetaBox::build(array(
    'id' => 'post_extras',
    'name' => 'Extras',
    'post_type' => 'post',
    'fields' => array(
        array(
            'id' => 'author_name',
            'label' => 'Author name',
            'type' => 'text'
        ),
        array(
            'id' => 'author_photo_url',
            'label' => 'Author photo url',
            'type' => 'text'
        ),
        array(
            'id' => 'author_biography',
            'label' => 'Author biography',
            'type' => 'textarea',
            'rows' => 4
        )
    )
));

MetaBox::build(array(
    'id' => 'hero_extras',
    'name' => 'Extras',
    'post_type' => 'heroes',
    'fields' => array(
        array(
            'id' => 'featured_video_url',
            'label' => 'Featured video url',
            'type' => 'url'
        )
    )
));
