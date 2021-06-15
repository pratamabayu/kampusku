<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= get_bloginfo('name') ?></title>
    <meta name="description" content="<?= get_bloginfo('name') ?> - <?= get_bloginfo('description') ?>">
    <?php wp_head(); ?>
</head>

<body>