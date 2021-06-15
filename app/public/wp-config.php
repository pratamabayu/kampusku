<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'iuX3wYdqD8gdEAhMlsrIY9TH6LVoyt+XoSZKf9ndXcD6JZEGZLEFmFiCqsKV+L/85XLZY+rmaZj9WqRLHIEo8Q==');
define('SECURE_AUTH_KEY',  'jkrj6scxB4igPUiJTSSI8N6AEhcUclcQGXLgCyTuMRRLWGyGpmVFVD1qH/doYAD9f/8MCRf2cbdDC/NiPvb2yA==');
define('LOGGED_IN_KEY',    '/WWUcQZYlzyGVaXO7VqYI+ttFqIxl7f1ljh/Krl4zXW/i3WHryHUvphgieT4Vmb9NkTBmW8zF3jpR4TWb8FyYg==');
define('NONCE_KEY',        'WRHRy4FCoERwojE2JcTXAF9NxJnQDlYJSyek3PdGEUP/29gkhB0/gyXmwq0Xqbu0eC6JYNAlQ/dwnI606ENSOg==');
define('AUTH_SALT',        'W8MeXy1ss5YuIxj0UYEDWmrTCq+AL7joIfkCezHJruI9juWesZZ7TSwd5tHS0++gTiiiDfKpmCfWU48gVPmrQA==');
define('SECURE_AUTH_SALT', 'JCxX9JUMzhYeup7iPF7/15MP7ixQixK/ew7ideQySF1pHs1FF7THuhx2R24yDVU2rGC84y8mG76jPKDgQhFujg==');
define('LOGGED_IN_SALT',   '26nGLQCjMSouejP1MsB/wqKd/b0D3teKvY3YSMllwT5IguAkAja25o4r9HYGBbOnbrhHmn/yO4fklPFPgcOkwg==');
define('NONCE_SALT',       'ScMQsnY8DGMJqNzGYk4Iy25jZDCF5xZKS3CKNIF+vkElePIliCHbHf+P2368SD11PDgwoAx8YOyg8b+fPgFu0w==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
