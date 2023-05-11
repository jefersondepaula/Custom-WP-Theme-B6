-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 11-Maio-2023 às 10:09
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `6bwp_test`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://en-gb.wordpress.org/', '', '2023-05-03 20:36:17', '2023-05-03 19:36:17', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/b6wp', 'yes'),
(2, 'home', 'http://localhost/b6wp', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jefin.luiz@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'b6wptest', 'yes'),
(41, 'stylesheet', 'b6wptest', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/London', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1698694577', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'en_GB', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:5:{i:1683801377;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1683833777;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1683833788;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1683833789;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(182, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/en_GB/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/en_GB/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1683799673;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(160, 'category_children', 'a:0:{}', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(140, 'can_compress_scripts', '1', 'no'),
(219, '_site_transient_timeout_theme_roots', '1683801475', 'no'),
(220, '_site_transient_theme_roots', 'a:1:{s:8:\"b6wptest\";s:7:\"/themes\";}', 'no'),
(188, 'site_logo', '23', 'yes'),
(217, '_transient_timeout_acf_plugin_updates', '1683972475', 'no'),
(218, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.5\";}}', 'no'),
(213, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":7,\"critical\":0}', 'yes'),
(184, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1683799676;s:7:\"checked\";a:1:{s:8:\"b6wptest\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(153, 'theme_mods_twentytwentythree', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1683142596;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(154, 'current_theme', 'b6wptest', 'yes'),
(155, 'theme_mods_b6wptest', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:0:\"\";s:11:\"custom_logo\";i:23;s:16:\"header_textcolor\";s:6:\"000000\";}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(161, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1683143690;}', 'yes'),
(168, 'acf_version', '6.1.5', 'yes'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(221, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1683799676;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.5\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(31, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:720;s:6:\"height\";i:568;s:4:\"file\";s:15:\"2023/05/bg1.png\";s:8:\"filesize\";i:503824;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"bg1-300x237.png\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:119164;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"bg1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43667;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 10, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(33, 10, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(34, 10, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(35, 10, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(36, 10, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(37, 10, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(38, 10, 'flexible_layout_0_hero_slider', '2'),
(30, 20, '_wp_attached_file', '2023/05/bg1.png'),
(6, 6, '_wp_trash_meta_status', 'publish'),
(7, 6, '_wp_trash_meta_time', '1683143285'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1683224756:1'),
(13, 10, '_edit_last', '1'),
(14, 10, 'flexible_layout_0_slider_title', 'Slider title'),
(12, 10, '_edit_lock', '1683226037:1'),
(15, 10, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(16, 10, 'flexible_layout_0_slider_description', 'Description here'),
(17, 10, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(18, 10, 'flexible_layout_0_slider_image', ''),
(19, 10, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(20, 10, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(21, 10, '_flexible_layout', 'field_6452baa544370'),
(22, 15, 'flexible_layout_0_slider_title', 'Slider title'),
(23, 15, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(24, 15, 'flexible_layout_0_slider_description', 'Description here'),
(25, 15, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(26, 15, 'flexible_layout_0_slider_image', ''),
(27, 15, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(28, 15, 'flexible_layout', 'a:1:{i:0;s:11:\"main_slider\";}'),
(29, 15, '_flexible_layout', 'field_6452baa544370'),
(39, 10, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(40, 21, 'flexible_layout_0_slider_title', 'Slider title'),
(41, 21, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(42, 21, 'flexible_layout_0_slider_description', 'Description here'),
(43, 21, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(44, 21, 'flexible_layout_0_slider_image', ''),
(45, 21, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(46, 21, 'flexible_layout', 'a:1:{i:0;s:11:\"Hero header\";}'),
(47, 21, '_flexible_layout', 'field_6452baa544370'),
(48, 21, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(49, 21, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(50, 21, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(51, 21, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(52, 21, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(53, 21, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(54, 21, 'flexible_layout_0_hero_slider', '1'),
(55, 21, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(56, 22, 'flexible_layout_0_slider_title', 'Slider title'),
(57, 22, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(58, 22, 'flexible_layout_0_slider_description', 'Description here'),
(59, 22, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(60, 22, 'flexible_layout_0_slider_image', ''),
(61, 22, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(62, 22, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(63, 22, '_flexible_layout', 'field_6452baa544370'),
(64, 22, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(65, 22, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(66, 22, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(67, 22, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(68, 22, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(69, 22, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(70, 22, 'flexible_layout_0_hero_slider', '1'),
(71, 22, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(72, 23, '_wp_attached_file', '2023/05/6B-Digital.png'),
(73, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:147;s:6:\"height\";i:32;s:4:\"file\";s:22:\"2023/05/6B-Digital.png\";s:8:\"filesize\";i:2384;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 24, '_wp_trash_meta_status', 'publish'),
(75, 24, '_wp_trash_meta_time', '1683148810'),
(76, 25, '_wp_attached_file', '2023/05/meeting-scaled.jpg'),
(77, 25, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:26:\"2023/05/meeting-scaled.jpg\";s:8:\"filesize\";i:495595;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"meeting-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14390;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"meeting-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:96827;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"meeting-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6759;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"meeting-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61775;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"meeting-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:190054;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"meeting-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:319648;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"meeting.jpg\";}'),
(78, 10, 'flexible_layout_0_hero_slider_1_slider_title', 'Stories and interviews 2'),
(79, 10, '_flexible_layout_0_hero_slider_1_slider_title', 'field_6452c640cbcf4'),
(80, 10, 'flexible_layout_0_hero_slider_1_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(81, 10, '_flexible_layout_0_hero_slider_1_slider_description', 'field_6452c653cbcf5'),
(82, 10, 'flexible_layout_0_hero_slider_1_slider_image', '25'),
(83, 10, '_flexible_layout_0_hero_slider_1_slider_image', 'field_6452c663cbcf6'),
(84, 26, 'flexible_layout_0_slider_title', 'Slider title'),
(85, 26, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(86, 26, 'flexible_layout_0_slider_description', 'Description here'),
(87, 26, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(88, 26, 'flexible_layout_0_slider_image', ''),
(89, 26, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(90, 26, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(91, 26, '_flexible_layout', 'field_6452baa544370'),
(92, 26, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(93, 26, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(94, 26, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(95, 26, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(96, 26, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(97, 26, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(98, 26, 'flexible_layout_0_hero_slider', '2'),
(99, 26, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(100, 26, 'flexible_layout_0_hero_slider_1_slider_title', 'Stories and interviews 2'),
(101, 26, '_flexible_layout_0_hero_slider_1_slider_title', 'field_6452c640cbcf4'),
(102, 26, 'flexible_layout_0_hero_slider_1_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(103, 26, '_flexible_layout_0_hero_slider_1_slider_description', 'field_6452c653cbcf5'),
(104, 26, 'flexible_layout_0_hero_slider_1_slider_image', '25'),
(105, 26, '_flexible_layout_0_hero_slider_1_slider_image', 'field_6452c663cbcf6'),
(106, 27, '_menu_item_type', 'post_type'),
(107, 27, '_menu_item_menu_item_parent', '0'),
(108, 27, '_menu_item_object_id', '10'),
(109, 27, '_menu_item_object', 'page'),
(110, 27, '_menu_item_target', ''),
(111, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 27, '_menu_item_xfn', ''),
(113, 27, '_menu_item_url', ''),
(114, 27, '_menu_item_orphaned', '1683184937'),
(115, 28, '_menu_item_type', 'post_type'),
(116, 28, '_menu_item_menu_item_parent', '0'),
(117, 28, '_menu_item_object_id', '2'),
(118, 28, '_menu_item_object', 'page'),
(119, 28, '_menu_item_target', ''),
(120, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 28, '_menu_item_xfn', ''),
(122, 28, '_menu_item_url', ''),
(123, 28, '_menu_item_orphaned', '1683184937'),
(124, 29, '_edit_last', '1'),
(125, 29, '_edit_lock', '1683184825:1'),
(126, 29, 'flexible_layout', ''),
(127, 29, '_flexible_layout', 'field_6452baa544370'),
(128, 30, 'flexible_layout', ''),
(129, 30, '_flexible_layout', 'field_6452baa544370'),
(130, 31, '_edit_last', '1'),
(131, 31, 'flexible_layout', ''),
(132, 31, '_flexible_layout', 'field_6452baa544370'),
(133, 32, 'flexible_layout', ''),
(134, 32, '_flexible_layout', 'field_6452baa544370'),
(135, 31, '_edit_lock', '1683184991:1'),
(136, 33, '_edit_last', '1'),
(137, 33, '_edit_lock', '1683185366:1'),
(138, 33, 'flexible_layout', ''),
(139, 33, '_flexible_layout', 'field_6452baa544370'),
(140, 34, 'flexible_layout', ''),
(141, 34, '_flexible_layout', 'field_6452baa544370'),
(142, 35, '_menu_item_type', 'post_type'),
(143, 35, '_menu_item_menu_item_parent', '0'),
(144, 35, '_menu_item_object_id', '10'),
(145, 35, '_menu_item_object', 'page'),
(146, 35, '_menu_item_target', ''),
(147, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 35, '_menu_item_xfn', ''),
(149, 35, '_menu_item_url', ''),
(150, 35, '_menu_item_orphaned', '1683185167'),
(151, 36, '_menu_item_type', 'post_type'),
(152, 36, '_menu_item_menu_item_parent', '0'),
(153, 36, '_menu_item_object_id', '33'),
(154, 36, '_menu_item_object', 'page'),
(155, 36, '_menu_item_target', ''),
(156, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 36, '_menu_item_xfn', ''),
(158, 36, '_menu_item_url', ''),
(159, 36, '_menu_item_orphaned', '1683185167'),
(160, 37, '_menu_item_type', 'post_type'),
(161, 37, '_menu_item_menu_item_parent', '0'),
(162, 37, '_menu_item_object_id', '29'),
(163, 37, '_menu_item_object', 'page'),
(164, 37, '_menu_item_target', ''),
(165, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 37, '_menu_item_xfn', ''),
(167, 37, '_menu_item_url', ''),
(168, 37, '_menu_item_orphaned', '1683185167'),
(169, 38, '_menu_item_type', 'post_type'),
(170, 38, '_menu_item_menu_item_parent', '0'),
(171, 38, '_menu_item_object_id', '31'),
(172, 38, '_menu_item_object', 'page'),
(173, 38, '_menu_item_target', ''),
(174, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 38, '_menu_item_xfn', ''),
(176, 38, '_menu_item_url', ''),
(177, 38, '_menu_item_orphaned', '1683185167'),
(178, 39, '_menu_item_type', 'post_type'),
(179, 39, '_menu_item_menu_item_parent', '0'),
(180, 39, '_menu_item_object_id', '2'),
(181, 39, '_menu_item_object', 'page'),
(182, 39, '_menu_item_target', ''),
(183, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 39, '_menu_item_xfn', ''),
(185, 39, '_menu_item_url', ''),
(186, 39, '_menu_item_orphaned', '1683185167'),
(187, 40, '_menu_item_type', 'post_type'),
(188, 40, '_menu_item_menu_item_parent', '0'),
(189, 40, '_menu_item_object_id', '10'),
(190, 40, '_menu_item_object', 'page'),
(191, 40, '_menu_item_target', ''),
(192, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 40, '_menu_item_xfn', ''),
(194, 40, '_menu_item_url', ''),
(195, 40, '_menu_item_orphaned', '1683185200'),
(196, 41, '_menu_item_type', 'post_type'),
(197, 41, '_menu_item_menu_item_parent', '0'),
(198, 41, '_menu_item_object_id', '33'),
(199, 41, '_menu_item_object', 'page'),
(200, 41, '_menu_item_target', ''),
(201, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 41, '_menu_item_xfn', ''),
(203, 41, '_menu_item_url', ''),
(204, 41, '_menu_item_orphaned', '1683185200'),
(205, 42, '_menu_item_type', 'post_type'),
(206, 42, '_menu_item_menu_item_parent', '0'),
(207, 42, '_menu_item_object_id', '29'),
(208, 42, '_menu_item_object', 'page'),
(209, 42, '_menu_item_target', ''),
(210, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 42, '_menu_item_xfn', ''),
(212, 42, '_menu_item_url', ''),
(213, 42, '_menu_item_orphaned', '1683185200'),
(214, 43, '_menu_item_type', 'post_type'),
(215, 43, '_menu_item_menu_item_parent', '0'),
(216, 43, '_menu_item_object_id', '31'),
(217, 43, '_menu_item_object', 'page'),
(218, 43, '_menu_item_target', ''),
(219, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 43, '_menu_item_xfn', ''),
(221, 43, '_menu_item_url', ''),
(222, 43, '_menu_item_orphaned', '1683185200'),
(223, 44, '_menu_item_type', 'post_type'),
(224, 44, '_menu_item_menu_item_parent', '0'),
(225, 44, '_menu_item_object_id', '2'),
(226, 44, '_menu_item_object', 'page'),
(227, 44, '_menu_item_target', ''),
(228, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 44, '_menu_item_xfn', ''),
(230, 44, '_menu_item_url', ''),
(231, 44, '_menu_item_orphaned', '1683185200'),
(232, 45, '_menu_item_type', 'post_type'),
(233, 45, '_menu_item_menu_item_parent', '0'),
(234, 45, '_menu_item_object_id', '10'),
(235, 45, '_menu_item_object', 'page'),
(236, 45, '_menu_item_target', ''),
(237, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 45, '_menu_item_xfn', ''),
(239, 45, '_menu_item_url', ''),
(241, 46, '_menu_item_type', 'post_type'),
(242, 46, '_menu_item_menu_item_parent', '0'),
(243, 46, '_menu_item_object_id', '33'),
(244, 46, '_menu_item_object', 'page'),
(245, 46, '_menu_item_target', ''),
(246, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 46, '_menu_item_xfn', ''),
(248, 46, '_menu_item_url', ''),
(292, 52, 'flexible_layout_0_slider_description', 'Description here'),
(250, 47, '_menu_item_type', 'post_type'),
(251, 47, '_menu_item_menu_item_parent', '0'),
(252, 47, '_menu_item_object_id', '29'),
(253, 47, '_menu_item_object', 'page'),
(254, 47, '_menu_item_target', ''),
(255, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 47, '_menu_item_xfn', ''),
(257, 47, '_menu_item_url', ''),
(369, 55, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(370, 55, 'flexible_layout_0_slider_description', 'Description here'),
(288, 10, 'flexible_layout_0_hero_slider_1_slider_subtitle', 'Our products'),
(286, 10, 'flexible_layout_0_hero_slider_0_slider_subtitle', 'Our blog'),
(287, 10, '_flexible_layout_0_hero_slider_0_slider_subtitle', 'field_64535f4c0dced'),
(291, 52, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(290, 52, 'flexible_layout_0_slider_title', 'Slider title'),
(368, 55, 'flexible_layout_0_slider_title', 'Slider title'),
(289, 10, '_flexible_layout_0_hero_slider_1_slider_subtitle', 'field_64535f4c0dced'),
(293, 52, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(294, 52, 'flexible_layout_0_slider_image', ''),
(295, 52, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(296, 52, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(297, 52, '_flexible_layout', 'field_6452baa544370'),
(298, 52, 'flexible_layout_0_hero_slider_0_slider_title', 'Our Blog'),
(299, 52, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(300, 52, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(301, 52, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(302, 52, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(303, 52, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(304, 52, 'flexible_layout_0_hero_slider', '2'),
(305, 52, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(306, 52, 'flexible_layout_0_hero_slider_1_slider_title', 'Stories and interviews 2'),
(307, 52, '_flexible_layout_0_hero_slider_1_slider_title', 'field_6452c640cbcf4'),
(308, 52, 'flexible_layout_0_hero_slider_1_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(309, 52, '_flexible_layout_0_hero_slider_1_slider_description', 'field_6452c653cbcf5'),
(310, 52, 'flexible_layout_0_hero_slider_1_slider_image', '25'),
(311, 52, '_flexible_layout_0_hero_slider_1_slider_image', 'field_6452c663cbcf6'),
(312, 52, 'flexible_layout_0_hero_slider_0_slider_subtitle', 'Stories and interviews'),
(313, 52, '_flexible_layout_0_hero_slider_0_slider_subtitle', 'field_64535f4c0dced'),
(314, 52, 'flexible_layout_0_hero_slider_1_slider_subtitle', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(315, 52, '_flexible_layout_0_hero_slider_1_slider_subtitle', 'field_64535f4c0dced'),
(316, 53, 'flexible_layout_0_slider_title', 'Slider title'),
(317, 53, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(318, 53, 'flexible_layout_0_slider_description', 'Description here'),
(319, 53, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(320, 53, 'flexible_layout_0_slider_image', ''),
(321, 53, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(322, 53, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(323, 53, '_flexible_layout', 'field_6452baa544370'),
(324, 53, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(325, 53, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(326, 53, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(327, 53, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(328, 53, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(329, 53, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(330, 53, 'flexible_layout_0_hero_slider', '2'),
(331, 53, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(332, 53, 'flexible_layout_0_hero_slider_1_slider_title', 'Stories and interviews 2'),
(333, 53, '_flexible_layout_0_hero_slider_1_slider_title', 'field_6452c640cbcf4'),
(334, 53, 'flexible_layout_0_hero_slider_1_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(335, 53, '_flexible_layout_0_hero_slider_1_slider_description', 'field_6452c653cbcf5'),
(336, 53, 'flexible_layout_0_hero_slider_1_slider_image', '25'),
(337, 53, '_flexible_layout_0_hero_slider_1_slider_image', 'field_6452c663cbcf6'),
(338, 53, 'flexible_layout_0_hero_slider_0_slider_subtitle', 'Our Blog'),
(339, 53, '_flexible_layout_0_hero_slider_0_slider_subtitle', 'field_64535f4c0dced'),
(340, 53, 'flexible_layout_0_hero_slider_1_slider_subtitle', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(341, 53, '_flexible_layout_0_hero_slider_1_slider_subtitle', 'field_64535f4c0dced'),
(342, 54, 'flexible_layout_0_slider_title', 'Slider title'),
(343, 54, '_flexible_layout_0_slider_title', 'field_6452be3d608f3'),
(344, 54, 'flexible_layout_0_slider_description', 'Description here'),
(345, 54, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(346, 54, 'flexible_layout_0_slider_image', ''),
(347, 54, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(348, 54, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(349, 54, '_flexible_layout', 'field_6452baa544370'),
(350, 54, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(351, 54, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(352, 54, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(353, 54, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(354, 54, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(355, 54, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(356, 54, 'flexible_layout_0_hero_slider', '2'),
(357, 54, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(358, 54, 'flexible_layout_0_hero_slider_1_slider_title', 'Stories and interviews 2'),
(359, 54, '_flexible_layout_0_hero_slider_1_slider_title', 'field_6452c640cbcf4'),
(360, 54, 'flexible_layout_0_hero_slider_1_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(361, 54, '_flexible_layout_0_hero_slider_1_slider_description', 'field_6452c653cbcf5'),
(362, 54, 'flexible_layout_0_hero_slider_1_slider_image', '25'),
(363, 54, '_flexible_layout_0_hero_slider_1_slider_image', 'field_6452c663cbcf6'),
(364, 54, 'flexible_layout_0_hero_slider_0_slider_subtitle', 'Our blog'),
(365, 54, '_flexible_layout_0_hero_slider_0_slider_subtitle', 'field_64535f4c0dced'),
(366, 54, 'flexible_layout_0_hero_slider_1_slider_subtitle', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(367, 54, '_flexible_layout_0_hero_slider_1_slider_subtitle', 'field_64535f4c0dced'),
(371, 55, '_flexible_layout_0_slider_description', 'field_6452be89608f5'),
(372, 55, 'flexible_layout_0_slider_image', ''),
(373, 55, '_flexible_layout_0_slider_image', 'field_6452be71608f4'),
(374, 55, 'flexible_layout', 'a:1:{i:0;s:11:\"hero_header\";}'),
(375, 55, '_flexible_layout', 'field_6452baa544370'),
(376, 55, 'flexible_layout_0_hero_slider_0_slider_title', 'Stories and interviews'),
(377, 55, '_flexible_layout_0_hero_slider_0_slider_title', 'field_6452c640cbcf4'),
(378, 55, 'flexible_layout_0_hero_slider_0_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(379, 55, '_flexible_layout_0_hero_slider_0_slider_description', 'field_6452c653cbcf5'),
(380, 55, 'flexible_layout_0_hero_slider_0_slider_image', '20'),
(381, 55, '_flexible_layout_0_hero_slider_0_slider_image', 'field_6452c663cbcf6'),
(382, 55, 'flexible_layout_0_hero_slider', '2'),
(383, 55, '_flexible_layout_0_hero_slider', 'field_6452c621cbcf3'),
(384, 55, 'flexible_layout_0_hero_slider_1_slider_title', 'Stories and interviews 2'),
(385, 55, '_flexible_layout_0_hero_slider_1_slider_title', 'field_6452c640cbcf4'),
(386, 55, 'flexible_layout_0_hero_slider_1_slider_description', 'Subscribe to learn about new product features, the latest in technology, solutions, and updates.\r\n\r\nSubscribe to learn about new product features, the latest in technology, solutions, and updates.'),
(387, 55, '_flexible_layout_0_hero_slider_1_slider_description', 'field_6452c653cbcf5'),
(388, 55, 'flexible_layout_0_hero_slider_1_slider_image', '25'),
(389, 55, '_flexible_layout_0_hero_slider_1_slider_image', 'field_6452c663cbcf6'),
(390, 55, 'flexible_layout_0_hero_slider_0_slider_subtitle', 'Our blog'),
(391, 55, '_flexible_layout_0_hero_slider_0_slider_subtitle', 'field_64535f4c0dced'),
(392, 55, 'flexible_layout_0_hero_slider_1_slider_subtitle', 'Our products'),
(393, 55, '_flexible_layout_0_hero_slider_1_slider_subtitle', 'field_64535f4c0dced'),
(394, 56, '_menu_item_type', 'post_type'),
(395, 56, '_menu_item_menu_item_parent', '0'),
(396, 56, '_menu_item_object_id', '31'),
(397, 56, '_menu_item_object', 'page'),
(398, 56, '_menu_item_target', ''),
(399, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(400, 56, '_menu_item_xfn', ''),
(401, 56, '_menu_item_url', ''),
(403, 57, '_menu_item_type', 'post_type'),
(404, 57, '_menu_item_menu_item_parent', '0'),
(405, 57, '_menu_item_object_id', '33'),
(406, 57, '_menu_item_object', 'page'),
(407, 57, '_menu_item_target', ''),
(408, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(409, 57, '_menu_item_xfn', ''),
(410, 57, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-03 20:36:17', '2023-05-03 19:36:17', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-05-03 20:36:17', '2023-05-03 19:36:17', '', 0, 'http://localhost/b6wp/?p=1', 0, 'post', '', 1),
(2, 1, '2023-05-03 20:36:17', '2023-05-03 19:36:17', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/b6wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-05-03 20:36:17', '2023-05-03 19:36:17', '', 0, 'http://localhost/b6wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-05-03 20:36:17', '2023-05-03 19:36:17', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/b6wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-05-03 20:36:17', '2023-05-03 19:36:17', '', 0, 'http://localhost/b6wp/?page_id=3', 0, 'page', '', 0),
(20, 1, '2023-05-03 21:46:46', '2023-05-03 20:46:46', '', 'bg1', '', 'inherit', 'open', 'closed', '', 'bg1', '', '', '2023-05-03 21:46:46', '2023-05-03 20:46:46', '', 10, 'http://localhost/b6wp/wp-content/uploads/2023/05/bg1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2023-05-03 21:46:50', '2023-05-03 20:46:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-03 21:46:50', '2023-05-03 20:46:50', '', 10, 'http://localhost/b6wp/?p=21', 0, 'revision', '', 0),
(6, 1, '2023-05-03 20:48:05', '2023-05-03 19:48:05', '{\n    \"b6wptest::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-03 19:48:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fb4d7d3c-eb89-404e-a4ff-b3a36acf74a6', '', '', '2023-05-03 20:48:05', '2023-05-03 19:48:05', '', 0, 'http://localhost/b6wp/2023/05/03/fb4d7d3c-eb89-404e-a4ff-b3a36acf74a6/', 0, 'customize_changeset', '', 0),
(7, 1, '2023-05-03 20:49:14', '2023-05-03 19:49:14', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'flexible layout', 'flexible-layout', 'publish', 'closed', 'closed', '', 'group_6452baa4dbc2f', '', '', '2023-05-04 08:32:18', '2023-05-04 07:32:18', '', 0, 'http://localhost/b6wp/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2023-05-03 20:49:14', '2023-05-03 19:49:14', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:1:{s:20:\"layout_6452bc3658b2a\";a:6:{s:3:\"key\";s:20:\"layout_6452bc3658b2a\";s:5:\"label\";s:11:\"Hero header\";s:4:\"name\";s:11:\"hero_header\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Flexible layout', 'flexible_layout', 'publish', 'closed', 'closed', '', 'field_6452baa544370', '', '', '2023-05-03 22:16:46', '2023-05-03 21:16:46', '', 7, 'http://localhost/b6wp/?post_type=acf-field&#038;p=8', 0, 'acf-field', '', 0),
(10, 1, '2023-05-03 21:03:00', '2023-05-03 20:03:00', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-05-04 08:37:17', '2023-05-04 07:37:17', '', 0, 'http://localhost/b6wp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-05-03 21:03:00', '2023-05-03 20:03:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-03 21:03:00', '2023-05-03 20:03:00', '', 10, 'http://localhost/b6wp/?p=11', 0, 'revision', '', 0),
(22, 1, '2023-05-03 22:17:39', '2023-05-03 21:17:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-03 22:17:39', '2023-05-03 21:17:39', '', 10, 'http://localhost/b6wp/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-05-03 22:19:12', '2023-05-03 21:19:12', '', '6B Digital', '', 'inherit', 'open', 'closed', '', '6b-digital', '', '', '2023-05-03 22:19:12', '2023-05-03 21:19:12', '', 0, 'http://localhost/b6wp/wp-content/uploads/2023/05/6B-Digital.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2023-05-03 22:20:10', '2023-05-03 21:20:10', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-03 21:20:10\"\n    },\n    \"b6wptest::custom_logo\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-03 21:20:10\"\n    },\n    \"b6wptest::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-03 21:20:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3098d56a-6eaf-466c-9e1d-ac5900cb9525', '', '', '2023-05-03 22:20:10', '2023-05-03 21:20:10', '', 0, 'http://localhost/b6wp/2023/05/03/3098d56a-6eaf-466c-9e1d-ac5900cb9525/', 0, 'customize_changeset', '', 0),
(25, 1, '2023-05-04 00:38:08', '2023-05-03 23:38:08', '', 'meeting', '', 'inherit', 'open', 'closed', '', 'meeting', '', '', '2023-05-04 00:38:08', '2023-05-03 23:38:08', '', 10, 'http://localhost/b6wp/wp-content/uploads/2023/05/meeting.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2023-05-04 08:22:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:22:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2023-05-04 08:22:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:22:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2023-05-04 08:22:43', '2023-05-04 07:22:43', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2023-05-04 08:22:43', '2023-05-04 07:22:43', '', 0, 'http://localhost/b6wp/?page_id=29', 0, 'page', '', 0),
(30, 1, '2023-05-04 08:22:43', '2023-05-04 07:22:43', '', 'Products', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-05-04 08:22:43', '2023-05-04 07:22:43', '', 29, 'http://localhost/b6wp/?p=30', 0, 'revision', '', 0),
(15, 1, '2023-05-03 21:31:50', '2023-05-03 20:31:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-03 21:31:50', '2023-05-03 20:31:50', '', 10, 'http://localhost/b6wp/?p=15', 0, 'revision', '', 0),
(26, 1, '2023-05-04 00:38:18', '2023-05-03 23:38:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-04 00:38:18', '2023-05-03 23:38:18', '', 10, 'http://localhost/b6wp/?p=26', 0, 'revision', '', 0),
(16, 1, '2023-05-03 21:39:14', '2023-05-03 20:39:14', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6452bc3658b2a\";s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Hero Slider', 'hero_slider', 'publish', 'closed', 'closed', '', 'field_6452c621cbcf3', '', '', '2023-05-03 21:39:14', '2023-05-03 20:39:14', '', 8, 'http://localhost/b6wp/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 1, '2023-05-03 21:39:14', '2023-05-03 20:39:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Slider title', 'slider_title', 'publish', 'closed', 'closed', '', 'field_6452c640cbcf4', '', '', '2023-05-03 21:39:14', '2023-05-03 20:39:14', '', 16, 'http://localhost/b6wp/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2023-05-03 21:39:14', '2023-05-03 20:39:14', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Slider Description', 'slider_description', 'publish', 'closed', 'closed', '', 'field_6452c653cbcf5', '', '', '2023-05-04 08:31:47', '2023-05-04 07:31:47', '', 16, 'http://localhost/b6wp/?post_type=acf-field&#038;p=18', 2, 'acf-field', '', 0),
(19, 1, '2023-05-03 21:39:14', '2023-05-03 20:39:14', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Slider image', 'slider_image', 'publish', 'closed', 'closed', '', 'field_6452c663cbcf6', '', '', '2023-05-04 08:31:47', '2023-05-04 07:31:47', '', 16, 'http://localhost/b6wp/?post_type=acf-field&#038;p=19', 3, 'acf-field', '', 0),
(31, 1, '2023-05-04 08:25:28', '2023-05-04 07:25:28', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2023-05-04 08:25:28', '2023-05-04 07:25:28', '', 0, 'http://localhost/b6wp/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-05-04 08:25:28', '2023-05-04 07:25:28', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-05-04 08:25:28', '2023-05-04 07:25:28', '', 31, 'http://localhost/b6wp/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-05-04 08:25:48', '2023-05-04 07:25:48', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2023-05-04 08:25:48', '2023-05-04 07:25:48', '', 0, 'http://localhost/b6wp/?page_id=33', 0, 'page', '', 0),
(34, 1, '2023-05-04 08:25:48', '2023-05-04 07:25:48', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-05-04 08:25:48', '2023-05-04 07:25:48', '', 33, 'http://localhost/b6wp/?p=34', 0, 'revision', '', 0),
(35, 1, '2023-05-04 08:26:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2023-05-04 08:26:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2023-05-04 08:26:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2023-05-04 08:26:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2023-05-04 08:26:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2023-05-04 08:26:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2023-05-04 08:26:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2023-05-04 08:26:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2023-05-04 08:26:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2023-05-04 08:26:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-05-04 08:26:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/b6wp/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2023-05-04 08:38:33', '2023-05-04 07:27:15', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2023-05-04 08:38:33', '2023-05-04 07:38:33', '', 0, 'http://localhost/b6wp/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2023-05-04 08:38:33', '2023-05-04 07:27:15', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2023-05-04 08:38:33', '2023-05-04 07:38:33', '', 0, 'http://localhost/b6wp/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2023-05-04 08:38:33', '2023-05-04 07:27:15', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2023-05-04 08:38:33', '2023-05-04 07:38:33', '', 0, 'http://localhost/b6wp/?p=47', 3, 'nav_menu_item', '', 0),
(51, 1, '2023-05-04 08:31:47', '2023-05-04 07:31:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Slider subtitle', 'slider_subtitle', 'publish', 'closed', 'closed', '', 'field_64535f4c0dced', '', '', '2023-05-04 08:32:18', '2023-05-04 07:32:18', '', 16, 'http://localhost/b6wp/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2023-05-04 08:33:19', '2023-05-04 07:33:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-04 08:33:19', '2023-05-04 07:33:19', '', 10, 'http://localhost/b6wp/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-05-04 08:36:09', '2023-05-04 07:36:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-04 08:36:09', '2023-05-04 07:36:09', '', 10, 'http://localhost/b6wp/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-05-04 08:36:38', '2023-05-04 07:36:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-04 08:36:38', '2023-05-04 07:36:38', '', 10, 'http://localhost/b6wp/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-05-04 08:37:17', '2023-05-04 07:37:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-05-04 08:37:17', '2023-05-04 07:37:17', '', 10, 'http://localhost/b6wp/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-05-04 08:38:33', '2023-05-04 07:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2023-05-04 08:38:33', '2023-05-04 07:38:33', '', 0, 'http://localhost/b6wp/?p=56', 4, 'nav_menu_item', '', 0),
(57, 1, '2023-05-04 08:38:33', '2023-05-04 07:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2023-05-04 08:38:33', '2023-05-04 07:38:33', '', 0, 'http://localhost/b6wp/?p=57', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(45, 2, 0),
(46, 2, 0),
(47, 2, 0),
(56, 2, 0),
(57, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'manager'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ab6a6ac192912fa5378aad715412055d04e606c475631f7dc4f6a7dd42dbd7e3\";a:4:{s:10:\"expiration\";i:1683315388;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1683142588;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1683146805'),
(20, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_6452baa4dbc2f\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:59:\"revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_page', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'manager', '$P$BynC.BMCZoE0Sgz2oC4BBnttUqLaOh1', 'manager', 'jefin.luiz@gmail.com', 'http://localhost/b6wp', '2023-05-03 19:36:17', '', 0, 'manager');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
