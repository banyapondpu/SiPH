-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 19, 2018 at 06:41 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `siph`
--

-- --------------------------------------------------------

--
-- Table structure for table `siph_commentmeta`
--

CREATE TABLE `siph_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siph_comments`
--

CREATE TABLE `siph_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_comments`
--

INSERT INTO `siph_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-11 04:11:14', '2018-12-11 04:11:14', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siph_links`
--

CREATE TABLE `siph_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siph_options`
--

CREATE TABLE `siph_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_options`
--

INSERT INTO `siph_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/SiPH', 'yes'),
(2, 'home', 'http://localhost:8888/SiPH', 'yes'),
(3, 'blogname', 'โรงพยาบาลศิริราช ปิยมหาราชการุณย์', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'banyapon.poo@dpu.ac.th', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/content/%post_id%', 'yes'),
(29, 'rewrite_rules', 'a:103:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:55:\"content/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"content/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"content/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:43:\"content/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"content/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"content/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:47:\"content/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:28:\"content/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:40:\"content/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:22:\"content/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:53:\"content/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:48:\"content/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:29:\"content/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:41:\"content/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:23:\"content/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:54:\"content/frontpag_highlight/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:64:\"content/frontpag_highlight/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:84:\"content/frontpag_highlight/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:79:\"content/frontpag_highlight/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:79:\"content/frontpag_highlight/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:60:\"content/frontpag_highlight/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"content/frontpag_highlight/([^/]+)/embed/?$\";s:51:\"index.php?frontpag_highlight=$matches[1]&embed=true\";s:47:\"content/frontpag_highlight/([^/]+)/trackback/?$\";s:45:\"index.php?frontpag_highlight=$matches[1]&tb=1\";s:55:\"content/frontpag_highlight/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?frontpag_highlight=$matches[1]&paged=$matches[2]\";s:62:\"content/frontpag_highlight/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?frontpag_highlight=$matches[1]&cpage=$matches[2]\";s:51:\"content/frontpag_highlight/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?frontpag_highlight=$matches[1]&page=$matches[2]\";s:43:\"content/frontpag_highlight/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"content/frontpag_highlight/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"content/frontpag_highlight/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"content/frontpag_highlight/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"content/frontpag_highlight/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"content/frontpag_highlight/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:55:\"content/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:50:\"content/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:31:\"content/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:43:\"content/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:25:\"content/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:82:\"content/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:77:\"content/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:58:\"content/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:70:\"content/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:52:\"content/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:69:\"content/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:64:\"content/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:45:\"content/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:57:\"content/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:39:\"content/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:56:\"content/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:51:\"content/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:32:\"content/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:44:\"content/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:26:\"content/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:36:\"content/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"content/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"content/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"content/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"content/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"content/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"content/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:29:\"content/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:49:\"content/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:44:\"content/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:37:\"content/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:44:\"content/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:33:\"content/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:25:\"content/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"content/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"content/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"content/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"content/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"content/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:1;s:33:\"hide-admin-bar/hide_admin_bar.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'SiPH', 'yes'),
(41, 'stylesheet', 'SiPH', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'siph_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1545203476;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545235876;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1545279128;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545286124;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544501570;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545201632;s:7:\"checked\";a:1:{s:4:\"SiPH\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(136, 'current_theme', 'SiPH', 'yes'),
(137, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544501823;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'theme_mods_SiPH', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(154, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1545201632;s:7:\"checked\";a:2:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.1\";s:33:\"hide-admin-bar/hide_admin_bar.php\";s:7:\"0.3.9.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"hide-admin-bar/hide_admin_bar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/hide-admin-bar\";s:4:\"slug\";s:14:\"hide-admin-bar\";s:6:\"plugin\";s:33:\"hide-admin-bar/hide_admin_bar.php\";s:11:\"new_version\";s:7:\"0.3.9.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/hide-admin-bar/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/hide-admin-bar.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:65:\"https://s.w.org/plugins/geopattern-icon/hide-admin-bar_96938b.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/hide-admin-bar/assets/banner-772x250.png?rev=562610\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(157, 'cptui_new_install', 'false', 'yes'),
(158, 'cptui_post_types', 'a:1:{s:18:\"frontpag_highlight\";a:29:{s:4:\"name\";s:18:\"frontpag_highlight\";s:5:\"label\";s:19:\"FrontPage HighLight\";s:14:\"singular_label\";s:18:\"frontpag_highlight\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(201, '_site_transient_timeout_browser_2ea1699f472aaf3d59fc3b0245e71dbb', '1545739686', 'no'),
(202, '_site_transient_browser_2ea1699f472aaf3d59fc3b0245e71dbb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(219, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.1\";s:7:\"version\";s:5:\"5.0.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1545201628;s:15:\"version_checked\";s:5:\"5.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(221, '_transient_is_multi_author', '0', 'yes'),
(222, '_transient_twentysixteen_categories', '1', 'yes'),
(226, '_site_transient_timeout_theme_roots', '1545203431', 'no'),
(227, '_site_transient_theme_roots', 'a:1:{s:4:\"SiPH\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `siph_postmeta`
--

CREATE TABLE `siph_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_postmeta`
--

INSERT INTO `siph_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_wp_attached_file', '2018/12/din-1.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:547;s:6:\"height\";i:264;s:4:\"file\";s:17:\"2018/12/din-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"din-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"din-1-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_edit_lock', '1544513186:1'),
(12, 10, '_wp_attached_file', '2018/12/siph1.png'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:341;s:4:\"file\";s:17:\"2018/12/siph1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"siph1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"siph1-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 7, '_thumbnail_id', '10'),
(16, 11, '_edit_lock', '1544514094:1'),
(17, 12, '_wp_attached_file', '2018/12/squeeze.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:315;s:4:\"file\";s:19:\"2018/12/squeeze.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"squeeze-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"squeeze-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, '_thumbnail_id', '12'),
(21, 14, '_edit_lock', '1544514240:1'),
(22, 15, '_wp_attached_file', '2018/12/AW_OG_thermage_1200.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:629;s:4:\"file\";s:31:\"2018/12/AW_OG_thermage_1200.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"AW_OG_thermage_1200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"AW_OG_thermage_1200-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"AW_OG_thermage_1200-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"AW_OG_thermage_1200-1024x537.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"AW_OG_thermage_1200-1200x629.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:629;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 14, '_thumbnail_id', '15'),
(28, 19, '_edit_lock', '1544514314:1'),
(29, 20, '_wp_attached_file', '2018/12/banner-skin.jpg'),
(30, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:1312;s:4:\"file\";s:23:\"2018/12/banner-skin.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-skin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"banner-skin-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"banner-skin-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"banner-skin-1024x537.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:537;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"banner-skin-1200x630.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 19, '_thumbnail_id', '20'),
(34, 22, '_edit_lock', '1544517506:1'),
(35, 22, '_wp_page_template', 'page-history.php'),
(36, 27, '_wp_attached_file', '2018/12/History.jpg'),
(37, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:690;s:4:\"file\";s:19:\"2018/12/History.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"History-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"History-300x109.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:109;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"History-768x279.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:279;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"History-1024x372.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"History-1200x436.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 22, '_thumbnail_id', '27'),
(42, 31, '_edit_lock', '1545138183:1'),
(43, 32, '_wp_attached_file', '2018/12/SIPHBanner.jpg'),
(44, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:655;s:4:\"file\";s:22:\"2018/12/SIPHBanner.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"SIPHBanner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"SIPHBanner-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"SIPHBanner-768x262.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:262;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"SIPHBanner-1024x349.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:349;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:23:\"SIPHBanner-1200x409.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:409;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:6:\"pa_YON\";s:6:\"camera\";s:13:\"Canon EOS 60D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1337109046\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"14\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:2:\"59\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(45, 31, '_thumbnail_id', '32');

-- --------------------------------------------------------

--
-- Table structure for table `siph_posts`
--

CREATE TABLE `siph_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_posts`
--

INSERT INTO `siph_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2018-12-11 06:12:25', '2018-12-11 06:12:25', '', 'din', '', 'inherit', 'open', 'closed', '', 'din', '', '', '2018-12-11 06:12:25', '2018-12-11 06:12:25', '', 0, 'http://localhost/SiPH/wp-content/uploads/2018/12/din-1.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2018-12-11 07:06:20', '2018-12-11 07:06:20', '<!-- wp:paragraph -->\n<p>การเตรียมตัวเข้ารับบริการโรงพยาบาลศิริราชปิยมหาราชการุณย์ เปิดให้บริการศูนย์รักษาโรคเฉพาะทาง ปัจจุบันมีศูนย์เปิดให้บริการโดยแพทย์ผู้เชี่ยวชาญเฉพาะทาง จากคณะแพทย์ศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->', 'การเตรียมตัวเข้ารับบริการโรงพยาบาลศิริราชปิยมหาราชการุณย์', '', 'publish', 'open', 'open', '', '%e0%b8%81%e0%b8%b2%e0%b8%a3%e0%b9%80%e0%b8%95%e0%b8%a3%e0%b8%b5%e0%b8%a2%e0%b8%a1%e0%b8%95%e0%b8%b1%e0%b8%a7%e0%b9%80%e0%b8%82%e0%b9%89%e0%b8%b2%e0%b8%a3%e0%b8%b1%e0%b8%9a%e0%b8%9a%e0%b8%a3%e0%b8%b4', '', '', '2018-12-11 07:27:51', '2018-12-11 07:27:51', '', 0, 'http://localhost/SiPH/?p=7', 0, 'post', '', 0),
(9, 1, '2018-12-11 07:06:20', '2018-12-11 07:06:20', '<!-- wp:paragraph -->\n<p>การเตรียมตัวเข้ารับบริการโรงพยาบาลศิริราชปิยมหาราชการุณย์ เปิดให้บริการศูนย์รักษาโรคเฉพาะทาง ปัจจุบันมีศูนย์เปิดให้บริการโดยแพทย์ผู้เชี่ยวชาญเฉพาะทาง จากคณะแพทย์ศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->', 'การเตรียมตัวเข้ารับบริการโรงพยาบาลศิริราชปิยมหาราชการุณย์', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-12-11 07:06:20', '2018-12-11 07:06:20', '', 7, 'http://localhost/SiPH/2018/12/11/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-12-11 07:27:45', '2018-12-11 07:27:45', '', 'siph1', '', 'inherit', 'open', 'closed', '', 'siph1', '', '', '2018-12-11 07:27:45', '2018-12-11 07:27:45', '', 7, 'http://localhost/SiPH/wp-content/uploads/2018/12/siph1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-12-11 07:29:45', '2018-12-11 07:29:45', '<!-- wp:paragraph -->\n<p>\n\nบริการสมูตตี้หรือน้ำผลไม้ปั่นเน้นผลไม้และรสชาติแบบไทย มีทั้งการนำผลไม้ 2 ชนิดมาปั่นรวมกัน และการคั้นน้ำผลไม้แยกกาก ที่มีให้เลือกหลากหลายกว่า 10 รายการ เพื่อเป็นทางเลือกแก่ลูกค้าซึ่งมีความชื่นชอบแตกต่างกัน\n\n</p>\n<!-- /wp:paragraph -->', 'โปรโมชั่น SQUEEZE', '', 'publish', 'open', 'open', '', '%e0%b9%82%e0%b8%9b%e0%b8%a3%e0%b9%82%e0%b8%a1%e0%b8%8a%e0%b8%b1%e0%b9%88%e0%b8%99-squeeze', '', '', '2018-12-11 07:29:45', '2018-12-11 07:29:45', '', 0, 'http://localhost/SiPH/?p=11', 0, 'post', '', 0),
(12, 1, '2018-12-11 07:29:39', '2018-12-11 07:29:39', '', 'squeeze', '', 'inherit', 'open', 'closed', '', 'squeeze', '', '', '2018-12-11 07:29:39', '2018-12-11 07:29:39', '', 11, 'http://localhost/SiPH/wp-content/uploads/2018/12/squeeze.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-12-11 07:29:45', '2018-12-11 07:29:45', '<!-- wp:paragraph -->\n<p>\n\nบริการสมูตตี้หรือน้ำผลไม้ปั่นเน้นผลไม้และรสชาติแบบไทย มีทั้งการนำผลไม้ 2 ชนิดมาปั่นรวมกัน และการคั้นน้ำผลไม้แยกกาก ที่มีให้เลือกหลากหลายกว่า 10 รายการ เพื่อเป็นทางเลือกแก่ลูกค้าซึ่งมีความชื่นชอบแตกต่างกัน\n\n</p>\n<!-- /wp:paragraph -->', 'โปรโมชั่น SQUEEZE', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-12-11 07:29:45', '2018-12-11 07:29:45', '', 11, 'http://localhost/SiPH/2018/12/11/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-12-11 07:44:29', '2018-12-11 07:44:29', '<!-- wp:paragraph -->\n<p>Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ โดยการปล่อยคลื่นวิทยุ (Monopolar RF) เปลี่ยนเป็นมวลความร้อนลงลึกถึงชั้นไขมันใต้ผิวหนัง ทำให้คอลลาเจนหดตัวและกระตุ้นสร้างคอลลาเจนใหม่ เพื่อช่วยกระชับผิวอย่างต่อเนื่อง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผลลัพธ์ที่ได้คือ ยกกระชับผิวปรับรูปหน้าและลดเซลลูไลท์โดยไม่ต้องผ่าตัด หลังการรักษาจะไม่มีรอยแผลไม่ต้องพักฟื้น และสามารถใช้ชีวิตได้ตามปกติ</p>\n<!-- /wp:paragraph -->', 'Thermage เทคโนโลยียกกระชับผิวหย่อนคล้อย', 'Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ  โดยการปล่อยคลื่นวิทยุ (Monopolar RF) เปลี่ยนเป็นมวลความร้อนลงลึกถึงชั้นไขมันใต้ผิวหนัง', 'publish', 'open', 'open', '', 'thermage-%e0%b9%80%e0%b8%97%e0%b8%84%e0%b9%82%e0%b8%99%e0%b9%82%e0%b8%a5%e0%b8%a2%e0%b8%b5%e0%b8%a2%e0%b8%81%e0%b8%81%e0%b8%a3%e0%b8%b0%e0%b8%8a%e0%b8%b1%e0%b8%9a%e0%b8%9c%e0%b8%b4%e0%b8%a7%e0%b8%ab', '', '', '2018-12-11 07:45:41', '2018-12-11 07:45:41', '', 0, 'http://localhost/SiPH/?p=14', 0, 'post', '', 0),
(15, 1, '2018-12-11 07:44:23', '2018-12-11 07:44:23', '', 'AW_OG_thermage_1200', '', 'inherit', 'open', 'closed', '', 'aw_og_thermage_1200', '', '', '2018-12-11 07:44:23', '2018-12-11 07:44:23', '', 14, 'http://localhost/SiPH/wp-content/uploads/2018/12/AW_OG_thermage_1200.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-12-11 07:44:29', '2018-12-11 07:44:29', '<!-- wp:paragraph -->\n<p>Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ โดยการปล่อยคลื่นวิทยุ (Monopolar RF) เปลี่ยนเป็นมวลความร้อนลงลึกถึงชั้นไขมันใต้ผิวหนัง ทำให้คอลลาเจนหดตัวและกระตุ้นสร้างคอลลาเจนใหม่ เพื่อช่วยกระชับผิวอย่างต่อเนื่อง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผลลัพธ์ที่ได้คือ ยกกระชับผิวปรับรูปหน้าและลดเซลลูไลท์โดยไม่ต้องผ่าตัด หลังการรักษาจะไม่มีรอยแผลไม่ต้องพักฟื้น และสามารถใช้ชีวิตได้ตามปกติ</p>\n<!-- /wp:paragraph -->', 'Thermage เทคโนโลยียกกระชับผิวหย่อนคล้อย', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-12-11 07:44:29', '2018-12-11 07:44:29', '', 14, 'http://localhost/SiPH/2018/12/11/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-12-11 07:45:18', '2018-12-11 07:45:18', '<!-- wp:paragraph -->\n<p>Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ โดยการปล่อยคลื่นวิทยุ (Monopolar RF) เปลี่ยนเป็นมวลความร้อนลงลึกถึงชั้นไขมันใต้ผิวหนัง ทำให้คอลลาเจนหดตัวและกระตุ้นสร้างคอลลาเจนใหม่ เพื่อช่วยกระชับผิวอย่างต่อเนื่อง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผลลัพธ์ที่ได้คือ ยกกระชับผิวปรับรูปหน้าและลดเซลลูไลท์โดยไม่ต้องผ่าตัด หลังการรักษาจะไม่มีรอยแผลไม่ต้องพักฟื้น และสามารถใช้ชีวิตได้ตามปกติ</p>\n<!-- /wp:paragraph -->', 'Thermage เทคโนโลยียกกระชับผิวหย่อนคล้อย', 'Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-12-11 07:45:18', '2018-12-11 07:45:18', '', 14, 'http://localhost/SiPH/2018/12/11/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-12-11 07:45:41', '2018-12-11 07:45:41', '<!-- wp:paragraph -->\n<p>Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ โดยการปล่อยคลื่นวิทยุ (Monopolar RF) เปลี่ยนเป็นมวลความร้อนลงลึกถึงชั้นไขมันใต้ผิวหนัง ทำให้คอลลาเจนหดตัวและกระตุ้นสร้างคอลลาเจนใหม่ เพื่อช่วยกระชับผิวอย่างต่อเนื่อง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผลลัพธ์ที่ได้คือ ยกกระชับผิวปรับรูปหน้าและลดเซลลูไลท์โดยไม่ต้องผ่าตัด หลังการรักษาจะไม่มีรอยแผลไม่ต้องพักฟื้น และสามารถใช้ชีวิตได้ตามปกติ</p>\n<!-- /wp:paragraph -->', 'Thermage เทคโนโลยียกกระชับผิวหย่อนคล้อย', 'Thermage เทคโนโลยีระดับสูงในการยกกระชับผิวและลดริ้วรอย ช่วยให้ผิวแลดูอ่อนวัยอย่างธรรมชาติ  โดยการปล่อยคลื่นวิทยุ (Monopolar RF) เปลี่ยนเป็นมวลความร้อนลงลึกถึงชั้นไขมันใต้ผิวหนัง', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-12-11 07:45:41', '2018-12-11 07:45:41', '', 14, 'http://localhost/SiPH/2018/12/11/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-12-11 07:47:10', '2018-12-11 07:47:10', '<!-- wp:paragraph -->\n<p><strong>ผื่นแพ้สัมผัส&nbsp;</strong><strong>(Allergic Contact Dermatitis)</strong>&nbsp;หมายถึง การอักเสบของผิวหนังซึ่งเกิดจากการสัมผัสกับสารที่แพ้ สารที่เป็นต้นเหตุ มักเกิดจาก<a href=\"http://www.siphhospital.com/th/news/article/share/152\">เครื่องสำอาง</a>&nbsp;การประกอบอาชีพ งานอดิเรก และสารในครัวเรือน ซึ่งสัมผัสได้ในชีวิตประจำวัน ลักษณะผื่นมักเป็นบริเวณที่สัมผัสสาร โดยอาจเป็นๆ หายๆ นำไปสู่การอักเสบที่เรื้อรังได้ สามารถตรวจได้ด้วย “การทำ Patch Test”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>การทดสอบภูมิแพ้ผิวหนังชนิดผื่นแพ้สัมผัส&nbsp;</strong>คือ วิธีปิดสารทดสอบบนผิวหนัง หรือ Patch Test &nbsp;เป็นวิธีทางวิทยศาสตร์ที่ดีที่สุดในปัจจุบัน เพื่อพิสูจน์ว่าผื่นผิวหนังอักเสบของผู้ป่วยเกิดจากการแพ้สารก่อภูมิแพ้ชนิดใด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>** การทดสอบนี้ ไม่ใช่วิธีการทดสอบสำหรับโรคลมพิษ</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>การเตรียมตัวสำหรับการทดสอบ&nbsp;</strong><strong>Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. ควรงดใช้ยาในกลุ่มคอร์โคสเตียรอยด์ชนิดรับประทาน หรือชนิดทาผิวหนังบริเวณที่ทำการทดสอบ (แผ่นหลังหรือต้นแขน) ก่อนมารับการทดสอบอย่างน้อย 2 สัปดาห์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. ควรงดใช้ยาแก้แพ้ แก้คัน (Antihistamine) อย่างน้อย 48 ชั่วโมง ก่อนมาทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. ตำแหน่งที่ทำการทดสอบ คือ บริเวณแผ่นหลังหรือต้นแขนที่ไม่ควรมีการอักเสบของผิวหนัง และควรงดทาโลชั่นหรือยาใดๆในวันที่มาทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4. ไม่ควรอาบแดด หรือให้แผ่นหลังอาบแดดก่อนทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5. ไม่ควรสวมชุดติดกัน แต่ควรใส่ชนิดคนละท่อนเป็นเสื้อกับกระโปรงหรือกางเกง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6. ห้ามบริเวณที่ทำการทดสอบถูกน้ำจนกว่าจะอ่านผล 7 วัน ดังนั้น ผู้ป่วยควรสระผมให้เรียบร้อยก่อนวันมาทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://cms.siphhospital.com/media/upload/%20Patch%20Test_%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%AD%E0%B8%9A.jpg\" alt=\"#ศูนย์ผิวหนัง #โรงพยาบาลศิริราช ปิยมหาราชการุณย์ #ทดสอบภูมิแพ้ผิวหนัง #ผื่นแพ้สัมผัส #ทดสอบภูมิแพ้ #Patch Test #โรคผิวหนัง #แพ้สารเคมี #แพ้เครื่องสำอาง #ผิวหนังอักเสบ #เตรียมตัวทดสอบภูมิแพ้ผิวหนัง #วิธีทดสอบภูมิแพ้ผิวหนัง\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>วิธีการทดสอบ&nbsp;</strong><strong>Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. แพทย์จะปิดสารทดสอบที่สงสัยว่าอาจเป็นสาเหตุของผื่นแพ้ไว้ที่แผ่นหลังหรือต้นแขน</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. แพทย์จะนัดผู้ป่วยมาอ่านผลการทดสอบอย่างน้อย 2 ครั้ง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. ในผู้ป่วยบางราย แพทย์อาจนัดมาทำการทดสอบเพิ่ม หรือนัดอ่านผลการทดสอบซ้ำอีกในวันที่ 7 หลังทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>การปฏิบัติตนขณะทำการทดสอบ</strong>&nbsp;<strong>Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. หลังจากปิดแผ่นทดสอบประมาณ 48 ชั่วโมง แพทย์จะนัดมาเพื่อลอกแผ่นทดสอบพร้อมอ่านผลครั้งที่ 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. ตลอดช่วงการทดสอบควรระมัดระวังไม่ให้บริเวณที่ทดสอบถูกน้ำจนกว่าจะเสร็จการอ่านผล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. กิจกรรมที่ไม่ควรทำ เพราะอาจทำให้แผ่นทดสอบที่ปิดไว้เลื่อนหลุดได้ ได้แก่</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp;- การเล่นกีฬาหรือกิจกรรมที่เหงื่อออกมาก หรือสัมผัสแสงแดด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp;- หลีกเลี่ยงการใส่เสื้อที่ต้องสวมทางศีรษะ เพราะการยกแขนอาจทำให้แผ่นทดสอบเลื่อน</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp;- การถูหลัง นั่งพิง และยกของหนัก</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4. ท่านอน ควรนอนตะแคงกอดหมอนข้างเพื่อให้หลังตรง หรือนอนหงายราบให้หลังตรง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5. ถ้ารู้สึกว่าแผ่นทดสอบหลวม ให้ใช้มือกดเบาๆ ให้แผ่นทดสอบแนบกับผิวหนังและใช้พลาสเตอร์ธรรมดาปิดทับอีกที</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6. เมื่อมีอาการคันพยายามอย่าเกาหรือถู ถ้าคันมากๆ หรือรู้สึกแสบร้อนอาจตัดหลุมทดสอบที่ทำให้เกิดอาการดังกล่าวออกก่อนเวลานัด หรือควรปรึกษาแพทย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>7. ควรมาพบแพทย์ตามนัดอ่านผลทดสอบ เพื่อประโยชน์ในการหาสาเหตุของผื่นแพ้สัมพัส</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>ประโยชน์จากการทำการทดสอบ&nbsp;Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>เพื่อหาสาเหตุของการแพ้ หากพบสาเหตุของผื่นแพ้สัมพัสและสามารถหลีกเลี่ยงสาเหตุนั้นได้โรคอาจหายขาด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>สอบถามข้อมูลเพิ่มเติมได้ที่ คลิก!!<a href=\"http://www.siphhospital.com/th/medical-services/treatment-center/skin-center\">&nbsp;ศูนย์ผิวหนังและศัลยกรรมตกแต่ง&nbsp;ชั้น 3 โซน A</a></strong><br></p>\n<!-- /wp:paragraph -->', 'ทดสอบภูมิแพ้ผิวหนัง ด้วย Patch Test', 'ผื่นแพ้สัมผัส (Allergic Contact Dermatitis) หมายถึง การอักเสบของผิวหนังซึ่งเกิดจากการสัมผัสกับสารที่แพ้ สารที่เป็นต้นเหตุ มักเกิดจากเครื่องสำอาง การประกอบอาชีพ งานอดิเรก และสารในครัวเรือน', 'publish', 'open', 'open', '', '%e0%b8%97%e0%b8%94%e0%b8%aa%e0%b8%ad%e0%b8%9a%e0%b8%a0%e0%b8%b9%e0%b8%a1%e0%b8%b4%e0%b9%81%e0%b8%9e%e0%b9%89%e0%b8%9c%e0%b8%b4%e0%b8%a7%e0%b8%ab%e0%b8%99%e0%b8%b1%e0%b8%87-%e0%b8%94%e0%b9%89%e0%b8%a7', '', '', '2018-12-11 07:47:10', '2018-12-11 07:47:10', '', 0, 'http://localhost/SiPH/?p=19', 0, 'post', '', 0),
(20, 1, '2018-12-11 07:46:54', '2018-12-11 07:46:54', '', 'banner-skin', '', 'inherit', 'open', 'closed', '', 'banner-skin', '', '', '2018-12-11 07:46:54', '2018-12-11 07:46:54', '', 19, 'http://localhost/SiPH/wp-content/uploads/2018/12/banner-skin.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-12-11 07:47:10', '2018-12-11 07:47:10', '<!-- wp:paragraph -->\n<p><strong>ผื่นแพ้สัมผัส&nbsp;</strong><strong>(Allergic Contact Dermatitis)</strong>&nbsp;หมายถึง การอักเสบของผิวหนังซึ่งเกิดจากการสัมผัสกับสารที่แพ้ สารที่เป็นต้นเหตุ มักเกิดจาก<a href=\"http://www.siphhospital.com/th/news/article/share/152\">เครื่องสำอาง</a>&nbsp;การประกอบอาชีพ งานอดิเรก และสารในครัวเรือน ซึ่งสัมผัสได้ในชีวิตประจำวัน ลักษณะผื่นมักเป็นบริเวณที่สัมผัสสาร โดยอาจเป็นๆ หายๆ นำไปสู่การอักเสบที่เรื้อรังได้ สามารถตรวจได้ด้วย “การทำ Patch Test”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>การทดสอบภูมิแพ้ผิวหนังชนิดผื่นแพ้สัมผัส&nbsp;</strong>คือ วิธีปิดสารทดสอบบนผิวหนัง หรือ Patch Test &nbsp;เป็นวิธีทางวิทยศาสตร์ที่ดีที่สุดในปัจจุบัน เพื่อพิสูจน์ว่าผื่นผิวหนังอักเสบของผู้ป่วยเกิดจากการแพ้สารก่อภูมิแพ้ชนิดใด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>** การทดสอบนี้ ไม่ใช่วิธีการทดสอบสำหรับโรคลมพิษ</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>การเตรียมตัวสำหรับการทดสอบ&nbsp;</strong><strong>Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. ควรงดใช้ยาในกลุ่มคอร์โคสเตียรอยด์ชนิดรับประทาน หรือชนิดทาผิวหนังบริเวณที่ทำการทดสอบ (แผ่นหลังหรือต้นแขน) ก่อนมารับการทดสอบอย่างน้อย 2 สัปดาห์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. ควรงดใช้ยาแก้แพ้ แก้คัน (Antihistamine) อย่างน้อย 48 ชั่วโมง ก่อนมาทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. ตำแหน่งที่ทำการทดสอบ คือ บริเวณแผ่นหลังหรือต้นแขนที่ไม่ควรมีการอักเสบของผิวหนัง และควรงดทาโลชั่นหรือยาใดๆในวันที่มาทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4. ไม่ควรอาบแดด หรือให้แผ่นหลังอาบแดดก่อนทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5. ไม่ควรสวมชุดติดกัน แต่ควรใส่ชนิดคนละท่อนเป็นเสื้อกับกระโปรงหรือกางเกง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6. ห้ามบริเวณที่ทำการทดสอบถูกน้ำจนกว่าจะอ่านผล 7 วัน ดังนั้น ผู้ป่วยควรสระผมให้เรียบร้อยก่อนวันมาทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"http://cms.siphhospital.com/media/upload/%20Patch%20Test_%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%AD%E0%B8%9A.jpg\" alt=\"#ศูนย์ผิวหนัง #โรงพยาบาลศิริราช ปิยมหาราชการุณย์ #ทดสอบภูมิแพ้ผิวหนัง #ผื่นแพ้สัมผัส #ทดสอบภูมิแพ้ #Patch Test #โรคผิวหนัง #แพ้สารเคมี #แพ้เครื่องสำอาง #ผิวหนังอักเสบ #เตรียมตัวทดสอบภูมิแพ้ผิวหนัง #วิธีทดสอบภูมิแพ้ผิวหนัง\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>วิธีการทดสอบ&nbsp;</strong><strong>Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. แพทย์จะปิดสารทดสอบที่สงสัยว่าอาจเป็นสาเหตุของผื่นแพ้ไว้ที่แผ่นหลังหรือต้นแขน</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. แพทย์จะนัดผู้ป่วยมาอ่านผลการทดสอบอย่างน้อย 2 ครั้ง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. ในผู้ป่วยบางราย แพทย์อาจนัดมาทำการทดสอบเพิ่ม หรือนัดอ่านผลการทดสอบซ้ำอีกในวันที่ 7 หลังทำการทดสอบ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>การปฏิบัติตนขณะทำการทดสอบ</strong>&nbsp;<strong>Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. หลังจากปิดแผ่นทดสอบประมาณ 48 ชั่วโมง แพทย์จะนัดมาเพื่อลอกแผ่นทดสอบพร้อมอ่านผลครั้งที่ 1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. ตลอดช่วงการทดสอบควรระมัดระวังไม่ให้บริเวณที่ทดสอบถูกน้ำจนกว่าจะเสร็จการอ่านผล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. กิจกรรมที่ไม่ควรทำ เพราะอาจทำให้แผ่นทดสอบที่ปิดไว้เลื่อนหลุดได้ ได้แก่</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp;- การเล่นกีฬาหรือกิจกรรมที่เหงื่อออกมาก หรือสัมผัสแสงแดด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp;- หลีกเลี่ยงการใส่เสื้อที่ต้องสวมทางศีรษะ เพราะการยกแขนอาจทำให้แผ่นทดสอบเลื่อน</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp;- การถูหลัง นั่งพิง และยกของหนัก</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4. ท่านอน ควรนอนตะแคงกอดหมอนข้างเพื่อให้หลังตรง หรือนอนหงายราบให้หลังตรง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5. ถ้ารู้สึกว่าแผ่นทดสอบหลวม ให้ใช้มือกดเบาๆ ให้แผ่นทดสอบแนบกับผิวหนังและใช้พลาสเตอร์ธรรมดาปิดทับอีกที</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6. เมื่อมีอาการคันพยายามอย่าเกาหรือถู ถ้าคันมากๆ หรือรู้สึกแสบร้อนอาจตัดหลุมทดสอบที่ทำให้เกิดอาการดังกล่าวออกก่อนเวลานัด หรือควรปรึกษาแพทย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>7. ควรมาพบแพทย์ตามนัดอ่านผลทดสอบ เพื่อประโยชน์ในการหาสาเหตุของผื่นแพ้สัมพัส</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>ประโยชน์จากการทำการทดสอบ&nbsp;Patch test</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>เพื่อหาสาเหตุของการแพ้ หากพบสาเหตุของผื่นแพ้สัมพัสและสามารถหลีกเลี่ยงสาเหตุนั้นได้โรคอาจหายขาด</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>สอบถามข้อมูลเพิ่มเติมได้ที่ คลิก!!<a href=\"http://www.siphhospital.com/th/medical-services/treatment-center/skin-center\">&nbsp;ศูนย์ผิวหนังและศัลยกรรมตกแต่ง&nbsp;ชั้น 3 โซน A</a></strong><br></p>\n<!-- /wp:paragraph -->', 'ทดสอบภูมิแพ้ผิวหนัง ด้วย Patch Test', 'ผื่นแพ้สัมผัส (Allergic Contact Dermatitis) หมายถึง การอักเสบของผิวหนังซึ่งเกิดจากการสัมผัสกับสารที่แพ้ สารที่เป็นต้นเหตุ มักเกิดจากเครื่องสำอาง การประกอบอาชีพ งานอดิเรก และสารในครัวเรือน', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-12-11 07:47:10', '2018-12-11 07:47:10', '', 19, 'http://localhost/SiPH/2018/12/11/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-12-11 08:20:20', '2018-12-11 08:20:20', '<!-- wp:heading {\"level\":3} -->\n<h3>โรงพยาบาลศิริราช ปิยมหาราชการุณย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในปี 2546 คณะแพทยศาสตร์ศิริราชพยาบาล เริ่มโครงการสถาบันการแพทย์สยามินทราธิราช ตั้งเป็นโครงการพัฒนาศิริราชสู่การเป็นสถาบันการแพทย์ชั้นเลิศในระดับเอเชียอาคเนย์ โดยมีมติให้จัดตั้งโรงพยาบาลศิริราช ปิยมหาราชการุณย์ เพื่อเป็นการเฉลิมพระเกียรติพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว ผู้พระราชทานกำเนิดคณะแพทยศาสตร์ศิริราชพยาบาล เฉลิมพระเกียรติสมเด็จพระมหิตลาธิเบศรอดุลยเดชวิกรมพระบรมราชชนกและเฉลิมพระเกียรติพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช ที่ทรงมีพระมหากรุณาธิคุณต่อคณะแพทยศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>เพื่อให้เป็นศูนย์กลางการแพทย์&nbsp;ที่ให้บริการดูแล รักษาและให้คำปรึกษาอย่างครบวงจร ด้วยมาตรฐานระดับสากล JCI (Joint Commission International) และเป็นต้นแบบสำหรับโรงพยาบาลรัฐในการบริหารจัดการที่เป็นเลิศ ด้วยรูปแบบวิธีการบริหารพิเศษเพื่อให้มีรายได้ที่เลี้ยงตัวเองอย่างยั่งยืน โดยเป้าหมายทางการสร้างรายได้นั้นมีขึ้นเพื่อเพิ่มผลประโยชน์ของสังคม นั่นคือการมอบรายได้คืนกลับคณะแพทยศาสตร์ศิริราชพยาบาล เพื่อนำไปใช้ในการยกระดับคุณภาพชีวิต เพิ่มการเข้าถึงบริการทางการแพทย์และสาธารณสุข แก่ประชาชนทั่วไปของโรงพยาบาลศิริราช</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>สนับสนุนการดำเนินงานของคณะแพทยศาสตร์ศิริราชพยาบาล ยกระดับการแพทย์ไทยให้เป็นเลิศในระดับเอเชียอาคเนย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>วัตถุประสงค์ของการก่อตั้ง</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1.&nbsp;เพื่อเฉลิมพระเกียรติพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ผู้พระราชทานกำเนิดคณะแพทยศาสตร์ศิริราชพยาบาล เฉลิมพระเกียรติสมเด็จพระมหิตลาธิเบศรอดุลยเดชวิกรม<br>พระบรมราชชนก และเฉลิมพระเกียรติพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดชผู้ทรงมีพระมหากรุณาธิคุณ<br>ต่อคณะแพทยศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2.&nbsp;เพื่อเป็นศูนย์กลางทางการแพทย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในการให้บริการดูแล รักษา และให้คำปรึกษาผู้ป่วยอย่างครบวงจร มุ่งเน้นการบริการที่เป็นเลิศ<br>และมีมาตรฐานที่ได้รับการยอมรับในระดับสากล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3.&nbsp;สามารถดำเนินการเลี้ยงตัวเองได้อย่างต่อเนื่องและยั่งยืน</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4.&nbsp;นำรายได้จากการดำเนินงานกลับคืนคณะแพทยศาสตร์ศิริราชพยาบาล</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>เพื่อช่วยเหลือผู้ป่วยและช่วยเหลือกิจการของคณะฯ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5.&nbsp;เพื่อเป็นต้นแบบสำหรับโรงพยาบาลรัฐ</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในการบริหารจัดการที่เป็นเลิศ โดยใช้ประสบการณ์และองค์ความรู้ของศิริราชเป็นพื้นฐานสำคัญ<br>และในการดำเนินการเชื่อมโยงบูรณาการกับโรงพยาบาลศิริราช&nbsp;รวมทั้งสนับสนุนพันธกิจของคณะฯ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6.&nbsp;เพื่อเพิ่มแรงจูงใจ และธำรงรักษาไว้ซึ่งบุคลากรทางการแพทย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>แนวคิด \"ผู้รับ\" และ\"ผู้ให้\"</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ที่นี่คุณจะเป็นทั้ง<strong>&nbsp;\"ผู้รับ\"</strong>&nbsp;และ&nbsp;<strong>\"ผู้ให้\"</strong>&nbsp;ในเวลาเดียวกัน<br><br>ผู้รับ&nbsp;บริการทางการแพทย์ที่เป็นเลิศ&nbsp;ด้วยคุณภาพศิริราช มาตรฐานระดับสากล โดยทีมแพทย์ศิริราช พยาบาล และ<br>ผู้เชี่ยวชาญเฉพาะทาง พร้อมเทคโนโลยีทันสมัย &nbsp;ปลอดภัย<br>มีประสิทธิภาพสูง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผู้ให้&nbsp;รายได้ส่วนหนึ่งจากการรักษาจะคืนกลับสู่คณะแพทยศาสตร์ศิริราชพยาบาล เพื่อนำไปช่วยเหลือผู้ป่วยด้อยโอกาสโรงพยาบาลศิริราช และกิจการต่างๆของคณะแพทยศาสตร์ศิริราชพยาบาล เพื่อยกระดับมาตราฐานการแพทย์ไทยสู่ระดับเอเซียอาคเนย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>พระบาทสมเด็จพระเจ้าอยู่หัวฯ ทรงพระกรุณาโปรดเกล้าโปรดกระหม่อมให้ สมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี เสด็จพระราชดำเนินแทนพระองค์ทรงประกอบพิธีวางศิลาฤกษ์อาคาร \"โครงการพัฒนาศิริราชสู่สถาบันการแพทย์ชั้นเลิศในเอเชียอาคเนย์\" ณ บริเวณสถานีรถไฟธนบุรี เขตบางกอกน้อย ในวันจันทร์ที่ 17 มีนาคม 2551 และพระราชทานนามอาคารโรงพยาบาลว่า&nbsp;อาคารปิยมหาราชการุณย์ (Piyamaharajkarun Building)&nbsp;ต่อมาได้มีมติจากกรรมการคณะแพทยศาสตร์ศิริราชพยาบาล มหาวิทยาลัยมหิดล ให้จัดตั้งเป็น<br>“โรงพยาบาลศิริราช ปิยมหาราชการุณย์” (Siriraj Piyamaharajkarun Hospital หรือ SiPH)&nbsp;เมื่อวันที่ 6 กรกฎาคม 2553<br><br>โรงพยาบาลศิริราช ปิยมหาราชการุณย์ ยึดมั่นในมาตรฐานการรักษาที่เน้นคุณธรรม จริยธรรมและความถูกต้องในการรักษาผู้ป่วยเป็นสำคัญ<br>พร้อมทั้งคำนึงถึงความคุ้มค่าของผู้รับบริการ ขณะเดียวกันยังดำรงไว้ซึ่งแนวคิดในการเป็น&nbsp;“ผู้รับ”&nbsp;&nbsp;บริการทางการแพทย์ที่เป็นเลิศ&nbsp;และ&nbsp;“ผู้ให้”&nbsp;<br>นำประโยชน์คืนกลับสู่ศิริราชและสังคมส่วนรวมอย่างแท้จริง&nbsp;</p>\n<!-- /wp:paragraph -->', 'ความเป็นมา', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2018-12-11 08:28:00', '2018-12-11 08:28:00', '', 0, 'http://localhost/SiPH/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-12-11 08:20:20', '2018-12-11 08:20:20', '', 'ความเป็นมา', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-12-11 08:20:20', '2018-12-11 08:20:20', '', 22, 'http://localhost/SiPH/content/23', 0, 'revision', '', 0),
(26, 1, '2018-12-11 08:27:52', '2018-12-11 08:27:52', '<!-- wp:heading {\"level\":3} -->\n<h3>โรงพยาบาลศิริราช ปิยมหาราชการุณย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในปี 2546 คณะแพทยศาสตร์ศิริราชพยาบาล เริ่มโครงการสถาบันการแพทย์สยามินทราธิราช ตั้งเป็นโครงการพัฒนาศิริราชสู่การเป็นสถาบันการแพทย์ชั้นเลิศในระดับเอเชียอาคเนย์ โดยมีมติให้จัดตั้งโรงพยาบาลศิริราช ปิยมหาราชการุณย์ เพื่อเป็นการเฉลิมพระเกียรติพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว ผู้พระราชทานกำเนิดคณะแพทยศาสตร์ศิริราชพยาบาล เฉลิมพระเกียรติสมเด็จพระมหิตลาธิเบศรอดุลยเดชวิกรมพระบรมราชชนกและเฉลิมพระเกียรติพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช ที่ทรงมีพระมหากรุณาธิคุณต่อคณะแพทยศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>เพื่อให้เป็นศูนย์กลางการแพทย์&nbsp;ที่ให้บริการดูแล รักษาและให้คำปรึกษาอย่างครบวงจร ด้วยมาตรฐานระดับสากล JCI (Joint Commission International) และเป็นต้นแบบสำหรับโรงพยาบาลรัฐในการบริหารจัดการที่เป็นเลิศ ด้วยรูปแบบวิธีการบริหารพิเศษเพื่อให้มีรายได้ที่เลี้ยงตัวเองอย่างยั่งยืน โดยเป้าหมายทางการสร้างรายได้นั้นมีขึ้นเพื่อเพิ่มผลประโยชน์ของสังคม นั่นคือการมอบรายได้คืนกลับคณะแพทยศาสตร์ศิริราชพยาบาล เพื่อนำไปใช้ในการยกระดับคุณภาพชีวิต เพิ่มการเข้าถึงบริการทางการแพทย์และสาธารณสุข แก่ประชาชนทั่วไปของโรงพยาบาลศิริราช</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>สนับสนุนการดำเนินงานของคณะแพทยศาสตร์ศิริราชพยาบาล ยกระดับการแพทย์ไทยให้เป็นเลิศในระดับเอเชียอาคเนย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>วัตถุประสงค์ของการก่อตั้ง</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1.&nbsp;เพื่อเฉลิมพระเกียรติพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ผู้พระราชทานกำเนิดคณะแพทยศาสตร์ศิริราชพยาบาล เฉลิมพระเกียรติสมเด็จพระมหิตลาธิเบศรอดุลยเดชวิกรม<br>พระบรมราชชนก และเฉลิมพระเกียรติพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดชผู้ทรงมีพระมหากรุณาธิคุณ<br>ต่อคณะแพทยศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2.&nbsp;เพื่อเป็นศูนย์กลางทางการแพทย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในการให้บริการดูแล รักษา และให้คำปรึกษาผู้ป่วยอย่างครบวงจร มุ่งเน้นการบริการที่เป็นเลิศ<br>และมีมาตรฐานที่ได้รับการยอมรับในระดับสากล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3.&nbsp;สามารถดำเนินการเลี้ยงตัวเองได้อย่างต่อเนื่องและยั่งยืน</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4.&nbsp;นำรายได้จากการดำเนินงานกลับคืนคณะแพทยศาสตร์ศิริราชพยาบาล</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>เพื่อช่วยเหลือผู้ป่วยและช่วยเหลือกิจการของคณะฯ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5.&nbsp;เพื่อเป็นต้นแบบสำหรับโรงพยาบาลรัฐ</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในการบริหารจัดการที่เป็นเลิศ โดยใช้ประสบการณ์และองค์ความรู้ของศิริราชเป็นพื้นฐานสำคัญ<br>และในการดำเนินการเชื่อมโยงบูรณาการกับโรงพยาบาลศิริราช&nbsp;รวมทั้งสนับสนุนพันธกิจของคณะฯ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6.&nbsp;เพื่อเพิ่มแรงจูงใจ และธำรงรักษาไว้ซึ่งบุคลากรทางการแพทย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>แนวคิด \"ผู้รับ\" และ\"ผู้ให้\"</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ที่นี่คุณจะเป็นทั้ง<strong>&nbsp;\"ผู้รับ\"</strong>&nbsp;และ&nbsp;<strong>\"ผู้ให้\"</strong>&nbsp;ในเวลาเดียวกัน<br><br>ผู้รับ&nbsp;บริการทางการแพทย์ที่เป็นเลิศ&nbsp;ด้วยคุณภาพศิริราช มาตรฐานระดับสากล โดยทีมแพทย์ศิริราช พยาบาล และ<br>ผู้เชี่ยวชาญเฉพาะทาง พร้อมเทคโนโลยีทันสมัย &nbsp;ปลอดภัย<br>มีประสิทธิภาพสูง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผู้ให้&nbsp;รายได้ส่วนหนึ่งจากการรักษาจะคืนกลับสู่คณะแพทยศาสตร์ศิริราชพยาบาล เพื่อนำไปช่วยเหลือผู้ป่วยด้อยโอกาสโรงพยาบาลศิริราช และกิจการต่างๆของคณะแพทยศาสตร์ศิริราชพยาบาล เพื่อยกระดับมาตราฐานการแพทย์ไทยสู่ระดับเอเซียอาคเนย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>พระบาทสมเด็จพระเจ้าอยู่หัวฯ ทรงพระกรุณาโปรดเกล้าโปรดกระหม่อมให้ สมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี เสด็จพระราชดำเนินแทนพระองค์ทรงประกอบพิธีวางศิลาฤกษ์อาคาร \"โครงการพัฒนาศิริราชสู่สถาบันการแพทย์ชั้นเลิศในเอเชียอาคเนย์\" ณ บริเวณสถานีรถไฟธนบุรี เขตบางกอกน้อย ในวันจันทร์ที่ 17 มีนาคม 2551 และพระราชทานนามอาคารโรงพยาบาลว่า&nbsp;อาคารปิยมหาราชการุณย์ (Piyamaharajkarun Building)&nbsp;ต่อมาได้มีมติจากกรรมการคณะแพทยศาสตร์ศิริราชพยาบาล มหาวิทยาลัยมหิดล ให้จัดตั้งเป็น<br>“โรงพยาบาลศิริราช ปิยมหาราชการุณย์” (Siriraj Piyamaharajkarun Hospital หรือ SiPH)&nbsp;เมื่อวันที่ 6 กรกฎาคม 2553<br><br>โรงพยาบาลศิริราช ปิยมหาราชการุณย์ ยึดมั่นในมาตรฐานการรักษาที่เน้นคุณธรรม จริยธรรมและความถูกต้องในการรักษาผู้ป่วยเป็นสำคัญ<br>พร้อมทั้งคำนึงถึงความคุ้มค่าของผู้รับบริการ ขณะเดียวกันยังดำรงไว้ซึ่งแนวคิดในการเป็น&nbsp;“ผู้รับ”&nbsp;&nbsp;บริการทางการแพทย์ที่เป็นเลิศ&nbsp;และ&nbsp;“ผู้ให้”&nbsp;<br>นำประโยชน์คืนกลับสู่ศิริราชและสังคมส่วนรวมอย่างแท้จริง&nbsp;</p>\n<!-- /wp:paragraph -->', 'ความเป็นมา', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2018-12-11 08:27:52', '2018-12-11 08:27:52', '', 22, 'http://localhost/SiPH/content/26', 0, 'revision', '', 0),
(27, 1, '2018-12-11 08:27:56', '2018-12-11 08:27:56', '', 'History', '', 'inherit', 'open', 'closed', '', 'history-2', '', '', '2018-12-11 08:27:56', '2018-12-11 08:27:56', '', 22, 'http://localhost/SiPH/wp-content/uploads/2018/12/History.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-12-11 08:28:00', '2018-12-11 08:28:00', '<!-- wp:heading {\"level\":3} -->\n<h3>โรงพยาบาลศิริราช ปิยมหาราชการุณย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในปี 2546 คณะแพทยศาสตร์ศิริราชพยาบาล เริ่มโครงการสถาบันการแพทย์สยามินทราธิราช ตั้งเป็นโครงการพัฒนาศิริราชสู่การเป็นสถาบันการแพทย์ชั้นเลิศในระดับเอเชียอาคเนย์ โดยมีมติให้จัดตั้งโรงพยาบาลศิริราช ปิยมหาราชการุณย์ เพื่อเป็นการเฉลิมพระเกียรติพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว ผู้พระราชทานกำเนิดคณะแพทยศาสตร์ศิริราชพยาบาล เฉลิมพระเกียรติสมเด็จพระมหิตลาธิเบศรอดุลยเดชวิกรมพระบรมราชชนกและเฉลิมพระเกียรติพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดช ที่ทรงมีพระมหากรุณาธิคุณต่อคณะแพทยศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>เพื่อให้เป็นศูนย์กลางการแพทย์&nbsp;ที่ให้บริการดูแล รักษาและให้คำปรึกษาอย่างครบวงจร ด้วยมาตรฐานระดับสากล JCI (Joint Commission International) และเป็นต้นแบบสำหรับโรงพยาบาลรัฐในการบริหารจัดการที่เป็นเลิศ ด้วยรูปแบบวิธีการบริหารพิเศษเพื่อให้มีรายได้ที่เลี้ยงตัวเองอย่างยั่งยืน โดยเป้าหมายทางการสร้างรายได้นั้นมีขึ้นเพื่อเพิ่มผลประโยชน์ของสังคม นั่นคือการมอบรายได้คืนกลับคณะแพทยศาสตร์ศิริราชพยาบาล เพื่อนำไปใช้ในการยกระดับคุณภาพชีวิต เพิ่มการเข้าถึงบริการทางการแพทย์และสาธารณสุข แก่ประชาชนทั่วไปของโรงพยาบาลศิริราช</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>สนับสนุนการดำเนินงานของคณะแพทยศาสตร์ศิริราชพยาบาล ยกระดับการแพทย์ไทยให้เป็นเลิศในระดับเอเชียอาคเนย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>วัตถุประสงค์ของการก่อตั้ง</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>1.&nbsp;เพื่อเฉลิมพระเกียรติพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ผู้พระราชทานกำเนิดคณะแพทยศาสตร์ศิริราชพยาบาล เฉลิมพระเกียรติสมเด็จพระมหิตลาธิเบศรอดุลยเดชวิกรม<br>พระบรมราชชนก และเฉลิมพระเกียรติพระบาทสมเด็จพระปรมินทรมหาภูมิพลอดุลยเดชผู้ทรงมีพระมหากรุณาธิคุณ<br>ต่อคณะแพทยศาสตร์ศิริราชพยาบาล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2.&nbsp;เพื่อเป็นศูนย์กลางทางการแพทย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในการให้บริการดูแล รักษา และให้คำปรึกษาผู้ป่วยอย่างครบวงจร มุ่งเน้นการบริการที่เป็นเลิศ<br>และมีมาตรฐานที่ได้รับการยอมรับในระดับสากล</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3.&nbsp;สามารถดำเนินการเลี้ยงตัวเองได้อย่างต่อเนื่องและยั่งยืน</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4.&nbsp;นำรายได้จากการดำเนินงานกลับคืนคณะแพทยศาสตร์ศิริราชพยาบาล</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>เพื่อช่วยเหลือผู้ป่วยและช่วยเหลือกิจการของคณะฯ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5.&nbsp;เพื่อเป็นต้นแบบสำหรับโรงพยาบาลรัฐ</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ในการบริหารจัดการที่เป็นเลิศ โดยใช้ประสบการณ์และองค์ความรู้ของศิริราชเป็นพื้นฐานสำคัญ<br>และในการดำเนินการเชื่อมโยงบูรณาการกับโรงพยาบาลศิริราช&nbsp;รวมทั้งสนับสนุนพันธกิจของคณะฯ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6.&nbsp;เพื่อเพิ่มแรงจูงใจ และธำรงรักษาไว้ซึ่งบุคลากรทางการแพทย์</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>แนวคิด \"ผู้รับ\" และ\"ผู้ให้\"</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ที่นี่คุณจะเป็นทั้ง<strong>&nbsp;\"ผู้รับ\"</strong>&nbsp;และ&nbsp;<strong>\"ผู้ให้\"</strong>&nbsp;ในเวลาเดียวกัน<br><br>ผู้รับ&nbsp;บริการทางการแพทย์ที่เป็นเลิศ&nbsp;ด้วยคุณภาพศิริราช มาตรฐานระดับสากล โดยทีมแพทย์ศิริราช พยาบาล และ<br>ผู้เชี่ยวชาญเฉพาะทาง พร้อมเทคโนโลยีทันสมัย &nbsp;ปลอดภัย<br>มีประสิทธิภาพสูง</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ผู้ให้&nbsp;รายได้ส่วนหนึ่งจากการรักษาจะคืนกลับสู่คณะแพทยศาสตร์ศิริราชพยาบาล เพื่อนำไปช่วยเหลือผู้ป่วยด้อยโอกาสโรงพยาบาลศิริราช และกิจการต่างๆของคณะแพทยศาสตร์ศิริราชพยาบาล เพื่อยกระดับมาตราฐานการแพทย์ไทยสู่ระดับเอเซียอาคเนย์</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>พระบาทสมเด็จพระเจ้าอยู่หัวฯ ทรงพระกรุณาโปรดเกล้าโปรดกระหม่อมให้ สมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี เสด็จพระราชดำเนินแทนพระองค์ทรงประกอบพิธีวางศิลาฤกษ์อาคาร \"โครงการพัฒนาศิริราชสู่สถาบันการแพทย์ชั้นเลิศในเอเชียอาคเนย์\" ณ บริเวณสถานีรถไฟธนบุรี เขตบางกอกน้อย ในวันจันทร์ที่ 17 มีนาคม 2551 และพระราชทานนามอาคารโรงพยาบาลว่า&nbsp;อาคารปิยมหาราชการุณย์ (Piyamaharajkarun Building)&nbsp;ต่อมาได้มีมติจากกรรมการคณะแพทยศาสตร์ศิริราชพยาบาล มหาวิทยาลัยมหิดล ให้จัดตั้งเป็น<br>“โรงพยาบาลศิริราช ปิยมหาราชการุณย์” (Siriraj Piyamaharajkarun Hospital หรือ SiPH)&nbsp;เมื่อวันที่ 6 กรกฎาคม 2553<br><br>โรงพยาบาลศิริราช ปิยมหาราชการุณย์ ยึดมั่นในมาตรฐานการรักษาที่เน้นคุณธรรม จริยธรรมและความถูกต้องในการรักษาผู้ป่วยเป็นสำคัญ<br>พร้อมทั้งคำนึงถึงความคุ้มค่าของผู้รับบริการ ขณะเดียวกันยังดำรงไว้ซึ่งแนวคิดในการเป็น&nbsp;“ผู้รับ”&nbsp;&nbsp;บริการทางการแพทย์ที่เป็นเลิศ&nbsp;และ&nbsp;“ผู้ให้”&nbsp;<br>นำประโยชน์คืนกลับสู่ศิริราชและสังคมส่วนรวมอย่างแท้จริง&nbsp;</p>\n<!-- /wp:paragraph -->', 'ความเป็นมา', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-12-11 08:28:00', '2018-12-11 08:28:00', '', 22, 'http://localhost/SiPH/content/28', 0, 'revision', '', 0),
(30, 1, '2018-12-18 12:08:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-18 12:08:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/SiPH/?p=30', 0, 'post', '', 0),
(31, 1, '2018-12-18 12:10:09', '2018-12-18 12:10:09', '', 'SIPH Banner', '', 'publish', 'closed', 'closed', '', 'siph-banner', '', '', '2018-12-18 12:10:09', '2018-12-18 12:10:09', '', 0, 'http://localhost:8888/SiPH/?post_type=frontpag_highlight&#038;p=31', 0, 'frontpag_highlight', '', 0),
(32, 1, '2018-12-18 12:09:59', '2018-12-18 12:09:59', '', 'SIPHBanner', '', 'inherit', 'open', 'closed', '', 'siphbanner', '', '', '2018-12-18 12:09:59', '2018-12-18 12:09:59', '', 31, 'http://localhost:8888/SiPH/wp-content/uploads/2018/12/SIPHBanner.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `siph_termmeta`
--

CREATE TABLE `siph_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siph_terms`
--

CREATE TABLE `siph_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_terms`
--

INSERT INTO `siph_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'News', 'news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `siph_term_relationships`
--

CREATE TABLE `siph_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_term_relationships`
--

INSERT INTO `siph_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(11, 2, 0),
(14, 2, 0),
(19, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siph_term_taxonomy`
--

CREATE TABLE `siph_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_term_taxonomy`
--

INSERT INTO `siph_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `siph_usermeta`
--

CREATE TABLE `siph_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_usermeta`
--

INSERT INTO `siph_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'siph'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'siph_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'siph_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"9ecd810402501877839c197c849c394e38eada9107045772fbd699fbded9ecf9\";a:4:{s:10:\"expiration\";i:1545307432;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545134632;}s:64:\"8336d5738a927523aa65afb076897398fd8a2ac7526c344ac9347a7d8197e780\";a:4:{s:10:\"expiration\";i:1545307438;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545134638;}s:64:\"57842602331a8242f6c6ce8e44ebd3514a449a8e1b44438adda6c093525ed714\";a:4:{s:10:\"expiration\";i:1545307491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545134691;}s:64:\"bdb70c12c9283c1162756d9a6e57d1fc2436dae0b21b83f535ed489458c23283\";a:4:{s:10:\"expiration\";i:1545307684;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545134884;}s:64:\"27e568ec37e795a481abd714a1a0861bd27f427b19b082d0739b4a672544b628\";a:4:{s:10:\"expiration\";i:1545307761;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1545134961;}}'),
(17, 1, 'siph_dashboard_quick_press_last_post_id', '30'),
(18, 1, 'siph_user-settings', 'libraryContent=browse'),
(19, 1, 'siph_user-settings-time', '1544508753');

-- --------------------------------------------------------

--
-- Table structure for table `siph_users`
--

CREATE TABLE `siph_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siph_users`
--

INSERT INTO `siph_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'siph', '$P$BXZL7/yRm6rzDNtyzBuMfeMBD8CNof/', 'siph', 'banyapon.poo@dpu.ac.th', '', '2018-12-11 04:11:14', '1545134700:$P$B8wA1.zg0Ry9OP.HG8nqBZiu.SoZu50', 0, 'siph');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siph_commentmeta`
--
ALTER TABLE `siph_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `siph_comments`
--
ALTER TABLE `siph_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `siph_links`
--
ALTER TABLE `siph_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `siph_options`
--
ALTER TABLE `siph_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `siph_postmeta`
--
ALTER TABLE `siph_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `siph_posts`
--
ALTER TABLE `siph_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `siph_termmeta`
--
ALTER TABLE `siph_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `siph_terms`
--
ALTER TABLE `siph_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `siph_term_relationships`
--
ALTER TABLE `siph_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `siph_term_taxonomy`
--
ALTER TABLE `siph_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `siph_usermeta`
--
ALTER TABLE `siph_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `siph_users`
--
ALTER TABLE `siph_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siph_commentmeta`
--
ALTER TABLE `siph_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siph_comments`
--
ALTER TABLE `siph_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siph_links`
--
ALTER TABLE `siph_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siph_options`
--
ALTER TABLE `siph_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `siph_postmeta`
--
ALTER TABLE `siph_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `siph_posts`
--
ALTER TABLE `siph_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `siph_termmeta`
--
ALTER TABLE `siph_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siph_terms`
--
ALTER TABLE `siph_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siph_term_taxonomy`
--
ALTER TABLE `siph_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siph_usermeta`
--
ALTER TABLE `siph_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `siph_users`
--
ALTER TABLE `siph_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
