-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-05-17 16:42:48','2022-05-17 16:42:48','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://bikecraft-v1.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://bikecraft-v1.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','bikecraft - v1','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"produtos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"produtos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"produtos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"produtos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"produtos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"produtos/([^/]+)/embed/?$\";s:41:\"index.php?produtos=$matches[1]&embed=true\";s:29:\"produtos/([^/]+)/trackback/?$\";s:35:\"index.php?produtos=$matches[1]&tb=1\";s:37:\"produtos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&paged=$matches[2]\";s:44:\"produtos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&cpage=$matches[2]\";s:33:\"produtos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?produtos=$matches[1]&page=$matches[2]\";s:25:\"produtos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"produtos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"produtos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"produtos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"produtos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','bikcraft - cópia','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','bikcraft - cópia','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','51917','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1668357768','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','51917','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1654828970;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654836170;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654879370;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654879414;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654879415;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1655311370;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','W|P(|DqP-#oB5SDZ`6P(Dwq!r0OOw!82Mh/p]-*DCugYgyOh~f$)A%xD<o/udfRz','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','Ian.Ucfkac0en5+!+Mgt-Bs}U5&(4}W?69`gL0_MwF<729;f+&xfK.VB{mFj4l?;','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652812399;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (126,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (127,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1654826694;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1654826717;s:7:\"checked\";a:4:{s:18:\"bikcraft - cópia\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (133,'auth_key','7_QFJ]P-WVX#=7nP<m1{?`B+3j,AKjlJ1l`m,6pUM`/%O9#/qW ZtkFdCxOh>BQ<','no');
INSERT INTO `wp_options` VALUES (134,'auth_salt','0no1:<BtJI@i<QeVs5`YmI,CP{$4KSSEhP`m=EA,oZ*8deLyh_c824;DQ .sIVgt','no');
INSERT INTO `wp_options` VALUES (135,'logged_in_key','D5X:`BN RrAb2RAu$!_;{sz?GZA#xQ;PXlO7_I8KTyynEy/)*!O6:~zoKUhJkN1@','no');
INSERT INTO `wp_options` VALUES (136,'logged_in_salt','J67%0*d]!(i9P^.;qY=O%~>rq%]X^ihUrB#5{_E)*s^^9*E!@3/[cZ5OzWZNpayG','no');
INSERT INTO `wp_options` VALUES (144,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (157,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (169,'current_theme','Bikecraft','yes');
INSERT INTO `wp_options` VALUES (170,'theme_mods_bikcraft - cópia','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (171,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (252,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (263,'acf_version','5.8.2','yes');
INSERT INTO `wp_options` VALUES (265,'_transient_health-check-site-status-result','{\"good\":\"17\",\"recommended\":\"2\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (466,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1654826694;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (531,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (554,'_transient_doing_cron','1654826694.1059598922729492187500','yes');
INSERT INTO `wp_options` VALUES (555,'_transient_timeout_global_styles_bikcraft - cópia','1654826754','no');
INSERT INTO `wp_options` VALUES (556,'_transient_global_styles_bikcraft - cópia','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (557,'_transient_timeout_acf_plugin_updates','1654913105','no');
INSERT INTO `wp_options` VALUES (558,'_transient_acf_plugin_updates','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:59:\"cURL error 28: Resolving timed out after 10525 milliseconds\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (559,'_site_transient_timeout_theme_roots','1654828516','no');
INSERT INTO `wp_options` VALUES (560,'_site_transient_theme_roots','a:4:{s:18:\"bikcraft - cópia\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1653345961:1');
INSERT INTO `wp_postmeta` VALUES (5,5,'_wp_page_template','page-home.php');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_lock','1653311943:1');
INSERT INTO `wp_postmeta` VALUES (7,9,'_wp_page_template','page-contato.php');
INSERT INTO `wp_postmeta` VALUES (8,11,'_edit_lock','1653250963:1');
INSERT INTO `wp_postmeta` VALUES (9,13,'_edit_lock','1653250718:1');
INSERT INTO `wp_postmeta` VALUES (10,13,'_wp_page_template','page-produtos.php');
INSERT INTO `wp_postmeta` VALUES (11,15,'_edit_lock','1653250282:1');
INSERT INTO `wp_postmeta` VALUES (12,15,'_wp_page_template','page-sobre.php');
INSERT INTO `wp_postmeta` VALUES (13,11,'_wp_page_template','page-portfolio.php');
INSERT INTO `wp_postmeta` VALUES (14,1,'_edit_lock','1652832888:1');
INSERT INTO `wp_postmeta` VALUES (17,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (18,1,'_wp_trash_meta_time','1652832917');
INSERT INTO `wp_postmeta` VALUES (19,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (20,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (21,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (22,2,'_wp_trash_meta_time','1652833585');
INSERT INTO `wp_postmeta` VALUES (23,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (24,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (25,3,'_wp_trash_meta_time','1652833591');
INSERT INTO `wp_postmeta` VALUES (26,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (29,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,22,'_edit_lock','1653249980:1');
INSERT INTO `wp_postmeta` VALUES (31,29,'_wp_attached_file','2022/05/bikcraft-qualidade.png');
INSERT INTO `wp_postmeta` VALUES (32,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:123;s:4:\"file\";s:30:\"2022/05/bikcraft-qualidade.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"bikcraft-qualidade-150x123.png\";s:5:\"width\";i:150;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (33,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (34,15,'about_title','Qualidade');
INSERT INTO `wp_postmeta` VALUES (35,15,'_about_title','field_6287c66653c85');
INSERT INTO `wp_postmeta` VALUES (36,15,'logo_bikecraft','29');
INSERT INTO `wp_postmeta` VALUES (37,15,'_logo_bikecraft','field_6287c6b353c86');
INSERT INTO `wp_postmeta` VALUES (38,15,'quality_list_0_quality_title','DURABILIDADE');
INSERT INTO `wp_postmeta` VALUES (39,15,'_quality_list_0_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (40,15,'quality_list_0_quality_description','Sólida como pedra, leve como o vento e resistente como o diamante, são nossos diferenciais.');
INSERT INTO `wp_postmeta` VALUES (41,15,'_quality_list_0_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (42,15,'quality_list_1_quality_title','DESIGN');
INSERT INTO `wp_postmeta` VALUES (43,15,'_quality_list_1_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (44,15,'quality_list_1_quality_description','Feitas sob medida para o melhor conforto e eficiência. Adaptamos a sua Bikcraft para o seu corpo.');
INSERT INTO `wp_postmeta` VALUES (45,15,'_quality_list_1_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (46,15,'quality_list_2_quality_title','SUSTENTABILIDADE');
INSERT INTO `wp_postmeta` VALUES (47,15,'_quality_list_2_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (48,15,'quality_list_2_quality_description','Além de ajudar a cuidar do meio ambiente, tirando carros da rua, toda a produção é sustentável.');
INSERT INTO `wp_postmeta` VALUES (49,15,'_quality_list_2_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (50,15,'quality_list','3');
INSERT INTO `wp_postmeta` VALUES (51,15,'_quality_list','field_6287c72f53c87');
INSERT INTO `wp_postmeta` VALUES (52,15,'about_call','Conheça mais a nossa história');
INSERT INTO `wp_postmeta` VALUES (53,15,'_about_call','field_6287c8b253c8a');
INSERT INTO `wp_postmeta` VALUES (54,30,'about_title','Qualidade');
INSERT INTO `wp_postmeta` VALUES (55,30,'_about_title','field_6287c66653c85');
INSERT INTO `wp_postmeta` VALUES (56,30,'logo_bikecraft','29');
INSERT INTO `wp_postmeta` VALUES (57,30,'_logo_bikecraft','field_6287c6b353c86');
INSERT INTO `wp_postmeta` VALUES (58,30,'quality_list_0_quality_title','DURABILIDADE');
INSERT INTO `wp_postmeta` VALUES (59,30,'_quality_list_0_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (60,30,'quality_list_0_quality_description','Sólida como pedra, leve como o vento e resistente como o diamante, são nossos diferenciais.');
INSERT INTO `wp_postmeta` VALUES (61,30,'_quality_list_0_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (62,30,'quality_list_1_quality_title','DESIGN');
INSERT INTO `wp_postmeta` VALUES (63,30,'_quality_list_1_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (64,30,'quality_list_1_quality_description','Feitas sob medida para o melhor conforto e eficiência. Adaptamos a sua Bikcraft para o seu corpo.');
INSERT INTO `wp_postmeta` VALUES (65,30,'_quality_list_1_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (66,30,'quality_list_2_quality_title','SUSTENTABILIDADE');
INSERT INTO `wp_postmeta` VALUES (67,30,'_quality_list_2_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (68,30,'quality_list_2_quality_description','Além de ajudar a cuidar do meio ambiente, tirando carros da rua, toda a produção é sustentável.');
INSERT INTO `wp_postmeta` VALUES (69,30,'_quality_list_2_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (70,30,'quality_list','3');
INSERT INTO `wp_postmeta` VALUES (71,30,'_quality_list','field_6287c72f53c87');
INSERT INTO `wp_postmeta` VALUES (72,30,'about_call','Conheça mais a nossa história');
INSERT INTO `wp_postmeta` VALUES (73,30,'_about_call','field_6287c8b253c8a');
INSERT INTO `wp_postmeta` VALUES (74,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (75,31,'_edit_lock','1653250704:1');
INSERT INTO `wp_postmeta` VALUES (76,40,'_wp_attached_file','2022/05/retro.jpg');
INSERT INTO `wp_postmeta` VALUES (77,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:460;s:6:\"height\";i:280;s:4:\"file\";s:17:\"2022/05/retro.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"retro-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"retro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (78,41,'_wp_attached_file','2022/05/esporte.jpg');
INSERT INTO `wp_postmeta` VALUES (79,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:940;s:6:\"height\";i:280;s:4:\"file\";s:19:\"2022/05/esporte.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"esporte-300x89.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:89;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"esporte-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"esporte-768x229.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (80,42,'_wp_attached_file','2022/05/passeio.jpg');
INSERT INTO `wp_postmeta` VALUES (81,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:460;s:6:\"height\";i:280;s:4:\"file\";s:19:\"2022/05/passeio.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"passeio-300x183.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"passeio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (82,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (83,11,'portifolio_item_0_portifolio_img1','40');
INSERT INTO `wp_postmeta` VALUES (84,11,'_portifolio_item_0_portifolio_img1','field_628a484e8e56b');
INSERT INTO `wp_postmeta` VALUES (85,11,'portifolio_item_0_portifolio_descricao1','Bikecraft Retro');
INSERT INTO `wp_postmeta` VALUES (86,11,'_portifolio_item_0_portifolio_descricao1','field_628a48d38e56c');
INSERT INTO `wp_postmeta` VALUES (87,11,'portifolio_item_0_portifolio_img2','42');
INSERT INTO `wp_postmeta` VALUES (88,11,'_portifolio_item_0_portifolio_img2','field_628a496c8e56d');
INSERT INTO `wp_postmeta` VALUES (89,11,'portifolio_item_0_portifolio_descricao2','Bikecraft Passeio');
INSERT INTO `wp_postmeta` VALUES (90,11,'_portifolio_item_0_portifolio_descricao2','field_628a498a8e56e');
INSERT INTO `wp_postmeta` VALUES (91,11,'portifolio_item_0_portifolio_img3','41');
INSERT INTO `wp_postmeta` VALUES (92,11,'_portifolio_item_0_portifolio_img3','field_628a49a38e56f');
INSERT INTO `wp_postmeta` VALUES (93,11,'portifolio_item_0_portifolio_descricao3','Bikecraft Esporte');
INSERT INTO `wp_postmeta` VALUES (94,11,'_portifolio_item_0_portifolio_descricao3','field_628a49b68e570');
INSERT INTO `wp_postmeta` VALUES (95,11,'portifolio_item','1');
INSERT INTO `wp_postmeta` VALUES (96,11,'_portifolio_item','field_628a47dc8e56a');
INSERT INTO `wp_postmeta` VALUES (97,11,'portifolio_call','Conheça Nosso Portifolio');
INSERT INTO `wp_postmeta` VALUES (98,11,'_portifolio_call','field_628a4a728e571');
INSERT INTO `wp_postmeta` VALUES (99,43,'portifolio_item_0_portifolio_img1','40');
INSERT INTO `wp_postmeta` VALUES (100,43,'_portifolio_item_0_portifolio_img1','field_628a484e8e56b');
INSERT INTO `wp_postmeta` VALUES (101,43,'portifolio_item_0_portifolio_descricao1','Bikecraft Retro');
INSERT INTO `wp_postmeta` VALUES (102,43,'_portifolio_item_0_portifolio_descricao1','field_628a48d38e56c');
INSERT INTO `wp_postmeta` VALUES (103,43,'portifolio_item_0_portifolio_img2','42');
INSERT INTO `wp_postmeta` VALUES (104,43,'_portifolio_item_0_portifolio_img2','field_628a496c8e56d');
INSERT INTO `wp_postmeta` VALUES (105,43,'portifolio_item_0_portifolio_descricao2','Bikecraft Passeio');
INSERT INTO `wp_postmeta` VALUES (106,43,'_portifolio_item_0_portifolio_descricao2','field_628a498a8e56e');
INSERT INTO `wp_postmeta` VALUES (107,43,'portifolio_item_0_portifolio_img3','41');
INSERT INTO `wp_postmeta` VALUES (108,43,'_portifolio_item_0_portifolio_img3','field_628a49a38e56f');
INSERT INTO `wp_postmeta` VALUES (109,43,'portifolio_item_0_portifolio_descricao3','Bikecraft Esporte');
INSERT INTO `wp_postmeta` VALUES (110,43,'_portifolio_item_0_portifolio_descricao3','field_628a49b68e570');
INSERT INTO `wp_postmeta` VALUES (111,43,'portifolio_item','1');
INSERT INTO `wp_postmeta` VALUES (112,43,'_portifolio_item','field_628a47dc8e56a');
INSERT INTO `wp_postmeta` VALUES (113,43,'portifolio_call','Conheça Nosso Portifolio');
INSERT INTO `wp_postmeta` VALUES (114,43,'_portifolio_call','field_628a4a728e571');
INSERT INTO `wp_postmeta` VALUES (115,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (116,44,'_edit_lock','1653248762:1');
INSERT INTO `wp_postmeta` VALUES (117,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (118,5,'intro_title','BICICLETAS FEITAS A MÃO');
INSERT INTO `wp_postmeta` VALUES (119,5,'_intro_title','field_628a5243b161c');
INSERT INTO `wp_postmeta` VALUES (120,5,'intro_quote','“não tenha nada em sua casa que você não considere útil ou acredita ser bonito”');
INSERT INTO `wp_postmeta` VALUES (121,5,'_intro_quote','field_628a5283b161d');
INSERT INTO `wp_postmeta` VALUES (122,5,'intro_cite','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (123,5,'_intro_cite','field_628a52a8b161e');
INSERT INTO `wp_postmeta` VALUES (124,48,'intro_title','BICICLETAS FEITAS A MÃO');
INSERT INTO `wp_postmeta` VALUES (125,48,'_intro_title','field_628a5243b161c');
INSERT INTO `wp_postmeta` VALUES (126,48,'intro_quote','“não tenha nada em sua casa que você não considere útil ou acredita ser bonito”');
INSERT INTO `wp_postmeta` VALUES (127,48,'_intro_quote','field_628a5283b161d');
INSERT INTO `wp_postmeta` VALUES (128,48,'intro_cite','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (129,48,'_intro_cite','field_628a52a8b161e');
INSERT INTO `wp_postmeta` VALUES (130,5,'intro_call','clique aqui e veja os detalhes dos produtos');
INSERT INTO `wp_postmeta` VALUES (131,5,'_intro_call','field_628a5419df8ad');
INSERT INTO `wp_postmeta` VALUES (132,50,'intro_title','BICICLETAS FEITAS A MÃO');
INSERT INTO `wp_postmeta` VALUES (133,50,'_intro_title','field_628a5243b161c');
INSERT INTO `wp_postmeta` VALUES (134,50,'intro_quote','“não tenha nada em sua casa que você não considere útil ou acredita ser bonito”');
INSERT INTO `wp_postmeta` VALUES (135,50,'_intro_quote','field_628a5283b161d');
INSERT INTO `wp_postmeta` VALUES (136,50,'intro_cite','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (137,50,'_intro_cite','field_628a52a8b161e');
INSERT INTO `wp_postmeta` VALUES (138,50,'intro_call','clique aqui e veja os detalhes dos produtos');
INSERT INTO `wp_postmeta` VALUES (139,50,'_intro_call','field_628a5419df8ad');
INSERT INTO `wp_postmeta` VALUES (140,51,'intro_title','BICICLETAS FEITAS A MÃO');
INSERT INTO `wp_postmeta` VALUES (141,51,'_intro_title','field_628a5243b161c');
INSERT INTO `wp_postmeta` VALUES (142,51,'intro_quote','“não tenha nada em sua casa que você não considere útil ou acredita ser bonito”');
INSERT INTO `wp_postmeta` VALUES (143,51,'_intro_quote','field_628a5283b161d');
INSERT INTO `wp_postmeta` VALUES (144,51,'intro_cite','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (145,51,'_intro_cite','field_628a52a8b161e');
INSERT INTO `wp_postmeta` VALUES (146,51,'intro_call','clique aqui e veja os detalhes dos produtos');
INSERT INTO `wp_postmeta` VALUES (147,51,'_intro_call','field_628a5419df8ad');
INSERT INTO `wp_postmeta` VALUES (148,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (149,52,'_edit_lock','1653245616:1');
INSERT INTO `wp_postmeta` VALUES (150,54,'_wp_attached_file','2022/05/bg-contato.jpg');
INSERT INTO `wp_postmeta` VALUES (151,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:160;s:4:\"file\";s:22:\"2022/05/bg-contato.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bg-contato-300x34.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:34;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"bg-contato-1024x117.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bg-contato-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bg-contato-768x88.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (152,55,'_wp_attached_file','2022/05/bg-footer.jpg');
INSERT INTO `wp_postmeta` VALUES (153,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:220;s:4:\"file\";s:21:\"2022/05/bg-footer.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"bg-footer-300x47.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bg-footer-1024x161.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-footer-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bg-footer-768x121.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:121;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (154,56,'_wp_attached_file','2022/05/bg-mobile.jpg');
INSERT INTO `wp_postmeta` VALUES (155,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:768;s:6:\"height\";i:380;s:4:\"file\";s:21:\"2022/05/bg-mobile.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bg-mobile-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bg-mobile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (156,57,'_wp_attached_file','2022/05/bg-portfolio.jpg');
INSERT INTO `wp_postmeta` VALUES (157,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:160;s:4:\"file\";s:24:\"2022/05/bg-portfolio.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bg-portfolio-300x34.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:34;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"bg-portfolio-1024x117.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bg-portfolio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bg-portfolio-768x88.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (158,58,'_wp_attached_file','2022/05/bg-produtos.jpg');
INSERT INTO `wp_postmeta` VALUES (159,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2022/05/bg-produtos.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"bg-produtos-300x34.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:34;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"bg-produtos-1024x117.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bg-produtos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bg-produtos-768x88.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (160,59,'_wp_attached_file','2022/05/bg-sobre.jpg');
INSERT INTO `wp_postmeta` VALUES (161,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2022/05/bg-sobre.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bg-sobre-300x34.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:34;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"bg-sobre-1024x117.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:117;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"bg-sobre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bg-sobre-768x88.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:88;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (162,60,'_wp_attached_file','2022/05/bg.jpg');
INSERT INTO `wp_postmeta` VALUES (163,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:380;s:4:\"file\";s:14:\"2022/05/bg.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"bg-300x81.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x278.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x208.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (164,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,9,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (166,9,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (167,61,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (168,61,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (169,11,'background_inner','57');
INSERT INTO `wp_postmeta` VALUES (170,11,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (171,62,'portifolio_item_0_portifolio_img1','40');
INSERT INTO `wp_postmeta` VALUES (172,62,'_portifolio_item_0_portifolio_img1','field_628a484e8e56b');
INSERT INTO `wp_postmeta` VALUES (173,62,'portifolio_item_0_portifolio_descricao1','Bikecraft Retro');
INSERT INTO `wp_postmeta` VALUES (174,62,'_portifolio_item_0_portifolio_descricao1','field_628a48d38e56c');
INSERT INTO `wp_postmeta` VALUES (175,62,'portifolio_item_0_portifolio_img2','42');
INSERT INTO `wp_postmeta` VALUES (176,62,'_portifolio_item_0_portifolio_img2','field_628a496c8e56d');
INSERT INTO `wp_postmeta` VALUES (177,62,'portifolio_item_0_portifolio_descricao2','Bikecraft Passeio');
INSERT INTO `wp_postmeta` VALUES (178,62,'_portifolio_item_0_portifolio_descricao2','field_628a498a8e56e');
INSERT INTO `wp_postmeta` VALUES (179,62,'portifolio_item_0_portifolio_img3','41');
INSERT INTO `wp_postmeta` VALUES (180,62,'_portifolio_item_0_portifolio_img3','field_628a49a38e56f');
INSERT INTO `wp_postmeta` VALUES (181,62,'portifolio_item_0_portifolio_descricao3','Bikecraft Esporte');
INSERT INTO `wp_postmeta` VALUES (182,62,'_portifolio_item_0_portifolio_descricao3','field_628a49b68e570');
INSERT INTO `wp_postmeta` VALUES (183,62,'portifolio_item','1');
INSERT INTO `wp_postmeta` VALUES (184,62,'_portifolio_item','field_628a47dc8e56a');
INSERT INTO `wp_postmeta` VALUES (185,62,'portifolio_call','Conheça Nosso Portifolio');
INSERT INTO `wp_postmeta` VALUES (186,62,'_portifolio_call','field_628a4a728e571');
INSERT INTO `wp_postmeta` VALUES (187,62,'background_inner','57');
INSERT INTO `wp_postmeta` VALUES (188,62,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (189,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (190,13,'background_inner','58');
INSERT INTO `wp_postmeta` VALUES (191,13,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (192,63,'background_inner','58');
INSERT INTO `wp_postmeta` VALUES (193,63,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (194,15,'background_inner','59');
INSERT INTO `wp_postmeta` VALUES (195,15,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (196,64,'about_title','Qualidade');
INSERT INTO `wp_postmeta` VALUES (197,64,'_about_title','field_6287c66653c85');
INSERT INTO `wp_postmeta` VALUES (198,64,'logo_bikecraft','29');
INSERT INTO `wp_postmeta` VALUES (199,64,'_logo_bikecraft','field_6287c6b353c86');
INSERT INTO `wp_postmeta` VALUES (200,64,'quality_list_0_quality_title','DURABILIDADE');
INSERT INTO `wp_postmeta` VALUES (201,64,'_quality_list_0_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (202,64,'quality_list_0_quality_description','Sólida como pedra, leve como o vento e resistente como o diamante, são nossos diferenciais.');
INSERT INTO `wp_postmeta` VALUES (203,64,'_quality_list_0_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (204,64,'quality_list_1_quality_title','DESIGN');
INSERT INTO `wp_postmeta` VALUES (205,64,'_quality_list_1_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (206,64,'quality_list_1_quality_description','Feitas sob medida para o melhor conforto e eficiência. Adaptamos a sua Bikcraft para o seu corpo.');
INSERT INTO `wp_postmeta` VALUES (207,64,'_quality_list_1_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (208,64,'quality_list_2_quality_title','SUSTENTABILIDADE');
INSERT INTO `wp_postmeta` VALUES (209,64,'_quality_list_2_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (210,64,'quality_list_2_quality_description','Além de ajudar a cuidar do meio ambiente, tirando carros da rua, toda a produção é sustentável.');
INSERT INTO `wp_postmeta` VALUES (211,64,'_quality_list_2_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (212,64,'quality_list','3');
INSERT INTO `wp_postmeta` VALUES (213,64,'_quality_list','field_6287c72f53c87');
INSERT INTO `wp_postmeta` VALUES (214,64,'about_call','Conheça mais a nossa história');
INSERT INTO `wp_postmeta` VALUES (215,64,'_about_call','field_6287c8b253c8a');
INSERT INTO `wp_postmeta` VALUES (216,64,'background_inner','59');
INSERT INTO `wp_postmeta` VALUES (217,64,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (218,9,'subtitle','tire suas dúvidas com a gente');
INSERT INTO `wp_postmeta` VALUES (219,9,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (220,66,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (221,66,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (222,66,'subtitle','tire suas dúvidas com a gente');
INSERT INTO `wp_postmeta` VALUES (223,66,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (224,11,'subtitle','conheça os projetos que amamos mostrar');
INSERT INTO `wp_postmeta` VALUES (225,11,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (226,67,'portifolio_item_0_portifolio_img1','40');
INSERT INTO `wp_postmeta` VALUES (227,67,'_portifolio_item_0_portifolio_img1','field_628a484e8e56b');
INSERT INTO `wp_postmeta` VALUES (228,67,'portifolio_item_0_portifolio_descricao1','Bikecraft Retro');
INSERT INTO `wp_postmeta` VALUES (229,67,'_portifolio_item_0_portifolio_descricao1','field_628a48d38e56c');
INSERT INTO `wp_postmeta` VALUES (230,67,'portifolio_item_0_portifolio_img2','42');
INSERT INTO `wp_postmeta` VALUES (231,67,'_portifolio_item_0_portifolio_img2','field_628a496c8e56d');
INSERT INTO `wp_postmeta` VALUES (232,67,'portifolio_item_0_portifolio_descricao2','Bikecraft Passeio');
INSERT INTO `wp_postmeta` VALUES (233,67,'_portifolio_item_0_portifolio_descricao2','field_628a498a8e56e');
INSERT INTO `wp_postmeta` VALUES (234,67,'portifolio_item_0_portifolio_img3','41');
INSERT INTO `wp_postmeta` VALUES (235,67,'_portifolio_item_0_portifolio_img3','field_628a49a38e56f');
INSERT INTO `wp_postmeta` VALUES (236,67,'portifolio_item_0_portifolio_descricao3','Bikecraft Esporte');
INSERT INTO `wp_postmeta` VALUES (237,67,'_portifolio_item_0_portifolio_descricao3','field_628a49b68e570');
INSERT INTO `wp_postmeta` VALUES (238,67,'portifolio_item','1');
INSERT INTO `wp_postmeta` VALUES (239,67,'_portifolio_item','field_628a47dc8e56a');
INSERT INTO `wp_postmeta` VALUES (240,67,'portifolio_call','Conheça Nosso Portifolio');
INSERT INTO `wp_postmeta` VALUES (241,67,'_portifolio_call','field_628a4a728e571');
INSERT INTO `wp_postmeta` VALUES (242,67,'background_inner','57');
INSERT INTO `wp_postmeta` VALUES (243,67,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (244,67,'subtitle','conheça os projetos que amamos mostrar');
INSERT INTO `wp_postmeta` VALUES (245,67,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (246,13,'subtitle','conheça todos os nossos produtos');
INSERT INTO `wp_postmeta` VALUES (247,13,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (248,68,'background_inner','58');
INSERT INTO `wp_postmeta` VALUES (249,68,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (250,68,'subtitle','conheça todos os nossos produtos');
INSERT INTO `wp_postmeta` VALUES (251,68,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (252,15,'subtitle','conheça mais sobre a bikcraft');
INSERT INTO `wp_postmeta` VALUES (253,15,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (254,69,'about_title','Qualidade');
INSERT INTO `wp_postmeta` VALUES (255,69,'_about_title','field_6287c66653c85');
INSERT INTO `wp_postmeta` VALUES (256,69,'logo_bikecraft','29');
INSERT INTO `wp_postmeta` VALUES (257,69,'_logo_bikecraft','field_6287c6b353c86');
INSERT INTO `wp_postmeta` VALUES (258,69,'quality_list_0_quality_title','DURABILIDADE');
INSERT INTO `wp_postmeta` VALUES (259,69,'_quality_list_0_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (260,69,'quality_list_0_quality_description','Sólida como pedra, leve como o vento e resistente como o diamante, são nossos diferenciais.');
INSERT INTO `wp_postmeta` VALUES (261,69,'_quality_list_0_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (262,69,'quality_list_1_quality_title','DESIGN');
INSERT INTO `wp_postmeta` VALUES (263,69,'_quality_list_1_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (264,69,'quality_list_1_quality_description','Feitas sob medida para o melhor conforto e eficiência. Adaptamos a sua Bikcraft para o seu corpo.');
INSERT INTO `wp_postmeta` VALUES (265,69,'_quality_list_1_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (266,69,'quality_list_2_quality_title','SUSTENTABILIDADE');
INSERT INTO `wp_postmeta` VALUES (267,69,'_quality_list_2_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (268,69,'quality_list_2_quality_description','Além de ajudar a cuidar do meio ambiente, tirando carros da rua, toda a produção é sustentável.');
INSERT INTO `wp_postmeta` VALUES (269,69,'_quality_list_2_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (270,69,'quality_list','3');
INSERT INTO `wp_postmeta` VALUES (271,69,'_quality_list','field_6287c72f53c87');
INSERT INTO `wp_postmeta` VALUES (272,69,'about_call','Conheça mais a nossa história');
INSERT INTO `wp_postmeta` VALUES (273,69,'_about_call','field_6287c8b253c8a');
INSERT INTO `wp_postmeta` VALUES (274,69,'background_inner','59');
INSERT INTO `wp_postmeta` VALUES (275,69,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (276,69,'subtitle','conheça mais sobre a bikcraft');
INSERT INTO `wp_postmeta` VALUES (277,69,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (278,71,'_wp_attached_file','2022/05/bg-1.jpg');
INSERT INTO `wp_postmeta` VALUES (279,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:380;s:4:\"file\";s:16:\"2022/05/bg-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bg-1-768x380.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-1-1400x380.jpg\";s:5:\"width\";i:1400;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-1-768x208.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (280,5,'bg_home','71');
INSERT INTO `wp_postmeta` VALUES (281,5,'_bg_home','field_628a93296b151');
INSERT INTO `wp_postmeta` VALUES (282,72,'intro_title','BICICLETAS FEITAS A MÃO');
INSERT INTO `wp_postmeta` VALUES (283,72,'_intro_title','field_628a5243b161c');
INSERT INTO `wp_postmeta` VALUES (284,72,'intro_quote','“não tenha nada em sua casa que você não considere útil ou acredita ser bonito”');
INSERT INTO `wp_postmeta` VALUES (285,72,'_intro_quote','field_628a5283b161d');
INSERT INTO `wp_postmeta` VALUES (286,72,'intro_cite','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (287,72,'_intro_cite','field_628a52a8b161e');
INSERT INTO `wp_postmeta` VALUES (288,72,'intro_call','clique aqui e veja os detalhes dos produtos');
INSERT INTO `wp_postmeta` VALUES (289,72,'_intro_call','field_628a5419df8ad');
INSERT INTO `wp_postmeta` VALUES (290,72,'bg_home','71');
INSERT INTO `wp_postmeta` VALUES (291,72,'_bg_home','field_628a93296b151');
INSERT INTO `wp_postmeta` VALUES (292,76,'_wp_attached_file','2022/05/equipe-bikcraft.jpg');
INSERT INTO `wp_postmeta` VALUES (293,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:940;s:6:\"height\";i:320;s:4:\"file\";s:27:\"2022/05/equipe-bikcraft.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"equipe-bikcraft-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"equipe-bikcraft-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"equipe-bikcraft-768x261.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (294,15,'mission','Quando iniciamos a Bikcraft queriamos apenas um produto que adoraríamos utilizar. Eramos apaixonados por pedalar e também por fazer as coisas com as nossas próprias mãos. Assim surgiu um sonho na garagem da nossa casa.\r\n\r\nConheça os nossos produtos, pergunte para os nossos clientes e descubra a maravilha de ter uma Bikcraft na sua casa.');
INSERT INTO `wp_postmeta` VALUES (295,15,'_mission','field_628a9756e5949');
INSERT INTO `wp_postmeta` VALUES (296,15,'values','<ul>\r\n 	<li>- Qualidade no processo com</li>\r\n 	<li>- Foco no cliente sem perder a</li>\r\n 	<li>- Diversão, preservando a</li>\r\n 	<li>- Natureza com sustentabilidade</li>\r\n 	<li></li>\r\n</ul>');
INSERT INTO `wp_postmeta` VALUES (297,15,'_values','field_628a976ee594a');
INSERT INTO `wp_postmeta` VALUES (298,15,'team_img','76');
INSERT INTO `wp_postmeta` VALUES (299,15,'_team_img','field_628a97b8e594b');
INSERT INTO `wp_postmeta` VALUES (300,77,'about_title','Qualidade');
INSERT INTO `wp_postmeta` VALUES (301,77,'_about_title','field_6287c66653c85');
INSERT INTO `wp_postmeta` VALUES (302,77,'logo_bikecraft','29');
INSERT INTO `wp_postmeta` VALUES (303,77,'_logo_bikecraft','field_6287c6b353c86');
INSERT INTO `wp_postmeta` VALUES (304,77,'quality_list_0_quality_title','DURABILIDADE');
INSERT INTO `wp_postmeta` VALUES (305,77,'_quality_list_0_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (306,77,'quality_list_0_quality_description','Sólida como pedra, leve como o vento e resistente como o diamante, são nossos diferenciais.');
INSERT INTO `wp_postmeta` VALUES (307,77,'_quality_list_0_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (308,77,'quality_list_1_quality_title','DESIGN');
INSERT INTO `wp_postmeta` VALUES (309,77,'_quality_list_1_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (310,77,'quality_list_1_quality_description','Feitas sob medida para o melhor conforto e eficiência. Adaptamos a sua Bikcraft para o seu corpo.');
INSERT INTO `wp_postmeta` VALUES (311,77,'_quality_list_1_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (312,77,'quality_list_2_quality_title','SUSTENTABILIDADE');
INSERT INTO `wp_postmeta` VALUES (313,77,'_quality_list_2_quality_title','field_6287c79c53c88');
INSERT INTO `wp_postmeta` VALUES (314,77,'quality_list_2_quality_description','Além de ajudar a cuidar do meio ambiente, tirando carros da rua, toda a produção é sustentável.');
INSERT INTO `wp_postmeta` VALUES (315,77,'_quality_list_2_quality_description','field_6287c7d953c89');
INSERT INTO `wp_postmeta` VALUES (316,77,'quality_list','3');
INSERT INTO `wp_postmeta` VALUES (317,77,'_quality_list','field_6287c72f53c87');
INSERT INTO `wp_postmeta` VALUES (318,77,'about_call','Conheça mais a nossa história');
INSERT INTO `wp_postmeta` VALUES (319,77,'_about_call','field_6287c8b253c8a');
INSERT INTO `wp_postmeta` VALUES (320,77,'background_inner','59');
INSERT INTO `wp_postmeta` VALUES (321,77,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (322,77,'subtitle','conheça mais sobre a bikcraft');
INSERT INTO `wp_postmeta` VALUES (323,77,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (324,77,'mission','Quando iniciamos a Bikcraft queriamos apenas um produto que adoraríamos utilizar. Eramos apaixonados por pedalar e também por fazer as coisas com as nossas próprias mãos. Assim surgiu um sonho na garagem da nossa casa.\r\n\r\nConheça os nossos produtos, pergunte para os nossos clientes e descubra a maravilha de ter uma Bikcraft na sua casa.');
INSERT INTO `wp_postmeta` VALUES (325,77,'_mission','field_628a9756e5949');
INSERT INTO `wp_postmeta` VALUES (326,77,'values','<ul>\r\n 	<li>- Qualidade no processo com</li>\r\n 	<li>- Foco no cliente sem perder a</li>\r\n 	<li>- Diversão, preservando a</li>\r\n 	<li>- Natureza com sustentabilidade</li>\r\n 	<li></li>\r\n</ul>');
INSERT INTO `wp_postmeta` VALUES (327,77,'_values','field_628a976ee594a');
INSERT INTO `wp_postmeta` VALUES (328,77,'team_img','76');
INSERT INTO `wp_postmeta` VALUES (329,77,'_team_img','field_628a97b8e594b');
INSERT INTO `wp_postmeta` VALUES (330,11,'portifolio_quote_0_quote','“Pedalar sempre foi a minha paixão, o que o pessoal da Bikcraft fez foi intensificar o meu amor por esta atividade. Recomendo à todos que amo.”');
INSERT INTO `wp_postmeta` VALUES (331,11,'_portifolio_quote_0_quote','field_628a9a85b5723');
INSERT INTO `wp_postmeta` VALUES (332,11,'portifolio_quote_0_quote_name','Barbara Moss');
INSERT INTO `wp_postmeta` VALUES (333,11,'_portifolio_quote_0_quote_name','field_628a9ae1b5724');
INSERT INTO `wp_postmeta` VALUES (334,11,'portifolio_quote_1_quote','“Nada melhor do que dar um rolê com a minha Bikcraft na orla. Essa é a minha companheira mais fiel, nunca me traiu e está sempre a minha disposição.”');
INSERT INTO `wp_postmeta` VALUES (335,11,'_portifolio_quote_1_quote','field_628a9a85b5723');
INSERT INTO `wp_postmeta` VALUES (336,11,'portifolio_quote_1_quote_name','Jhonny Bravo');
INSERT INTO `wp_postmeta` VALUES (337,11,'_portifolio_quote_1_quote_name','field_628a9ae1b5724');
INSERT INTO `wp_postmeta` VALUES (338,11,'portifolio_quote_2_quote','“Aqueles que ainda não possuem uma Bikcraft, não sabem o que estão perdendo. A precisão é absurda e a velocidade transcendental. Nunca vida nada igual.”');
INSERT INTO `wp_postmeta` VALUES (339,11,'_portifolio_quote_2_quote','field_628a9a85b5723');
INSERT INTO `wp_postmeta` VALUES (340,11,'portifolio_quote_2_quote_name','Bernardo Alado');
INSERT INTO `wp_postmeta` VALUES (341,11,'_portifolio_quote_2_quote_name','field_628a9ae1b5724');
INSERT INTO `wp_postmeta` VALUES (342,11,'portifolio_quote','3');
INSERT INTO `wp_postmeta` VALUES (343,11,'_portifolio_quote','field_628a9a6fb5722');
INSERT INTO `wp_postmeta` VALUES (344,81,'portifolio_item_0_portifolio_img1','40');
INSERT INTO `wp_postmeta` VALUES (345,81,'_portifolio_item_0_portifolio_img1','field_628a484e8e56b');
INSERT INTO `wp_postmeta` VALUES (346,81,'portifolio_item_0_portifolio_descricao1','Bikecraft Retro');
INSERT INTO `wp_postmeta` VALUES (347,81,'_portifolio_item_0_portifolio_descricao1','field_628a48d38e56c');
INSERT INTO `wp_postmeta` VALUES (348,81,'portifolio_item_0_portifolio_img2','42');
INSERT INTO `wp_postmeta` VALUES (349,81,'_portifolio_item_0_portifolio_img2','field_628a496c8e56d');
INSERT INTO `wp_postmeta` VALUES (350,81,'portifolio_item_0_portifolio_descricao2','Bikecraft Passeio');
INSERT INTO `wp_postmeta` VALUES (351,81,'_portifolio_item_0_portifolio_descricao2','field_628a498a8e56e');
INSERT INTO `wp_postmeta` VALUES (352,81,'portifolio_item_0_portifolio_img3','41');
INSERT INTO `wp_postmeta` VALUES (353,81,'_portifolio_item_0_portifolio_img3','field_628a49a38e56f');
INSERT INTO `wp_postmeta` VALUES (354,81,'portifolio_item_0_portifolio_descricao3','Bikecraft Esporte');
INSERT INTO `wp_postmeta` VALUES (355,81,'_portifolio_item_0_portifolio_descricao3','field_628a49b68e570');
INSERT INTO `wp_postmeta` VALUES (356,81,'portifolio_item','1');
INSERT INTO `wp_postmeta` VALUES (357,81,'_portifolio_item','field_628a47dc8e56a');
INSERT INTO `wp_postmeta` VALUES (358,81,'portifolio_call','Conheça Nosso Portifolio');
INSERT INTO `wp_postmeta` VALUES (359,81,'_portifolio_call','field_628a4a728e571');
INSERT INTO `wp_postmeta` VALUES (360,81,'background_inner','57');
INSERT INTO `wp_postmeta` VALUES (361,81,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (362,81,'subtitle','conheça os projetos que amamos mostrar');
INSERT INTO `wp_postmeta` VALUES (363,81,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (364,81,'portifolio_quote_0_quote','“Pedalar sempre foi a minha paixão, o que o pessoal da Bikcraft fez foi intensificar o meu amor por esta atividade. Recomendo à todos que amo.”');
INSERT INTO `wp_postmeta` VALUES (365,81,'_portifolio_quote_0_quote','field_628a9a85b5723');
INSERT INTO `wp_postmeta` VALUES (366,81,'portifolio_quote_0_quote_name','Barbara Moss');
INSERT INTO `wp_postmeta` VALUES (367,81,'_portifolio_quote_0_quote_name','field_628a9ae1b5724');
INSERT INTO `wp_postmeta` VALUES (368,81,'portifolio_quote_1_quote','“Nada melhor do que dar um rolê com a minha Bikcraft na orla. Essa é a minha companheira mais fiel, nunca me traiu e está sempre a minha disposição.”');
INSERT INTO `wp_postmeta` VALUES (369,81,'_portifolio_quote_1_quote','field_628a9a85b5723');
INSERT INTO `wp_postmeta` VALUES (370,81,'portifolio_quote_1_quote_name','Jhonny Bravo');
INSERT INTO `wp_postmeta` VALUES (371,81,'_portifolio_quote_1_quote_name','field_628a9ae1b5724');
INSERT INTO `wp_postmeta` VALUES (372,81,'portifolio_quote_2_quote','“Aqueles que ainda não possuem uma Bikcraft, não sabem o que estão perdendo. A precisão é absurda e a velocidade transcendental. Nunca vida nada igual.”');
INSERT INTO `wp_postmeta` VALUES (373,81,'_portifolio_quote_2_quote','field_628a9a85b5723');
INSERT INTO `wp_postmeta` VALUES (374,81,'portifolio_quote_2_quote_name','Bernardo Alado');
INSERT INTO `wp_postmeta` VALUES (375,81,'_portifolio_quote_2_quote_name','field_628a9ae1b5724');
INSERT INTO `wp_postmeta` VALUES (376,81,'portifolio_quote','3');
INSERT INTO `wp_postmeta` VALUES (377,81,'_portifolio_quote','field_628a9a6fb5722');
INSERT INTO `wp_postmeta` VALUES (378,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (379,82,'_edit_lock','1653311775:1');
INSERT INTO `wp_postmeta` VALUES (380,96,'_wp_attached_file','2022/05/endereco-bikcraft.jpg');
INSERT INTO `wp_postmeta` VALUES (381,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:940;s:6:\"height\";i:280;s:4:\"file\";s:29:\"2022/05/endereco-bikcraft.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"endereco-bikcraft-768x280.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"endereco-bikcraft-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"endereco-bikcraft-768x229.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (382,97,'_wp_attached_file','2022/05/facebook.png');
INSERT INTO `wp_postmeta` VALUES (383,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2022/05/facebook.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (384,98,'_wp_attached_file','2022/05/instagram.png');
INSERT INTO `wp_postmeta` VALUES (385,98,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2022/05/instagram.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (386,99,'_wp_attached_file','2022/05/twitter.png');
INSERT INTO `wp_postmeta` VALUES (387,99,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2022/05/twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (388,9,'address1_contact','Rua Ali Perto - Botafogo');
INSERT INTO `wp_postmeta` VALUES (389,9,'_address1_contact','field_628b7c775d8ab');
INSERT INTO `wp_postmeta` VALUES (390,9,'address2_contact','Rio de Janeiro - RJ - Brasil');
INSERT INTO `wp_postmeta` VALUES (391,9,'_address2_contact','field_628b7c8b5d8ac');
INSERT INTO `wp_postmeta` VALUES (392,9,'phone_contact','+55 21 9999-9999');
INSERT INTO `wp_postmeta` VALUES (393,9,'_phone_contact','field_628b7bfb5d8a9');
INSERT INTO `wp_postmeta` VALUES (394,9,'e-mail_contact','orcamento@bikcraft.com');
INSERT INTO `wp_postmeta` VALUES (395,9,'_e-mail_contact','field_628b7c6b5d8aa');
INSERT INTO `wp_postmeta` VALUES (396,9,'map','https://www.google.com.br/maps/place/Botafogo,+Rio+de+Janeiro+-+RJ/@-22.9511872,-43.1944118,15z/data=!3m1!4b1!4m5!3m4!1s0x997fe5efee9a25:0x3c77ca60168b5ea!8m2!3d-22.9511931!4d-43.1807842');
INSERT INTO `wp_postmeta` VALUES (397,9,'_map','field_628b7e758e222');
INSERT INTO `wp_postmeta` VALUES (398,9,'imagem_mapa','96');
INSERT INTO `wp_postmeta` VALUES (399,9,'_imagem_mapa','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (400,9,'alt_map','Botafogo - RJ');
INSERT INTO `wp_postmeta` VALUES (401,9,'_alt_map','field_628b7fc48e224');
INSERT INTO `wp_postmeta` VALUES (402,9,'social_0_social_link','www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (403,9,'_social_0_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (404,9,'social_0_social_image','97');
INSERT INTO `wp_postmeta` VALUES (405,9,'_social_0_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (406,9,'social_0_social_alt','Facebook');
INSERT INTO `wp_postmeta` VALUES (407,9,'_social_0_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (408,9,'social_1_social_link','www.instagram.com');
INSERT INTO `wp_postmeta` VALUES (409,9,'_social_1_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (410,9,'social_1_social_image','98');
INSERT INTO `wp_postmeta` VALUES (411,9,'_social_1_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (412,9,'social_1_social_alt','Instagram');
INSERT INTO `wp_postmeta` VALUES (413,9,'_social_1_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (414,9,'social_2_social_link','www.twitter.com');
INSERT INTO `wp_postmeta` VALUES (415,9,'_social_2_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (416,9,'social_2_social_image','99');
INSERT INTO `wp_postmeta` VALUES (417,9,'_social_2_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (418,9,'social_2_social_alt','Twitter');
INSERT INTO `wp_postmeta` VALUES (419,9,'_social_2_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (420,9,'social','3');
INSERT INTO `wp_postmeta` VALUES (421,9,'_social','field_628b7cee5d8ad');
INSERT INTO `wp_postmeta` VALUES (422,100,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (423,100,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (424,100,'subtitle','tire suas dúvidas com a gente');
INSERT INTO `wp_postmeta` VALUES (425,100,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (426,100,'address1_contact','Rua Ali Perto - Botafogo');
INSERT INTO `wp_postmeta` VALUES (427,100,'_address1_contact','field_628b7c775d8ab');
INSERT INTO `wp_postmeta` VALUES (428,100,'address2_contact','Rio de Janeiro - RJ - Brasil');
INSERT INTO `wp_postmeta` VALUES (429,100,'_address2_contact','field_628b7c8b5d8ac');
INSERT INTO `wp_postmeta` VALUES (430,100,'phone_contact','+55 21 9999-9999');
INSERT INTO `wp_postmeta` VALUES (431,100,'_phone_contact','field_628b7bfb5d8a9');
INSERT INTO `wp_postmeta` VALUES (432,100,'e-mail_contact','orcamento@bikcraft.com');
INSERT INTO `wp_postmeta` VALUES (433,100,'_e-mail_contact','field_628b7c6b5d8aa');
INSERT INTO `wp_postmeta` VALUES (434,100,'map','https://www.google.com.br/maps/place/Botafogo,+Rio+de+Janeiro+-+RJ/@-22.9511872,-43.1944118,15z/data=!3m1!4b1!4m5!3m4!1s0x997fe5efee9a25:0x3c77ca60168b5ea!8m2!3d-22.9511931!4d-43.1807842');
INSERT INTO `wp_postmeta` VALUES (435,100,'_map','field_628b7e758e222');
INSERT INTO `wp_postmeta` VALUES (436,100,'imagem_mapa','96');
INSERT INTO `wp_postmeta` VALUES (437,100,'_imagem_mapa','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (438,100,'alt_map','Botafogo - RJ');
INSERT INTO `wp_postmeta` VALUES (439,100,'_alt_map','field_628b7fc48e224');
INSERT INTO `wp_postmeta` VALUES (440,100,'social_0_social_link','www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (441,100,'_social_0_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (442,100,'social_0_social_image','97');
INSERT INTO `wp_postmeta` VALUES (443,100,'_social_0_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (444,100,'social_0_social_alt','Facebook');
INSERT INTO `wp_postmeta` VALUES (445,100,'_social_0_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (446,100,'social_1_social_link','www.instagram.com');
INSERT INTO `wp_postmeta` VALUES (447,100,'_social_1_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (448,100,'social_1_social_image','98');
INSERT INTO `wp_postmeta` VALUES (449,100,'_social_1_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (450,100,'social_1_social_alt','Instagram');
INSERT INTO `wp_postmeta` VALUES (451,100,'_social_1_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (452,100,'social_2_social_link','www.twitter.com');
INSERT INTO `wp_postmeta` VALUES (453,100,'_social_2_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (454,100,'social_2_social_image','99');
INSERT INTO `wp_postmeta` VALUES (455,100,'_social_2_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (456,100,'social_2_social_alt','Twitter');
INSERT INTO `wp_postmeta` VALUES (457,100,'_social_2_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (458,100,'social','3');
INSERT INTO `wp_postmeta` VALUES (459,100,'_social','field_628b7cee5d8ad');
INSERT INTO `wp_postmeta` VALUES (460,9,'map_image','96');
INSERT INTO `wp_postmeta` VALUES (461,9,'_map_image','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (462,101,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (463,101,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (464,101,'subtitle','tire suas dúvidas com a gente');
INSERT INTO `wp_postmeta` VALUES (465,101,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (466,101,'address1_contact','Rua Ali Perto - Botafogo');
INSERT INTO `wp_postmeta` VALUES (467,101,'_address1_contact','field_628b7c775d8ab');
INSERT INTO `wp_postmeta` VALUES (468,101,'address2_contact','Rio de Janeiro - RJ - Brasil');
INSERT INTO `wp_postmeta` VALUES (469,101,'_address2_contact','field_628b7c8b5d8ac');
INSERT INTO `wp_postmeta` VALUES (470,101,'phone_contact','+55 21 9999-9999');
INSERT INTO `wp_postmeta` VALUES (471,101,'_phone_contact','field_628b7bfb5d8a9');
INSERT INTO `wp_postmeta` VALUES (472,101,'e-mail_contact','orcamento@bikcraft.com');
INSERT INTO `wp_postmeta` VALUES (473,101,'_e-mail_contact','field_628b7c6b5d8aa');
INSERT INTO `wp_postmeta` VALUES (474,101,'map','https://www.google.com.br/maps/place/Botafogo,+Rio+de+Janeiro+-+RJ/@-22.9511872,-43.1944118,15z/data=!3m1!4b1!4m5!3m4!1s0x997fe5efee9a25:0x3c77ca60168b5ea!8m2!3d-22.9511931!4d-43.1807842');
INSERT INTO `wp_postmeta` VALUES (475,101,'_map','field_628b7e758e222');
INSERT INTO `wp_postmeta` VALUES (476,101,'imagem_mapa','96');
INSERT INTO `wp_postmeta` VALUES (477,101,'_imagem_mapa','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (478,101,'alt_map','Botafogo - RJ');
INSERT INTO `wp_postmeta` VALUES (479,101,'_alt_map','field_628b7fc48e224');
INSERT INTO `wp_postmeta` VALUES (480,101,'social_0_social_link','www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (481,101,'_social_0_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (482,101,'social_0_social_image','97');
INSERT INTO `wp_postmeta` VALUES (483,101,'_social_0_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (484,101,'social_0_social_alt','Facebook');
INSERT INTO `wp_postmeta` VALUES (485,101,'_social_0_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (486,101,'social_1_social_link','www.instagram.com');
INSERT INTO `wp_postmeta` VALUES (487,101,'_social_1_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (488,101,'social_1_social_image','98');
INSERT INTO `wp_postmeta` VALUES (489,101,'_social_1_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (490,101,'social_1_social_alt','Instagram');
INSERT INTO `wp_postmeta` VALUES (491,101,'_social_1_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (492,101,'social_2_social_link','www.twitter.com');
INSERT INTO `wp_postmeta` VALUES (493,101,'_social_2_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (494,101,'social_2_social_image','99');
INSERT INTO `wp_postmeta` VALUES (495,101,'_social_2_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (496,101,'social_2_social_alt','Twitter');
INSERT INTO `wp_postmeta` VALUES (497,101,'_social_2_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (498,101,'social','3');
INSERT INTO `wp_postmeta` VALUES (499,101,'_social','field_628b7cee5d8ad');
INSERT INTO `wp_postmeta` VALUES (500,101,'map_image','96');
INSERT INTO `wp_postmeta` VALUES (501,101,'_map_image','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (502,106,'_wp_attached_file','2022/05/bg-footer-1.jpg');
INSERT INTO `wp_postmeta` VALUES (503,106,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:220;s:4:\"file\";s:23:\"2022/05/bg-footer-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bg-footer-1-768x220.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bg-footer-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bg-footer-1-768x121.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:121;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (504,9,'background_footer','106');
INSERT INTO `wp_postmeta` VALUES (505,9,'_background_footer','field_628b887427095');
INSERT INTO `wp_postmeta` VALUES (506,9,'quote_footer','“o verdadeiro segredo da felicidade está em ter um genuíno interesse por todos os detalhes da vida cotidiana.”');
INSERT INTO `wp_postmeta` VALUES (507,9,'_quote_footer','field_628b88b527096');
INSERT INTO `wp_postmeta` VALUES (508,9,'cite_footer','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (509,9,'_cite_footer','field_628b88ce27097');
INSERT INTO `wp_postmeta` VALUES (510,107,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (511,107,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (512,107,'subtitle','tire suas dúvidas com a gente');
INSERT INTO `wp_postmeta` VALUES (513,107,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (514,107,'address1_contact','Rua Ali Perto - Botafogo');
INSERT INTO `wp_postmeta` VALUES (515,107,'_address1_contact','field_628b7c775d8ab');
INSERT INTO `wp_postmeta` VALUES (516,107,'address2_contact','Rio de Janeiro - RJ - Brasil');
INSERT INTO `wp_postmeta` VALUES (517,107,'_address2_contact','field_628b7c8b5d8ac');
INSERT INTO `wp_postmeta` VALUES (518,107,'phone_contact','+55 21 9999-9999');
INSERT INTO `wp_postmeta` VALUES (519,107,'_phone_contact','field_628b7bfb5d8a9');
INSERT INTO `wp_postmeta` VALUES (520,107,'e-mail_contact','orcamento@bikcraft.com');
INSERT INTO `wp_postmeta` VALUES (521,107,'_e-mail_contact','field_628b7c6b5d8aa');
INSERT INTO `wp_postmeta` VALUES (522,107,'map','https://www.google.com.br/maps/place/Botafogo,+Rio+de+Janeiro+-+RJ/@-22.9511872,-43.1944118,15z/data=!3m1!4b1!4m5!3m4!1s0x997fe5efee9a25:0x3c77ca60168b5ea!8m2!3d-22.9511931!4d-43.1807842');
INSERT INTO `wp_postmeta` VALUES (523,107,'_map','field_628b7e758e222');
INSERT INTO `wp_postmeta` VALUES (524,107,'imagem_mapa','96');
INSERT INTO `wp_postmeta` VALUES (525,107,'_imagem_mapa','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (526,107,'alt_map','Botafogo - RJ');
INSERT INTO `wp_postmeta` VALUES (527,107,'_alt_map','field_628b7fc48e224');
INSERT INTO `wp_postmeta` VALUES (528,107,'social_0_social_link','www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (529,107,'_social_0_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (530,107,'social_0_social_image','97');
INSERT INTO `wp_postmeta` VALUES (531,107,'_social_0_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (532,107,'social_0_social_alt','Facebook');
INSERT INTO `wp_postmeta` VALUES (533,107,'_social_0_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (534,107,'social_1_social_link','www.instagram.com');
INSERT INTO `wp_postmeta` VALUES (535,107,'_social_1_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (536,107,'social_1_social_image','98');
INSERT INTO `wp_postmeta` VALUES (537,107,'_social_1_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (538,107,'social_1_social_alt','Instagram');
INSERT INTO `wp_postmeta` VALUES (539,107,'_social_1_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (540,107,'social_2_social_link','www.twitter.com');
INSERT INTO `wp_postmeta` VALUES (541,107,'_social_2_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (542,107,'social_2_social_image','99');
INSERT INTO `wp_postmeta` VALUES (543,107,'_social_2_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (544,107,'social_2_social_alt','Twitter');
INSERT INTO `wp_postmeta` VALUES (545,107,'_social_2_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (546,107,'social','3');
INSERT INTO `wp_postmeta` VALUES (547,107,'_social','field_628b7cee5d8ad');
INSERT INTO `wp_postmeta` VALUES (548,107,'map_image','96');
INSERT INTO `wp_postmeta` VALUES (549,107,'_map_image','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (550,107,'background_footer','106');
INSERT INTO `wp_postmeta` VALUES (551,107,'_background_footer','field_628b887427095');
INSERT INTO `wp_postmeta` VALUES (552,107,'quote_footer','“o verdadeiro segredo da felicidade está em ter um genuíno interesse por todos os detalhes da vida cotidiana.”');
INSERT INTO `wp_postmeta` VALUES (553,107,'_quote_footer','field_628b88b527096');
INSERT INTO `wp_postmeta` VALUES (554,107,'cite_footer','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (555,107,'_cite_footer','field_628b88ce27097');
INSERT INTO `wp_postmeta` VALUES (556,9,'resume_history','Quando iniciamos a Bikcraft queriamos apenas um produto que adoraríamos utilizar. Eramos apaixonados por pedalar e também por fazer as coisas com as nossas próprias mãos. Assim surgiu um sonho na garagem da nossa casa.');
INSERT INTO `wp_postmeta` VALUES (557,9,'_resume_history','field_628b898bc9d49');
INSERT INTO `wp_postmeta` VALUES (558,9,'_','field_628b89a6c9d4a');
INSERT INTO `wp_postmeta` VALUES (559,110,'background_inner','54');
INSERT INTO `wp_postmeta` VALUES (560,110,'_background_inner','field_628a85016dca9');
INSERT INTO `wp_postmeta` VALUES (561,110,'subtitle','tire suas dúvidas com a gente');
INSERT INTO `wp_postmeta` VALUES (562,110,'_subtitle','field_628a86f7af58e');
INSERT INTO `wp_postmeta` VALUES (563,110,'address1_contact','Rua Ali Perto - Botafogo');
INSERT INTO `wp_postmeta` VALUES (564,110,'_address1_contact','field_628b7c775d8ab');
INSERT INTO `wp_postmeta` VALUES (565,110,'address2_contact','Rio de Janeiro - RJ - Brasil');
INSERT INTO `wp_postmeta` VALUES (566,110,'_address2_contact','field_628b7c8b5d8ac');
INSERT INTO `wp_postmeta` VALUES (567,110,'phone_contact','+55 21 9999-9999');
INSERT INTO `wp_postmeta` VALUES (568,110,'_phone_contact','field_628b7bfb5d8a9');
INSERT INTO `wp_postmeta` VALUES (569,110,'e-mail_contact','orcamento@bikcraft.com');
INSERT INTO `wp_postmeta` VALUES (570,110,'_e-mail_contact','field_628b7c6b5d8aa');
INSERT INTO `wp_postmeta` VALUES (571,110,'map','https://www.google.com.br/maps/place/Botafogo,+Rio+de+Janeiro+-+RJ/@-22.9511872,-43.1944118,15z/data=!3m1!4b1!4m5!3m4!1s0x997fe5efee9a25:0x3c77ca60168b5ea!8m2!3d-22.9511931!4d-43.1807842');
INSERT INTO `wp_postmeta` VALUES (572,110,'_map','field_628b7e758e222');
INSERT INTO `wp_postmeta` VALUES (573,110,'imagem_mapa','96');
INSERT INTO `wp_postmeta` VALUES (574,110,'_imagem_mapa','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (575,110,'alt_map','Botafogo - RJ');
INSERT INTO `wp_postmeta` VALUES (576,110,'_alt_map','field_628b7fc48e224');
INSERT INTO `wp_postmeta` VALUES (577,110,'social_0_social_link','www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (578,110,'_social_0_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (579,110,'social_0_social_image','97');
INSERT INTO `wp_postmeta` VALUES (580,110,'_social_0_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (581,110,'social_0_social_alt','Facebook');
INSERT INTO `wp_postmeta` VALUES (582,110,'_social_0_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (583,110,'social_1_social_link','www.instagram.com');
INSERT INTO `wp_postmeta` VALUES (584,110,'_social_1_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (585,110,'social_1_social_image','98');
INSERT INTO `wp_postmeta` VALUES (586,110,'_social_1_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (587,110,'social_1_social_alt','Instagram');
INSERT INTO `wp_postmeta` VALUES (588,110,'_social_1_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (589,110,'social_2_social_link','www.twitter.com');
INSERT INTO `wp_postmeta` VALUES (590,110,'_social_2_social_link','field_628b7d565d8ae');
INSERT INTO `wp_postmeta` VALUES (591,110,'social_2_social_image','99');
INSERT INTO `wp_postmeta` VALUES (592,110,'_social_2_social_image','field_628b7d7a5d8af');
INSERT INTO `wp_postmeta` VALUES (593,110,'social_2_social_alt','Twitter');
INSERT INTO `wp_postmeta` VALUES (594,110,'_social_2_social_alt','field_628b7da55d8b0');
INSERT INTO `wp_postmeta` VALUES (595,110,'social','3');
INSERT INTO `wp_postmeta` VALUES (596,110,'_social','field_628b7cee5d8ad');
INSERT INTO `wp_postmeta` VALUES (597,110,'map_image','96');
INSERT INTO `wp_postmeta` VALUES (598,110,'_map_image','field_628b7eae8e223');
INSERT INTO `wp_postmeta` VALUES (599,110,'background_footer','106');
INSERT INTO `wp_postmeta` VALUES (600,110,'_background_footer','field_628b887427095');
INSERT INTO `wp_postmeta` VALUES (601,110,'quote_footer','“o verdadeiro segredo da felicidade está em ter um genuíno interesse por todos os detalhes da vida cotidiana.”');
INSERT INTO `wp_postmeta` VALUES (602,110,'_quote_footer','field_628b88b527096');
INSERT INTO `wp_postmeta` VALUES (603,110,'cite_footer','WILLIAM MORRIS');
INSERT INTO `wp_postmeta` VALUES (604,110,'_cite_footer','field_628b88ce27097');
INSERT INTO `wp_postmeta` VALUES (605,110,'resume_history','Quando iniciamos a Bikcraft queriamos apenas um produto que adoraríamos utilizar. Eramos apaixonados por pedalar e também por fazer as coisas com as nossas próprias mãos. Assim surgiu um sonho na garagem da nossa casa.');
INSERT INTO `wp_postmeta` VALUES (606,110,'_resume_history','field_628b898bc9d49');
INSERT INTO `wp_postmeta` VALUES (607,111,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (608,111,'_edit_lock','1653352051:1');
INSERT INTO `wp_postmeta` VALUES (609,112,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (610,112,'_edit_lock','1653352032:1');
INSERT INTO `wp_postmeta` VALUES (611,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (612,113,'_edit_lock','1653352016:1');
INSERT INTO `wp_postmeta` VALUES (613,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (614,114,'_edit_lock','1653351980:1');
INSERT INTO `wp_postmeta` VALUES (615,118,'_wp_attached_file','2022/05/bikcraft-passeio-1.jpg');
INSERT INTO `wp_postmeta` VALUES (616,118,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:280;s:4:\"file\";s:30:\"2022/05/bikcraft-passeio-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"bikcraft-passeio-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (617,119,'_wp_attached_file','2022/05/bikcraft-passeio-2.jpg');
INSERT INTO `wp_postmeta` VALUES (618,119,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:460;s:6:\"height\";i:280;s:4:\"file\";s:30:\"2022/05/bikcraft-passeio-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"bikcraft-passeio-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (619,120,'_wp_attached_file','2022/05/passeio.png');
INSERT INTO `wp_postmeta` VALUES (620,120,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:140;s:4:\"file\";s:19:\"2022/05/passeio.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"passeio-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (621,111,'main_image','118');
INSERT INTO `wp_postmeta` VALUES (622,111,'_main_image','field_628c195cf0946');
INSERT INTO `wp_postmeta` VALUES (623,111,'main_icon','120');
INSERT INTO `wp_postmeta` VALUES (624,111,'_main_icon','field_628c19a0f0947');
INSERT INTO `wp_postmeta` VALUES (625,111,'main_secondary_image','119');
INSERT INTO `wp_postmeta` VALUES (626,111,'_main_secondary_image','field_628c1a26f0948');
INSERT INTO `wp_postmeta` VALUES (627,121,'_wp_attached_file','2022/05/bikcraft-esporte-1.jpg');
INSERT INTO `wp_postmeta` VALUES (628,121,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:280;s:4:\"file\";s:30:\"2022/05/bikcraft-esporte-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"bikcraft-esporte-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (629,122,'_wp_attached_file','2022/05/bikcraft-esporte-2.jpg');
INSERT INTO `wp_postmeta` VALUES (630,122,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:460;s:6:\"height\";i:280;s:4:\"file\";s:30:\"2022/05/bikcraft-esporte-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"bikcraft-esporte-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (631,123,'_wp_attached_file','2022/05/esporte.png');
INSERT INTO `wp_postmeta` VALUES (632,123,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:140;s:4:\"file\";s:19:\"2022/05/esporte.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"esporte-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (633,112,'main_image','121');
INSERT INTO `wp_postmeta` VALUES (634,112,'_main_image','field_628c195cf0946');
INSERT INTO `wp_postmeta` VALUES (635,112,'main_icon','123');
INSERT INTO `wp_postmeta` VALUES (636,112,'_main_icon','field_628c19a0f0947');
INSERT INTO `wp_postmeta` VALUES (637,112,'main_secondary_image','122');
INSERT INTO `wp_postmeta` VALUES (638,112,'_main_secondary_image','field_628c1a26f0948');
INSERT INTO `wp_postmeta` VALUES (639,124,'_wp_attached_file','2022/05/bikcraft-retro-1.jpg');
INSERT INTO `wp_postmeta` VALUES (640,124,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:280;s:4:\"file\";s:28:\"2022/05/bikcraft-retro-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"bikcraft-retro-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (641,125,'_wp_attached_file','2022/05/bikcraft-retro-2.jpg');
INSERT INTO `wp_postmeta` VALUES (642,125,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:460;s:6:\"height\";i:280;s:4:\"file\";s:28:\"2022/05/bikcraft-retro-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"bikcraft-retro-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (643,126,'_wp_attached_file','2022/05/retro.png');
INSERT INTO `wp_postmeta` VALUES (644,126,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:140;s:4:\"file\";s:17:\"2022/05/retro.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"retro-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (645,113,'main_image','124');
INSERT INTO `wp_postmeta` VALUES (646,113,'_main_image','field_628c195cf0946');
INSERT INTO `wp_postmeta` VALUES (647,113,'main_icon','126');
INSERT INTO `wp_postmeta` VALUES (648,113,'_main_icon','field_628c19a0f0947');
INSERT INTO `wp_postmeta` VALUES (649,113,'main_secondary_image','125');
INSERT INTO `wp_postmeta` VALUES (650,113,'_main_secondary_image','field_628c1a26f0948');
INSERT INTO `wp_postmeta` VALUES (651,113,'product_resume','O passado volta para lembrarmos o que devemos fazer no futuro.');
INSERT INTO `wp_postmeta` VALUES (652,113,'_product_resume','field_628c26a089d90');
INSERT INTO `wp_postmeta` VALUES (653,112,'product_resume','Mais rápida do que Forrest Gump, ninguém vai pegar você.');
INSERT INTO `wp_postmeta` VALUES (654,112,'_product_resume','field_628c26a089d90');
INSERT INTO `wp_postmeta` VALUES (655,111,'product_resume','Muito melhor do que passear pela orla a vidros fechados.');
INSERT INTO `wp_postmeta` VALUES (656,111,'_product_resume','field_628c26a089d90');
INSERT INTO `wp_postmeta` VALUES (657,128,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (658,128,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (659,128,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (660,128,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (661,128,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (662,128,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (663,128,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (664,128,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (665,128,'_menu_item_orphaned','1653353490');
INSERT INTO `wp_postmeta` VALUES (666,129,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (667,129,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (668,129,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (669,129,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (670,129,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (671,129,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (672,129,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (673,129,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (675,130,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (676,130,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (677,130,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (678,130,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (679,130,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (680,130,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (681,130,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (682,130,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (684,131,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (685,131,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (686,131,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (687,131,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (688,131,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (689,131,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (690,131,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (691,131,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (693,132,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (694,132,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (695,132,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (696,132,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (697,132,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (698,132,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (699,132,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (700,132,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-05-17 16:42:48','2022-05-17 16:42:48','<!-- wp:heading -->\n<h2>Welcome to WordPress. </h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>This is your first post. Edit or delete it, then start writing!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2022-05-18 00:15:17','2022-05-18 00:15:17','',0,'http://bikecraft-v1.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-05-17 16:42:48','2022-05-17 16:42:48','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://bikecraft-v1.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2022-05-18 00:26:25','2022-05-18 00:26:25','',0,'http://bikecraft-v1.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-05-17 16:42:48','2022-05-17 16:42:48','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://bikecraft-v1.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2022-05-18 00:26:31','2022-05-18 00:26:31','',0,'http://bikecraft-v1.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-05-17 23:46:15','2022-05-17 23:46:15','','Home','','publish','closed','closed','','home','','','2022-05-22 19:49:11','2022-05-22 19:49:11','',0,'http://bikecraft-v1.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-05-17 23:44:39','2022-05-17 23:44:39','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-bikcraft-copia','','','2022-05-17 23:44:39','2022-05-17 23:44:39','',0,'http://bikecraft-v1.local/wp-global-styles-bikcraft-copia/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-05-17 23:46:15','2022-05-17 23:46:15','','Home','','inherit','closed','closed','','5-revision-v1','','','2022-05-17 23:46:15','2022-05-17 23:46:15','',5,'http://bikecraft-v1.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-05-17 23:47:42','2022-05-17 23:47:42','','Contato','','publish','closed','closed','','contato','','','2022-05-23 13:19:03','2022-05-23 13:19:03','',0,'http://bikecraft-v1.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-05-17 23:47:42','2022-05-17 23:47:42','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-17 23:47:42','2022-05-17 23:47:42','',9,'http://bikecraft-v1.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-05-17 23:48:01','2022-05-17 23:48:01','','Portifolio','','publish','closed','closed','','portifolio','','','2022-05-22 20:22:43','2022-05-22 20:22:43','',0,'http://bikecraft-v1.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-05-17 23:48:01','2022-05-17 23:48:01','','Portifolio','','inherit','closed','closed','','11-revision-v1','','','2022-05-17 23:48:01','2022-05-17 23:48:01','',11,'http://bikecraft-v1.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2022-05-17 23:48:18','2022-05-17 23:48:18','','Produtos','','publish','closed','closed','','produtos','','','2022-05-22 18:57:05','2022-05-22 18:57:05','',0,'http://bikecraft-v1.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-05-17 23:48:18','2022-05-17 23:48:18','','Produtos','','inherit','closed','closed','','13-revision-v1','','','2022-05-17 23:48:18','2022-05-17 23:48:18','',13,'http://bikecraft-v1.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-05-17 23:48:30','2022-05-17 23:48:30','','Sobre','','publish','closed','closed','','sobre','','','2022-05-22 20:11:22','2022-05-22 20:11:22','',0,'http://bikecraft-v1.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-05-17 23:48:30','2022-05-17 23:48:30','','Sobre','','inherit','closed','closed','','15-revision-v1','','','2022-05-17 23:48:30','2022-05-17 23:48:30','',15,'http://bikecraft-v1.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-05-18 00:14:48','2022-05-18 00:14:48','<!-- wp:heading -->\n<h2>Welcome to WordPress. </h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>This is your first post. Edit or delete it, then start writing!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-autosave-v1','','','2022-05-18 00:14:48','2022-05-18 00:14:48','',1,'http://bikecraft-v1.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-05-18 00:14:52','2022-05-18 00:14:52','<!-- wp:heading -->\n<h2>Welcome to WordPress. </h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>This is your first post. Edit or delete it, then start writing!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2022-05-18 00:14:52','2022-05-18 00:14:52','',1,'http://bikecraft-v1.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-05-18 00:26:25','2022-05-18 00:26:25','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://bikecraft-v1.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2022-05-18 00:26:25','2022-05-18 00:26:25','',2,'http://bikecraft-v1.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-05-18 00:26:31','2022-05-18 00:26:31','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://bikecraft-v1.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-05-18 00:26:31','2022-05-18 00:26:31','',3,'http://bikecraft-v1.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-sobre.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Sobre','sobre','publish','closed','closed','','group_6287c6418b0ca','','','2022-05-22 20:08:01','2022-05-22 20:08:01','',0,'http://bikecraft-v1.local/?post_type=acf-field-group&#038;p=22',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Titulo da Pagina Sobre','about_title','publish','closed','closed','','field_6287c66653c85','','','2022-05-20 17:01:20','2022-05-20 17:01:20','',22,'http://bikecraft-v1.local/?post_type=acf-field&p=23',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:32:\"Logo para a sessão de qualidade\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Logomarca','logo_bikecraft','publish','closed','closed','','field_6287c6b353c86','','','2022-05-20 17:01:20','2022-05-20 17:01:20','',22,'http://bikecraft-v1.local/?post_type=acf-field&p=24',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:9:\"Adicionar\";}','Qualidade','quality_list','publish','closed','closed','','field_6287c72f53c87','','','2022-05-20 17:01:20','2022-05-20 17:01:20','',22,'http://bikecraft-v1.local/?post_type=acf-field&p=25',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Titulo Qualidade','quality_title','publish','closed','closed','','field_6287c79c53c88','','','2022-05-20 17:01:20','2022-05-20 17:01:20','',25,'http://bikecraft-v1.local/?post_type=acf-field&p=26',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:120;s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}','Descriçao da Qualidade','quality_description','publish','closed','closed','','field_6287c7d953c89','','','2022-05-20 17:01:20','2022-05-20 17:01:20','',25,'http://bikecraft-v1.local/?post_type=acf-field&p=27',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-05-20 17:01:20','2022-05-20 17:01:20','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Chamada','about_call','publish','closed','closed','','field_6287c8b253c8a','','','2022-05-20 17:01:20','2022-05-20 17:01:20','',22,'http://bikecraft-v1.local/?post_type=acf-field&p=28',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-05-20 17:06:38','2022-05-20 17:06:38','','bikcraft-qualidade','','inherit','open','closed','','bikcraft-qualidade','','','2022-05-20 17:06:38','2022-05-20 17:06:38','',15,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-qualidade.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-05-20 17:10:39','2022-05-20 17:10:39','','Sobre','','inherit','closed','closed','','15-revision-v1','','','2022-05-20 17:10:39','2022-05-20 17:10:39','',15,'http://bikecraft-v1.local/?p=30',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"page-portfolio.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Portifolio','portifolio','publish','closed','closed','','group_628a47d4caf90','','','2022-05-22 20:20:46','2022-05-22 20:20:46','',0,'http://bikecraft-v1.local/?post_type=acf-field-group&#038;p=31',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:28:\"Adicionar Item ao Portifolio\";}','Item do Portifolio','portifolio_item','publish','closed','closed','','field_628a47dc8e56a','','','2022-05-22 14:38:50','2022-05-22 14:38:50','',31,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=32',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem Portifolio 1','portifolio_img1','publish','closed','closed','','field_628a484e8e56b','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',32,'http://bikecraft-v1.local/?post_type=acf-field&p=33',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descrição da Imagem','portifolio_descricao1','publish','closed','closed','','field_628a48d38e56c','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',32,'http://bikecraft-v1.local/?post_type=acf-field&p=34',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem Portifolio 2','portifolio_img2','publish','closed','closed','','field_628a496c8e56d','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',32,'http://bikecraft-v1.local/?post_type=acf-field&p=35',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descrição da Imagem','portifolio_descricao2','publish','closed','closed','','field_628a498a8e56e','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',32,'http://bikecraft-v1.local/?post_type=acf-field&p=36',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem Portifolio 3','portifolio_img3','publish','closed','closed','','field_628a49a38e56f','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',32,'http://bikecraft-v1.local/?post_type=acf-field&p=37',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Descrição da Imagem','portifolio_descricao3','publish','closed','closed','','field_628a49b68e570','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',32,'http://bikecraft-v1.local/?post_type=acf-field&p=38',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-05-22 14:37:46','2022-05-22 14:37:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Chamada Portifolio','portifolio_call','publish','closed','closed','','field_628a4a728e571','','','2022-05-22 14:37:46','2022-05-22 14:37:46','',31,'http://bikecraft-v1.local/?post_type=acf-field&p=39',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-05-22 14:39:49','2022-05-22 14:39:49','','retro','','inherit','open','closed','','retro','','','2022-05-22 14:39:49','2022-05-22 14:39:49','',11,'http://bikecraft-v1.local/wp-content/uploads/2022/05/retro.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-05-22 14:40:06','2022-05-22 14:40:06','','esporte','','inherit','open','closed','','esporte','','','2022-05-22 14:40:06','2022-05-22 14:40:06','',11,'http://bikecraft-v1.local/wp-content/uploads/2022/05/esporte.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-05-22 14:40:07','2022-05-22 14:40:07','','passeio','','inherit','open','closed','','passeio','','','2022-05-22 14:40:07','2022-05-22 14:40:07','',11,'http://bikecraft-v1.local/wp-content/uploads/2022/05/passeio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-05-22 14:43:43','2022-05-22 14:43:43','','Portifolio','','inherit','closed','closed','','11-revision-v1','','','2022-05-22 14:43:43','2022-05-22 14:43:43','',11,'http://bikecraft-v1.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2022-05-22 15:15:36','2022-05-22 15:15:36','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Home','home','publish','closed','closed','','group_628a5237a22c1','','','2022-05-22 19:48:18','2022-05-22 19:48:18','',0,'http://bikecraft-v1.local/?post_type=acf-field-group&#038;p=44',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-05-22 15:15:36','2022-05-22 15:15:36','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Introduçã0','intro_title','publish','closed','closed','','field_628a5243b161c','','','2022-05-22 15:15:36','2022-05-22 15:15:36','',44,'http://bikecraft-v1.local/?post_type=acf-field&p=45',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-05-22 15:15:36','2022-05-22 15:15:36','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Quote Introdução','intro_quote','publish','closed','closed','','field_628a5283b161d','','','2022-05-22 15:15:36','2022-05-22 15:15:36','',44,'http://bikecraft-v1.local/?post_type=acf-field&p=46',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-05-22 15:15:36','2022-05-22 15:15:36','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}','Citaçao Introducao','intro_cite','publish','closed','closed','','field_628a52a8b161e','','','2022-05-22 15:15:36','2022-05-22 15:15:36','',44,'http://bikecraft-v1.local/?post_type=acf-field&p=47',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-05-22 15:16:55','2022-05-22 15:16:55','','Home','','inherit','closed','closed','','5-revision-v1','','','2022-05-22 15:16:55','2022-05-22 15:16:55','',5,'http://bikecraft-v1.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-05-22 15:18:07','2022-05-22 15:18:07','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Titulo da Chamada dos Produtos','intro_call','publish','closed','closed','','field_628a5419df8ad','','','2022-05-22 19:48:18','2022-05-22 19:48:18','',44,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=49',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-05-22 15:18:37','2022-05-22 15:18:37','','Home','','inherit','closed','closed','','5-revision-v1','','','2022-05-22 15:18:37','2022-05-22 15:18:37','',5,'http://bikecraft-v1.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-05-22 15:18:50','2022-05-22 15:18:50','','Home','','inherit','closed','closed','','5-revision-v1','','','2022-05-22 15:18:50','2022-05-22 15:18:50','',5,'http://bikecraft-v1.local/?p=51',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2022-05-22 18:49:12','2022-05-22 18:49:12','a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:13:\"page-home.php\";}i:1;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";}s:11:\"description\";s:0:\"\";}','Inner Pages','inner-pages','publish','closed','closed','','group_628a84f05da11','','','2022-05-22 18:55:34','2022-05-22 18:55:34','',0,'http://bikecraft-v1.local/?post_type=acf-field-group&#038;p=52',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2022-05-22 18:49:12','2022-05-22 18:49:12','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Background','background_inner','publish','closed','closed','','field_628a85016dca9','','','2022-05-22 18:55:34','2022-05-22 18:55:34','',52,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=53',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2022-05-22 18:50:15','2022-05-22 18:50:15','','bg-contato','','inherit','open','closed','','bg-contato','','','2022-05-22 18:50:15','2022-05-22 18:50:15','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-contato.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2022-05-22 18:50:15','2022-05-22 18:50:15','','bg-footer','','inherit','open','closed','','bg-footer','','','2022-05-22 18:50:15','2022-05-22 18:50:15','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-footer.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (56,1,'2022-05-22 18:50:15','2022-05-22 18:50:15','','bg-mobile','','inherit','open','closed','','bg-mobile','','','2022-05-22 18:50:15','2022-05-22 18:50:15','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-mobile.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (57,1,'2022-05-22 18:50:16','2022-05-22 18:50:16','','bg-portfolio','','inherit','open','closed','','bg-portfolio','','','2022-05-22 18:50:16','2022-05-22 18:50:16','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-portfolio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2022-05-22 18:50:16','2022-05-22 18:50:16','','bg-produtos','','inherit','open','closed','','bg-produtos','','','2022-05-22 18:50:16','2022-05-22 18:50:16','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-produtos.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,1,'2022-05-22 18:50:17','2022-05-22 18:50:17','','bg-sobre','','inherit','open','closed','','bg-sobre','','','2022-05-22 18:50:17','2022-05-22 18:50:17','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-sobre.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,1,'2022-05-22 18:50:17','2022-05-22 18:50:17','','bg','','inherit','open','closed','','bg','','','2022-05-22 18:50:17','2022-05-22 18:50:17','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2022-05-22 18:50:34','2022-05-22 18:50:34','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-22 18:50:34','2022-05-22 18:50:34','',9,'http://bikecraft-v1.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2022-05-22 18:50:55','2022-05-22 18:50:55','','Portifolio','','inherit','closed','closed','','11-revision-v1','','','2022-05-22 18:50:55','2022-05-22 18:50:55','',11,'http://bikecraft-v1.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2022-05-22 18:51:16','2022-05-22 18:51:16','','Produtos','','inherit','closed','closed','','13-revision-v1','','','2022-05-22 18:51:16','2022-05-22 18:51:16','',13,'http://bikecraft-v1.local/?p=63',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2022-05-22 18:51:32','2022-05-22 18:51:32','','Sobre','','inherit','closed','closed','','15-revision-v1','','','2022-05-22 18:51:32','2022-05-22 18:51:32','',15,'http://bikecraft-v1.local/?p=64',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2022-05-22 18:55:34','2022-05-22 18:55:34','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Subtitulo das Paginas','subtitle','publish','closed','closed','','field_628a86f7af58e','','','2022-05-22 18:55:34','2022-05-22 18:55:34','',52,'http://bikecraft-v1.local/?post_type=acf-field&p=65',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2022-05-22 18:56:21','2022-05-22 18:56:21','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-22 18:56:21','2022-05-22 18:56:21','',9,'http://bikecraft-v1.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2022-05-22 18:56:45','2022-05-22 18:56:45','','Portifolio','','inherit','closed','closed','','11-revision-v1','','','2022-05-22 18:56:45','2022-05-22 18:56:45','',11,'http://bikecraft-v1.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2022-05-22 18:57:05','2022-05-22 18:57:05','','Produtos','','inherit','closed','closed','','13-revision-v1','','','2022-05-22 18:57:05','2022-05-22 18:57:05','',13,'http://bikecraft-v1.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2022-05-22 18:57:29','2022-05-22 18:57:29','','Sobre','','inherit','closed','closed','','15-revision-v1','','','2022-05-22 18:57:29','2022-05-22 18:57:29','',15,'http://bikecraft-v1.local/?p=69',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2022-05-22 19:48:18','2022-05-22 19:48:18','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Background Home','bg_home','publish','closed','closed','','field_628a93296b151','','','2022-05-22 19:48:18','2022-05-22 19:48:18','',44,'http://bikecraft-v1.local/?post_type=acf-field&p=70',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2022-05-22 19:49:01','2022-05-22 19:49:01','','bg','','inherit','open','closed','','bg-2','','','2022-05-22 19:49:01','2022-05-22 19:49:01','',5,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2022-05-22 19:49:11','2022-05-22 19:49:11','','Home','','inherit','closed','closed','','5-revision-v1','','','2022-05-22 19:49:11','2022-05-22 19:49:11','',5,'http://bikecraft-v1.local/?p=72',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2022-05-22 20:06:34','2022-05-22 20:06:34','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:7:\"wpautop\";}','Missao','mission','publish','closed','closed','','field_628a9756e5949','','','2022-05-22 20:06:34','2022-05-22 20:06:34','',22,'http://bikecraft-v1.local/?post_type=acf-field&p=73',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2022-05-22 20:06:34','2022-05-22 20:06:34','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Valores','values','publish','closed','closed','','field_628a976ee594a','','','2022-05-22 20:06:34','2022-05-22 20:06:34','',22,'http://bikecraft-v1.local/?post_type=acf-field&p=74',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2022-05-22 20:06:34','2022-05-22 20:06:34','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem da Equipe','team_img','publish','closed','closed','','field_628a97b8e594b','','','2022-05-22 20:08:01','2022-05-22 20:08:01','',22,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=75',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2022-05-22 20:11:07','2022-05-22 20:11:07','','equipe-bikcraft','','inherit','open','closed','','equipe-bikcraft','','','2022-05-22 20:11:07','2022-05-22 20:11:07','',15,'http://bikecraft-v1.local/wp-content/uploads/2022/05/equipe-bikcraft.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2022-05-22 20:11:22','2022-05-22 20:11:22','','Sobre','','inherit','closed','closed','','15-revision-v1','','','2022-05-22 20:11:22','2022-05-22 20:11:22','',15,'http://bikecraft-v1.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2022-05-22 20:20:46','2022-05-22 20:20:46','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','portifolio quote','portifolio_quote','publish','closed','closed','','field_628a9a6fb5722','','','2022-05-22 20:20:46','2022-05-22 20:20:46','',31,'http://bikecraft-v1.local/?post_type=acf-field&p=78',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2022-05-22 20:20:46','2022-05-22 20:20:46','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}','Quote','quote','publish','closed','closed','','field_628a9a85b5723','','','2022-05-22 20:20:46','2022-05-22 20:20:46','',78,'http://bikecraft-v1.local/?post_type=acf-field&p=79',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2022-05-22 20:20:46','2022-05-22 20:20:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Quote Name','quote_name','publish','closed','closed','','field_628a9ae1b5724','','','2022-05-22 20:20:46','2022-05-22 20:20:46','',78,'http://bikecraft-v1.local/?post_type=acf-field&p=80',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2022-05-22 20:22:43','2022-05-22 20:22:43','','Portifolio','','inherit','closed','closed','','11-revision-v1','','','2022-05-22 20:22:43','2022-05-22 20:22:43','',11,'http://bikecraft-v1.local/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contato.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:15:\"page_attributes\";i:7;s:14:\"featured_image\";i:8;s:4:\"tags\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}','Contato','contato','publish','closed','closed','','group_628b7bf549670','','','2022-05-23 13:18:37','2022-05-23 13:18:37','',0,'http://bikecraft-v1.local/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Telefone','phone_contact','publish','closed','closed','','field_628b7bfb5d8a9','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=83',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','E-mail','e-mail_contact','publish','closed','closed','','field_628b7c6b5d8aa','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=84',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Endereço 1','address1_contact','publish','closed','closed','','field_628b7c775d8ab','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=85',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Endereço 2','address2_contact','publish','closed','closed','','field_628b7c8b5d8ac','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=86',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Redes Sociais','social','publish','closed','closed','','field_628b7cee5d8ad','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=87',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Link do Perfil','social_link','publish','closed','closed','','field_628b7d565d8ae','','','2022-05-23 12:30:33','2022-05-23 12:30:33','',87,'http://bikecraft-v1.local/?post_type=acf-field&p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Logo Rede Social','social_image','publish','closed','closed','','field_628b7d7a5d8af','','','2022-05-23 12:30:33','2022-05-23 12:30:33','',87,'http://bikecraft-v1.local/?post_type=acf-field&p=89',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2022-05-23 12:30:33','2022-05-23 12:30:33','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Alt Social','social_alt','publish','closed','closed','','field_628b7da55d8b0','','','2022-05-23 12:30:33','2022-05-23 12:30:33','',87,'http://bikecraft-v1.local/?post_type=acf-field&p=90',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2022-05-23 12:37:12','2022-05-23 12:37:12','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Mapa','map','publish','closed','closed','','field_628b7e758e222','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=91',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2022-05-23 12:37:12','2022-05-23 12:37:12','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Imagem Mapa','map_image','publish','closed','closed','','field_628b7eae8e223','','','2022-05-23 12:45:27','2022-05-23 12:45:27','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=92',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2022-05-23 12:37:12','2022-05-23 12:37:12','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Map Alt','alt_map','publish','closed','closed','','field_628b7fc48e224','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&#038;p=93',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2022-05-23 12:39:30','2022-05-23 12:39:30','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Endereço','endereco','publish','closed','closed','','field_628b801ef2942','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=94',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2022-05-23 12:39:30','2022-05-23 12:39:30','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Redes Sociais','redes_sociais','publish','closed','closed','','field_628b8031f2943','','','2022-05-23 12:39:30','2022-05-23 12:39:30','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=95',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2022-05-23 12:42:11','2022-05-23 12:42:11','','endereco-bikcraft','','inherit','open','closed','','endereco-bikcraft','','','2022-05-23 12:42:11','2022-05-23 12:42:11','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/endereco-bikcraft.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (97,1,'2022-05-23 12:43:10','2022-05-23 12:43:10','','facebook','','inherit','open','closed','','facebook','','','2022-05-23 12:43:10','2022-05-23 12:43:10','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/facebook.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (98,1,'2022-05-23 12:43:10','2022-05-23 12:43:10','','instagram','','inherit','open','closed','','instagram','','','2022-05-23 12:43:10','2022-05-23 12:43:10','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/instagram.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (99,1,'2022-05-23 12:43:10','2022-05-23 12:43:10','','twitter','','inherit','open','closed','','twitter','','','2022-05-23 12:43:10','2022-05-23 12:43:10','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/twitter.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (100,1,'2022-05-23 12:43:55','2022-05-23 12:43:55','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-23 12:43:55','2022-05-23 12:43:55','',9,'http://bikecraft-v1.local/?p=100',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2022-05-23 12:52:25','2022-05-23 12:52:25','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-23 12:52:25','2022-05-23 12:52:25','',9,'http://bikecraft-v1.local/?p=101',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2022-05-23 13:15:37','2022-05-23 13:15:37','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Rodape','rodape','publish','closed','closed','','field_628b886827094','','','2022-05-23 13:15:37','2022-05-23 13:15:37','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=102',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2022-05-23 13:15:37','2022-05-23 13:15:37','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Background Rodape','background_footer','publish','closed','closed','','field_628b887427095','','','2022-05-23 13:15:37','2022-05-23 13:15:37','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=103',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2022-05-23 13:15:38','2022-05-23 13:15:38','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Quote Rodape','quote_footer','publish','closed','closed','','field_628b88b527096','','','2022-05-23 13:15:38','2022-05-23 13:15:38','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=104',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2022-05-23 13:15:38','2022-05-23 13:15:38','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Autor','cite_footer','publish','closed','closed','','field_628b88ce27097','','','2022-05-23 13:15:38','2022-05-23 13:15:38','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=105',13,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2022-05-23 13:16:03','2022-05-23 13:16:03','','bg-footer','','inherit','open','closed','','bg-footer-2','','','2022-05-23 13:16:03','2022-05-23 13:16:03','',9,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bg-footer-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (107,1,'2022-05-23 13:16:35','2022-05-23 13:16:35','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-23 13:16:35','2022-05-23 13:16:35','',9,'http://bikecraft-v1.local/?p=107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2022-05-23 13:18:37','2022-05-23 13:18:37','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Resumo Historia','resume_history','publish','closed','closed','','field_628b898bc9d49','','','2022-05-23 13:18:37','2022-05-23 13:18:37','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=108',14,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2022-05-23 13:18:37','2022-05-23 13:18:37','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','','','publish','closed','closed','','field_628b89a6c9d4a','','','2022-05-23 13:18:37','2022-05-23 13:18:37','',82,'http://bikecraft-v1.local/?post_type=acf-field&p=109',15,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2022-05-23 13:19:03','2022-05-23 13:19:03','','Contato','','inherit','closed','closed','','9-revision-v1','','','2022-05-23 13:19:03','2022-05-23 13:19:03','',9,'http://bikecraft-v1.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2022-05-23 22:59:11','2022-05-23 22:59:11','Muito melhor do que passear pela orla a vidros fechados. A Bikcraft Passeio é uma bicicleta que une conforto e praticidade para o seu dia a dia. Você nunca mais vai querer saber de outra.\r\n<ul>\r\n 	<li>CONFORTO</li>\r\n 	<li>PRATICIDADE</li>\r\n 	<li>DESIGN</li>\r\n 	<li>VERSATILIDADE</li>\r\n</ul>','Passeio','','publish','closed','closed','','passeio','','','2022-05-24 00:29:53','2022-05-24 00:29:53','',0,'http://bikecraft-v1.local/?post_type=produtos&#038;p=111',0,'produtos','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2022-05-23 23:23:56','2022-05-23 23:23:56','Mais rápida do que Forrest Gump, ninguém vai pegar você. A Bikcraft Esporte é uma bicicleta desenhada para a máxima performance. O seu desenpenho supera qualquer uma da categoria.\r\n<ul>\r\n 	<li>PRECISÃO</li>\r\n 	<li>VELOCIDADE</li>\r\n 	<li>DESIGN</li>\r\n 	<li>VERSATILIDADE</li>\r\n</ul>','Esporte','','publish','closed','closed','','esporte','','','2022-05-24 00:29:35','2022-05-24 00:29:35','',0,'http://bikecraft-v1.local/?post_type=produtos&#038;p=112',0,'produtos','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2022-05-23 23:24:29','2022-05-23 23:24:29','O passado volta para lembrarmos o que devemos fazer no futuro. A Bikcraft Retrô é uma bicicleta estiloza, feita para você que gosta do clássico, mas que não abre mão do conforto.\r\n<ul>\r\n 	<li>CONFORTO</li>\r\n 	<li>VELOCIDADE</li>\r\n 	<li>DESIGN</li>\r\n 	<li>VERSATILIDADE</li>\r\n</ul>','Retro','','publish','closed','closed','','retro','','','2022-05-24 00:29:17','2022-05-24 00:29:17','',0,'http://bikecraft-v1.local/?post_type=produtos&#038;p=113',0,'produtos','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2022-05-23 23:36:20','2022-05-23 23:36:20','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"produtos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Produtos - Detalhes','produtos-detalhes','publish','closed','closed','','group_628c194e68232','','','2022-05-24 00:28:38','2022-05-24 00:28:38','',0,'http://bikecraft-v1.local/?post_type=acf-field-group&#038;p=114',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2022-05-23 23:36:20','2022-05-23 23:36:20','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Foto Produto 1','main_image','publish','closed','closed','','field_628c195cf0946','','','2022-05-23 23:36:20','2022-05-23 23:36:20','',114,'http://bikecraft-v1.local/?post_type=acf-field&p=115',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2022-05-23 23:36:20','2022-05-23 23:36:20','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Icone Produto','main_icon','publish','closed','closed','','field_628c19a0f0947','','','2022-05-23 23:36:20','2022-05-23 23:36:20','',114,'http://bikecraft-v1.local/?post_type=acf-field&p=116',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2022-05-23 23:36:20','2022-05-23 23:36:20','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Foto produto 2','main_secondary_image','publish','closed','closed','','field_628c1a26f0948','','','2022-05-23 23:36:20','2022-05-23 23:36:20','',114,'http://bikecraft-v1.local/?post_type=acf-field&p=117',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2022-05-23 23:36:56','2022-05-23 23:36:56','','bikcraft-passeio-1','','inherit','open','closed','','bikcraft-passeio-1','','','2022-05-23 23:36:56','2022-05-23 23:36:56','',111,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-passeio-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (119,1,'2022-05-23 23:36:56','2022-05-23 23:36:56','','bikcraft-passeio-2','','inherit','open','closed','','bikcraft-passeio-2','','','2022-05-23 23:36:56','2022-05-23 23:36:56','',111,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-passeio-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (120,1,'2022-05-23 23:36:56','2022-05-23 23:36:56','','passeio','','inherit','open','closed','','passeio-2','','','2022-05-23 23:36:56','2022-05-23 23:36:56','',111,'http://bikecraft-v1.local/wp-content/uploads/2022/05/passeio.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (121,1,'2022-05-23 23:40:26','2022-05-23 23:40:26','','bikcraft-esporte-1','','inherit','open','closed','','bikcraft-esporte-1','','','2022-05-23 23:40:26','2022-05-23 23:40:26','',112,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-esporte-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (122,1,'2022-05-23 23:40:27','2022-05-23 23:40:27','','bikcraft-esporte-2','','inherit','open','closed','','bikcraft-esporte-2','','','2022-05-23 23:40:27','2022-05-23 23:40:27','',112,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-esporte-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (123,1,'2022-05-23 23:40:27','2022-05-23 23:40:27','','esporte','','inherit','open','closed','','esporte-2','','','2022-05-23 23:40:27','2022-05-23 23:40:27','',112,'http://bikecraft-v1.local/wp-content/uploads/2022/05/esporte.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (124,1,'2022-05-23 23:41:22','2022-05-23 23:41:22','','bikcraft-retro-1','','inherit','open','closed','','bikcraft-retro-1','','','2022-05-23 23:41:22','2022-05-23 23:41:22','',113,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-retro-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (125,1,'2022-05-23 23:41:22','2022-05-23 23:41:22','','bikcraft-retro-2','','inherit','open','closed','','bikcraft-retro-2','','','2022-05-23 23:41:22','2022-05-23 23:41:22','',113,'http://bikecraft-v1.local/wp-content/uploads/2022/05/bikcraft-retro-2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (126,1,'2022-05-23 23:41:22','2022-05-23 23:41:22','','retro','','inherit','open','closed','','retro-2','','','2022-05-23 23:41:22','2022-05-23 23:41:22','',113,'http://bikecraft-v1.local/wp-content/uploads/2022/05/retro.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (127,1,'2022-05-24 00:28:38','2022-05-24 00:28:38','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Resume','product_resume','publish','closed','closed','','field_628c26a089d90','','','2022-05-24 00:28:38','2022-05-24 00:28:38','',114,'http://bikecraft-v1.local/?post_type=acf-field&p=127',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2022-05-24 00:51:30','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-05-24 00:51:30','0000-00-00 00:00:00','',0,'http://bikecraft-v1.local/?p=128',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2022-05-24 00:52:52','2022-05-24 00:52:52',' ','','','publish','closed','closed','','129','','','2022-05-24 00:52:52','2022-05-24 00:52:52','',0,'http://bikecraft-v1.local/?p=129',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2022-05-24 00:52:52','2022-05-24 00:52:52',' ','','','publish','closed','closed','','130','','','2022-05-24 00:52:52','2022-05-24 00:52:52','',0,'http://bikecraft-v1.local/?p=130',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2022-05-24 00:52:52','2022-05-24 00:52:52',' ','','','publish','closed','closed','','131','','','2022-05-24 00:52:52','2022-05-24 00:52:52','',0,'http://bikecraft-v1.local/?p=131',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2022-05-24 00:52:52','2022-05-24 00:52:52',' ','','','publish','closed','closed','','132','','','2022-05-24 00:52:52','2022-05-24 00:52:52','',0,'http://bikecraft-v1.local/?p=132',4,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (129,3,0);
INSERT INTO `wp_term_relationships` VALUES (130,3,0);
INSERT INTO `wp_term_relationships` VALUES (131,3,0);
INSERT INTO `wp_term_relationships` VALUES (132,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'bikcraft - cópia','bikcraft-copia',0);
INSERT INTO `wp_terms` VALUES (3,'Menu Principal','menu-principal',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"639c8ef1521f84db2cc88063d854849ae403f26ca26f8974db4825be7a66602b\";a:4:{s:10:\"expiration\";i:1653417900;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36\";s:5:\"login\";i:1653245100;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings','libraryContent=browse&hidetb=1&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings-time','1653347438');
INSERT INTO `wp_usermeta` VALUES (22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_nav-menus','a:2:{i:0;s:22:\"add-post-type-produtos\";i:1;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'nav_menu_recently_edited','3');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$B8BK0LfsHY0z2IGVaXZr5R5erFsghr.','admin','dev-email@flywheel.local','http://bikecraft-v1.local','2022-05-17 16:42:48','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 23:05:17
