<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '6bwp_test' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '];Domp}[HWltW|e+R=?u|o.H2F&X}u!Qw`%x9.A%&_[Kcp};apUfuC[YLz^CyYqI' );
define( 'SECURE_AUTH_KEY',  'HIPAmwcqm-vClrra*v>-QBM&w<QCF*V^t,P*//SZElU?yIIb=9T>~ydugNQSSS95' );
define( 'LOGGED_IN_KEY',    '<h971l!Bp8rhSJ*WusJ---2Vi&]^]Vzk406W!JmtK<9PHe?9-72DLE-gDM5H ze:' );
define( 'NONCE_KEY',        'wwTb1H#};1`yAV,?3@W/.5yq;86;>Qk-H!9Ud(>G@5O4R8DMT{*6di wFX}8(V)9' );
define( 'AUTH_SALT',        'y{$IhcAOJCem/G=k8-&@bXft)Wz^vT5c[7qO3r](!?mN7<9l4%Wg(z52>Qv-NY4s' );
define( 'SECURE_AUTH_SALT', 'oFBFj,q_Qea)M=_0@aFGB]x4+>*=JEVq7f#>j1[Y1Uo=ww|nuf`,`^N^AM  vlcD' );
define( 'LOGGED_IN_SALT',   'OgCrh9AXDNfFCu9~4=wX1HV`g~q];W W9F@&WZD{_-(]it}*)=&=SBsw?%I^1LB?' );
define( 'NONCE_SALT',       'sgSjcG=!`I}/P!acCMQCJu7VVI$KQ`%2i{t&m#S18=j^Q_Oapil& >t11H$v_]S7' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
