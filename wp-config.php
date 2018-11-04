<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'almuna');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'O1rJ^y~t_Dl=},Ytk:iP98a),f<&+@fF8cf96Hb/B+u:Kl{gg5fIkC>`/S|3;25c');
define('SECURE_AUTH_KEY',  'bg,r!]d~/2&QY9HQrGE)_A$0f(?KUWSplneO/_:+wn9V=OcyY`G:MsQ=@zliWCy$');
define('LOGGED_IN_KEY',    '[GA* 3u-Y>P^S~yKBq?4FdIk]Z3df|9&B+t&bmR!.n_RTp.!Xk-$E|{z/+n~Ss ~');
define('NONCE_KEY',        'tu1I!|pf*6:zh&Qg=oQ)mSs;s-SIW_60J>nV[YXFlcPAON|e,a{y) twXKMqvx+Y');
define('AUTH_SALT',        'kc6cyId2LnhX)J|L*jX8L Qlx.:<T9wuo!*LnY|d5_YI8d^4<S0us+,mcdGXc|Zz');
define('SECURE_AUTH_SALT', '^H~SLJD.n+hqP&ItcvGpNqx}?&tLw%zXtd)) qS|+%GGye$xgxM*9^s58XKZ/4,B');
define('LOGGED_IN_SALT',   '+iB3=~;4pg9t&L},71Q3}W3!bd lu|T^z?C-UTuxT| )Lg@Y.?{&}SO:3uh3h}#*');
define('NONCE_SALT',       '41kjCBDf>1v4V {@=QeWyUKi=qjD:Y1|6tYX4^R#o(wJdqlOPGh7r-=HSv35X(_P');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
