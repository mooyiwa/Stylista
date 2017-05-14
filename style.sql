-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2017 at 01:16 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `style`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_ai_album`
--

CREATE TABLE `wp_s_t_ai_album` (
  `album_id` tinyint(4) NOT NULL,
  `album_title` varchar(50) DEFAULT NULL,
  `album_date` date DEFAULT NULL,
  `album_cover_image` varchar(255) DEFAULT NULL,
  `album_slug` varchar(50) DEFAULT NULL,
  `album_visible` int(4) NOT NULL DEFAULT '1',
  `album_order` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_s_t_ai_album`
--

INSERT INTO `wp_s_t_ai_album` (`album_id`, `album_title`, `album_date`, `album_cover_image`, `album_slug`, `album_visible`, `album_order`) VALUES
(1, 'Hair', '2017-05-04', '', 'hair', 1, 1),
(3, 'Facials', '2017-05-04', '', 'facials', 1, 2),
(4, 'Manicure', '2017-05-04', '', 'manicure', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_ai_photos`
--

CREATE TABLE `wp_s_t_ai_photos` (
  `photo_id` int(4) NOT NULL,
  `photo_album_id` int(4) NOT NULL,
  `photo_title` varchar(50) DEFAULT NULL,
  `photo_date` date DEFAULT NULL,
  `photo_filename` varchar(255) DEFAULT NULL,
  `photo_slug` varchar(50) DEFAULT NULL,
  `photo_visible` int(4) NOT NULL DEFAULT '1',
  `photo_order` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_s_t_ai_photos`
--

INSERT INTO `wp_s_t_ai_photos` (`photo_id`, `photo_album_id`, `photo_title`, `photo_date`, `photo_filename`, `photo_slug`, `photo_visible`, `photo_order`) VALUES
(1, 1, 'Crochet', '2017-05-04', 'crochet.jpg', 'crochet', 1, 1),
(2, 1, 'Braids', '2017-05-04', 'laced.jpg', 'braids', 1, 2),
(3, 3, 'Facial', '2017-05-04', 'Scrubbing.jpg', 'facial', 1, 1),
(4, 3, 'Facial', '2017-05-04', 'men-facial.jpg', 'facial-m4cZ', 1, 2),
(5, 3, 'Facial', '2017-05-04', 'mens-facial2.jpg', 'facial-iafh', 1, 3),
(6, 4, 'Manicure', '2017-05-04', 'manicure.jpg', 'manicure', 1, 1),
(7, 4, 'Manicure', '2017-05-04', 'nails.png', 'manicure-VNL9', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_commentmeta`
--

CREATE TABLE `wp_s_t_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_comments`
--

CREATE TABLE `wp_s_t_comments` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_comments`
--

INSERT INTO `wp_s_t_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-05-04 09:44:10', '2017-05-04 09:44:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_hugeit_maps_circles`
--

CREATE TABLE `wp_s_t_hugeit_maps_circles` (
  `id` int(11) UNSIGNED NOT NULL,
  `map_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `center_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `center_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `radius` int(50) NOT NULL DEFAULT '50000',
  `line_width` int(3) NOT NULL DEFAULT '5',
  `line_opacity` float NOT NULL DEFAULT '0.8',
  `line_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF2B39',
  `fill_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '4FFF72',
  `fill_opacity` float NOT NULL DEFAULT '0.4',
  `hover_line_opacity` float NOT NULL DEFAULT '0.6',
  `hover_line_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF5C5C',
  `hover_fill_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '96FFA1',
  `hover_fill_opacity` float NOT NULL DEFAULT '0.3',
  `show_marker` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_hugeit_maps_circles`
--

INSERT INTO `wp_s_t_hugeit_maps_circles` (`id`, `map_id`, `name`, `center_lat`, `center_lng`, `radius`, `line_width`, `line_opacity`, `line_color`, `fill_color`, `fill_opacity`, `hover_line_opacity`, `hover_line_color`, `hover_fill_color`, `hover_fill_opacity`, `show_marker`) VALUES
(1, 1, 'My First Circle', '40.805493843894', '-76.316528320312', 50000, 5, 0.8, 'FF2B39', '4FFF72', 0.4, 0.6, 'FF5C5C', '96FFA1', 0.3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_hugeit_maps_directions`
--

CREATE TABLE `wp_s_t_hugeit_maps_directions` (
  `id` int(11) UNSIGNED NOT NULL,
  `map_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `start_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF0F0F',
  `line_width` int(2) NOT NULL DEFAULT '5',
  `line_opacity` float NOT NULL DEFAULT '0.9',
  `show_steps` int(1) NOT NULL DEFAULT '0',
  `travel_mode` enum('DRIVING','WALKING','BICYCLING','TRANSIT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRIVING'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_hugeit_maps_maps`
--

CREATE TABLE `wp_s_t_hugeit_maps_maps` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `type` enum('ROADMAP','SATELLITE','HYBRID','TERRAIN') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ROADMAP',
  `zoom` int(2) NOT NULL DEFAULT '2',
  `border_radius` int(2) NOT NULL DEFAULT '0',
  `center_lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `center_lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pan_controller` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `zoom_controller` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `type_controller` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `scale_controller` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `street_view_controller` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `overview_map_controller` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `width` int(3) NOT NULL DEFAULT '100',
  `height` int(3) NOT NULL DEFAULT '450',
  `align` enum('left','right','center') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `wheel_scroll` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `draggable` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `language` text COLLATE utf8mb4_unicode_ci,
  `min_zoom` int(2) NOT NULL DEFAULT '0',
  `max_zoom` int(2) NOT NULL DEFAULT '22',
  `info_type` enum('click','hover') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'click',
  `open_infowindows_onload` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `traffic_layer` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `bike_layer` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `transit_layer` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `styling_hue` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `styling_lightness` int(3) NOT NULL DEFAULT '0',
  `styling_gamma` int(2) UNSIGNED NOT NULL DEFAULT '1',
  `styling_saturation` int(3) NOT NULL DEFAULT '0',
  `animation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_hugeit_maps_maps`
--

INSERT INTO `wp_s_t_hugeit_maps_maps` (`id`, `name`, `type`, `zoom`, `border_radius`, `center_lat`, `center_lng`, `pan_controller`, `zoom_controller`, `type_controller`, `scale_controller`, `street_view_controller`, `overview_map_controller`, `width`, `height`, `align`, `wheel_scroll`, `draggable`, `language`, `min_zoom`, `max_zoom`, `info_type`, `open_infowindows_onload`, `traffic_layer`, `bike_layer`, `transit_layer`, `styling_hue`, `styling_lightness`, `styling_gamma`, `styling_saturation`, `animation`) VALUES
(1, 'My First Map', 'ROADMAP', 7, 0, '40.7127837', '-74.0059413', 1, 1, 1, 1, 1, 1, 100, 300, 'center', 1, 1, 'location based', 0, 22, 'click', 0, 0, 0, 0, NULL, 0, 1, 0, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_hugeit_maps_markers`
--

CREATE TABLE `wp_s_t_hugeit_maps_markers` (
  `id` int(11) UNSIGNED NOT NULL,
  `map_id` int(11) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `animation` enum('BOUNCE','DROP','NONE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NONE',
  `description` text COLLATE utf8mb4_unicode_ci,
  `img` text COLLATE utf8mb4_unicode_ci,
  `size` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_hugeit_maps_markers`
--

INSERT INTO `wp_s_t_hugeit_maps_markers` (`id`, `map_id`, `name`, `lat`, `lng`, `animation`, `description`, `img`, `size`) VALUES
(1, 1, 'New York', '40.7127837', '-74.0059413', 'BOUNCE', 'New York City', NULL, NULL),
(2, 1, 'Delaver', '39.189690821097', '-75.756225585938', 'DROP', 'Delaver', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_hugeit_maps_polygons`
--

CREATE TABLE `wp_s_t_hugeit_maps_polygons` (
  `id` int(11) UNSIGNED NOT NULL,
  `map_id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `line_opacity` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.9',
  `line_color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF0F0F',
  `fill_opacity` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.5',
  `fill_color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5DFF0D',
  `url` text COLLATE utf8mb4_unicode_ci,
  `hover_line_opacity` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.5',
  `hover_line_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FF80B7',
  `hover_fill_opacity` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.5',
  `hover_fill_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '75FF7E',
  `line_width` int(2) NOT NULL DEFAULT '5'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_hugeit_maps_polygons`
--

INSERT INTO `wp_s_t_hugeit_maps_polygons` (`id`, `map_id`, `name`, `data`, `line_opacity`, `line_color`, `fill_opacity`, `fill_color`, `url`, `hover_line_opacity`, `hover_line_color`, `hover_fill_opacity`, `hover_fill_color`, `line_width`) VALUES
(1, 1, 'My First Polygon', '(40.538851525354666, -74.3060302734375),(40.16208338164619, -73.9764404296875),(39.40224434029277, -74.3499755859375),(38.950865400920016, -74.8883056640625),(39.13858199058352, -75.0091552734375),(39.46164364205549, -75.5035400390625),(39.774769485295465, -75.4815673828125),(39.86758762451019, -75.0201416015625)', '0.9', 'E2574C', '0.5', 'F6C37A', 'http://www.huge-it.com', '0.8', 'FF80B7', '0.5', '75FF7E', 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_hugeit_maps_polylines`
--

CREATE TABLE `wp_s_t_hugeit_maps_polylines` (
  `id` int(11) UNSIGNED NOT NULL,
  `map_id` int(11) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `data` text COLLATE utf8mb4_unicode_ci,
  `line_opacity` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.9',
  `line_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '18A326',
  `line_width` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `hover_line_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '11A000',
  `hover_line_opacity` float NOT NULL DEFAULT '0.5'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_hugeit_maps_polylines`
--

INSERT INTO `wp_s_t_hugeit_maps_polylines` (`id`, `map_id`, `name`, `data`, `line_opacity`, `line_color`, `line_width`, `hover_line_color`, `hover_line_opacity`) VALUES
(1, 1, 'My First Polyline', '(42.24071874922666, -71.81488037109375),(42.1532233123986, -71.95770263671875),(42.13082130188811, -72.06207275390625),(42.14507804381756, -72.125244140625),(42.18579390537848, -72.2186279296875),(42.16340342422401, -72.2845458984375),(42.1837587346522, -72.3175048828125),(42.1552594657786, -72.36968994140625),(42.169510705216595, -72.4822998046875),(42.157295553651636, -72.630615234375),(42.13896840458089, -72.72674560546875),(42.165439250064324, -72.850341796875),(42.173581898327754, -72.92312622070312),(42.2366518803206, -73.00277709960938),(42.24478535602799, -73.10714721679688),(42.30169032824452, -73.17306518554688),(42.3016903282445, -73.34884643554688),(42.37883631647602, -73.45596313476562),(42.41940144722477, -73.54385375976562),(42.47209690919285, -73.63174438476562),(42.482225570025925, -73.67294311523438),(42.50652766705062, -73.78005981445312),(42.34027515373573, -73.85421752929688),(42.173581898327754, -73.93112182617188),(41.9921602333763, -73.99703979492188),(41.91249742196845, -74.04098510742188),(41.83682786072714, -74.17831420898438),(41.79179268262892, -74.23599243164062),(41.75492216766298, -74.36782836914062),(41.70777900286713, -74.38430786132812),(41.582579601430346, -74.48318481445312),(41.36238012945534, -74.70291137695312)', '0.9', '18A326', '4', '11A000', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_links`
--

CREATE TABLE `wp_s_t_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_options`
--

CREATE TABLE `wp_s_t_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_options`
--

INSERT INTO `wp_s_t_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/style', 'yes'),
(2, 'home', 'http://localhost/style', 'yes'),
(3, 'blogname', 'Stylista', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'contact@frontpage-ng.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:42:\"ai-responsive-gallery-album/ai-gallery.php\";i:1;s:50:\"carousel-horizontal-posts-content-slider/chpcs.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:25:\"google-maps/googlemap.php\";i:5;s:49:\"responsive-full-width-background-slider/rfwbs.php\";i:6;s:31:\"wbb-off-canvas-menu/wbb-ocm.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'startbox', 'yes'),
(41, 'stylesheet', 'Stylista', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:3:{s:5:\"title\";s:14:\"Hello Stylista\";s:4:\"text\";s:22:\"This is a text widget.\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:42:\"ai-responsive-gallery-album/ai-gallery.php\";s:21:\"ai_drop_gallery_table\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_s_t_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"primary\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:9:\"secondary\";a:0:{}s:13:\"home_featured\";a:0:{}s:20:\"footer_widget_area_1\";a:2:{i:0;s:7:\"pages-2\";i:1;s:14:\"recent-posts-3\";}s:20:\"footer_widget_area_2\";a:1:{i:0;s:10:\"archives-3\";}s:20:\"footer_widget_area_3\";a:1:{i:0;s:17:\"tagcloud-widget-2\";}s:20:\"footer_widget_area_4\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1493934250;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1493977460;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1493978039;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1493891111;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_transient_timeout_plugin_slugs', '1493990030', 'no'),
(116, '_transient_plugin_slugs', 'a:9:{i:0;s:42:\"ai-responsive-gallery-album/ai-gallery.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:50:\"carousel-horizontal-posts-content-slider/chpcs.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:9:\"hello.php\";i:5;s:25:\"google-maps/googlemap.php\";i:6;s:39:\"options-framework/options-framework.php\";i:7;s:49:\"responsive-full-width-background-slider/rfwbs.php\";i:8;s:31:\"wbb-off-canvas-menu/wbb-ocm.php\";}', 'no'),
(109, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.4\";s:7:\"version\";s:5:\"4.7.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1493903542;s:15:\"version_checked\";s:5:\"4.7.4\";s:12:\"translations\";a:0:{}}', 'no'),
(231, '_site_transient_timeout_theme_roots', '1493905345', 'no'),
(232, '_site_transient_theme_roots', 'a:5:{s:8:\"StartBox\";s:7:\"/themes\";s:8:\"Stylista\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(113, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1493903548;s:7:\"checked\";a:5:{s:8:\"StartBox\";s:5:\"2.7.4\";s:8:\"Stylista\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"1.2\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(117, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1493934262', 'no'),
(118, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div><div class=\"rss-widget\"><ul></ul></div>', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(120, 'WPLANG', '', 'yes'),
(154, '_site_transient_browser_3efc016b2059668c69de07123afad5fa', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"53.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(124, 'current_theme', 'Stylista', 'yes'),
(125, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1493891380;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(127, '_transient_twentyfifteen_categories', '1', 'yes'),
(146, 'theme_mods_Stylista', 'a:8:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:26:\"wbb_ocm_trigger_background\";s:7:\"#ffffff\";s:20:\"wbb_ocm_sidebar_side\";s:5:\"right\";s:14:\"wbb_ocm_status\";s:11:\"deactivated\";s:20:\"wbb_ocm_trigger_side\";s:4:\"left\";s:17:\"wbb_ocm_menu_name\";s:7:\"primary\";}', 'yes'),
(128, 'theme_mods_StartBox-Child-master', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1493891476;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"primary\";a:5:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"meta-2\";}s:9:\"secondary\";N;s:13:\"home_featured\";N;s:20:\"footer_widget_area_1\";N;s:20:\"footer_widget_area_2\";N;s:20:\"footer_widget_area_3\";N;s:20:\"footer_widget_area_4\";N;}}}', 'yes'),
(129, 'startbox', 'a:58:{s:11:\"logo-select\";s:5:\"image\";s:10:\"logo-align\";s:4:\"left\";s:9:\"logo-text\";s:0:\"\";s:10:\"logo-image\";s:58:\"http://localhost/style/wp-content/uploads/2017/05/logo.png\";s:7:\"favicon\";s:46:\"/wp-content/themes/startbox/images/favicon.png\";s:11:\"home_layout\";s:7:\"one-col\";s:6:\"layout\";s:13:\"two-col-right\";s:11:\"post_layout\";s:13:\"two-col-right\";s:11:\"primary_nav\";s:1:\"2\";s:17:\"primary_nav-depth\";s:1:\"1\";s:20:\"primary_nav-position\";s:15:\"sb_after_header\";s:18:\"primary_nav-extras\";s:8:\"disabled\";s:23:\"primary_nav-enable-home\";s:4:\"true\";s:26:\"primary_nav-social-twitter\";s:0:\"\";s:27:\"primary_nav-social-facebook\";s:0:\"\";s:26:\"primary_nav-social-youtube\";s:0:\"\";s:24:\"primary_nav-social-vimeo\";s:0:\"\";s:25:\"primary_nav-social-flickr\";s:0:\"\";s:28:\"primary_nav-social-delicious\";s:0:\"\";s:27:\"primary_nav-social-linkedin\";s:0:\"\";s:13:\"secondary_nav\";s:4:\"none\";s:19:\"secondary_nav-depth\";s:1:\"0\";s:22:\"secondary_nav-position\";s:9:\"sb_before\";s:20:\"secondary_nav-extras\";s:8:\"disabled\";s:28:\"secondary_nav-social-twitter\";s:0:\"\";s:29:\"secondary_nav-social-facebook\";s:0:\"\";s:28:\"secondary_nav-social-youtube\";s:0:\"\";s:26:\"secondary_nav-social-vimeo\";s:0:\"\";s:27:\"secondary_nav-social-flickr\";s:0:\"\";s:30:\"secondary_nav-social-delicious\";s:0:\"\";s:29:\"secondary_nav-social-linkedin\";s:0:\"\";s:10:\"footer_nav\";s:4:\"none\";s:16:\"footer_nav-depth\";s:1:\"1\";s:19:\"footer_nav-position\";s:29:\"sb_between_content_and_footer\";s:17:\"home_post_content\";s:7:\"excerpt\";s:20:\"archive_post_content\";s:7:\"excerpt\";s:9:\"more_text\";s:25:\"Continue Reading: [title]\";s:10:\"author_bio\";s:8:\"disabled\";s:16:\"post_header_meta\";s:42:\"Published in [categories] on [date] [edit]\";s:16:\"post_footer_meta\";s:17:\"[tags] [comments]\";s:18:\"post_thumbnail_rss\";s:4:\"true\";s:30:\"post_thumbnail_use_attachments\";s:4:\"true\";s:28:\"post_thumbnail_default_image\";s:68:\"http://localhost/style/wp-content/themes/startbox/images/nophoto.jpg\";s:20:\"post_thumbnail_width\";s:3:\"200\";s:21:\"post_thumbnail_height\";s:3:\"200\";s:20:\"post_thumbnail_align\";s:2:\"tc\";s:18:\"archive_navigation\";s:5:\"below\";s:15:\"post_navigation\";s:5:\"below\";s:10:\"enable_rtt\";s:4:\"true\";s:11:\"footer_text\";s:51:\"[copyright year=\"2017\"] [site_link].<br />Stylista.\";s:14:\"enable_updates\";s:4:\"true\";s:9:\"analytics\";s:0:\"\";s:15:\"seo_description\";s:17:\"Stylista WP Theme\";s:12:\"seo_keywords\";s:0:\"\";s:22:\"enable_post_thumbnails\";b:0;s:27:\"post_thumbnail_hide_nophoto\";b:0;s:12:\"enable_admin\";b:0;s:7:\"tagline\";b:0;}', 'yes'),
(130, 'startbox_version', '2.7.4', 'yes'),
(147, 'sb_child_install', '1', 'yes'),
(132, 'widget_featured-content-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(133, 'widget_search-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(134, 'widget_stay-connected-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(135, 'widget_tagcloud-widget', 'a:2:{i:2;a:11:{s:5:\"title\";s:4:\"Tags\";s:8:\"smallest\";i:8;s:7:\"largest\";i:22;s:4:\"unit\";s:2:\"pt\";s:6:\"number\";i:45;s:6:\"format\";s:4:\"flat\";s:9:\"separator\";s:2:\", \";s:7:\"orderby\";s:4:\"name\";s:5:\"order\";s:3:\"ASC\";s:7:\"include\";s:0:\"\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, '_transient_timeout_sb_update', '1493903871', 'no'),
(225, '_transient_sb_update', 'a:1:{s:11:\"new_version\";s:5:\"2.7.4\";}', 'no'),
(140, '_transient_timeout_sb_custom_sidebars', '1494508432', 'no'),
(141, '_transient_sb_custom_sidebars', 'a:0:{}', 'no'),
(150, 'recently_activated', 'a:1:{s:39:\"options-framework/options-framework.php\";i:1493903629;}', 'yes'),
(185, 'category_children', 'a:0:{}', 'yes'),
(153, '_site_transient_timeout_browser_3efc016b2059668c69de07123afad5fa', '1494497705', 'no'),
(233, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1493903556;s:7:\"checked\";a:9:{s:42:\"ai-responsive-gallery-album/ai-gallery.php\";s:3:\"1.4\";s:19:\"akismet/akismet.php\";s:3:\"3.3\";s:50:\"carousel-horizontal-posts-content-slider/chpcs.php\";s:5:\"3.2.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"3.5.2\";s:9:\"hello.php\";s:3:\"1.6\";s:25:\"google-maps/googlemap.php\";s:5:\"2.2.4\";s:39:\"options-framework/options-framework.php\";s:5:\"1.8.5\";s:49:\"responsive-full-width-background-slider/rfwbs.php\";s:5:\"1.0.6\";s:31:\"wbb-off-canvas-menu/wbb-ocm.php\";s:5:\"1.0.0\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.1.zip\";s:6:\"tested\";s:5:\"4.7.4\";s:13:\"compatibility\";O:8:\"stdClass\":1:{s:6:\"scalar\";O:8:\"stdClass\":1:{s:6:\"scalar\";b:0;}}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip\";s:6:\"tested\";s:5:\"4.7.4\";s:13:\"compatibility\";O:8:\"stdClass\":1:{s:6:\"scalar\";O:8:\"stdClass\":1:{s:6:\"scalar\";b:0;}}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:42:\"ai-responsive-gallery-album/ai-gallery.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"43230\";s:4:\"slug\";s:27:\"ai-responsive-gallery-album\";s:6:\"plugin\";s:42:\"ai-responsive-gallery-album/ai-gallery.php\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ai-responsive-gallery-album/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/ai-responsive-gallery-album.zip\";}s:50:\"carousel-horizontal-posts-content-slider/chpcs.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"37381\";s:4:\"slug\";s:40:\"carousel-horizontal-posts-content-slider\";s:6:\"plugin\";s:50:\"carousel-horizontal-posts-content-slider/chpcs.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:71:\"https://wordpress.org/plugins/carousel-horizontal-posts-content-slider/\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/plugin/carousel-horizontal-posts-content-slider.3.2.6.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:25:\"google-maps/googlemap.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"11433\";s:4:\"slug\";s:11:\"google-maps\";s:6:\"plugin\";s:25:\"google-maps/googlemap.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/google-maps/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/google-maps.2.2.4.zip\";}s:39:\"options-framework/options-framework.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"21510\";s:4:\"slug\";s:17:\"options-framework\";s:6:\"plugin\";s:39:\"options-framework/options-framework.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/options-framework/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/options-framework.1.8.5.zip\";}s:49:\"responsive-full-width-background-slider/rfwbs.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"50824\";s:4:\"slug\";s:39:\"responsive-full-width-background-slider\";s:6:\"plugin\";s:49:\"responsive-full-width-background-slider/rfwbs.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:70:\"https://wordpress.org/plugins/responsive-full-width-background-slider/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/responsive-full-width-background-slider.zip\";}s:31:\"wbb-off-canvas-menu/wbb-ocm.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"63612\";s:4:\"slug\";s:19:\"wbb-off-canvas-menu\";s:6:\"plugin\";s:31:\"wbb-off-canvas-menu/wbb-ocm.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wbb-off-canvas-menu/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wbb-off-canvas-menu.zip\";}}}', 'no'),
(181, 'wa_chpcs_version', '3.2.4', 'yes'),
(157, 'startbox_termmeta', 'a:2:{i:0;b:0;i:2;a:0:{}}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(159, '_site_transient_timeout_available_translations', '1493904231', 'no');
INSERT INTO `wp_s_t_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(160, '_site_transient_available_translations', 'a:108:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-27 04:32:49\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:49:08\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.4/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-21 06:37:39\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-06 09:18:57\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-04 16:58:43\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-05 11:34:47\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:49:29\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-05 09:50:06\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:39:59\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/4.7.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:40:03\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-28 14:35:15\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/4.7.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-18 13:57:42\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-25 21:05:27\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-27 00:40:28\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:49:34\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:30\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-28 03:10:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:47:07\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:41:31\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:28\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-23 11:29:34\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-23 23:02:31\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:33\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-02 15:21:03\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:25\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-03 21:08:25\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-26 14:04:42\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:40:32\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:40:27\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-21 14:17:42\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-29 21:21:10\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-01 10:53:22\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-28 13:34:22\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-02 14:01:52\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-08 04:57:54\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-05-02 05:13:51\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-05 06:17:00\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:39:13\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-18 05:09:08\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-30 09:46:13\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-24 06:52:11\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.17\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.1.17/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:42:31\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:31\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-03 14:07:21\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-22 16:33:56\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-16 13:24:21\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/4.7.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:40:57\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-02 13:47:38\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-23 09:31:28\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.17\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.1.17/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-07 00:19:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-17 15:02:48\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-15 14:53:36\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-20 10:13:53\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-20 11:49:35\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-02-08 17:57:45\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-24 08:35:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:41:03\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-03 00:34:10\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-15 09:03:35\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-28 21:21:58\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-27 07:08:07\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-04 05:03:16\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-10 15:33:37\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-01-26 15:54:45\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-03-28 12:03:30\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.7.4\";s:7:\"updated\";s:19:\"2017-04-11 04:43:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(161, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1493904403', 'no');
INSERT INTO `wp_s_t_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(162, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4334;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2475;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2344;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2046;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1815;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1575;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1543;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1426;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1325;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1317;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1305;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1266;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1256;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1093;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1035;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1035;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:980;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:917;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:810;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:785;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:781;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:761;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:753;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:663;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:651;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:645;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:640;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:638;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:634;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:619;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:593;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:590;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:586;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:571;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:569;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:565;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:563;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:553;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:543;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:533;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:526;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:517;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:513;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:501;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:493;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:486;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:481;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:476;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:462;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:461;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:456;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:454;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:438;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:433;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:431;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:429;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:423;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:409;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:403;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:402;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:401;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:398;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:393;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:392;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:390;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:374;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:370;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:362;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:357;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:348;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:330;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:330;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:329;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:327;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:321;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:320;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:318;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:317;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:314;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:308;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:307;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:292;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:291;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:290;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:288;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:285;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:282;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:280;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:280;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:278;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:270;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:269;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:267;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:265;}s:14:\"administration\";a:3:{s:4:\"name\";s:14:\"administration\";s:4:\"slug\";s:14:\"administration\";s:5:\"count\";i:262;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:262;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:262;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:261;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:260;}}', 'no'),
(167, 'wbb_ocm_trigger_icon', 'http://localhost/style/wp-content/plugins/wbb-off-canvas-menu/admin/img/trigger-icon-2.png', 'yes'),
(168, 'wbb_ocm_devices_desktop', '0', 'yes'),
(169, 'wbb_ocm_devices_laptop', '0', 'yes'),
(170, 'wbb_ocm_devices_tablet', '0', 'yes'),
(171, 'wbb_ocm_devices_mobile', '1', 'yes'),
(172, 'wbb_ocm_css_selector', 'wbb-off-canvas', 'yes'),
(173, 'wbb_ocm_background_hover', '#2b2b2b', 'yes'),
(174, 'wbb_ocm_background', '#383838', 'yes'),
(175, 'wbb_ocm_borders', '#bbb', 'yes'),
(176, 'wbb_ocm_font_color', '#eeee22', 'yes'),
(177, 'wbb_ocm_font_color_hover', '#dd9933', 'yes'),
(178, 'wbb_ocm_font_family', '', 'yes'),
(179, 'rfwbs_settings', 'a:12:{s:13:\"rfwbs_frontpg\";s:4:\"true\";s:15:\"rfwbs_sduration\";s:4:\"8000\";s:12:\"rfwbs_tspeed\";s:3:\"700\";s:10:\"rfwbs_play\";s:4:\"true\";s:16:\"rfwbs_navigation\";s:1:\"1\";s:12:\"rfwbs_toggle\";s:1:\"1\";s:16:\"rfwbs_controlpos\";s:1:\"0\";s:12:\"rfwbs_bullet\";s:1:\"1\";s:15:\"rfwbs_animation\";s:4:\"fade\";s:13:\"rfwbs_overlay\";s:1:\"1\";s:12:\"rfwbs_random\";s:1:\"0\";s:9:\"rfwbs_img\";a:3:{i:0;s:56:\"http://localhost/style/wp-content/uploads/2017/05/04.jpg\";i:1;s:56:\"http://localhost/style/wp-content/uploads/2017/05/07.jpg\";i:2;s:56:\"http://localhost/style/wp-content/uploads/2017/05/05.jpg\";}}', 'yes'),
(180, 'wpcf7', 'a:1:{s:7:\"version\";s:5:\"3.5.2\";}', 'yes'),
(182, 'wa_chpcs_settings', 'a:33:{s:13:\"display_image\";b:1;s:16:\"display_controls\";b:1;s:17:\"display_read_more\";b:1;s:13:\"display_title\";b:1;s:15:\"display_excerpt\";b:1;s:18:\"display_pagination\";b:0;s:10:\"image_size\";s:9:\"thumbnail\";s:11:\"auto_scroll\";b:0;s:8:\"circular\";b:1;s:10:\"word_limit\";s:1:\"8\";s:14:\"read_more_text\";s:9:\"Read more\";s:8:\"category\";a:1:{i:0;s:8:\"services\";}s:26:\"number_of_posts_to_display\";s:1:\"3\";s:11:\"posts_order\";s:3:\"asc\";s:13:\"posts_orderby\";s:2:\"id\";s:2:\"fx\";s:6:\"scroll\";s:13:\"easing_effect\";s:6:\"linear\";s:7:\"timeout\";s:4:\"3000\";s:8:\"duration\";s:3:\"500\";s:8:\"infinite\";b:1;s:10:\"item_align\";s:6:\"center\";s:10:\"item_width\";s:3:\"370\";s:11:\"item_height\";s:3:\"350\";s:12:\"excerpt_type\";b:0;s:11:\"touch_swipe\";b:0;s:14:\"css_transition\";b:0;s:9:\"direction\";s:4:\"left\";s:13:\"arrows_colour\";s:12:\"rgb(0, 0, 0)\";s:16:\"arrows_bg_colour\";s:20:\"rgba(168, 32, 32, 0)\";s:19:\"arrows_hover_colour\";s:18:\"rgb(170, 170, 170)\";s:24:\"size_of_direction_arrows\";s:2:\"32\";s:17:\"default_image_url\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";}', 'no'),
(183, 'wa_chpcs_configuration', 'a:6:{s:19:\"deactivation_delete\";b:0;s:13:\"loading_place\";s:6:\"header\";s:16:\"load_touch_swipe\";b:1;s:11:\"load_jquery\";b:0;s:12:\"load_transit\";b:1;s:17:\"load_caroufredsel\";b:1;}', 'no'),
(184, 'widget_chpcs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_hugeit_maps_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'hugeit_maps_version', '2.2.4', 'yes'),
(210, 'hugeit_maps_api_key', ' AIzaSyD0iHVW4_85cdQo01M24HvBGJOD3bjq6Ac ', 'yes'),
(219, '_transient_timeout_settings_errors', '1493899289', 'no'),
(220, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:15:\"Settings saved.\";s:4:\"type\";s:7:\"updated\";}}', 'no'),
(234, 'optionsframework', 'a:1:{s:2:\"id\";s:25:\"optionsframework_stylista\";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_postmeta`
--

CREATE TABLE `wp_s_t_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_postmeta`
--

INSERT INTO `wp_s_t_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1493900714:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1493902233:1'),
(86, 30, '_wp_attached_file', '2017/05/logo.png'),
(87, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:156;s:4:\"file\";s:16:\"2017/05/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-200x156.png\";s:5:\"width\";i:200;s:6:\"height\";i:156;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_menu_item_type', 'post_type'),
(11, 9, '_menu_item_menu_item_parent', '0'),
(12, 9, '_menu_item_object_id', '6'),
(13, 9, '_menu_item_object', 'page'),
(14, 9, '_menu_item_target', ''),
(15, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 9, '_menu_item_xfn', ''),
(17, 9, '_menu_item_url', ''),
(19, 10, '_menu_item_type', 'post_type'),
(20, 10, '_menu_item_menu_item_parent', '0'),
(21, 10, '_menu_item_object_id', '4'),
(22, 10, '_menu_item_object', 'page'),
(23, 10, '_menu_item_target', ''),
(24, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 10, '_menu_item_xfn', ''),
(26, 10, '_menu_item_url', ''),
(37, 12, '_wp_attached_file', '2017/05/04.jpg'),
(28, 11, '_menu_item_type', 'post_type'),
(29, 11, '_menu_item_menu_item_parent', '0'),
(30, 11, '_menu_item_object_id', '2'),
(31, 11, '_menu_item_object', 'page'),
(32, 11, '_menu_item_target', ''),
(33, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 11, '_menu_item_xfn', ''),
(35, 11, '_menu_item_url', ''),
(36, 11, '_menu_item_orphaned', '1493893372'),
(38, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:14:\"2017/05/04.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"04-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"04-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"04-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 13, '_wp_attached_file', '2017/05/05.jpg'),
(40, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:14:\"2017/05/05.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"05-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"05-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"05-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"05-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 14, '_wp_attached_file', '2017/05/07.jpg'),
(42, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:650;s:4:\"file\";s:14:\"2017/05/07.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"07-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"07-768x312.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:312;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"07-1024x416.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:14:\"07-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 15, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Send\"]</p>'),
(44, 15, '_mail', 'a:7:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Stylista (http://localhost/style)\";s:9:\"recipient\";s:24:\"contact@frontpage-ng.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
(45, 15, '_mail_2', 'a:8:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Stylista (http://localhost/style)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;}'),
(46, 15, '_messages', 'a:21:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:12:\"invalid_date\";s:26:\"Date format seems invalid.\";s:14:\"date_too_early\";s:23:\"This date is too early.\";s:13:\"date_too_late\";s:22:\"This date is too late.\";s:13:\"upload_failed\";s:22:\"Failed to upload file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:23:\"This file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"Failed to upload file. Error occurred.\";s:14:\"invalid_number\";s:28:\"Number format seems invalid.\";s:16:\"number_too_small\";s:25:\"This number is too small.\";s:16:\"number_too_large\";s:25:\"This number is too large.\";s:23:\"quiz_answer_not_correct\";s:27:\"Your answer is not correct.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:11:\"invalid_url\";s:18:\"URL seems invalid.\";s:11:\"invalid_tel\";s:31:\"Telephone number seems invalid.\";}'),
(47, 15, '_additional_settings', ''),
(48, 15, '_locale', 'en_US'),
(49, 15, '_rfwbsp_status', ''),
(50, 4, '_rfwbsp_status', ''),
(51, 1, '_wp_trash_meta_status', 'publish'),
(52, 1, '_wp_trash_meta_time', '1493894790'),
(53, 1, '_wp_desired_post_slug', 'hello-world'),
(54, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(55, 19, '_edit_last', '1'),
(56, 19, '_edit_lock', '1493900335:1'),
(57, 20, '_wp_attached_file', '2017/05/crochet.jpg'),
(58, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:608;s:6:\"height\";i:608;s:4:\"file\";s:19:\"2017/05/crochet.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"crochet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"crochet-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"crochet-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 19, '_thumbnail_id', '20'),
(66, 22, '_edit_lock', '1493903211:1'),
(62, 19, '_rfwbsp_status', ''),
(65, 22, '_edit_last', '1'),
(67, 23, '_wp_attached_file', '2017/05/Scrubbing.jpg'),
(68, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:440;s:6:\"height\";i:278;s:4:\"file\";s:21:\"2017/05/Scrubbing.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Scrubbing-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Scrubbing-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"Scrubbing-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 22, '_thumbnail_id', '23'),
(76, 26, '_edit_lock', '1493900352:1'),
(72, 22, '_rfwbsp_status', ''),
(75, 26, '_edit_last', '1'),
(80, 28, '_wp_attached_file', '2017/05/ManicuredNails400.jpg'),
(79, 26, '_rfwbsp_status', ''),
(81, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:29:\"2017/05/ManicuredNails400.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"ManicuredNails400-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"ManicuredNails400-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"ManicuredNails400-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:62:\"Woman soaks her fingernails in water while getting a manicure.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:24:\"Woman Getting a Manicure\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:27:{i:0;s:5:\"adult\";i:1;s:11:\"adults only\";i:2;s:10:\"beautician\";i:3;s:10:\"beauty spa\";i:4;s:16:\"beauty treatment\";i:5;s:9:\"body care\";i:6;s:4:\"care\";i:7;s:9:\"caucasian\";i:8;s:7:\"closeup\";i:9;s:7:\"cropped\";i:10;s:8:\"customer\";i:11;s:6:\"female\";i:12;s:10:\"femininity\";i:13;s:11:\"fingernails\";i:14;s:7:\"fingers\";i:15;s:5:\"hands\";i:16;s:10:\"horizontal\";i:17;s:9:\"Lifestyle\";i:18;s:8:\"manicure\";i:19;s:12:\"manicure set\";i:20;s:9:\"nail file\";i:21;s:9:\"pampering\";i:22;s:6:\"people\";i:23;s:13:\"spa treatment\";i:24;s:10:\"two people\";i:25;s:5:\"Water\";i:26;s:5:\"Woman\";}}}'),
(82, 26, '_thumbnail_id', '28'),
(85, 6, '_rfwbsp_status', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_posts`
--

CREATE TABLE `wp_s_t_posts` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_posts`
--

INSERT INTO `wp_s_t_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-05-04 09:44:10', '2017-05-04 09:44:10', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-05-04 10:46:30', '2017-05-04 10:46:30', '', 0, 'http://localhost/style/?p=1', 0, 'post', '', 1),
(2, 1, '2017-05-04 09:44:10', '2017-05-04 09:44:10', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/style/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-05-04 09:44:10', '2017-05-04 09:44:10', '', 0, 'http://localhost/style/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-05-04 09:44:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-05-04 09:44:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/style/?p=3', 0, 'post', '', 0),
(4, 1, '2017-05-04 09:54:17', '2017-05-04 09:54:17', 'To book an appointment, please fill the form below or call us on any of these hot lines:\r\n0800callus, 0800reachus\r\n[contact-form-7 id=\"15\" title=\"Contact form 1\"]', 'Book Appointment', '', 'publish', 'closed', 'closed', '', 'book-appointment', '', '', '2017-05-04 10:41:41', '2017-05-04 10:41:41', '', 0, 'http://localhost/style/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-05-04 09:54:17', '2017-05-04 09:54:17', '', 'Book Appointment', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-04 09:54:17', '2017-05-04 09:54:17', '', 4, 'http://localhost/style/2017/05/04/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-05-04 09:54:38', '2017-05-04 09:54:38', '[Album ID=1,3,4]', 'Our Work', '', 'publish', 'closed', 'closed', '', 'our-work', '', '', '2017-05-04 12:37:17', '2017-05-04 12:37:17', '', 0, 'http://localhost/style/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-05-04 09:54:38', '2017-05-04 09:54:38', '', 'Our Work', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-04 09:54:38', '2017-05-04 09:54:38', '', 6, 'http://localhost/style/2017/05/04/6-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-05-04 12:00:52', '2017-05-04 12:00:52', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-05-04 12:00:52', '2017-05-04 12:00:52', '', 0, 'http://localhost/style/wp-content/uploads/2017/05/logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2017-05-04 10:22:59', '2017-05-04 10:22:59', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2017-05-04 10:22:59', '2017-05-04 10:22:59', '', 0, 'http://localhost/style/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2017-05-04 10:22:59', '2017-05-04 10:22:59', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2017-05-04 10:22:59', '2017-05-04 10:22:59', '', 0, 'http://localhost/style/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2017-05-04 10:22:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-04 10:22:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/style/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-05-04 10:31:27', '2017-05-04 10:31:27', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2017-05-04 10:31:27', '2017-05-04 10:31:27', '', 0, 'http://localhost/style/wp-content/uploads/2017/05/04.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2017-05-04 10:31:47', '2017-05-04 10:31:47', '', '05', '', 'inherit', 'open', 'closed', '', '05', '', '', '2017-05-04 10:31:47', '2017-05-04 10:31:47', '', 0, 'http://localhost/style/wp-content/uploads/2017/05/05.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-05-04 10:31:59', '2017-05-04 10:31:59', '', '07', '', 'inherit', 'open', 'closed', '', '07', '', '', '2017-05-04 10:31:59', '2017-05-04 10:31:59', '', 0, 'http://localhost/style/wp-content/uploads/2017/05/07.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-05-04 10:39:51', '2017-05-04 10:39:51', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit \"Send\"]</p>\n[your-subject]\n[your-name] <[your-email]>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Stylista (http://localhost/style)\ncontact@frontpage-ng.com\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Stylista (http://localhost/style)\n[your-email]\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill the required field.\nYour entered code is incorrect.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-05-04 10:40:10', '2017-05-04 10:40:10', '', 0, 'http://localhost/style/?post_type=wpcf7_contact_form&#038;p=15', 0, 'wpcf7_contact_form', '', 0),
(16, 1, '2017-05-04 10:41:29', '2017-05-04 10:41:29', 'To book an appointment, please fill the form below or call us on any of these hot lines:\n090callus, 0800reachus', 'Book Appointment', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2017-05-04 10:41:29', '2017-05-04 10:41:29', '', 4, 'http://localhost/style/2017/05/04/4-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2017-05-04 10:41:41', '2017-05-04 10:41:41', 'To book an appointment, please fill the form below or call us on any of these hot lines:\r\n0800callus, 0800reachus\r\n[contact-form-7 id=\"15\" title=\"Contact form 1\"]', 'Book Appointment', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-05-04 10:41:41', '2017-05-04 10:41:41', '', 4, 'http://localhost/style/2017/05/04/4-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-05-04 10:46:30', '2017-05-04 10:46:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-05-04 10:46:30', '2017-05-04 10:46:30', '', 1, 'http://localhost/style/2017/05/04/1-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-05-04 10:53:55', '2017-05-04 10:53:55', 'Wigs have been used since antiquity as hairstyle and costume; ancient Egyptians wore wigs to shield their shaved heads from the sun. They also wore the wigs on top of their hair using beeswax and resin to keep the wigs in place. Other ancient cultures, including the Assyrians,Phoenicians, Greeks and Romans, also used wigs as an everyday fashion. There was intermittent use of wigs in many cultures throughout history including the prophylactic use of them in England in the 1600s to help protect from head lice.\r\n\r\nThe modern wig was adopted by Louis XIII to cover his baldness. By the late 1600s, both wigs and handmade lace headpieces were common with European and North American upper classes as daily fashion. Wigs were made of human, horse, and yak hair and sewn onto a frame with silken thread were meant to be obvious as wigs and not the wearer\'s actual hair. Powdered wigs in rows of curls, known as periwigs, were adopted as court dress in many cultures with elaborate curls and style.\r\nActor in a human hair, lacefront wig\r\n\r\nAfter the American Revolutionary War, styles in North America changed and the wig as a sign of social class died out of use. Wigs began to be used more to augment natural hair for elaborate hairstyles, for religious reasons, or to cover hair loss in both genders and therefore were required to blend with the wearer\'s natural hair. The selling of human hair by the lower classes for use in wigs by the upper classes was captured in stories like Gift of the Magi and Little Women.\r\n\r\nIn the 19th century a new wig-making method began to replace the weft method most commonly used prior. A small hook called a \"ventilating needle\", similar to the tambour hooks used for decorating fabric with chain-stitch embroidery at that period, is used to knot a few strands of hair at a time directly to a suitable foundation material. By the 1870s, the lace machine had made lace affordable through mass production and the use of lace as foundation material for wigs entered popular use. Using lace allowed for a more natural-looking wig because the flesh-colored lace is almost imperceptible. The more common use was a strip of lace just at the front, known as a lace front wig, which gives the impression of a natural hairline.\r\n\r\nCulled from Wikipedia.', 'Laced Wigs', '', 'publish', 'open', 'open', '', 'laced-wigs', '', '', '2017-05-04 12:21:15', '2017-05-04 12:21:15', '', 0, 'http://localhost/style/?p=19', 0, 'post', '', 0),
(20, 1, '2017-05-04 10:53:47', '2017-05-04 10:53:47', '', 'crochet', '', 'inherit', 'open', 'closed', '', 'crochet', '', '', '2017-05-04 10:53:47', '2017-05-04 10:53:47', '', 19, 'http://localhost/style/wp-content/uploads/2017/05/crochet.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2017-05-04 10:53:55', '2017-05-04 10:53:55', 'Wigs have been used since antiquity as hairstyle and costume; ancient Egyptians wore wigs to shield their shaved heads from the sun. They also wore the wigs on top of their hair using beeswax and resin to keep the wigs in place. Other ancient cultures, including the Assyrians,Phoenicians, Greeks and Romans, also used wigs as an everyday fashion. There was intermittent use of wigs in many cultures throughout history including the prophylactic use of them in England in the 1600s to help protect from head lice.\r\n\r\nThe modern wig was adopted by Louis XIII to cover his baldness. By the late 1600s, both wigs and handmade lace headpieces were common with European and North American upper classes as daily fashion. Wigs were made of human, horse, and yak hair and sewn onto a frame with silken thread were meant to be obvious as wigs and not the wearer\'s actual hair. Powdered wigs in rows of curls, known as periwigs, were adopted as court dress in many cultures with elaborate curls and style.\r\nActor in a human hair, lacefront wig\r\n\r\nAfter the American Revolutionary War, styles in North America changed and the wig as a sign of social class died out of use. Wigs began to be used more to augment natural hair for elaborate hairstyles, for religious reasons, or to cover hair loss in both genders and therefore were required to blend with the wearer\'s natural hair. The selling of human hair by the lower classes for use in wigs by the upper classes was captured in stories like Gift of the Magi and Little Women.\r\n\r\nIn the 19th century a new wig-making method began to replace the weft method most commonly used prior. A small hook called a \"ventilating needle\", similar to the tambour hooks used for decorating fabric with chain-stitch embroidery at that period, is used to knot a few strands of hair at a time directly to a suitable foundation material. By the 1870s, the lace machine had made lace affordable through mass production and the use of lace as foundation material for wigs entered popular use. Using lace allowed for a more natural-looking wig because the flesh-colored lace is almost imperceptible. The more common use was a strip of lace just at the front, known as a lace front wig, which gives the impression of a natural hairline.\r\n\r\nCulled from Wikipedia.', 'Laced Wigs', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-05-04 10:53:55', '2017-05-04 10:53:55', '', 19, 'http://localhost/style/2017/05/04/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-05-04 10:57:25', '2017-05-04 10:57:25', 'There are different kinds of masks (e.g. cactus, cucumber, etc.) for different purposes: deep-cleansing, by penetrating the pores; healing acne scars or hyper-pigmentation; brightening, for a gradual illumination of the skin tone. Some masks are designed to dry or solidify on the face, almost like plaster; others just remain wet. The perceived effects of a facial mask treatment include revitalizing, healing, or refreshing; and, may yield temporary or long-term benefits (depending on environmental, dietary, and other skincare factors).\r\n\r\nMasks are removed by either rinsing the face with water, wiping off with a damp cloth, or peeling off of the face. Duration for wearing a mask varies with the type of mask, and manufacturer\'s usage instructions. The time can range from a few minutes to overnight. Those with sensitive skin are advised to first test out the mask on a small portion of the skin, in order to check for any irritations. Some facial masks are not suited to frequent use. A glycolic mask can only be used once a month without the risk of burning the skin.[citation needed]\r\n\r\nMasks can be found anywhere from drugstores to department stores, and can vary in consistency and form. Setting masks include: clay, which is a thicker consistency, and will draw out impurities (and sometimes, natural oils, too) from the pores; a cream, which stays damp to hydrate the skin; sheet-style, in which a paper mask is dampened with liquid to tone and moisturize the skin; and lastly, a hybrid/clay and cream form that includes small beads for removing dead surface skin cells. Non-setting facial masks include warm oil and paraffin wax masks. These different forms are made to suit different skin types (e.g., oily or dry), and different skincare goals or needs (e.g., moisturizing, cleansing, exfoliating). Clay and mud masks suit oily and some \"combination\" skin types, while cream-based masks tend to suit dry and sensitive skin types.', 'Facials', '', 'publish', 'open', 'open', '', 'facials', '', '', '2017-05-04 12:21:49', '2017-05-04 12:21:49', '', 0, 'http://localhost/style/?p=22', 0, 'post', '', 0),
(23, 1, '2017-05-04 10:57:19', '2017-05-04 10:57:19', '', 'Scrubbing', '', 'inherit', 'open', 'closed', '', 'scrubbing', '', '', '2017-05-04 10:57:19', '2017-05-04 10:57:19', '', 22, 'http://localhost/style/wp-content/uploads/2017/05/Scrubbing.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2017-05-04 10:57:25', '2017-05-04 10:57:25', 'nbfgfhhbbh hhh', 'Facials', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-05-04 10:57:25', '2017-05-04 10:57:25', '', 22, 'http://localhost/style/2017/05/04/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-05-04 10:59:41', '2017-05-04 10:59:41', 'There are different kinds of masks (e.g. cactus, cucumber, etc.) for different purposes: deep-cleansing, by penetrating the pores; healing acne scars or hyper-pigmentation; brightening, for a gradual illumination of the skin tone. Some masks are designed to dry or solidify on the face, almost like plaster; others just remain wet. The perceived effects of a facial mask treatment include revitalizing, healing, or refreshing; and, may yield temporary or long-term benefits (depending on environmental, dietary, and other skincare factors).\r\n\r\nMasks are removed by either rinsing the face with water, wiping off with a damp cloth, or peeling off of the face. Duration for wearing a mask varies with the type of mask, and manufacturer\'s usage instructions. The time can range from a few minutes to overnight. Those with sensitive skin are advised to first test out the mask on a small portion of the skin, in order to check for any irritations. Some facial masks are not suited to frequent use. A glycolic mask can only be used once a month without the risk of burning the skin.[citation needed]\r\n\r\nMasks can be found anywhere from drugstores to department stores, and can vary in consistency and form. Setting masks include: clay, which is a thicker consistency, and will draw out impurities (and sometimes, natural oils, too) from the pores; a cream, which stays damp to hydrate the skin; sheet-style, in which a paper mask is dampened with liquid to tone and moisturize the skin; and lastly, a hybrid/clay and cream form that includes small beads for removing dead surface skin cells. Non-setting facial masks include warm oil and paraffin wax masks. These different forms are made to suit different skin types (e.g., oily or dry), and different skincare goals or needs (e.g., moisturizing, cleansing, exfoliating). Clay and mud masks suit oily and some \"combination\" skin types, while cream-based masks tend to suit dry and sensitive skin types.', 'Facials', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-05-04 10:59:41', '2017-05-04 10:59:41', '', 22, 'http://localhost/style/2017/05/04/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-05-04 11:01:13', '2017-05-04 11:01:13', 'A manicure is a cosmetic beauty treatment for the fingernails and hands, performed at home or in a nail salon. A manicure consists of filing and shaping of the free edge, pushing (with a cuticle pusher) and clipping (with cuticle nippers) any nonliving tissue (limited to cuticle and hangnails), treatments, massage of the hand, and the application of fingernail polish. When applied to the toenails and feet, this treatment is referred to as a pedicure.\r\n\r\nSome manicures can include the painting of pictures or designs on the nails, or applying small decals or imitation jewels. Other nail treatments may include the application of artificial nail gel nails, tips, or acrylics, some of which are referred to as French manicures.[1]\r\n\r\nIn many areas, manicurists are licensed and follow regulations. Since skin is manipulated and is sometimes trimmed, there is a certain risk of spreading infection when tools are used across many people; therefore, sanitation is a serious issue.\r\n\r\nCulled from Wikipedia', 'Manicure', '', 'publish', 'open', 'open', '', 'manicure', '', '', '2017-05-04 12:21:31', '2017-05-04 12:21:31', '', 0, 'http://localhost/style/?p=26', 0, 'post', '', 0),
(27, 1, '2017-05-04 11:01:13', '2017-05-04 11:01:13', 'A manicure is a cosmetic beauty treatment for the fingernails and hands, performed at home or in a nail salon. A manicure consists of filing and shaping of the free edge, pushing (with a cuticle pusher) and clipping (with cuticle nippers) any nonliving tissue (limited to cuticle and hangnails), treatments, massage of the hand, and the application of fingernail polish. When applied to the toenails and feet, this treatment is referred to as a pedicure.\r\n\r\nSome manicures can include the painting of pictures or designs on the nails, or applying small decals or imitation jewels. Other nail treatments may include the application of artificial nail gel nails, tips, or acrylics, some of which are referred to as French manicures.[1]\r\n\r\nIn many areas, manicurists are licensed and follow regulations. Since skin is manipulated and is sometimes trimmed, there is a certain risk of spreading infection when tools are used across many people; therefore, sanitation is a serious issue.\r\n\r\nCulled from Wikipedia', 'Manicure', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-05-04 11:01:13', '2017-05-04 11:01:13', '', 26, 'http://localhost/style/2017/05/04/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-05-04 11:01:39', '2017-05-04 11:01:39', '', 'Woman Getting a Manicure', 'Woman soaks her fingernails in water while getting a manicure.', 'inherit', 'open', 'closed', '', 'woman-getting-a-manicure', '', '', '2017-05-04 11:01:39', '2017-05-04 11:01:39', '', 26, 'http://localhost/style/wp-content/uploads/2017/05/ManicuredNails400.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-05-04 11:50:57', '2017-05-04 11:50:57', '[Album ID=1,2,3]', 'Our Work', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-04 11:50:57', '2017-05-04 11:50:57', '', 6, 'http://localhost/style/2017/05/04/6-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-05-04 12:37:17', '2017-05-04 12:37:17', '[Album ID=1,3,4]', 'Our Work', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-05-04 12:37:17', '2017-05-04 12:37:17', '', 6, 'http://localhost/style/2017/05/04/6-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_termmeta`
--

CREATE TABLE `wp_s_t_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_terms`
--

CREATE TABLE `wp_s_t_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_terms`
--

INSERT INTO `wp_s_t_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'primary', 'primary', 0),
(3, 'services', 'services', 0),
(4, 'manicure', 'manicure', 0),
(5, 'nails', 'nails', 0),
(6, 'pedicure', 'pedicure', 0),
(7, 'facials', 'facials', 0),
(8, 'spa', 'spa', 0),
(9, 'laced wigs', 'laced-wigs', 0),
(10, 'crochet', 'crochet', 0),
(11, 'salon', 'salon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_term_relationships`
--

CREATE TABLE `wp_s_t_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_term_relationships`
--

INSERT INTO `wp_s_t_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(10, 2, 0),
(26, 3, 0),
(19, 3, 0),
(22, 3, 0),
(26, 4, 0),
(26, 5, 0),
(26, 6, 0),
(22, 7, 0),
(22, 8, 0),
(26, 8, 0),
(19, 9, 0),
(19, 10, 0),
(19, 11, 0),
(26, 11, 0),
(22, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_term_taxonomy`
--

CREATE TABLE `wp_s_t_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_term_taxonomy`
--

INSERT INTO `wp_s_t_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'category', '', 0, 3),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 2),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_usermeta`
--

CREATE TABLE `wp_s_t_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_usermeta`
--

INSERT INTO `wp_s_t_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_s_t_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_s_t_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"044532191fbca6589df262f3082da40159cbb3513d33c627d0a1a3b1f5960185\";a:4:{s:10:\"expiration\";i:1494063860;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0\";s:5:\"login\";i:1493891060;}}'),
(16, 1, 'wp_s_t_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_s_t_user-settings', 'libraryContent=browse&imgsize=full&editor=html'),
(18, 1, 'wp_s_t_user-settings-time', '1493894496'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_s_t_users`
--

CREATE TABLE `wp_s_t_users` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_s_t_users`
--

INSERT INTO `wp_s_t_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BW3CqDWu8CqkNucUtlWRfO3HipfdwO0', 'admin', 'contact@frontpage-ng.com', '', '2017-05-04 09:44:10', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_s_t_ai_album`
--
ALTER TABLE `wp_s_t_ai_album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `wp_s_t_ai_photos`
--
ALTER TABLE `wp_s_t_ai_photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `wp_s_t_commentmeta`
--
ALTER TABLE `wp_s_t_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_s_t_comments`
--
ALTER TABLE `wp_s_t_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_s_t_hugeit_maps_circles`
--
ALTER TABLE `wp_s_t_hugeit_maps_circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_s_t_hugeit_maps_directions`
--
ALTER TABLE `wp_s_t_hugeit_maps_directions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_s_t_hugeit_maps_maps`
--
ALTER TABLE `wp_s_t_hugeit_maps_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_s_t_hugeit_maps_markers`
--
ALTER TABLE `wp_s_t_hugeit_maps_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_s_t_hugeit_maps_polygons`
--
ALTER TABLE `wp_s_t_hugeit_maps_polygons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_s_t_hugeit_maps_polylines`
--
ALTER TABLE `wp_s_t_hugeit_maps_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_s_t_links`
--
ALTER TABLE `wp_s_t_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_s_t_options`
--
ALTER TABLE `wp_s_t_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_s_t_postmeta`
--
ALTER TABLE `wp_s_t_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_s_t_posts`
--
ALTER TABLE `wp_s_t_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_s_t_termmeta`
--
ALTER TABLE `wp_s_t_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_s_t_terms`
--
ALTER TABLE `wp_s_t_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_s_t_term_relationships`
--
ALTER TABLE `wp_s_t_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_s_t_term_taxonomy`
--
ALTER TABLE `wp_s_t_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_s_t_usermeta`
--
ALTER TABLE `wp_s_t_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_s_t_users`
--
ALTER TABLE `wp_s_t_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_s_t_ai_album`
--
ALTER TABLE `wp_s_t_ai_album`
  MODIFY `album_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_s_t_ai_photos`
--
ALTER TABLE `wp_s_t_ai_photos`
  MODIFY `photo_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_s_t_commentmeta`
--
ALTER TABLE `wp_s_t_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_s_t_comments`
--
ALTER TABLE `wp_s_t_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_s_t_hugeit_maps_circles`
--
ALTER TABLE `wp_s_t_hugeit_maps_circles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_s_t_hugeit_maps_directions`
--
ALTER TABLE `wp_s_t_hugeit_maps_directions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_s_t_hugeit_maps_maps`
--
ALTER TABLE `wp_s_t_hugeit_maps_maps`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_s_t_hugeit_maps_markers`
--
ALTER TABLE `wp_s_t_hugeit_maps_markers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_s_t_hugeit_maps_polygons`
--
ALTER TABLE `wp_s_t_hugeit_maps_polygons`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_s_t_hugeit_maps_polylines`
--
ALTER TABLE `wp_s_t_hugeit_maps_polylines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_s_t_links`
--
ALTER TABLE `wp_s_t_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_s_t_options`
--
ALTER TABLE `wp_s_t_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `wp_s_t_postmeta`
--
ALTER TABLE `wp_s_t_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `wp_s_t_posts`
--
ALTER TABLE `wp_s_t_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `wp_s_t_termmeta`
--
ALTER TABLE `wp_s_t_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_s_t_terms`
--
ALTER TABLE `wp_s_t_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_s_t_term_taxonomy`
--
ALTER TABLE `wp_s_t_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_s_t_usermeta`
--
ALTER TABLE `wp_s_t_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_s_t_users`
--
ALTER TABLE `wp_s_t_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
