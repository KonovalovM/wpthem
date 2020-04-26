-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Квт 26 2020 р., 21:57
-- Версія сервера: 10.4.11-MariaDB
-- Версія PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `wpthem`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-22 16:05:07', '2020-04-22 13:05:07', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wpthem.local/', 'yes'),
(2, 'home', 'http://wpthem.local/', 'yes'),
(3, 'blogname', 'wpthem', 'yes'),
(4, 'blogdescription', 'Просто ще один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'Kalyan_com@ukr.net', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wpthem', 'yes'),
(41, 'stylesheet', 'wpthem', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:8:\"Category\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:4:\"TEXT\";s:4:\"text\";s:17:\"Мій текст\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1603112701', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'uk', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"left_sidebar\";a:5:{i:0;s:8:\"search-3\";i:1;s:6:\"text-2\";i:2;s:12:\"categories-3\";i:3;s:11:\"tag_cloud-2\";i:4;s:10:\"calendar-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1587933286;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587949509;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587992708;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587992776;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587992800;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588251908;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:8:\"Calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:4:\"Tags\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"1BoYbUg0707L3FgsvwA62K\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BVXIB77uwx5FB6j0CMnEVyV4cLBoAy0\";s:10:\"created_at\";i:1587856220;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587620190;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(128, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(136, 'current_theme', '', 'yes'),
(137, 'theme_mods_wpthem', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"topMenu\";i:2;s:8:\"downMenu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(142, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"6\",\"critical\":\"0\"}', 'yes'),
(143, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, '_site_transient_timeout_browser_1570add4b3e660f27835bdca50814a71', '1588373536', 'no'),
(158, '_site_transient_browser_1570add4b3e660f27835bdca50814a71', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.113\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(159, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1588373536', 'no'),
(160, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(173, 'recovery_mode_email_last_sent', '1587856220', 'yes'),
(178, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.4.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587906407;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(179, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587906408;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";s:6:\"wpthem\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(180, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587906408;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(183, 'category_children', 'a:0:{}', 'yes'),
(247, '_site_transient_timeout_theme_roots', '1587908208', 'no'),
(248, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:6:\"wpthem\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://wpthem.local/'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(21, 7, '_menu_item_type', 'post_type'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '1'),
(24, 7, '_menu_item_object', 'post'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', ''),
(30, 8, '_edit_lock', '1587713447:1'),
(31, 10, '_edit_lock', '1587713500:1'),
(32, 12, '_edit_lock', '1587713531:1'),
(33, 14, '_menu_item_type', 'post_type'),
(34, 14, '_menu_item_menu_item_parent', '0'),
(35, 14, '_menu_item_object_id', '8'),
(36, 14, '_menu_item_object', 'page'),
(37, 14, '_menu_item_target', ''),
(38, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 14, '_menu_item_xfn', ''),
(40, 14, '_menu_item_url', ''),
(42, 15, '_menu_item_type', 'post_type'),
(43, 15, '_menu_item_menu_item_parent', '14'),
(44, 15, '_menu_item_object_id', '12'),
(45, 15, '_menu_item_object', 'page'),
(46, 15, '_menu_item_target', ''),
(47, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 15, '_menu_item_xfn', ''),
(49, 15, '_menu_item_url', ''),
(51, 16, '_menu_item_type', 'post_type'),
(52, 16, '_menu_item_menu_item_parent', '14'),
(53, 16, '_menu_item_object_id', '10'),
(54, 16, '_menu_item_object', 'page'),
(55, 16, '_menu_item_target', ''),
(56, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 16, '_menu_item_xfn', ''),
(58, 16, '_menu_item_url', ''),
(60, 17, '_menu_item_type', 'custom'),
(61, 17, '_menu_item_menu_item_parent', '0'),
(62, 17, '_menu_item_object_id', '17'),
(63, 17, '_menu_item_object', 'custom'),
(64, 17, '_menu_item_target', ''),
(65, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 17, '_menu_item_xfn', ''),
(67, 17, '_menu_item_url', 'http://google.com'),
(69, 18, '_menu_item_type', 'custom'),
(70, 18, '_menu_item_menu_item_parent', '0'),
(71, 18, '_menu_item_object_id', '18'),
(72, 18, '_menu_item_object', 'custom'),
(73, 18, '_menu_item_target', ''),
(74, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 18, '_menu_item_xfn', ''),
(76, 18, '_menu_item_url', 'https://lessons.educoin.biz/admin-section/poverka-domashnih-zadaniy/'),
(78, 19, '_edit_lock', '1587715315:1'),
(79, 21, '_menu_item_type', 'post_type'),
(80, 21, '_menu_item_menu_item_parent', '0'),
(81, 21, '_menu_item_object_id', '19'),
(82, 21, '_menu_item_object', 'page'),
(83, 21, '_menu_item_target', ''),
(84, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 21, '_menu_item_xfn', ''),
(86, 21, '_menu_item_url', ''),
(88, 22, '_edit_lock', '1587716118:1'),
(89, 24, '_menu_item_type', 'post_type'),
(90, 24, '_menu_item_menu_item_parent', '0'),
(91, 24, '_menu_item_object_id', '22'),
(92, 24, '_menu_item_object', 'page'),
(93, 24, '_menu_item_target', ''),
(94, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 24, '_menu_item_xfn', ''),
(96, 24, '_menu_item_url', ''),
(98, 25, '_menu_item_type', 'custom'),
(99, 25, '_menu_item_menu_item_parent', '0'),
(100, 25, '_menu_item_object_id', '25'),
(101, 25, '_menu_item_object', 'custom'),
(102, 25, '_menu_item_target', ''),
(103, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 25, '_menu_item_xfn', ''),
(105, 25, '_menu_item_url', '#footer'),
(107, 26, '_edit_lock', '1587891794:1'),
(110, 28, '_edit_lock', '1587891404:1'),
(119, 31, '_wp_attached_file', '2020/04/93189201_244667909980862_5975752298603741184_n.png'),
(120, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:280;s:4:\"file\";s:58:\"2020/04/93189201_244667909980862_5975752298603741184_n.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"93189201_244667909980862_5975752298603741184_n-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"93189201_244667909980862_5975752298603741184_n-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 26, '_thumbnail_id', '31'),
(128, 34, '_edit_lock', '1587841549:1'),
(133, 37, '_edit_lock', '1587888898:1'),
(140, 2, '_edit_lock', '1587888988:1'),
(145, 43, '_wp_attached_file', '2020/04/93782020_2598068210447297_6960089117002563584_n.jpg'),
(146, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1447;s:6:\"height\";i:2048;s:4:\"file\";s:59:\"2020/04/93782020_2598068210447297_6960089117002563584_n.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"93782020_2598068210447297_6960089117002563584_n-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"93782020_2598068210447297_6960089117002563584_n-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"93782020_2598068210447297_6960089117002563584_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"93782020_2598068210447297_6960089117002563584_n-768x1087.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1087;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:61:\"93782020_2598068210447297_6960089117002563584_n-1085x1536.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:60:\"93782020_2598068210447297_6960089117002563584_n-1300x500.jpg\";s:5:\"width\";i:1300;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 28, '_thumbnail_id', '43'),
(166, 44, '_edit_lock', '1587903238:1'),
(167, 44, '_wp_page_template', 'contacts.php'),
(170, 26, '_wp_page_template', ''),
(173, 48, '_edit_lock', '1587904695:1'),
(174, 49, '_edit_lock', '1587904736:1'),
(175, 57, '_edit_lock', '1587904930:1'),
(176, 61, '_edit_lock', '1587905116:1'),
(177, 62, '_edit_lock', '1587905124:1'),
(178, 63, '_edit_lock', '1587905039:1'),
(179, 65, '_edit_lock', '1587905072:1'),
(180, 67, '_edit_lock', '1587905215:1'),
(181, 68, '_edit_lock', '1587905230:1'),
(182, 70, '_edit_lock', '1587921918:1'),
(183, 71, '_wp_attached_file', '2020/04/94688628_514200865921164_7073701606256017408_n.jpg'),
(184, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:250;s:4:\"file\";s:58:\"2020/04/94688628_514200865921164_7073701606256017408_n.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"94688628_514200865921164_7073701606256017408_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 70, '_thumbnail_id', '71'),
(186, 72, '_edit_lock', '1587918063:1'),
(187, 72, '_wp_page_template', 'portfolio.php'),
(188, 74, '_menu_item_type', 'post_type'),
(189, 74, '_menu_item_menu_item_parent', '0'),
(190, 74, '_menu_item_object_id', '72'),
(191, 74, '_menu_item_object', 'page'),
(192, 74, '_menu_item_target', ''),
(193, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 74, '_menu_item_xfn', ''),
(195, 74, '_menu_item_url', ''),
(197, 75, '_edit_lock', '1587921919:1'),
(198, 76, '_wp_attached_file', '2020/04/3455679964.jpg'),
(199, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:22:\"2020/04/3455679964.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"3455679964-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"3455679964-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"3455679964-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:23:\"3455679964-1024x500.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 75, '_thumbnail_id', '76'),
(201, 77, '_edit_lock', '1587925815:1'),
(202, 78, '_wp_attached_file', '2020/04/oboi-priroda-skachat-besplatno.orig_.jpg'),
(203, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:48:\"2020/04/oboi-priroda-skachat-besplatno.orig_.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"oboi-priroda-skachat-besplatno.orig_-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"oboi-priroda-skachat-besplatno.orig_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"oboi-priroda-skachat-besplatno.orig_-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:49:\"oboi-priroda-skachat-besplatno.orig_-1024x500.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 77, '_thumbnail_id', '78'),
(205, 77, '_wp_page_template', 'portfolio-post.php'),
(206, 75, '_wp_page_template', 'portfolio-post.php'),
(207, 70, '_wp_page_template', 'portfolio-post.php'),
(208, 80, '_wp_attached_file', '2020/04/3455679964-1.jpg'),
(209, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:576;s:4:\"file\";s:24:\"2020/04/3455679964-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"3455679964-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"3455679964-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"3455679964-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:25:\"3455679964-1-1024x500.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 81, '_wp_attached_file', '2020/04/1528373633334.jpg'),
(211, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2020/04/1528373633334.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"1528373633334-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"1528373633334-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 82, '_wp_attached_file', '2020/04/oboi-priroda-skachat-besplatno.orig_-1.jpg'),
(213, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:50:\"2020/04/oboi-priroda-skachat-besplatno.orig_-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"oboi-priroda-skachat-besplatno.orig_-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"oboi-priroda-skachat-besplatno.orig_-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"oboi-priroda-skachat-besplatno.orig_-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post_thumb\";a:4:{s:4:\"file\";s:51:\"oboi-priroda-skachat-besplatno.orig_-1-1024x500.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-22 16:05:07', '2020-04-22 13:05:07', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2020-04-22 16:05:07', '2020-04-22 13:05:07', '', 0, 'http://wpthem.local/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-22 16:05:07', '2020-04-22 13:05:07', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://127.0.0.2/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-22 16:05:07', '2020-04-22 13:05:07', '', 0, 'http://wpthem.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-22 16:05:07', '2020-04-22 13:05:07', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наша адреса сайту: http://127.0.0.2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які особисті дані ми збираємо та чому ми їх збираємо</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Коментарі</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медіафайли</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Контактні форми</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Вбудований вміст з інших веб-сайтів</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Аналітика</h3><!-- /wp:heading --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактна інформація</h2><!-- /wp:heading --><!-- wp:heading --><h2>Додаткова інформація</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Як ми захищаємо ваші данні</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Які процедури проти втрати даних ми використовуємо</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Від яких третіх сторін ми отримуємо дані</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Яке автоматичне рішення приймається  і/або профілювання ми робимо з користувацькими даними</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Вимоги до розкриття галузевих нормативних вимог</h3><!-- /wp:heading -->', 'Політика конфіденційності', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-22 16:05:07', '2020-04-22 13:05:07', '', 0, 'http://wpthem.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-04-22 16:06:40', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-22 16:06:40', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?p=4', 0, 'post', '', 0),
(5, 1, '2020-04-24 10:21:16', '2020-04-24 07:21:16', '', 'Головна', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 0, 'http://wpthem.local/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2020-04-24 10:21:16', '2020-04-24 07:21:16', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 0, 'http://wpthem.local/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2020-04-24 10:21:16', '2020-04-24 07:21:16', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 0, 'http://wpthem.local/?p=7', 3, 'nav_menu_item', '', 0),
(8, 1, '2020-04-24 10:32:39', '2020-04-24 07:32:39', '<!-- wp:paragraph -->\n<p>Новий блог</p>\n<!-- /wp:paragraph -->', 'Блог', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2020-04-24 10:32:39', '2020-04-24 07:32:39', '', 0, 'http://wpthem.local/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-04-24 10:32:39', '2020-04-24 07:32:39', '<!-- wp:paragraph -->\n<p>Новий блог</p>\n<!-- /wp:paragraph -->', 'Блог', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-04-24 10:32:39', '2020-04-24 07:32:39', '', 8, 'http://wpthem.local/2020/04/24/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-04-24 10:33:48', '2020-04-24 07:33:48', '<!-- wp:paragraph -->\n<p>Тест</p>\n<!-- /wp:paragraph -->', 'Блог запис', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81', '', '', '2020-04-24 10:33:48', '2020-04-24 07:33:48', '', 8, 'http://wpthem.local/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-04-24 10:33:48', '2020-04-24 07:33:48', '<!-- wp:paragraph -->\n<p>Тест</p>\n<!-- /wp:paragraph -->', 'Блог запис', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-04-24 10:33:48', '2020-04-24 07:33:48', '', 10, 'http://wpthem.local/2020/04/24/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-04-24 10:34:34', '2020-04-24 07:34:34', '<!-- wp:paragraph -->\n<p>Новий пост</p>\n<!-- /wp:paragraph -->', 'Пост', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%81%d1%82', '', '', '2020-04-24 10:34:34', '2020-04-24 07:34:34', '', 8, 'http://wpthem.local/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-04-24 10:34:34', '2020-04-24 07:34:34', '<!-- wp:paragraph -->\n<p>Новий пост</p>\n<!-- /wp:paragraph -->', 'Пост', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-04-24 10:34:34', '2020-04-24 07:34:34', '', 12, 'http://wpthem.local/2020/04/24/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-04-24 10:35:00', '2020-04-24 07:35:00', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 0, 'http://wpthem.local/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2020-04-24 10:35:00', '2020-04-24 07:35:00', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 8, 'http://wpthem.local/?p=15', 5, 'nav_menu_item', '', 0),
(16, 1, '2020-04-24 10:35:01', '2020-04-24 07:35:01', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 8, 'http://wpthem.local/?p=16', 6, 'nav_menu_item', '', 0),
(17, 1, '2020-04-24 10:55:12', '2020-04-24 07:55:12', '', 'GOOGLE', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2020-04-24 11:18:07', '2020-04-24 08:18:07', '', 0, 'http://wpthem.local/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2020-04-24 10:55:12', '2020-04-24 07:55:12', '', 'EDUCOIN', '', 'publish', 'closed', 'closed', '', 'educoin', '', '', '2020-04-24 11:18:07', '2020-04-24 08:18:07', '', 0, 'http://wpthem.local/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2020-04-24 11:04:19', '2020-04-24 08:04:19', '<!-- wp:paragraph -->\n<p>0936307788</p>\n<!-- /wp:paragraph -->', 'Контакти', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8', '', '', '2020-04-24 11:04:19', '2020-04-24 08:04:19', '', 0, 'http://wpthem.local/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-04-24 11:04:19', '2020-04-24 08:04:19', '<!-- wp:paragraph -->\n<p>0936307788</p>\n<!-- /wp:paragraph -->', 'Контакти', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-04-24 11:04:19', '2020-04-24 08:04:19', '', 19, 'http://wpthem.local/2020/04/24/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-04-24 11:04:39', '2020-04-24 08:04:39', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-04-24 11:18:07', '2020-04-24 08:18:07', '', 0, 'http://wpthem.local/?p=21', 4, 'nav_menu_item', '', 0),
(22, 1, '2020-04-24 11:17:41', '2020-04-24 08:17:41', '', 'Про нас', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2020-04-24 11:17:41', '2020-04-24 08:17:41', '', 0, 'http://wpthem.local/?page_id=22', 0, 'page', '', 0),
(23, 1, '2020-04-24 11:17:41', '2020-04-24 08:17:41', '', 'Про нас', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-24 11:17:41', '2020-04-24 08:17:41', '', 22, 'http://wpthem.local/2020/04/24/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-04-24 11:18:07', '2020-04-24 08:18:07', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-04-24 11:18:07', '2020-04-24 08:18:07', '', 0, 'http://wpthem.local/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-04-24 11:27:09', '2020-04-24 08:27:09', '', 'До низу', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be-%d0%bd%d0%b8%d0%b7%d1%83', '', '', '2020-04-26 19:24:14', '2020-04-26 16:24:14', '', 0, 'http://wpthem.local/?p=25', 7, 'nav_menu_item', '', 0),
(26, 1, '2020-04-25 12:43:21', '2020-04-25 09:43:21', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus amet iusto, commodi placeat, sint, quisquam hic. Alias dolore enim earum recusandae repellendus amet inventore odit tempora fuga, eius officia maxime, nisi ratione provident reiciendis! Veniam error, repudiandae harum! Dolorem amet praesentium assumenda? Atque veniam repellendus illum aliquid architecto deserunt facere soluta, vel hic. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">[my_short]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[iframe]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Culpa exercitationem modi eligendi commodi provident voluptate esse. Sequi cum cumque veritatis nihil dolor totam maiores in quod ipsum natus. Veniam modi libero nesciunt at nobis et aliquam distinctio, vel excepturi quod cumque, necessitatibus inventore minima optio unde eveniet nisi ipsum illo reprehenderit beatae eligendi. Doloribus perferendis deleniti, a debitis totam assumenda impedit earum iure quasi inventore ea nulla at odit eaque itaque quos reiciendis ut adipisci voluptatum dolores ex iusto aut repellendus. Magni dolor voluptatem eos ea dolorum laudantium, libero commodi reiciendis quo repellendus voluptas quis delectus minima alias officiis dolores explicabo! Quo earum beatae asperiores nemo, maiores cupiditate accusantium repellat quisquam expedita fugiat excepturi inventore eius doloremque, nesciunt. Error repudiandae expedita ipsum sunt. Ab eaque veritatis at repellendus et dignissimos similique id nobis! Voluptatum fugit iste suscipit non aliquid doloribus, adipisci delectus dignissimos. Iusto rerum esse tempora veritatis adipisci nam eius cumque! Voluptatibus saepe nam ut vel, nobis quaerat necessitatibus! Delectus fugiat enim maxime reiciendis facilis soluta voluptas, dolorum a, nesciunt amet excepturi placeat deleniti ea assumenda corporis consequatur temporibus! Sit minus cumque, nulla consequatur harum consectetur quidem ipsum nostrum fugiat voluptate asperiores deserunt quibusdam. Aliquid, a. Blanditiis necessitatibus rerum pariatur voluptatum veritatis ea nobis obcaecati consequatur magni quisquam quidem, optio laudantium! Praesentium, repudiandae, nihil. Voluptas voluptate iste repudiandae, ducimus culpa, rerum consectetur officia soluta aspernatur possimus, repellendus! Dolorum adipisci ad reiciendis perferendis voluptate harum laborum qui cum corporis assumenda a non quam quo suscipit, atque eligendi placeat tempore, consequuntur quaerat veniam impedit odio! Qui veritatis nostrum voluptatibus facere et illo dignissimos accusamus beatae expedita velit laudantium quas tempore reprehenderit maxime placeat, ipsum, illum recusandae omnis dolores ducimus fugiat id maiores? Perferendis, eum totam. Impedit ex, molestias ad voluptatem nostrum et quidem autem corrupti veniam, aperiam sequi hic officia sapiente distinctio, voluptas quo aspernatur iure repudiandae earum velit explicabo.</p>\n<!-- /wp:paragraph -->', 'New', '', 'publish', 'open', 'open', '', 'new', '', '', '2020-04-26 12:05:12', '2020-04-26 09:05:12', '', 0, 'http://wpthem.local/?p=26', 0, 'post', '', 0),
(27, 1, '2020-04-25 12:43:21', '2020-04-25 09:43:21', '', 'New', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-25 12:43:21', '2020-04-25 09:43:21', '', 26, 'http://wpthem.local/2020/04/25/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-04-25 12:44:31', '2020-04-25 09:44:31', '<!-- wp:paragraph -->\n<p>dahgdhdsdgfdsgdsjhfdsfgsdhgjhgkdjdjkdgfhdkfgdskjfdgskfdshkfgdshfgdshfgsdfjgjdshdfsf</p>\n<!-- /wp:paragraph -->', 'Else new', '', 'publish', 'open', 'open', '', 'else-new', '', '', '2020-04-26 11:46:44', '2020-04-26 08:46:44', '', 0, 'http://wpthem.local/?p=28', 0, 'post', '', 0),
(29, 1, '2020-04-25 12:44:31', '2020-04-25 09:44:31', '', 'Else new', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-04-25 12:44:31', '2020-04-25 09:44:31', '', 28, 'http://wpthem.local/2020/04/25/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-04-25 14:15:26', '2020-04-25 11:15:26', '<!-- wp:paragraph -->\n<p>Else text</p>\n<!-- /wp:paragraph -->', 'New', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-25 14:15:26', '2020-04-25 11:15:26', '', 26, 'http://wpthem.local/2020/04/25/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-04-25 16:04:05', '2020-04-25 13:04:05', '', '93189201_244667909980862_5975752298603741184_n', '', 'inherit', 'open', 'closed', '', '93189201_244667909980862_5975752298603741184_n', '', '', '2020-04-25 16:04:05', '2020-04-25 13:04:05', '', 26, 'http://wpthem.local/wp-content/uploads/2020/04/93189201_244667909980862_5975752298603741184_n.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-04-25 21:24:53', '2020-04-25 18:24:53', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus amet iusto, commodi placeat, sint, quisquam hic. Alias dolore enim earum recusandae repellendus amet inventore odit tempora fuga, eius officia maxime, nisi ratione provident reiciendis! Veniam error, repudiandae harum! Dolorem amet praesentium assumenda? Atque veniam repellendus illum aliquid architecto deserunt facere soluta, vel hic. Culpa exercitationem modi eligendi commodi provident voluptate esse. Sequi cum cumque veritatis nihil dolor totam maiores in quod ipsum natus. Veniam modi libero nesciunt at nobis et aliquam distinctio, vel excepturi quod cumque, necessitatibus inventore minima optio unde eveniet nisi ipsum illo reprehenderit beatae eligendi. Doloribus perferendis deleniti, a debitis totam assumenda impedit earum iure quasi inventore ea nulla at odit eaque itaque quos reiciendis ut adipisci voluptatum dolores ex iusto aut repellendus. Magni dolor voluptatem eos ea dolorum laudantium, libero commodi reiciendis quo repellendus voluptas quis delectus minima alias officiis dolores explicabo! Quo earum beatae asperiores nemo, maiores cupiditate accusantium repellat quisquam expedita fugiat excepturi inventore eius doloremque, nesciunt. Error repudiandae expedita ipsum sunt. Ab eaque veritatis at repellendus et dignissimos similique id nobis! Voluptatum fugit iste suscipit non aliquid doloribus, adipisci delectus dignissimos. Iusto rerum esse tempora veritatis adipisci nam eius cumque! Voluptatibus saepe nam ut vel, nobis quaerat necessitatibus! Delectus fugiat enim maxime reiciendis facilis soluta voluptas, dolorum a, nesciunt amet excepturi placeat deleniti ea assumenda corporis consequatur temporibus! Sit minus cumque, nulla consequatur harum consectetur quidem ipsum nostrum fugiat voluptate asperiores deserunt quibusdam. Aliquid, a. Blanditiis necessitatibus rerum pariatur voluptatum veritatis ea nobis obcaecati consequatur magni quisquam quidem, optio laudantium! Praesentium, repudiandae, nihil. Voluptas voluptate iste repudiandae, ducimus culpa, rerum consectetur officia soluta aspernatur possimus, repellendus! Dolorum adipisci ad reiciendis perferendis voluptate harum laborum qui cum corporis assumenda a non quam quo suscipit, atque eligendi placeat tempore, consequuntur quaerat veniam impedit odio! Qui veritatis nostrum voluptatibus facere et illo dignissimos accusamus beatae expedita velit laudantium quas tempore reprehenderit maxime placeat, ipsum, illum recusandae omnis dolores ducimus fugiat id maiores? Perferendis, eum totam. Impedit ex, molestias ad voluptatem nostrum et quidem autem corrupti veniam, aperiam sequi hic officia sapiente distinctio, voluptas quo aspernatur iure repudiandae earum velit explicabo.</p>\n<!-- /wp:paragraph -->', 'New', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-25 21:24:53', '2020-04-25 18:24:53', '', 26, 'http://wpthem.local/2020/04/25/26-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-04-25 21:25:50', '2020-04-25 18:25:50', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus amet iusto, commodi placeat, sint, quisquam hic. Alias dolore enim earum recusandae repellendus amet inventore odit tempora fuga, eius officia maxime, nisi ratione provident reiciendis! Veniam error, repudiandae harum! Dolorem amet praesentium assumenda? Atque veniam repellendus illum aliquid architecto deserunt facere soluta, vel hic. Culpa exercitationem modi eligendi commodi provident voluptate esse. Sequi cum cumque veritatis nihil dolor totam maiores in quod ipsum natus. Veniam modi libero nesciunt at nobis et aliquam distinctio, vel excepturi quod cumque, necessitatibus inventore minima optio unde eveniet nisi ipsum illo reprehenderit beatae eligendi. Doloribus perferendis deleniti, a debitis totam assumenda impedit earum iure quasi inventore ea nulla at odit eaque itaque quos reiciendis ut adipisci voluptatum dolores ex iusto aut repellendus. Magni dolor voluptatem eos ea dolorum laudantium, libero commodi reiciendis quo repellendus voluptas quis delectus minima alias officiis dolores explicabo! Quo earum beatae asperiores nemo, maiores cupiditate accusantium repellat quisquam expedita fugiat excepturi inventore eius doloremque, nesciunt. Error repudiandae expedita ipsum sunt. Ab eaque veritatis at repellendus et dignissimos similique id nobis! Voluptatum fugit iste suscipit non aliquid doloribus, adipisci delectus dignissimos. Iusto rerum esse tempora veritatis adipisci nam eius cumque! Voluptatibus saepe nam ut vel, nobis quaerat necessitatibus! Delectus fugiat enim maxime reiciendis facilis soluta voluptas, dolorum a, nesciunt amet excepturi placeat deleniti ea assumenda corporis consequatur temporibus! Sit minus cumque, nulla consequatur harum consectetur quidem ipsum nostrum fugiat voluptate asperiores deserunt quibusdam. Aliquid, a. Blanditiis necessitatibus rerum pariatur voluptatum veritatis ea nobis obcaecati consequatur magni quisquam quidem, optio laudantium! Praesentium, repudiandae, nihil. Voluptas voluptate iste repudiandae, ducimus culpa, rerum consectetur officia soluta aspernatur possimus, repellendus! Dolorum adipisci ad reiciendis perferendis voluptate harum laborum qui cum corporis assumenda a non quam quo suscipit, atque eligendi placeat tempore, consequuntur quaerat veniam impedit odio! Qui veritatis nostrum voluptatibus facere et illo dignissimos accusamus beatae expedita velit laudantium quas tempore reprehenderit maxime placeat, ipsum, illum recusandae omnis dolores ducimus fugiat id maiores? Perferendis, eum totam. Impedit ex, molestias ad voluptatem nostrum et quidem autem corrupti veniam, aperiam sequi hic officia sapiente distinctio, voluptas quo aspernatur iure repudiandae earum velit explicabo.</p>\n<!-- /wp:paragraph -->', 'New', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-25 21:25:50', '2020-04-25 18:25:50', '', 26, 'http://wpthem.local/2020/04/25/26-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-04-25 22:05:34', '2020-04-25 19:05:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus</p>\n<!-- /wp:paragraph -->', 'Ще одна стаття', '', 'publish', 'open', 'open', '', '%d1%89%d0%b5-%d0%be%d0%b4%d0%bd%d0%b0-%d1%81%d1%82%d0%b0%d1%82%d1%82%d1%8f', '', '', '2020-04-25 22:05:34', '2020-04-25 19:05:34', '', 0, 'http://wpthem.local/?p=34', 0, 'post', '', 0),
(35, 1, '2020-04-25 22:05:34', '2020-04-25 19:05:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus</p>\n<!-- /wp:paragraph -->', 'Ще одна стаття', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-04-25 22:05:34', '2020-04-25 19:05:34', '', 34, 'http://wpthem.local/2020/04/25/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-04-25 23:01:28', '2020-04-25 20:01:28', '<!-- wp:paragraph -->\n<p>dahgdhdsdgfdsgdsjhfdsfgsdhgjhgkdjdjkdgfhdkfgdskjfdgskfdshkfgdshfgdshfgsdfjgjdshdfsf</p>\n<!-- /wp:paragraph -->', 'Else new', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2020-04-25 23:01:28', '2020-04-25 20:01:28', '', 28, 'http://wpthem.local/2020/04/25/28-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-04-25 23:28:04', '2020-04-25 20:28:04', '<!-- wp:paragraph -->\n<p>Ще один записЩе один записЩе один записЩе один записЩе один записЩе один записЩе один запис</p>\n<!-- /wp:paragraph -->', 'Ще один запис', '', 'publish', 'open', 'open', '', '%d1%89%d0%b5-%d0%be%d0%b4%d0%b8%d0%bd-%d0%b7%d0%b0%d0%bf%d0%b8%d1%81', '', '', '2020-04-25 23:28:04', '2020-04-25 20:28:04', '', 0, 'http://wpthem.local/?p=37', 0, 'post', '', 0),
(38, 1, '2020-04-25 23:28:04', '2020-04-25 20:28:04', '<!-- wp:paragraph -->\n<p>Ще один записЩе один записЩе один записЩе один записЩе один записЩе один записЩе один запис</p>\n<!-- /wp:paragraph -->', 'Ще один запис', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-04-25 23:28:04', '2020-04-25 20:28:04', '', 37, 'http://wpthem.local/2020/04/25/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-04-26 02:25:25', '2020-04-25 23:25:25', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus amet iusto, commodi placeat, sint, quisquam hic. Alias dolore enim earum recusandae repellendus amet inventore odit tempora fuga, eius officia maxime, nisi ratione provident reiciendis! Veniam error, repudiandae harum! Dolorem amet praesentium assumenda? Atque veniam repellendus illum aliquid architecto deserunt facere soluta, vel hic. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">[my_short]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Culpa exercitationem modi eligendi commodi provident voluptate esse. Sequi cum cumque veritatis nihil dolor totam maiores in quod ipsum natus. Veniam modi libero nesciunt at nobis et aliquam distinctio, vel excepturi quod cumque, necessitatibus inventore minima optio unde eveniet nisi ipsum illo reprehenderit beatae eligendi. Doloribus perferendis deleniti, a debitis totam assumenda impedit earum iure quasi inventore ea nulla at odit eaque itaque quos reiciendis ut adipisci voluptatum dolores ex iusto aut repellendus. Magni dolor voluptatem eos ea dolorum laudantium, libero commodi reiciendis quo repellendus voluptas quis delectus minima alias officiis dolores explicabo! Quo earum beatae asperiores nemo, maiores cupiditate accusantium repellat quisquam expedita fugiat excepturi inventore eius doloremque, nesciunt. Error repudiandae expedita ipsum sunt. Ab eaque veritatis at repellendus et dignissimos similique id nobis! Voluptatum fugit iste suscipit non aliquid doloribus, adipisci delectus dignissimos. Iusto rerum esse tempora veritatis adipisci nam eius cumque! Voluptatibus saepe nam ut vel, nobis quaerat necessitatibus! Delectus fugiat enim maxime reiciendis facilis soluta voluptas, dolorum a, nesciunt amet excepturi placeat deleniti ea assumenda corporis consequatur temporibus! Sit minus cumque, nulla consequatur harum consectetur quidem ipsum nostrum fugiat voluptate asperiores deserunt quibusdam. Aliquid, a. Blanditiis necessitatibus rerum pariatur voluptatum veritatis ea nobis obcaecati consequatur magni quisquam quidem, optio laudantium! Praesentium, repudiandae, nihil. Voluptas voluptate iste repudiandae, ducimus culpa, rerum consectetur officia soluta aspernatur possimus, repellendus! Dolorum adipisci ad reiciendis perferendis voluptate harum laborum qui cum corporis assumenda a non quam quo suscipit, atque eligendi placeat tempore, consequuntur quaerat veniam impedit odio! Qui veritatis nostrum voluptatibus facere et illo dignissimos accusamus beatae expedita velit laudantium quas tempore reprehenderit maxime placeat, ipsum, illum recusandae omnis dolores ducimus fugiat id maiores? Perferendis, eum totam. Impedit ex, molestias ad voluptatem nostrum et quidem autem corrupti veniam, aperiam sequi hic officia sapiente distinctio, voluptas quo aspernatur iure repudiandae earum velit explicabo.</p>\n<!-- /wp:paragraph -->', 'New', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-26 02:25:25', '2020-04-25 23:25:25', '', 26, 'http://wpthem.local/2020/04/26/26-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-04-26 02:34:03', '2020-04-25 23:34:03', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore ullam ipsum eos minus eius omnis porro suscipit ducimus consequuntur natus minima, consequatur voluptate facilis ipsa sapiente dicta totam reprehenderit! Voluptatibus aliquid officia impedit tempora iste odio consequatur quibusdam excepturi. Sed reprehenderit, quam officia rerum impedit nulla? Incidunt, facere, asperiores! Veritatis deleniti et delectus dolorem possimus amet iusto, commodi placeat, sint, quisquam hic. Alias dolore enim earum recusandae repellendus amet inventore odit tempora fuga, eius officia maxime, nisi ratione provident reiciendis! Veniam error, repudiandae harum! Dolorem amet praesentium assumenda? Atque veniam repellendus illum aliquid architecto deserunt facere soluta, vel hic. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">[my_short]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[iframe]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Culpa exercitationem modi eligendi commodi provident voluptate esse. Sequi cum cumque veritatis nihil dolor totam maiores in quod ipsum natus. Veniam modi libero nesciunt at nobis et aliquam distinctio, vel excepturi quod cumque, necessitatibus inventore minima optio unde eveniet nisi ipsum illo reprehenderit beatae eligendi. Doloribus perferendis deleniti, a debitis totam assumenda impedit earum iure quasi inventore ea nulla at odit eaque itaque quos reiciendis ut adipisci voluptatum dolores ex iusto aut repellendus. Magni dolor voluptatem eos ea dolorum laudantium, libero commodi reiciendis quo repellendus voluptas quis delectus minima alias officiis dolores explicabo! Quo earum beatae asperiores nemo, maiores cupiditate accusantium repellat quisquam expedita fugiat excepturi inventore eius doloremque, nesciunt. Error repudiandae expedita ipsum sunt. Ab eaque veritatis at repellendus et dignissimos similique id nobis! Voluptatum fugit iste suscipit non aliquid doloribus, adipisci delectus dignissimos. Iusto rerum esse tempora veritatis adipisci nam eius cumque! Voluptatibus saepe nam ut vel, nobis quaerat necessitatibus! Delectus fugiat enim maxime reiciendis facilis soluta voluptas, dolorum a, nesciunt amet excepturi placeat deleniti ea assumenda corporis consequatur temporibus! Sit minus cumque, nulla consequatur harum consectetur quidem ipsum nostrum fugiat voluptate asperiores deserunt quibusdam. Aliquid, a. Blanditiis necessitatibus rerum pariatur voluptatum veritatis ea nobis obcaecati consequatur magni quisquam quidem, optio laudantium! Praesentium, repudiandae, nihil. Voluptas voluptate iste repudiandae, ducimus culpa, rerum consectetur officia soluta aspernatur possimus, repellendus! Dolorum adipisci ad reiciendis perferendis voluptate harum laborum qui cum corporis assumenda a non quam quo suscipit, atque eligendi placeat tempore, consequuntur quaerat veniam impedit odio! Qui veritatis nostrum voluptatibus facere et illo dignissimos accusamus beatae expedita velit laudantium quas tempore reprehenderit maxime placeat, ipsum, illum recusandae omnis dolores ducimus fugiat id maiores? Perferendis, eum totam. Impedit ex, molestias ad voluptatem nostrum et quidem autem corrupti veniam, aperiam sequi hic officia sapiente distinctio, voluptas quo aspernatur iure repudiandae earum velit explicabo.</p>\n<!-- /wp:paragraph -->', 'New', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-26 02:34:03', '2020-04-25 23:34:03', '', 26, 'http://wpthem.local/2020/04/26/26-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-04-26 11:40:16', '2020-04-26 08:40:16', '', '93782020_2598068210447297_6960089117002563584_n', '', 'inherit', 'open', 'closed', '', '93782020_2598068210447297_6960089117002563584_n', '', '', '2020-04-26 11:40:16', '2020-04-26 08:40:16', '', 28, 'http://wpthem.local/wp-content/uploads/2020/04/93782020_2598068210447297_6960089117002563584_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-04-26 12:01:12', '2020-04-26 09:01:12', '', 'Контакти', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%b8-2', '', '', '2020-04-26 12:01:12', '2020-04-26 09:01:12', '', 0, 'http://wpthem.local/?page_id=44', 0, 'page', '', 0),
(45, 1, '2020-04-26 12:01:12', '2020-04-26 09:01:12', '', 'Контакти', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-04-26 12:01:12', '2020-04-26 09:01:12', '', 44, 'http://wpthem.local/2020/04/26/44-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-04-26 15:39:34', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:39:34', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=48', 0, 'portfolio', '', 0),
(49, 1, '2020-04-26 15:40:42', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:40:42', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=49', 0, 'portfolio', '', 0),
(50, 1, '2020-04-26 15:41:21', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:41:21', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=50', 0, 'portfolio', '', 0),
(51, 1, '2020-04-26 15:42:02', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:42:02', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=51', 0, 'portfolio', '', 0),
(52, 1, '2020-04-26 15:42:43', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:42:43', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=52', 0, 'portfolio', '', 0),
(53, 1, '2020-04-26 15:42:53', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:42:53', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=53', 0, 'portfolio', '', 0),
(54, 1, '2020-04-26 15:43:17', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:43:17', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=54', 0, 'portfolio', '', 0),
(55, 1, '2020-04-26 15:43:33', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:43:33', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=55', 0, 'portfolio', '', 0),
(56, 1, '2020-04-26 15:43:45', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:43:45', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=56', 0, 'portfolio', '', 0),
(57, 1, '2020-04-26 15:43:55', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:43:55', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=57', 0, 'portfolio', '', 0),
(58, 1, '2020-04-26 15:44:37', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:44:37', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=58', 0, 'portfolio', '', 0),
(59, 1, '2020-04-26 15:44:59', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:44:59', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=59', 0, 'portfolio', '', 0),
(60, 1, '2020-04-26 15:45:08', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:45:08', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=60', 0, 'portfolio', '', 0),
(61, 1, '2020-04-26 15:45:15', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:45:15', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=61', 0, 'portfolio', '', 0),
(62, 1, '2020-04-26 15:45:24', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:45:24', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=62', 0, 'portfolio', '', 0),
(63, 1, '2020-04-26 15:45:46', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:45:46', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=63', 0, 'portfolio', '', 0),
(64, 1, '2020-04-26 15:46:24', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:46:24', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=64', 0, 'portfolio', '', 0),
(65, 1, '2020-04-26 15:46:39', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:46:39', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=65', 0, 'portfolio', '', 0),
(66, 1, '2020-04-26 15:46:57', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:46:57', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=66', 0, 'portfolio', '', 0),
(67, 1, '2020-04-26 15:47:12', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-26 15:47:12', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=67', 0, 'portfolio', '', 0),
(68, 1, '2020-04-26 15:49:20', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:49:20', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=68', 0, 'portfolio', '', 0),
(69, 1, '2020-04-26 15:49:35', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 15:49:35', '0000-00-00 00:00:00', '', 0, 'http://wpthem.local/?post_type=portfolio&p=69', 0, 'portfolio', '', 0),
(70, 1, '2020-04-26 19:16:31', '2020-04-26 16:16:31', '', 'Новий пост тип', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%b8%d0%b9-%d0%bf%d0%be%d1%81%d1%82-%d1%82%d0%b8%d0%bf', '', '', '2020-04-26 20:27:40', '2020-04-26 17:27:40', '', 0, 'http://wpthem.local/?post_type=portfolio&#038;p=70', 0, 'portfolio', '', 0),
(71, 1, '2020-04-26 16:08:03', '2020-04-26 13:08:03', '', '94688628_514200865921164_7073701606256017408_n', '', 'inherit', 'open', 'closed', '', '94688628_514200865921164_7073701606256017408_n', '', '', '2020-04-26 16:08:03', '2020-04-26 13:08:03', '', 70, 'http://wpthem.local/wp-content/uploads/2020/04/94688628_514200865921164_7073701606256017408_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-04-26 19:23:23', '2020-04-26 16:23:23', '<!-- wp:paragraph -->\n<p>123</p>\n<!-- /wp:paragraph -->', 'Портфоліо', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d1%96%d0%be', '', '', '2020-04-26 19:23:23', '2020-04-26 16:23:23', '', 0, 'http://wpthem.local/?page_id=72', 0, 'page', '', 0),
(73, 1, '2020-04-26 19:23:23', '2020-04-26 16:23:23', '<!-- wp:paragraph -->\n<p>123</p>\n<!-- /wp:paragraph -->', 'Портфоліо', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-04-26 19:23:23', '2020-04-26 16:23:23', '', 72, 'http://wpthem.local/2020/04/26/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-04-26 19:24:15', '2020-04-26 16:24:15', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2020-04-26 19:24:15', '2020-04-26 16:24:15', '', 0, 'http://wpthem.local/?p=74', 8, 'nav_menu_item', '', 0),
(75, 1, '2020-04-26 20:06:26', '2020-04-26 17:06:26', '', 'Ще одна робота для портфоліо', '', 'publish', 'closed', 'closed', '', '%d1%89%d0%b5-%d0%be%d0%b4%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b0-%d0%b4%d0%bb%d1%8f-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d1%96%d0%be', '', '', '2020-04-26 20:27:35', '2020-04-26 17:27:35', '', 0, 'http://wpthem.local/?post_type=portfolio&#038;p=75', 0, 'portfolio', '', 0),
(76, 1, '2020-04-26 20:06:14', '2020-04-26 17:06:14', '', '3455679964', '', 'inherit', 'open', 'closed', '', '3455679964', '', '', '2020-04-26 20:06:14', '2020-04-26 17:06:14', '', 75, 'http://wpthem.local/wp-content/uploads/2020/04/3455679964.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-04-26 20:10:39', '2020-04-26 17:10:39', '<!-- wp:gallery {\"ids\":[80,81,82],\"columns\":1,\"sizeSlug\":\"full\"} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://wpthem.local/wp-content/uploads/2020/04/3455679964-1.jpg\" alt=\"\" data-id=\"80\" data-full-url=\"http://wpthem.local/wp-content/uploads/2020/04/3455679964-1.jpg\" data-link=\"http://wpthem.local/portfolio/%d0%bd%d0%b0%d1%81%d1%82%d1%83%d0%bf%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b0-%d0%b2-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d1%96%d0%be/3455679964-1/\" class=\"wp-image-80\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wpthem.local/wp-content/uploads/2020/04/1528373633334.jpg\" alt=\"\" data-id=\"81\" data-full-url=\"http://wpthem.local/wp-content/uploads/2020/04/1528373633334.jpg\" data-link=\"http://wpthem.local/portfolio/%d0%bd%d0%b0%d1%81%d1%82%d1%83%d0%bf%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b0-%d0%b2-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d1%96%d0%be/attachment/1528373633334/\" class=\"wp-image-81\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://wpthem.local/wp-content/uploads/2020/04/oboi-priroda-skachat-besplatno.orig_-1.jpg\" alt=\"\" data-id=\"82\" data-full-url=\"http://wpthem.local/wp-content/uploads/2020/04/oboi-priroda-skachat-besplatno.orig_-1.jpg\" data-link=\"http://wpthem.local/portfolio/%d0%bd%d0%b0%d1%81%d1%82%d1%83%d0%bf%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b0-%d0%b2-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d1%96%d0%be/oboi-priroda-skachat-besplatno-orig_-1/\" class=\"wp-image-82\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor,<br>nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate<br>cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>\n<!-- /wp:paragraph -->', 'Наступна робота в портфоліо', 'Proin gravida nibh vel velit auctor aliquet. ', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0%d1%81%d1%82%d1%83%d0%bf%d0%bd%d0%b0-%d1%80%d0%be%d0%b1%d0%be%d1%82%d0%b0-%d0%b2-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d1%96%d0%be', '', '', '2020-04-26 21:13:20', '2020-04-26 18:13:20', '', 0, 'http://wpthem.local/?post_type=portfolio&#038;p=77', 0, 'portfolio', '', 0),
(78, 1, '2020-04-26 20:10:32', '2020-04-26 17:10:32', '', 'oboi-priroda-skachat-besplatno.orig', '', 'inherit', 'open', 'closed', '', 'oboi-priroda-skachat-besplatno-orig', '', '', '2020-04-26 20:10:32', '2020-04-26 17:10:32', '', 77, 'http://wpthem.local/wp-content/uploads/2020/04/oboi-priroda-skachat-besplatno.orig_.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-04-26 21:12:42', '2020-04-26 18:12:42', '', '3455679964-1', '', 'inherit', 'open', 'closed', '', '3455679964-1', '', '', '2020-04-26 21:12:42', '2020-04-26 18:12:42', '', 77, 'http://wpthem.local/wp-content/uploads/2020/04/3455679964-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-04-26 21:12:43', '2020-04-26 18:12:43', '', '1528373633334', '', 'inherit', 'open', 'closed', '', '1528373633334', '', '', '2020-04-26 21:12:43', '2020-04-26 18:12:43', '', 77, 'http://wpthem.local/wp-content/uploads/2020/04/1528373633334.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(82, 1, '2020-04-26 21:12:44', '2020-04-26 18:12:44', '', 'oboi-priroda-skachat-besplatno.orig_-1', '', 'inherit', 'open', 'closed', '', 'oboi-priroda-skachat-besplatno-orig_-1', '', '', '2020-04-26 21:12:44', '2020-04-26 18:12:44', '', 77, 'http://wpthem.local/wp-content/uploads/2020/04/oboi-priroda-skachat-besplatno.orig_-1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії1', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%972', 0),
(2, 'Головне меню', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Підвальне меню', '%d0%bf%d1%96%d0%b4%d0%b2%d0%b0%d0%bb%d1%8c%d0%bd%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(4, '2020', '2020', 0),
(5, 'Нова позначка', '%d0%bd%d0%be%d0%b2%d0%b0%d0%bf', 0),
(6, 'else', 'else', 0),
(7, '1234', '1', 0),
(8, 'post-format-video', 'post-format-video', 0),
(9, 'post-format-gallery', 'post-format-gallery', 0),
(10, 'post-format-aside', 'post-format-aside', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 3, 0),
(18, 3, 0),
(21, 3, 0),
(24, 3, 0),
(25, 2, 0),
(26, 4, 0),
(26, 7, 0),
(28, 5, 0),
(28, 6, 0),
(28, 10, 0),
(34, 4, 0),
(37, 6, 0),
(74, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', 'qwerty', 0, 2),
(5, 5, 'post_tag', '123', 0, 1),
(6, 6, 'category', 'elseq', 0, 2),
(7, 7, 'post_tag', '1', 0, 1),
(8, 8, 'post_format', '', 0, 0),
(9, 9, 'post_format', '', 0, 0),
(10, 10, 'post_format', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"50916a835e11e10f0484cc68e2841336dbb7b9ed964512f7b854f14847754e1f\";a:4:{s:10:\"expiration\";i:1587941534;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587768734;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(22, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1587839450');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B6DDofn/wMkc//utGq5Vv.mLif7q5w.', 'admin', 'Kalyan_com@ukr.net', 'http://wpthem.local/', '2020-04-22 13:05:06', '', 0, 'admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
