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
define('DB_NAME', 'siph');

/** MySQL database username */
define('DB_USER', 'siph');

/** MySQL database password */
define('DB_PASSWORD', 'siph1234');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         '+Vc2;]b<_3v99)^KbTuV|.Wcoj[i7U1XQiEc#/lTkWwH0o]nc&~mm$.;8bxHYTg.');
define('SECURE_AUTH_KEY',  '2l }jcjJcte 0!EmS&t?~r%DSSRkCY$owb=:;66|hpzj<O9}rY:_4Drs,+]PjNv/');
define('LOGGED_IN_KEY',    '{)I.RWE=.Q<,;*8Ew}G.5G4IYVKVJS2C>Y9D/mY|j.TgfCtGldb/P$M~s+Fm4kS|');
define('NONCE_KEY',        'k(O^4pBZl:_?/C|Zh7tz$)4JL9^wdjqmEnwa 9Y-I<3[TOfJeD>>DLAz8KQQ#1?3');
define('AUTH_SALT',        'ellH=RSUYrj_:RGQ_N^BR,yaM*|g2e9Wp flz4Tz7}Bzh|&lu[L%]r0Si7le4:NO');
define('SECURE_AUTH_SALT', 'vMKPSJ_R{KDa^?fbg0r4{yKO22/5p6`+yvl6;Tx+}Y4tH$D)pb#-s^ZPfb(`kIFh');
define('LOGGED_IN_SALT',   ')B_PnqeLI3ktk2Fo :J,I+d+o}F|Xi,4OXj#=Q<]>dft]@J%M%,ek.,sh@Q:,UD=');
define('NONCE_SALT',       'E<O#aOyd;4zNtrduL }4IbfWjQSF*AOcgQ)F9fa^kn1&N0qE3s!H2yN2>mjT%G34');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'siph_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
