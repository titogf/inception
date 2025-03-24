<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('WP_SITEURL', 'https://gfernand.42.fr/wordpress');
define('WP_HOME', 'https://gfernand.42.fr/wordpress');

define( 'DB_NAME', 'maria_db');
define( 'DB_USER', 'gonzalo');
define( 'DB_PASSWORD', '123zalo');
define( 'DB_HOST', 'mariadb');

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'zu^|Wn)]7-l|)G|l;W<jR#%OV)nQ}`9+[ga4ZBW}N],%t{@xkf~mZ8bGqqC)d6;{');
define('SECURE_AUTH_KEY',  'TBg6~SS:F67X eL?-phj?=.xu+K|)w=-:d/JI.v:i$,sI2C>9H~9bn6T% X:H!=T');
define('LOGGED_IN_KEY',    ')lj[.Ef ;6/E%Yn|J5 kN%8U_,tw^51/2Bc^VJrU+|<[.b+|-?SYj;!!T-||7!*V');
define('NONCE_KEY',        'sUo5y:Rz*yB%Uk~%u-/c`|!t0)_*z.B;KSL~D(rXVzkiw-,^G2jN+({M25J68+AS');
define('AUTH_SALT',        ')GF00J>%Y>WYv$gqReFfa>?9F-[BtoM90^>j9lp^LUAO-es_0U`!-#8J[L8!&|e2');
define('SECURE_AUTH_SALT', '|~$)mF[JI#*k+c,QNP8Im:1KC*;#B]jWzk6Z^7l7Dz-qTjxrLa4.JC!SDX7~HD)H');
define('LOGGED_IN_SALT',   's+iN/0)L3MC4,:4d@cg*m7]%f(C%R44f,+^fc6|hV~O/mXUv$<=88 bSFy5Qs8%L');
define('NONCE_SALT',       'iKg:^n+^-& M;LBC0Ck| g+(@0o[L<&pN@^K$+z~3_|9b|a`36eoX3m b{JxV%9 ');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
