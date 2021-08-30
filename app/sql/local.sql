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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://kampusku.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://kampusku.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Kampusku','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:139:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"heroes/?$\";s:26:\"index.php?post_type=heroes\";s:39:\"heroes/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=heroes&feed=$matches[1]\";s:34:\"heroes/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=heroes&feed=$matches[1]\";s:26:\"heroes/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=heroes&paged=$matches[1]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"heroes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"heroes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"heroes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"heroes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"heroes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"heroes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"heroes/([^/]+)/embed/?$\";s:39:\"index.php?heroes=$matches[1]&embed=true\";s:27:\"heroes/([^/]+)/trackback/?$\";s:33:\"index.php?heroes=$matches[1]&tb=1\";s:47:\"heroes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?heroes=$matches[1]&feed=$matches[2]\";s:42:\"heroes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?heroes=$matches[1]&feed=$matches[2]\";s:35:\"heroes/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?heroes=$matches[1]&paged=$matches[2]\";s:42:\"heroes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?heroes=$matches[1]&cpage=$matches[2]\";s:31:\"heroes/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?heroes=$matches[1]&page=$matches[2]\";s:23:\"heroes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"heroes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"heroes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"heroes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"heroes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"heroes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:25:\"gtranslate/gtranslate.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:4:{i:0;s:87:\"/Users/Nobley/Projects/kampusku/app/public/wp-content/plugins/gtranslate/gtranslate.php\";i:1;s:79:\"/Users/Nobley/Projects/kampusku/app/public/wp-content/themes/kampusku/style.css\";i:2;s:84:\"/Users/Nobley/Projects/kampusku/app/public/wp-content/themes/kampusku/front-page.php\";i:3;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','kampusku','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','kampusku','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
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
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','34','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1637410215','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:7:{i:1628896218;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1628899818;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1628943017;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628947691;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1628947696;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1629202217;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','0S^BPtJsNHRl|00oE#+|eD&/LkI(ayVn1Gh3pa3+.,+GFbhs<+V2xXg~UCqE2[zj','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','&m]#dr$61+2>YGO}roi**b07PjNW#,A,i&KT!:hMid-ykvPSzCp%ju*IH8pTUVH+','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621949308;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1628857839;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (138,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'current_theme','Kampusku','yes');
INSERT INTO `wp_options` VALUES (150,'theme_mods_kampusku','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:12:{s:7:\"primary\";i:2;s:7:\"profile\";i:3;s:11:\"secondary-1\";i:7;s:11:\"secondary-2\";i:8;s:11:\"secondary-3\";i:9;s:7:\"journal\";i:12;s:13:\"study-program\";i:13;s:17:\"development-group\";i:18;s:12:\"study-center\";i:19;s:21:\"proceeding-conference\";i:20;s:25:\"proceeding-and-conference\";i:20;s:11:\"cooperation\";i:21;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (151,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (155,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"7\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (158,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (177,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (366,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (381,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (431,'recovery_mode_email_last_sent','1622528344','yes');
INSERT INTO `wp_options` VALUES (541,'GTranslate','a:33:{s:11:\"pro_version\";s:0:\"\";s:18:\"enterprise_version\";s:0:\"\";s:15:\"url_translation\";s:0:\"\";s:17:\"add_hreflang_tags\";s:0:\"\";s:17:\"email_translation\";s:0:\"\";s:23:\"email_translation_debug\";s:0:\"\";s:10:\"new_window\";s:0:\"\";s:12:\"show_in_menu\";s:0:\"\";s:26:\"floating_language_selector\";s:2:\"no\";s:21:\"native_language_names\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:23:\"detect_browser_language\";s:0:\"\";s:12:\"add_new_line\";i:1;s:16:\"default_language\";s:2:\"id\";s:18:\"translation_method\";s:5:\"onfly\";s:11:\"widget_look\";s:5:\"flags\";s:9:\"flag_size\";i:24;s:16:\"monochrome_flags\";i:1;s:11:\"widget_code\";s:2420:\"<!-- GTranslate: https://gtranslate.io/ -->\r\n<a href=\"#\" onclick=\"doGTranslate(\'id|en\');return false;\" title=\"English\" class=\"glink nturl notranslate\"><img src=\"//kampusku.local/wp-content/plugins/gtranslate/flags/24/en.png\" height=\"24\" width=\"24\" alt=\"English\" /></a><a href=\"#\" onclick=\"doGTranslate(\'id|id\');return false;\" title=\"Indonesian\" class=\"glink nturl notranslate\"><img src=\"//kampusku.local/wp-content/plugins/gtranslate/flags/24/id.png\" height=\"24\" width=\"24\" alt=\"Indonesian\" /></a>\r\n<style>a.glink img {filter:grayscale(100%);-webkit-filter:grayscale(100%);}</style>\r\n<style>\r\n#goog-gt-tt {display:none !important;}\r\n.goog-te-banner-frame {display:none !important;}\r\n.goog-te-menu-value:hover {text-decoration:none !important;}\r\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\r\nbody {top:0 !important;}\r\n#google_translate_element2 {display:none!important;}\r\n</style>\r\n\r\n<div id=\"google_translate_element2\"></div>\r\n<script>\r\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'id\',autoDisplay: false}, \'google_translate_element2\');}\r\n</script><script src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\r\n\r\n\r\n<script>\r\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\r\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\r\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(sel[i].className.indexOf(\'goog-te-combo\')!=-1){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\r\n</script>\r\n\";s:10:\"incl_langs\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"id\";}s:11:\"fincl_langs\";a:2:{i:0;s:2:\"en\";i:1;s:2:\"id\";}s:9:\"alt_flags\";a:0:{}s:19:\"switcher_text_color\";s:4:\"#666\";s:20:\"switcher_arrow_color\";s:4:\"#666\";s:21:\"switcher_border_color\";s:4:\"#ccc\";s:25:\"switcher_background_color\";s:4:\"#fff\";s:32:\"switcher_background_shadow_color\";s:7:\"#efefef\";s:31:\"switcher_background_hover_color\";s:4:\"#fff\";s:19:\"dropdown_text_color\";s:4:\"#000\";s:20:\"dropdown_hover_color\";s:4:\"#fff\";s:25:\"dropdown_background_color\";s:4:\"#eee\";s:14:\"language_codes\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";s:15:\"language_codes2\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";}','yes');
INSERT INTO `wp_options` VALUES (542,'widget_gtranslate','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (543,'gtranslate_admin_notice','a:2:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:8:\"6/8/2021\";s:3:\"int\";i:5;s:9:\"dismissed\";i:1;}s:12:\"upgrade_tips\";a:3:{s:5:\"start\";s:8:\"6/5/2021\";s:3:\"int\";i:2;s:9:\"dismissed\";i:1;}}','yes');
INSERT INTO `wp_options` VALUES (624,'_site_transient_timeout_browser_be3419a8b5757aa334d087cf317c2456','1629211427','no');
INSERT INTO `wp_options` VALUES (625,'_site_transient_browser_be3419a8b5757aa334d087cf317c2456','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (626,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1629211429','no');
INSERT INTO `wp_options` VALUES (627,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (652,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628857843;s:7:\"checked\";a:4:{s:8:\"kampusku\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (653,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1628857845;s:7:\"checked\";a:1:{s:25:\"gtranslate/gtranslate.php\";s:6:\"2.8.63\";}s:8:\"response\";a:1:{s:25:\"gtranslate/gtranslate.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/gtranslate\";s:4:\"slug\";s:10:\"gtranslate\";s:6:\"plugin\";s:25:\"gtranslate/gtranslate.php\";s:11:\"new_version\";s:5:\"2.9.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/gtranslate/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/gtranslate.2.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-256x256.png?rev=1625219\";s:2:\"1x\";s:63:\"https://ps.w.org/gtranslate/assets/icon-128x128.png?rev=1579941\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/gtranslate/assets/banner-1544x500.png?rev=2034820\";s:2:\"1x\";s:65:\"https://ps.w.org/gtranslate/assets/banner-772x250.png?rev=2034820\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"2.8.1\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=1220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (18,9,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (19,9,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,9,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (21,9,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (22,9,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,9,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,9,'_menu_item_url','/sejarah');
INSERT INTO `wp_postmeta` VALUES (27,10,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (28,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,10,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (30,10,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (31,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,10,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (36,11,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (37,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,11,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (39,11,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (40,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,11,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (45,12,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (46,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,12,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (48,12,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (49,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,12,'_menu_item_url','http://sicantik.fbs.unnes.ac.id');
INSERT INTO `wp_postmeta` VALUES (54,13,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (55,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,13,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (57,13,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (58,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,13,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (63,14,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (64,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (65,14,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (66,14,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (67,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (68,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (70,14,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (72,15,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (73,15,'_menu_item_menu_item_parent','10');
INSERT INTO `wp_postmeta` VALUES (74,15,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (75,15,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (76,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (77,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (78,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (79,15,'_menu_item_url','/jurusan-seni-rupa');
INSERT INTO `wp_postmeta` VALUES (81,16,'_edit_lock','1622304130:1');
INSERT INTO `wp_postmeta` VALUES (83,19,'_edit_lock','1622304206:1');
INSERT INTO `wp_postmeta` VALUES (84,21,'_edit_lock','1622304157:1');
INSERT INTO `wp_postmeta` VALUES (85,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (95,16,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (96,9,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (97,10,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (98,15,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (99,11,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (100,12,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (101,13,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (102,14,'_wp_old_date','2021-05-26');
INSERT INTO `wp_postmeta` VALUES (130,31,'_wp_attached_file','2021/05/pngegg.png');
INSERT INTO `wp_postmeta` VALUES (131,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2021/05/pngegg.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pngegg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pngegg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (132,31,'_wp_attachment_image_alt','Universitas Negeri Semarang');
INSERT INTO `wp_postmeta` VALUES (143,36,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (144,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (145,36,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (146,36,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (147,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (148,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (149,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (150,36,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (151,36,'_menu_item_orphaned','1622108001');
INSERT INTO `wp_postmeta` VALUES (152,37,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (153,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (154,37,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (155,37,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (156,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (157,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (158,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (159,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (161,38,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (162,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (163,38,'_menu_item_object_id','38');
INSERT INTO `wp_postmeta` VALUES (164,38,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (165,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (166,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (167,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (168,38,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (170,39,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (171,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (172,39,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (173,39,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (174,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (175,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (176,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (177,39,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (179,40,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (180,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (181,40,'_menu_item_object_id','40');
INSERT INTO `wp_postmeta` VALUES (182,40,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (183,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (184,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (185,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (186,40,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (188,41,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (189,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (190,41,'_menu_item_object_id','41');
INSERT INTO `wp_postmeta` VALUES (191,41,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (192,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (193,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (194,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (195,41,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (197,42,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (198,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (199,42,'_menu_item_object_id','42');
INSERT INTO `wp_postmeta` VALUES (200,42,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (201,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (202,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (203,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (204,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (206,43,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (207,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (208,43,'_menu_item_object_id','43');
INSERT INTO `wp_postmeta` VALUES (209,43,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (210,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (211,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (212,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (213,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (215,44,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (216,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (217,44,'_menu_item_object_id','44');
INSERT INTO `wp_postmeta` VALUES (218,44,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (219,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (220,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (221,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (222,44,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (224,45,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (225,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (226,45,'_menu_item_object_id','45');
INSERT INTO `wp_postmeta` VALUES (227,45,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (228,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (229,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (230,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (231,45,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (233,46,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (234,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (235,46,'_menu_item_object_id','46');
INSERT INTO `wp_postmeta` VALUES (236,46,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (237,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (238,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (239,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (240,46,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (242,47,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (243,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (244,47,'_menu_item_object_id','47');
INSERT INTO `wp_postmeta` VALUES (245,47,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (246,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (247,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (248,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (249,47,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (251,48,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (252,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (253,48,'_menu_item_object_id','48');
INSERT INTO `wp_postmeta` VALUES (254,48,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (255,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (256,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (257,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (258,48,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (260,49,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (261,49,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (262,49,'_menu_item_object_id','49');
INSERT INTO `wp_postmeta` VALUES (263,49,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (264,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (265,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (266,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (267,49,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (269,50,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (270,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (271,50,'_menu_item_object_id','50');
INSERT INTO `wp_postmeta` VALUES (272,50,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (273,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (274,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (275,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (276,50,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (278,51,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (279,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (280,51,'_menu_item_object_id','51');
INSERT INTO `wp_postmeta` VALUES (281,51,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (282,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (283,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (284,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (285,51,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (301,60,'_edit_lock','1622636135:1');
INSERT INTO `wp_postmeta` VALUES (302,61,'_wp_attached_file','2021/05/my-featured-image.jpeg');
INSERT INTO `wp_postmeta` VALUES (303,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:30:\"2021/05/my-featured-image.jpeg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"my-featured-image-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"my-featured-image-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"my-featured-image-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"my-featured-image-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (304,60,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (305,60,'_wp_old_slug','happy-new-year');
INSERT INTO `wp_postmeta` VALUES (307,1,'_edit_lock','1622611885:1');
INSERT INTO `wp_postmeta` VALUES (333,10,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (334,15,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (335,11,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (336,12,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (337,13,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (340,14,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (341,9,'_wp_old_date','2021-05-27');
INSERT INTO `wp_postmeta` VALUES (351,10,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (352,15,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (353,11,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (354,12,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (355,13,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (358,14,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (360,9,'_wp_old_date','2021-05-28');
INSERT INTO `wp_postmeta` VALUES (364,21,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (365,19,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (366,80,'_edit_lock','1623502661:1');
INSERT INTO `wp_postmeta` VALUES (367,80,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (368,83,'_edit_lock','1622304147:1');
INSERT INTO `wp_postmeta` VALUES (369,83,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (370,85,'_edit_lock','1622392868:1');
INSERT INTO `wp_postmeta` VALUES (371,85,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (372,87,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (373,87,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (374,87,'_menu_item_object_id','85');
INSERT INTO `wp_postmeta` VALUES (375,87,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (376,87,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (377,87,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (378,87,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (379,87,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (381,88,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (382,88,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (383,88,'_menu_item_object_id','83');
INSERT INTO `wp_postmeta` VALUES (384,88,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (385,88,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (386,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (387,88,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (388,88,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (390,89,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (391,89,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (392,89,'_menu_item_object_id','80');
INSERT INTO `wp_postmeta` VALUES (393,89,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (394,89,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (395,89,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (396,89,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (397,89,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (399,90,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (400,90,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (401,90,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (402,90,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (403,90,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (404,90,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (405,90,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (406,90,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (408,91,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (409,91,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (410,91,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (411,91,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (412,91,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (413,91,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (414,91,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (415,91,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (417,92,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (418,92,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (419,92,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (420,92,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (421,92,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (422,92,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (423,92,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (424,92,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (433,1,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (452,10,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (453,15,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (454,11,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (455,12,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (456,13,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (459,14,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (463,9,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (465,98,'_edit_lock','1622343909:1');
INSERT INTO `wp_postmeta` VALUES (470,100,'_edit_lock','1623724884:1');
INSERT INTO `wp_postmeta` VALUES (473,102,'_edit_lock','1622437443:1');
INSERT INTO `wp_postmeta` VALUES (476,102,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (477,104,'_edit_lock','1622349899:1');
INSERT INTO `wp_postmeta` VALUES (480,106,'_edit_lock','1622434491:1');
INSERT INTO `wp_postmeta` VALUES (481,106,'_wp_page_template','page-study-program.php');
INSERT INTO `wp_postmeta` VALUES (482,109,'_edit_lock','1622392987:1');
INSERT INTO `wp_postmeta` VALUES (483,109,'_wp_page_template','page-study-program.php');
INSERT INTO `wp_postmeta` VALUES (484,112,'_edit_lock','1622393683:1');
INSERT INTO `wp_postmeta` VALUES (485,112,'_wp_page_template','page-study-program.php');
INSERT INTO `wp_postmeta` VALUES (486,114,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (487,114,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (488,114,'_menu_item_object_id','112');
INSERT INTO `wp_postmeta` VALUES (489,114,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (490,114,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (491,114,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (492,114,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (493,114,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (494,114,'_menu_item_orphaned','1622392385');
INSERT INTO `wp_postmeta` VALUES (495,115,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (496,115,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (497,115,'_menu_item_object_id','109');
INSERT INTO `wp_postmeta` VALUES (498,115,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (499,115,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (500,115,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (501,115,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (502,115,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (503,115,'_menu_item_orphaned','1622392385');
INSERT INTO `wp_postmeta` VALUES (504,116,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (505,116,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (506,116,'_menu_item_object_id','106');
INSERT INTO `wp_postmeta` VALUES (507,116,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (508,116,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (509,116,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (510,116,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (511,116,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (512,116,'_menu_item_orphaned','1622392385');
INSERT INTO `wp_postmeta` VALUES (513,117,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (514,117,'_menu_item_menu_item_parent','119');
INSERT INTO `wp_postmeta` VALUES (515,117,'_menu_item_object_id','112');
INSERT INTO `wp_postmeta` VALUES (516,117,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (517,117,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (518,117,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (519,117,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (520,117,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (522,118,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (523,118,'_menu_item_menu_item_parent','119');
INSERT INTO `wp_postmeta` VALUES (524,118,'_menu_item_object_id','109');
INSERT INTO `wp_postmeta` VALUES (525,118,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (526,118,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (527,118,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (528,118,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (529,118,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (531,119,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (532,119,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (533,119,'_menu_item_object_id','106');
INSERT INTO `wp_postmeta` VALUES (534,119,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (535,119,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (536,119,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (537,119,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (538,119,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (540,120,'_edit_lock','1622393040:1');
INSERT INTO `wp_postmeta` VALUES (541,120,'_wp_page_template','page-journal.php');
INSERT INTO `wp_postmeta` VALUES (542,122,'_edit_lock','1622393580:1');
INSERT INTO `wp_postmeta` VALUES (543,122,'_wp_page_template','page-journal.php');
INSERT INTO `wp_postmeta` VALUES (544,124,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (545,124,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (546,124,'_menu_item_object_id','122');
INSERT INTO `wp_postmeta` VALUES (547,124,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (548,124,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (549,124,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (550,124,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (551,124,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (553,125,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (554,125,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (555,125,'_menu_item_object_id','120');
INSERT INTO `wp_postmeta` VALUES (556,125,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (557,125,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (558,125,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (559,125,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (560,125,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (562,126,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (563,126,'_menu_item_menu_item_parent','11');
INSERT INTO `wp_postmeta` VALUES (564,126,'_menu_item_object_id','126');
INSERT INTO `wp_postmeta` VALUES (565,126,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (566,126,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (567,126,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (568,126,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (569,126,'_menu_item_url','/jurnal-harmonia');
INSERT INTO `wp_postmeta` VALUES (571,127,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (572,127,'_menu_item_menu_item_parent','11');
INSERT INTO `wp_postmeta` VALUES (573,127,'_menu_item_object_id','127');
INSERT INTO `wp_postmeta` VALUES (574,127,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (575,127,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (576,127,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (577,127,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (578,127,'_menu_item_url','/english-language-teaching-literature-and-translation');
INSERT INTO `wp_postmeta` VALUES (619,139,'_edit_lock','1622451501:1');
INSERT INTO `wp_postmeta` VALUES (620,141,'_edit_lock','1622451619:1');
INSERT INTO `wp_postmeta` VALUES (621,143,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (622,143,'_menu_item_menu_item_parent','13');
INSERT INTO `wp_postmeta` VALUES (623,143,'_menu_item_object_id','141');
INSERT INTO `wp_postmeta` VALUES (624,143,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (625,143,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (626,143,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (627,143,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (628,143,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (650,148,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (651,148,'_menu_item_menu_item_parent','11');
INSERT INTO `wp_postmeta` VALUES (652,148,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (653,148,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (654,148,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (655,148,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (656,148,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (657,148,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (659,10,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (660,15,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (661,11,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (662,126,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (663,127,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (666,12,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (667,13,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (669,143,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (670,14,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (674,9,'_wp_old_date','2021-05-30');
INSERT INTO `wp_postmeta` VALUES (675,149,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (676,149,'_menu_item_menu_item_parent','12');
INSERT INTO `wp_postmeta` VALUES (677,149,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (678,149,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (679,149,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (680,149,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (681,149,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (682,149,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (684,150,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (685,150,'_menu_item_menu_item_parent','14');
INSERT INTO `wp_postmeta` VALUES (686,150,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (687,150,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (688,150,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (689,150,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (690,150,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (691,150,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (693,151,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (694,151,'_menu_item_menu_item_parent','14');
INSERT INTO `wp_postmeta` VALUES (695,151,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (696,151,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (697,151,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (698,151,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (699,151,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (700,151,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (702,152,'_edit_lock','1622433582:1');
INSERT INTO `wp_postmeta` VALUES (703,154,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (704,154,'_menu_item_menu_item_parent','12');
INSERT INTO `wp_postmeta` VALUES (705,154,'_menu_item_object_id','152');
INSERT INTO `wp_postmeta` VALUES (706,154,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (707,154,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (708,154,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (709,154,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (710,154,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (712,155,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (713,155,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (714,155,'_menu_item_object_id','155');
INSERT INTO `wp_postmeta` VALUES (715,155,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (716,155,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (717,155,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (718,155,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (719,155,'_menu_item_url','/');
INSERT INTO `wp_postmeta` VALUES (739,158,'_edit_lock','1622451154:1');
INSERT INTO `wp_postmeta` VALUES (740,158,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (741,160,'_edit_lock','1622542447:1');
INSERT INTO `wp_postmeta` VALUES (742,160,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (743,162,'_edit_lock','1622451219:1');
INSERT INTO `wp_postmeta` VALUES (744,162,'_wp_page_template','page-profile.php');
INSERT INTO `wp_postmeta` VALUES (745,164,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (746,164,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (747,164,'_menu_item_object_id','162');
INSERT INTO `wp_postmeta` VALUES (748,164,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (749,164,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (750,164,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (751,164,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (752,164,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (754,165,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (755,165,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (756,165,'_menu_item_object_id','160');
INSERT INTO `wp_postmeta` VALUES (757,165,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (758,165,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (759,165,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (760,165,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (761,165,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (763,166,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (764,166,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (765,166,'_menu_item_object_id','158');
INSERT INTO `wp_postmeta` VALUES (766,166,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (767,166,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (768,166,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (769,166,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (770,166,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (772,92,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (773,89,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (774,90,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (775,91,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (776,88,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (777,87,'_wp_old_date','2021-05-29');
INSERT INTO `wp_postmeta` VALUES (778,168,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (779,168,'_menu_item_menu_item_parent','13');
INSERT INTO `wp_postmeta` VALUES (780,168,'_menu_item_object_id','139');
INSERT INTO `wp_postmeta` VALUES (781,168,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (782,168,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (783,168,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (784,168,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (785,168,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (787,169,'_edit_lock','1622451649:1');
INSERT INTO `wp_postmeta` VALUES (788,171,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (789,171,'_menu_item_menu_item_parent','13');
INSERT INTO `wp_postmeta` VALUES (790,171,'_menu_item_object_id','169');
INSERT INTO `wp_postmeta` VALUES (791,171,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (792,171,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (793,171,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (794,171,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (795,171,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (797,172,'_edit_lock','1622632208:1');
INSERT INTO `wp_postmeta` VALUES (798,173,'_wp_attached_file','2021/05/avatar.jpg');
INSERT INTO `wp_postmeta` VALUES (799,173,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:18:\"2021/05/avatar.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (803,175,'_edit_lock','1622650753:1');
INSERT INTO `wp_postmeta` VALUES (808,175,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (812,172,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (816,177,'_wp_attached_file','2021/05/avatar-men.jpg');
INSERT INTO `wp_postmeta` VALUES (817,177,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:22:\"2021/05/avatar-men.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (822,179,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (823,179,'_menu_item_menu_item_parent','14');
INSERT INTO `wp_postmeta` VALUES (824,179,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (825,179,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (826,179,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (827,179,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (828,179,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (829,179,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (831,180,'_edit_lock','1622462880:1');
INSERT INTO `wp_postmeta` VALUES (832,180,'_wp_page_template','page-proceeding-and-conference.php');
INSERT INTO `wp_postmeta` VALUES (833,182,'_edit_lock','1622460302:1');
INSERT INTO `wp_postmeta` VALUES (834,182,'_wp_page_template','page-development-group.php');
INSERT INTO `wp_postmeta` VALUES (835,184,'_edit_lock','1622459505:1');
INSERT INTO `wp_postmeta` VALUES (836,184,'_wp_page_template','page-study-center.php');
INSERT INTO `wp_postmeta` VALUES (837,186,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (838,186,'_menu_item_menu_item_parent','11');
INSERT INTO `wp_postmeta` VALUES (839,186,'_menu_item_object_id','186');
INSERT INTO `wp_postmeta` VALUES (840,186,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (841,186,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (842,186,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (843,186,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (844,186,'_menu_item_url','/pusat-kajian-pesisir');
INSERT INTO `wp_postmeta` VALUES (846,187,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (847,187,'_menu_item_menu_item_parent','11');
INSERT INTO `wp_postmeta` VALUES (848,187,'_menu_item_object_id','187');
INSERT INTO `wp_postmeta` VALUES (849,187,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (850,187,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (851,187,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (852,187,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (853,187,'_menu_item_url','/gugus-penjaminan-mutu');
INSERT INTO `wp_postmeta` VALUES (873,190,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (874,190,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (875,190,'_menu_item_object_id','182');
INSERT INTO `wp_postmeta` VALUES (876,190,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (877,190,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (878,190,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (879,190,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (880,190,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (882,191,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (883,191,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (884,191,'_menu_item_object_id','184');
INSERT INTO `wp_postmeta` VALUES (885,191,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (886,191,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (887,191,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (888,191,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (889,191,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (954,199,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (955,199,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (956,199,'_menu_item_object_id','180');
INSERT INTO `wp_postmeta` VALUES (957,199,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (958,199,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (959,199,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (960,199,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (961,199,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (972,202,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (973,202,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (974,202,'_menu_item_object_id','202');
INSERT INTO `wp_postmeta` VALUES (975,202,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (976,202,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (977,202,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (978,202,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (979,202,'_menu_item_url','/kerja-sama-dalam-negeri');
INSERT INTO `wp_postmeta` VALUES (981,203,'_edit_lock','1622465216:1');
INSERT INTO `wp_postmeta` VALUES (982,203,'_wp_page_template','page-cooperation.php');
INSERT INTO `wp_postmeta` VALUES (983,205,'_edit_lock','1622464866:1');
INSERT INTO `wp_postmeta` VALUES (984,205,'_wp_page_template','page-cooperation.php');
INSERT INTO `wp_postmeta` VALUES (985,203,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1004,210,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1005,210,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1006,210,'_menu_item_object_id','205');
INSERT INTO `wp_postmeta` VALUES (1007,210,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1008,210,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1009,210,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1010,210,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1011,210,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1013,211,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (1014,211,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (1015,211,'_menu_item_object_id','203');
INSERT INTO `wp_postmeta` VALUES (1016,211,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (1017,211,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1018,211,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1019,211,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1020,211,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (1079,269,'_edit_lock','1622558779:1');
INSERT INTO `wp_postmeta` VALUES (1080,269,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1081,269,'pb_event_metadata_starts_on','2021-06-01T18:51');
INSERT INTO `wp_postmeta` VALUES (1082,269,'pb_event_metadata_ends_on','2021-06-04T14:51');
INSERT INTO `wp_postmeta` VALUES (1083,269,'pb_event_metadata_location','Galeri B9');
INSERT INTO `wp_postmeta` VALUES (1086,175,'post_extras_author_name','Prof. Jane Doe, M.Sn.');
INSERT INTO `wp_postmeta` VALUES (1087,175,'post_extras_author_photo_url','http://kampusku.local/wp-content/uploads/2021/05/avatar.jpg');
INSERT INTO `wp_postmeta` VALUES (1088,175,'post_extras_author_biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.');
INSERT INTO `wp_postmeta` VALUES (1091,172,'post_extras_author_name','Prof. John Doe, M.Ds.');
INSERT INTO `wp_postmeta` VALUES (1092,172,'post_extras_author_photo_url','http://kampusku.local/wp-content/uploads/2021/05/avatar-men.jpg');
INSERT INTO `wp_postmeta` VALUES (1093,172,'post_extras_author_biography','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.');
INSERT INTO `wp_postmeta` VALUES (1098,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1099,60,'hero_extras_featured_video_url','https://ugm.ac.id/video/adaptasipandemi.mp4');
INSERT INTO `wp_postmeta` VALUES (1100,60,'hero_extras_select_media','');
INSERT INTO `wp_postmeta` VALUES (1104,269,'event_extras_starts_on','2021-06-02T10:00');
INSERT INTO `wp_postmeta` VALUES (1105,269,'event_extras_ends_on','2021-06-04T16:00');
INSERT INTO `wp_postmeta` VALUES (1106,269,'event_extras_location','Ruang 1/2 Bundar, Dekanat');
INSERT INTO `wp_postmeta` VALUES (1107,273,'_edit_lock','1622558409:1');
INSERT INTO `wp_postmeta` VALUES (1108,273,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1109,273,'event_extras_starts_on','2021-03-01T10:00');
INSERT INTO `wp_postmeta` VALUES (1110,273,'event_extras_ends_on','2021-06-07T16:00');
INSERT INTO `wp_postmeta` VALUES (1111,273,'event_extras_location','Ruang 1/2 Bundar, Dekanat');
INSERT INTO `wp_postmeta` VALUES (1112,274,'_edit_lock','1622560909:1');
INSERT INTO `wp_postmeta` VALUES (1113,274,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1114,274,'event_extras_starts_on','2021-07-12T10:00');
INSERT INTO `wp_postmeta` VALUES (1115,274,'event_extras_ends_on','2021-07-19T16:00');
INSERT INTO `wp_postmeta` VALUES (1116,274,'event_extras_location','Ruang 1/2 Bundar, Dekanat');
INSERT INTO `wp_postmeta` VALUES (1120,274,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (1121,275,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (1122,275,'_menu_item_menu_item_parent','14');
INSERT INTO `wp_postmeta` VALUES (1123,275,'_menu_item_object_id','275');
INSERT INTO `wp_postmeta` VALUES (1124,275,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (1125,275,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (1126,275,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (1127,275,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (1128,275,'_menu_item_url','/events');
INSERT INTO `wp_postmeta` VALUES (1130,155,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1131,10,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1132,15,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1133,11,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1134,126,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1135,127,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1136,187,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1137,186,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1138,148,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1139,12,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1140,149,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1141,154,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1142,202,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1143,13,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1144,168,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1145,171,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1146,143,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1147,14,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1148,150,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1149,179,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1150,151,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1151,9,'_wp_old_date','2021-05-31');
INSERT INTO `wp_postmeta` VALUES (1154,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1155,1,'post_extras_author_name','');
INSERT INTO `wp_postmeta` VALUES (1156,1,'post_extras_author_photo_url','');
INSERT INTO `wp_postmeta` VALUES (1157,1,'post_extras_author_biography','');
INSERT INTO `wp_postmeta` VALUES (1168,172,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (1175,277,'_edit_lock','1622650991:1');
INSERT INTO `wp_postmeta` VALUES (1178,277,'_thumbnail_id','61');
INSERT INTO `wp_postmeta` VALUES (1179,277,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1180,277,'post_extras_author_name','Prof. Jack Doe, M.A.');
INSERT INTO `wp_postmeta` VALUES (1181,277,'post_extras_author_photo_url','http://kampusku.local/wp-content/uploads/2021/05/avatar-men.jpg');
INSERT INTO `wp_postmeta` VALUES (1182,277,'post_extras_author_biography','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.');
INSERT INTO `wp_postmeta` VALUES (1183,155,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1184,10,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1185,15,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1186,11,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1187,126,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1188,127,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1189,187,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1190,186,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1191,148,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1192,12,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1193,149,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1194,154,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1195,202,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1196,13,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1197,168,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1198,171,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1199,143,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1200,14,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1201,150,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1202,179,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1203,275,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1204,151,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1205,9,'_wp_old_date','2021-06-01');
INSERT INTO `wp_postmeta` VALUES (1208,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1209,100,'post_extras_author_name','');
INSERT INTO `wp_postmeta` VALUES (1210,100,'post_extras_author_photo_url','');
INSERT INTO `wp_postmeta` VALUES (1211,100,'post_extras_author_biography','');
INSERT INTO `wp_postmeta` VALUES (1212,286,'_edit_lock','1628611472:1');
INSERT INTO `wp_postmeta` VALUES (1213,286,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1214,286,'video_extras_video_kind','youtube');
INSERT INTO `wp_postmeta` VALUES (1215,286,'video_extras_video_url','https://www.youtube.com/embed/0WWnltHq0K4');
INSERT INTO `wp_postmeta` VALUES (1216,287,'_edit_lock','1628612386:1');
INSERT INTO `wp_postmeta` VALUES (1217,287,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1218,287,'video_extras_video_kind','youtube');
INSERT INTO `wp_postmeta` VALUES (1219,287,'video_extras_video_url','https://www.youtube.com/embed/VryafcKJF94');
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
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-05-24 12:10:15','2021-05-24 12:10:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','closed','closed','','hello-world','','','2021-06-02 05:31:24','2021-06-02 05:31:24','',0,'http://kampusku.local/?p=1',0,'post','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-05-24 12:10:15','2021-05-24 12:10:15','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://kampusku.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-05-24 12:10:15','2021-05-24 12:10:15','',0,'http://kampusku.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-06-04 07:48:25','2021-05-26 06:24:28','','Tentang Kami','','publish','closed','closed','','world','','','2021-06-04 07:48:25','2021-06-04 07:48:25','',0,'http://kampusku.local/?p=9',23,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-06-04 07:48:24','2021-05-26 12:36:14','','Akademik','','publish','closed','closed','','akademik','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=10',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-06-04 07:48:24','2021-05-26 12:36:14','','Penelitian & Pengabdian','','publish','closed','closed','','penelitan-dan-pengabdian','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=11',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-06-04 07:48:24','2021-05-26 12:36:14','','Kemahasiswaan','','publish','closed','closed','','kemahasiswaan','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=12',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-06-04 07:48:24','2021-05-26 12:36:14','','Layanan','','publish','closed','closed','','layanan','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=13',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-06-04 07:48:24','2021-05-26 12:36:14','','Berita','','publish','closed','closed','','berita','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=14',18,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-06-04 07:48:24','2021-05-26 12:36:14','','Program Studi','','publish','closed','closed','','program-studi','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=15',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-05-27 03:33:18','2021-05-27 03:33:18','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sejarah','','publish','closed','closed','','sejarah','','','2021-05-29 16:04:33','2021-05-29 16:04:33','',0,'http://kampusku.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-05-27 03:31:29','2021-05-27 03:31:29','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sejarah','','inherit','closed','closed','','16-revision-v1','','','2021-05-27 03:31:29','2021-05-27 03:31:29','',16,'http://kampusku.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-05-29 12:01:02','2021-05-29 12:01:02','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Visi dan Misi','','publish','closed','closed','','visi-dan-misi','','','2021-05-29 16:05:11','2021-05-29 16:05:11','',0,'http://kampusku.local/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-05-27 03:37:19','2021-05-27 03:37:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Visi dan Misi','','inherit','closed','closed','','19-revision-v1','','','2021-05-27 03:37:19','2021-05-27 03:37:19','',19,'http://kampusku.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-05-29 12:00:49','2021-05-29 12:00:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Tujuan dan Semboyan','','publish','closed','closed','','tujuan-dan-semboyan','','','2021-05-29 16:05:00','2021-05-29 16:05:00','',0,'http://kampusku.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-05-27 03:38:10','2021-05-27 03:38:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Tujuan dan Semboyan','','inherit','closed','closed','','21-revision-v1','','','2021-05-27 03:38:10','2021-05-27 03:38:10','',21,'http://kampusku.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-05-27 04:01:44','2021-05-27 04:01:44','<!-- wp:paragraph {\"dropCap\":true} -->\n<p class=\"has-drop-cap\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sejarah','','inherit','closed','closed','','16-revision-v1','','','2021-05-27 04:01:44','2021-05-27 04:01:44','',16,'http://kampusku.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-05-27 04:06:34','2021-05-27 04:06:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sejarah','','inherit','closed','closed','','16-revision-v1','','','2021-05-27 04:06:34','2021-05-27 04:06:34','',16,'http://kampusku.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-05-27 08:38:34','2021-05-27 08:38:34','','UNNES','','inherit','open','closed','','pngegg','','','2021-05-27 08:39:28','2021-05-27 08:39:28','',0,'http://kampusku.local/wp-content/uploads/2021/05/pngegg.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-05-27 09:33:21','0000-00-00 00:00:00','','Lorem ipsum','','draft','closed','closed','','','','','2021-05-27 09:33:21','0000-00-00 00:00:00','',0,'http://kampusku.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-05-27 10:38:56','2021-05-27 10:07:35','','Lorem ipsum','','publish','closed','closed','','lorem-ipsum','','','2021-05-27 10:38:56','2021-05-27 10:38:56','',0,'http://kampusku.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-05-27 10:38:56','2021-05-27 10:07:35','','Adipiscing elit','','publish','closed','closed','','adipiscing-elit','','','2021-05-27 10:38:56','2021-05-27 10:38:56','',0,'http://kampusku.local/?p=38',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-05-27 10:38:56','2021-05-27 10:07:35','','Sed do eiusmod tempor','','publish','closed','closed','','sed-do-eiusmod-tempor','','','2021-05-27 10:38:56','2021-05-27 10:38:56','',0,'http://kampusku.local/?p=39',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-05-27 10:38:57','2021-05-27 10:07:35','','Incididunt ut labore','','publish','closed','closed','','incididunt-ut-labore','','','2021-05-27 10:38:57','2021-05-27 10:38:57','',0,'http://kampusku.local/?p=40',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-05-27 10:38:57','2021-05-27 10:07:35','','Et dolore magna aliqua','','publish','closed','closed','','et-dolore-magna-aliqua','','','2021-05-27 10:38:57','2021-05-27 10:38:57','',0,'http://kampusku.local/?p=41',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-05-27 10:38:48','2021-05-27 10:34:05','','Sed ut perspiciatis','','publish','closed','closed','','sed-ut-perspiciatis','','','2021-05-27 10:38:48','2021-05-27 10:38:48','',0,'http://kampusku.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-05-27 10:38:36','2021-05-27 10:35:58','','At vero eos et accusamus','','publish','closed','closed','','at-vero-eos-et-accusamus','','','2021-05-27 10:38:36','2021-05-27 10:38:36','',0,'http://kampusku.local/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-05-27 10:38:36','2021-05-27 10:37:22','','Adipiscing elit','','publish','closed','closed','','adipiscing-elit-2','','','2021-05-27 10:38:36','2021-05-27 10:38:36','',0,'http://kampusku.local/?p=44',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-05-27 10:38:36','2021-05-27 10:37:22','','Sed do eiusmod tempor','','publish','closed','closed','','sed-do-eiusmod-tempor-2','','','2021-05-27 10:38:36','2021-05-27 10:38:36','',0,'http://kampusku.local/?p=45',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-05-27 10:38:36','2021-05-27 10:37:22','','Incididunt ut labore','','publish','closed','closed','','incididunt-ut-labore-2','','','2021-05-27 10:38:36','2021-05-27 10:38:36','',0,'http://kampusku.local/?p=46',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-05-27 10:38:36','2021-05-27 10:37:22','','Et dolore magna aliqua','','publish','closed','closed','','et-dolore-magna-aliqua-2','','','2021-05-27 10:38:36','2021-05-27 10:38:36','',0,'http://kampusku.local/?p=47',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-05-27 10:38:48','2021-05-27 10:38:21','','Adipiscing elit','','publish','closed','closed','','adipiscing-elit-3','','','2021-05-27 10:38:48','2021-05-27 10:38:48','',0,'http://kampusku.local/?p=48',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-05-27 10:38:48','2021-05-27 10:38:21','','Sed do eiusmod tempor','','publish','closed','closed','','sed-do-eiusmod-tempor-3','','','2021-05-27 10:38:48','2021-05-27 10:38:48','',0,'http://kampusku.local/?p=49',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-05-27 10:38:48','2021-05-27 10:38:21','','Incididunt ut labore','','publish','closed','closed','','incididunt-ut-labore-3','','','2021-05-27 10:38:48','2021-05-27 10:38:48','',0,'http://kampusku.local/?p=50',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-05-27 10:38:48','2021-05-27 10:38:21','','Et dolore magna aliqua','','publish','closed','closed','','et-dolore-magna-aliqua-3','','','2021-05-27 10:38:48','2021-05-27 10:38:48','',0,'http://kampusku.local/?p=51',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-05-27 15:39:00','2021-05-27 15:39:00','<section class=\"margin-xlarge margin-large@m margin-medium@s position-absolute position-bottom-right light-color z-1\">\n<h3>Penerimaan Mahasiswa Baru</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, and sed do eiusmod\n<div><a class=\"button button-primary\" href=\"#\">Lakukan pendaftaran</a></div>\n</section>','Landing the beach!','','publish','closed','closed','','landing-the-beach','','','2021-06-02 12:14:38','2021-06-02 12:14:38','',0,'http://kampusku.local/?post_type=heroes&#038;p=60',0,'heroes','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-05-27 15:36:54','2021-05-27 15:36:54','','my-featured-image','','inherit','open','closed','','my-featured-image','','','2021-05-27 15:36:54','2021-05-27 15:36:54','',60,'http://kampusku.local/wp-content/uploads/2021/05/my-featured-image.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-05-29 12:01:32','2021-05-29 12:01:32','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sambutan Dekan','','publish','closed','closed','','sambutan-dekan','','','2021-06-12 09:18:31','2021-06-12 09:18:31','',0,'http://kampusku.local/?page_id=80',0,'page','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-05-29 12:01:32','2021-05-29 12:01:32','','Sambutan Dekan','','inherit','closed','closed','','80-revision-v1','','','2021-05-29 12:01:32','2021-05-29 12:01:32','',80,'http://kampusku.local/?p=81',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-05-29 12:01:56','2021-05-29 12:01:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sambutan Dekan','','inherit','closed','closed','','80-revision-v1','','','2021-05-29 12:01:56','2021-05-29 12:01:56','',80,'http://kampusku.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-05-29 12:03:03','2021-05-29 12:03:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Struktur Organisasi','','publish','closed','closed','','struktur-organisasi','','','2021-05-29 16:04:43','2021-05-29 16:04:43','',0,'http://kampusku.local/?page_id=83',0,'page','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-05-29 12:03:03','2021-05-29 12:03:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Struktur Organisasi','','inherit','closed','closed','','83-revision-v1','','','2021-05-29 12:03:03','2021-05-29 12:03:03','',83,'http://kampusku.local/?p=84',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-05-29 12:03:33','2021-05-29 12:03:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pimpinan dan Staf','','publish','closed','closed','','pimpinan-dan-staf','','','2021-05-29 16:03:59','2021-05-29 16:03:59','',0,'http://kampusku.local/?page_id=85',0,'page','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-05-29 12:03:33','2021-05-29 12:03:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pimpinan dan Staf','','inherit','closed','closed','','85-revision-v1','','','2021-05-29 12:03:33','2021-05-29 12:03:33','',85,'http://kampusku.local/?p=86',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-05-31 08:57:42','2021-05-29 12:07:22',' ','','','publish','closed','closed','','87','','','2021-05-31 08:57:42','2021-05-31 08:57:42','',0,'http://kampusku.local/?p=87',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-05-31 08:57:42','2021-05-29 12:07:22',' ','','','publish','closed','closed','','88','','','2021-05-31 08:57:42','2021-05-31 08:57:42','',0,'http://kampusku.local/?p=88',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-05-31 08:57:41','2021-05-29 12:07:22',' ','','','publish','closed','closed','','89','','','2021-05-31 08:57:41','2021-05-31 08:57:41','',0,'http://kampusku.local/?p=89',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-05-31 08:57:41','2021-05-29 12:07:22',' ','','','publish','closed','closed','','90','','','2021-05-31 08:57:41','2021-05-31 08:57:41','',0,'http://kampusku.local/?p=90',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-05-31 08:57:41','2021-05-29 12:07:22',' ','','','publish','closed','closed','','91','','','2021-05-31 08:57:41','2021-05-31 08:57:41','',0,'http://kampusku.local/?p=91',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-05-31 08:57:41','2021-05-29 12:07:22',' ','','','publish','closed','closed','','92','','','2021-05-31 08:57:41','2021-05-31 08:57:41','',0,'http://kampusku.local/?p=92',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-05-29 13:26:40','2021-05-29 13:26:40','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-05-29 13:26:40','2021-05-29 13:26:40','',1,'http://kampusku.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-05-29 13:54:04','2021-05-29 13:54:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-05-29 13:54:04','2021-05-29 13:54:04','',1,'http://kampusku.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-05-30 03:07:32','2021-05-30 03:07:32','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Bonjour!','','publish','closed','closed','','bonjour','','','2021-05-30 03:07:32','2021-05-30 03:07:32','',0,'http://kampusku.local/?p=98',0,'post','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-05-30 03:07:32','2021-05-30 03:07:32','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Bonjour!','','inherit','closed','closed','','98-revision-v1','','','2021-05-30 03:07:32','2021-05-30 03:07:32','',98,'http://kampusku.local/?p=99',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-05-30 03:08:20','2021-05-30 03:08:20','<!-- wp:paragraph -->\n<p>Sepanjang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Hola!','','publish','closed','closed','','hola','','','2021-06-15 01:57:19','2021-06-15 01:57:19','',0,'http://kampusku.local/?p=100',0,'post','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-05-30 03:08:20','2021-05-30 03:08:20','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Hola!','','inherit','closed','closed','','100-revision-v1','','','2021-05-30 03:08:20','2021-05-30 03:08:20','',100,'http://kampusku.local/?p=101',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-05-30 04:46:41','2021-05-30 04:46:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Aloha!','','publish','closed','closed','','aloha','','','2021-05-30 04:46:41','2021-05-30 04:46:41','',0,'http://kampusku.local/?p=102',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-05-30 04:46:41','2021-05-30 04:46:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Aloha!','','inherit','closed','closed','','102-revision-v1','','','2021-05-30 04:46:41','2021-05-30 04:46:41','',102,'http://kampusku.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-05-30 04:47:22','2021-05-30 04:47:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Konnichiwa!','','publish','closed','closed','','konnichiwa','','','2021-05-30 04:47:22','2021-05-30 04:47:22','',0,'http://kampusku.local/?p=104',0,'post','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-05-30 04:47:22','2021-05-30 04:47:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Konnichiwa!','','inherit','closed','closed','','104-revision-v1','','','2021-05-30 04:47:22','2021-05-30 04:47:22','',104,'http://kampusku.local/?p=105',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-05-30 16:30:13','2021-05-30 16:30:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Jurusan Seni Rupa','','publish','closed','closed','','jurusan-seni-rupa','','','2021-05-30 16:30:57','2021-05-30 16:30:57','',0,'http://kampusku.local/?page_id=106',0,'page','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-05-30 16:30:13','2021-05-30 16:30:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Seni Rupa','','inherit','closed','closed','','106-revision-v1','','','2021-05-30 16:30:13','2021-05-30 16:30:13','',106,'http://kampusku.local/?p=107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-05-30 16:30:57','2021-05-30 16:30:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Jurusan Seni Rupa','','inherit','closed','closed','','106-revision-v1','','','2021-05-30 16:30:57','2021-05-30 16:30:57','',106,'http://kampusku.local/?p=108',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-05-30 16:32:02','2021-05-30 16:32:02','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','S1 Pendidikan Seni Rupa','','publish','closed','closed','','s1-pendidikan-seni-rupa','','','2021-05-30 16:45:29','2021-05-30 16:45:29','',106,'http://kampusku.local/?page_id=109',0,'page','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-05-30 16:32:02','2021-05-30 16:32:02','','S1 Pendidikan Seni Rupa','','inherit','closed','closed','','109-revision-v1','','','2021-05-30 16:32:02','2021-05-30 16:32:02','',109,'http://kampusku.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-05-30 16:32:08','2021-05-30 16:32:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','S1 Pendidikan Seni Rupa','','inherit','closed','closed','','109-revision-v1','','','2021-05-30 16:32:08','2021-05-30 16:32:08','',109,'http://kampusku.local/?p=111',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-05-30 16:32:34','2021-05-30 16:32:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','S1 Seni Rupa','','publish','closed','closed','','s1-seni-rupa','','','2021-05-30 16:45:49','2021-05-30 16:45:49','',106,'http://kampusku.local/?page_id=112',0,'page','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-05-30 16:32:34','2021-05-30 16:32:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','S1 Seni Rupa','','inherit','closed','closed','','112-revision-v1','','','2021-05-30 16:32:34','2021-05-30 16:32:34','',112,'http://kampusku.local/?p=113',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-05-30 16:33:05','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-05-30 16:33:05','0000-00-00 00:00:00','',0,'http://kampusku.local/?p=114',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-05-30 16:33:05','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-05-30 16:33:05','0000-00-00 00:00:00','',0,'http://kampusku.local/?p=115',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-05-30 16:33:05','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-05-30 16:33:05','0000-00-00 00:00:00','',0,'http://kampusku.local/?p=116',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-05-30 16:35:34','2021-05-30 16:35:16',' ','','','publish','closed','closed','','117','','','2021-05-30 16:35:34','2021-05-30 16:35:34','',0,'http://kampusku.local/?p=117',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-05-30 16:35:34','2021-05-30 16:35:16',' ','','','publish','closed','closed','','118','','','2021-05-30 16:35:34','2021-05-30 16:35:34','',0,'http://kampusku.local/?p=118',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-05-30 16:35:34','2021-05-30 16:35:16','','Seni Rupa','','publish','closed','closed','','seni-rupa','','','2021-05-30 16:35:34','2021-05-30 16:35:34','',0,'http://kampusku.local/?p=119',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-05-30 16:44:13','2021-05-30 16:44:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Imajinasi','','publish','closed','closed','','jurnal-imajinasi','','','2021-05-30 16:44:13','2021-05-30 16:44:13','',0,'http://kampusku.local/?page_id=120',0,'page','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-05-30 16:44:13','2021-05-30 16:44:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Imajinasi','','inherit','closed','closed','','120-revision-v1','','','2021-05-30 16:44:13','2021-05-30 16:44:13','',120,'http://kampusku.local/?p=121',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-05-30 16:45:06','2021-05-30 16:45:06','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Harmonia','','publish','closed','closed','','jurnal-harmonia','','','2021-05-30 16:45:06','2021-05-30 16:45:06','',0,'http://kampusku.local/?page_id=122',0,'page','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-05-30 16:45:06','2021-05-30 16:45:06','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Harmonia','','inherit','closed','closed','','122-revision-v1','','','2021-05-30 16:45:06','2021-05-30 16:45:06','',122,'http://kampusku.local/?p=123',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-05-30 16:55:05','2021-05-30 16:55:05',' ','','','publish','closed','closed','','124','','','2021-05-30 16:55:05','2021-05-30 16:55:05','',0,'http://kampusku.local/?p=124',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-05-30 16:55:05','2021-05-30 16:55:05',' ','','','publish','closed','closed','','125','','','2021-05-30 16:55:05','2021-05-30 16:55:05','',0,'http://kampusku.local/?p=125',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-06-04 07:48:24','2021-05-30 16:57:22','','Jurnal Akademik','','publish','closed','closed','','jurnal','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=126',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-06-04 07:48:24','2021-05-30 16:59:24','','Prosiding dan Konferensi','','publish','closed','closed','','prosiding-dan-konferensi','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=127',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-05-30 17:16:19','2021-05-30 17:16:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Unduhan','','publish','closed','closed','','unduhan','','','2021-05-31 09:00:44','2021-05-31 09:00:44','',0,'http://kampusku.local/?page_id=139',0,'page','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2021-05-30 17:16:19','2021-05-30 17:16:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Arsip dan Dokumen','','inherit','closed','closed','','139-revision-v1','','','2021-05-30 17:16:19','2021-05-30 17:16:19','',139,'http://kampusku.local/?p=140',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2021-05-30 17:16:39','2021-05-30 17:16:39','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Fasilitas','','publish','closed','closed','','fasilitas','','','2021-05-30 17:16:39','2021-05-30 17:16:39','',0,'http://kampusku.local/?page_id=141',0,'page','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-05-30 17:16:39','2021-05-30 17:16:39','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Fasilitas','','inherit','closed','closed','','141-revision-v1','','','2021-05-30 17:16:39','2021-05-30 17:16:39','',141,'http://kampusku.local/?p=142',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2021-06-04 07:48:24','2021-05-30 17:17:29',' ','','','publish','closed','closed','','143','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=143',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2021-06-04 07:48:24','2021-05-31 03:59:58',' ','','','publish','closed','closed','','148','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=148',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2021-06-04 07:48:24','2021-05-31 04:00:50',' ','','','publish','closed','closed','','149','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=149',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2021-06-04 07:48:25','2021-05-31 04:01:16',' ','','','publish','closed','closed','','150','','','2021-06-04 07:48:25','2021-06-04 07:48:25','',0,'http://kampusku.local/?p=150',19,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2021-06-04 07:48:25','2021-05-31 04:01:16',' ','','','publish','closed','closed','','151','','','2021-06-04 07:48:25','2021-06-04 07:48:25','',0,'http://kampusku.local/?p=151',22,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2021-05-31 04:02:04','2021-05-31 04:02:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Tracer Study','','publish','closed','closed','','tracer-study','','','2021-05-31 04:02:04','2021-05-31 04:02:04','',0,'http://kampusku.local/?page_id=152',0,'page','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2021-05-31 04:02:04','2021-05-31 04:02:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Tracer Study','','inherit','closed','closed','','152-revision-v1','','','2021-05-31 04:02:04','2021-05-31 04:02:04','',152,'http://kampusku.local/?p=153',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2021-06-04 07:48:24','2021-05-31 04:02:54',' ','','','publish','closed','closed','','154','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=154',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2021-06-04 07:48:24','2021-05-31 04:11:54','','Beranda','','publish','closed','closed','','beranda','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=155',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2021-05-31 08:54:56','2021-05-31 08:54:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Senat','','publish','closed','closed','','senat','','','2021-05-31 08:54:56','2021-05-31 08:54:56','',0,'http://kampusku.local/?page_id=158',0,'page','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2021-05-31 08:54:56','2021-05-31 08:54:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Senat','','inherit','closed','closed','','158-revision-v1','','','2021-05-31 08:54:56','2021-05-31 08:54:56','',158,'http://kampusku.local/?p=159',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2021-05-31 08:55:31','2021-05-31 08:55:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Dosen','','publish','closed','closed','','dosen','','','2021-05-31 08:55:31','2021-05-31 08:55:31','',0,'http://kampusku.local/?page_id=160',0,'page','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2021-05-31 08:55:31','2021-05-31 08:55:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Dosen','','inherit','closed','closed','','160-revision-v1','','','2021-05-31 08:55:31','2021-05-31 08:55:31','',160,'http://kampusku.local/?p=161',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2021-05-31 08:56:02','2021-05-31 08:56:02','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Tenaga Kependidikan','','publish','closed','closed','','tenaga-kependidikan','','','2021-05-31 08:56:02','2021-05-31 08:56:02','',0,'http://kampusku.local/?page_id=162',0,'page','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2021-05-31 08:56:02','2021-05-31 08:56:02','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Tenaga Kependidikan','','inherit','closed','closed','','162-revision-v1','','','2021-05-31 08:56:02','2021-05-31 08:56:02','',162,'http://kampusku.local/?p=163',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2021-05-31 08:57:42','2021-05-31 08:57:42',' ','','','publish','closed','closed','','164','','','2021-05-31 08:57:42','2021-05-31 08:57:42','',0,'http://kampusku.local/?p=164',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2021-05-31 08:57:42','2021-05-31 08:57:42',' ','','','publish','closed','closed','','165','','','2021-05-31 08:57:42','2021-05-31 08:57:42','',0,'http://kampusku.local/?p=165',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2021-05-31 08:57:42','2021-05-31 08:57:42',' ','','','publish','closed','closed','','166','','','2021-05-31 08:57:42','2021-05-31 08:57:42','',0,'http://kampusku.local/?p=166',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2021-05-31 09:00:44','2021-05-31 09:00:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Unduhan','','inherit','closed','closed','','139-revision-v1','','','2021-05-31 09:00:44','2021-05-31 09:00:44','',139,'http://kampusku.local/?p=167',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2021-06-04 07:48:24','2021-05-31 09:01:12',' ','','','publish','closed','closed','','168','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=168',15,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2021-05-31 09:03:12','2021-05-31 09:03:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pengajuan Legalisir','','publish','closed','closed','','pengajuan-legalisir','','','2021-05-31 09:03:12','2021-05-31 09:03:12','',0,'http://kampusku.local/?page_id=169',0,'page','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2021-05-31 09:03:12','2021-05-31 09:03:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pengajuan Legalisir','','inherit','closed','closed','','169-revision-v1','','','2021-05-31 09:03:12','2021-05-31 09:03:12','',169,'http://kampusku.local/?p=170',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2021-06-04 07:48:24','2021-05-31 09:03:37',' ','','','publish','closed','closed','','171','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=171',16,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2021-05-31 09:08:12','2021-05-31 09:08:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Seberapa jauh engkau melangkah','','publish','closed','closed','','seberapa-jauh-engkau-melangkah','','','2021-06-02 11:10:07','2021-06-02 11:10:07','',0,'http://kampusku.local/?p=172',0,'post','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2021-05-31 09:07:54','2021-05-31 09:07:54','','Prof. Jane Doe, M.Sn.','','inherit','open','closed','','avatar','','','2021-05-31 09:14:28','2021-05-31 09:14:28','',172,'http://kampusku.local/wp-content/uploads/2021/05/avatar.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (174,1,'2021-05-31 09:08:12','2021-05-31 09:08:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Seberapa jauh engkau melangkah','','inherit','closed','closed','','172-revision-v1','','','2021-05-31 09:08:12','2021-05-31 09:08:12','',172,'http://kampusku.local/?p=174',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2021-05-31 09:11:18','2021-05-31 09:11:18','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Berjalan di tepi pantai','','publish','closed','closed','','berjalan-di-tepi-pantai','','','2021-06-02 05:38:33','2021-06-02 05:38:33','',0,'http://kampusku.local/?p=175',0,'post','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2021-05-31 09:11:18','2021-05-31 09:11:18','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Berjalan di tepi pantai','','inherit','closed','closed','','175-revision-v1','','','2021-05-31 09:11:18','2021-05-31 09:11:18','',175,'http://kampusku.local/?p=176',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2021-05-31 09:13:39','2021-05-31 09:13:39','','Prof. John Doe, M.Ds.','','inherit','open','closed','','avatar-men','','','2021-05-31 09:15:55','2021-05-31 09:15:55','',175,'http://kampusku.local/wp-content/uploads/2021/05/avatar-men.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (179,1,'2021-06-04 07:48:25','2021-05-31 09:34:58',' ','','','publish','closed','closed','','179','','','2021-06-04 07:48:25','2021-06-04 07:48:25','',0,'http://kampusku.local/?p=179',20,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (180,1,'2021-05-31 11:10:14','2021-05-31 11:10:14','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','English Language Teaching, Literature, and Translation','','publish','closed','closed','','english-language-teaching-literature-and-translation','','','2021-05-31 12:10:20','2021-05-31 12:10:20','',0,'http://kampusku.local/?page_id=180',0,'page','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2021-05-31 11:10:14','2021-05-31 11:10:14','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','English Language Teaching, Literature, and Translation','','inherit','closed','closed','','180-revision-v1','','','2021-05-31 11:10:14','2021-05-31 11:10:14','',180,'http://kampusku.local/?p=181',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2021-05-31 11:11:30','2021-05-31 11:11:30','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Gugus Penjaminan Mutu','','publish','closed','closed','','gugus-penjaminan-mutu','','','2021-05-31 11:20:06','2021-05-31 11:20:06','',0,'http://kampusku.local/?page_id=182',0,'page','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2021-05-31 11:11:30','2021-05-31 11:11:30','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Penjaminan Mutu','','inherit','closed','closed','','182-revision-v1','','','2021-05-31 11:11:30','2021-05-31 11:11:30','',182,'http://kampusku.local/?p=183',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2021-05-31 11:14:04','2021-05-31 11:14:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pusat Kajian Pesisir','','publish','closed','closed','','pusat-kajian-pesisir','','','2021-05-31 11:14:04','2021-05-31 11:14:04','',0,'http://kampusku.local/?page_id=184',0,'page','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2021-05-31 11:14:04','2021-05-31 11:14:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pusat Kajian Pesisir','','inherit','closed','closed','','184-revision-v1','','','2021-05-31 11:14:04','2021-05-31 11:14:04','',184,'http://kampusku.local/?p=185',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2021-06-04 07:48:24','2021-05-31 11:18:36','','Pusat Kajian','','publish','closed','closed','','pusat-kajian-dan-studi','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=186',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (187,1,'2021-06-04 07:48:24','2021-05-31 11:18:36','','Gugus Pengembangan','','publish','closed','closed','','gugus-pengembangan','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=187',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2021-05-31 11:20:06','2021-05-31 11:20:06','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Gugus Penjaminan Mutu','','inherit','closed','closed','','182-revision-v1','','','2021-05-31 11:20:06','2021-05-31 11:20:06','',182,'http://kampusku.local/?p=188',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (190,1,'2021-05-31 11:27:35','2021-05-31 11:27:35',' ','','','publish','closed','closed','','190','','','2021-05-31 11:27:35','2021-05-31 11:27:35','',0,'http://kampusku.local/?p=190',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (191,1,'2021-05-31 11:49:40','2021-05-31 11:28:00',' ','','','publish','closed','closed','','191','','','2021-05-31 11:49:40','2021-05-31 11:49:40','',0,'http://kampusku.local/?p=191',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (199,1,'2021-05-31 12:10:59','2021-05-31 11:52:58',' ','','','publish','closed','closed','','199','','','2021-05-31 12:10:59','2021-05-31 12:10:59','',0,'http://kampusku.local/?p=199',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (202,1,'2021-06-04 07:48:24','2021-05-31 12:34:15','','Kerja Sama','','publish','closed','closed','','kerjasama','','','2021-06-04 07:48:24','2021-06-04 07:48:24','',0,'http://kampusku.local/?p=202',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (203,1,'2021-05-31 12:43:00','2021-05-31 12:43:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Kerja Sama Dalam Negeri','','publish','closed','closed','','kerja-sama-dalam-negeri','','','2021-05-31 12:46:56','2021-05-31 12:46:56','',0,'http://kampusku.local/?page_id=203',0,'page','',0);
INSERT INTO `wp_posts` VALUES (204,1,'2021-05-31 12:43:00','2021-05-31 12:43:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Kerja Sama dalam Negeri','','inherit','closed','closed','','203-revision-v1','','','2021-05-31 12:43:00','2021-05-31 12:43:00','',203,'http://kampusku.local/?p=204',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (205,1,'2021-05-31 12:43:29','2021-05-31 12:43:29','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Kerja Sama Luar Negeri','','publish','closed','closed','','kerja-sama-luar-negeri','','','2021-05-31 12:43:29','2021-05-31 12:43:29','',0,'http://kampusku.local/?page_id=205',0,'page','',0);
INSERT INTO `wp_posts` VALUES (206,1,'2021-05-31 12:43:29','2021-05-31 12:43:29','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Kerja Sama Luar Negeri','','inherit','closed','closed','','205-revision-v1','','','2021-05-31 12:43:29','2021-05-31 12:43:29','',205,'http://kampusku.local/?p=206',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (207,1,'2021-05-31 12:43:49','2021-05-31 12:43:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Kerja Sama Dalam Negeri','','inherit','closed','closed','','203-revision-v1','','','2021-05-31 12:43:49','2021-05-31 12:43:49','',203,'http://kampusku.local/?p=207',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (210,1,'2021-05-31 12:46:00','2021-05-31 12:46:00',' ','','','publish','closed','closed','','210','','','2021-05-31 12:46:00','2021-05-31 12:46:00','',0,'http://kampusku.local/?p=210',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (211,1,'2021-05-31 12:46:00','2021-05-31 12:46:00',' ','','','publish','closed','closed','','211','','','2021-05-31 12:46:00','2021-05-31 12:46:00','',0,'http://kampusku.local/?p=211',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (269,1,'2021-06-01 06:33:04','2021-06-01 06:33:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pemeran SIDLEFEST','','publish','closed','closed','','pemeran-sidlefest','','','2021-06-01 14:19:46','2021-06-01 14:19:46','',0,'http://kampusku.local/?post_type=events&#038;p=269',0,'events','',0);
INSERT INTO `wp_posts` VALUES (273,1,'2021-06-01 14:31:54','2021-06-01 14:31:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pameran Kosrumnas','','publish','closed','closed','','pameran-kosrumnas','','','2021-06-01 14:31:54','2021-06-01 14:31:54','',0,'http://kampusku.local/?post_type=events&#038;p=273',0,'events','',0);
INSERT INTO `wp_posts` VALUES (274,1,'2021-06-01 14:43:42','2021-06-01 14:43:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Pameran SIAPFEST','','publish','closed','closed','','pameran-siapfest','','','2021-06-01 15:21:49','2021-06-01 15:21:49','',0,'http://kampusku.local/?post_type=events&#038;p=274',0,'events','',0);
INSERT INTO `wp_posts` VALUES (275,1,'2021-06-04 07:48:25','2021-06-01 15:40:56','','Agenda','','publish','closed','closed','','agenda','','','2021-06-04 07:48:25','2021-06-04 07:48:25','',0,'http://kampusku.local/?p=275',21,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (277,1,'2021-06-02 16:23:10','2021-06-02 16:23:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Penantian pantang menyerah','','publish','closed','closed','','penantian-pantang-menyerah','','','2021-06-02 16:23:11','2021-06-02 16:23:11','',0,'http://kampusku.local/?p=277',0,'post','',0);
INSERT INTO `wp_posts` VALUES (278,1,'2021-06-02 16:23:10','2021-06-02 16:23:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Penantian pantang menyerah','','inherit','closed','closed','','277-revision-v1','','','2021-06-02 16:23:10','2021-06-02 16:23:10','',277,'http://kampusku.local/?p=278',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (280,1,'2021-06-12 09:05:26','2021-06-12 09:05:26','','Sambutan Dekan','','inherit','closed','closed','','80-revision-v1','','','2021-06-12 09:05:26','2021-06-12 09:05:26','',80,'http://kampusku.local/?p=280',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (281,1,'2021-06-12 09:09:08','2021-06-12 09:09:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sambutan Dekan','','inherit','closed','closed','','80-revision-v1','','','2021-06-12 09:09:08','2021-06-12 09:09:08','',80,'http://kampusku.local/?p=281',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (282,1,'2021-06-12 09:12:06','2021-06-12 09:12:06','','Sambutan Dekan','','inherit','closed','closed','','80-revision-v1','','','2021-06-12 09:12:06','2021-06-12 09:12:06','',80,'http://kampusku.local/?p=282',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (283,1,'2021-06-12 09:12:33','2021-06-12 09:12:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Sambutan Dekan','','inherit','closed','closed','','80-revision-v1','','','2021-06-12 09:12:33','2021-06-12 09:12:33','',80,'http://kampusku.local/?p=283',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (284,1,'2021-06-15 01:57:18','2021-06-15 01:57:18','<!-- wp:paragraph -->\n<p>Sepanjang Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\n<!-- /wp:paragraph -->','Hola!','','inherit','closed','closed','','100-revision-v1','','','2021-06-15 01:57:18','2021-06-15 01:57:18','',100,'http://kampusku.local/?p=284',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (285,1,'2021-08-10 15:24:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-08-10 15:24:02','0000-00-00 00:00:00','',0,'http://kampusku.local/?p=285',0,'post','',0);
INSERT INTO `wp_posts` VALUES (286,1,'2021-08-10 15:47:03','2021-08-10 15:47:03','','Something in the cloud','','publish','closed','closed','','something-in-the-cloud','','','2021-08-10 15:47:03','2021-08-10 15:47:03','',0,'http://kampusku.local/?post_type=videos&#038;p=286',0,'videos','',0);
INSERT INTO `wp_posts` VALUES (287,1,'2021-08-10 16:03:24','2021-08-10 16:03:24','','How to far away','','publish','closed','closed','','how-to-far-away','','','2021-08-10 16:04:45','2021-08-10 16:04:45','',0,'http://kampusku.local/?post_type=videos&#038;p=287',0,'videos','',0);
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
INSERT INTO `wp_term_relationships` VALUES (1,10,0);
INSERT INTO `wp_term_relationships` VALUES (9,2,0);
INSERT INTO `wp_term_relationships` VALUES (10,2,0);
INSERT INTO `wp_term_relationships` VALUES (11,2,0);
INSERT INTO `wp_term_relationships` VALUES (12,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,2,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (15,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,7,0);
INSERT INTO `wp_term_relationships` VALUES (38,7,0);
INSERT INTO `wp_term_relationships` VALUES (39,7,0);
INSERT INTO `wp_term_relationships` VALUES (40,7,0);
INSERT INTO `wp_term_relationships` VALUES (41,7,0);
INSERT INTO `wp_term_relationships` VALUES (42,8,0);
INSERT INTO `wp_term_relationships` VALUES (43,9,0);
INSERT INTO `wp_term_relationships` VALUES (44,9,0);
INSERT INTO `wp_term_relationships` VALUES (45,9,0);
INSERT INTO `wp_term_relationships` VALUES (46,9,0);
INSERT INTO `wp_term_relationships` VALUES (47,9,0);
INSERT INTO `wp_term_relationships` VALUES (48,8,0);
INSERT INTO `wp_term_relationships` VALUES (49,8,0);
INSERT INTO `wp_term_relationships` VALUES (50,8,0);
INSERT INTO `wp_term_relationships` VALUES (51,8,0);
INSERT INTO `wp_term_relationships` VALUES (87,3,0);
INSERT INTO `wp_term_relationships` VALUES (88,3,0);
INSERT INTO `wp_term_relationships` VALUES (89,3,0);
INSERT INTO `wp_term_relationships` VALUES (90,3,0);
INSERT INTO `wp_term_relationships` VALUES (91,3,0);
INSERT INTO `wp_term_relationships` VALUES (92,3,0);
INSERT INTO `wp_term_relationships` VALUES (98,10,0);
INSERT INTO `wp_term_relationships` VALUES (100,10,0);
INSERT INTO `wp_term_relationships` VALUES (102,11,0);
INSERT INTO `wp_term_relationships` VALUES (104,11,0);
INSERT INTO `wp_term_relationships` VALUES (117,13,0);
INSERT INTO `wp_term_relationships` VALUES (118,13,0);
INSERT INTO `wp_term_relationships` VALUES (119,13,0);
INSERT INTO `wp_term_relationships` VALUES (124,12,0);
INSERT INTO `wp_term_relationships` VALUES (125,12,0);
INSERT INTO `wp_term_relationships` VALUES (126,2,0);
INSERT INTO `wp_term_relationships` VALUES (127,2,0);
INSERT INTO `wp_term_relationships` VALUES (143,2,0);
INSERT INTO `wp_term_relationships` VALUES (148,2,0);
INSERT INTO `wp_term_relationships` VALUES (149,2,0);
INSERT INTO `wp_term_relationships` VALUES (150,2,0);
INSERT INTO `wp_term_relationships` VALUES (151,2,0);
INSERT INTO `wp_term_relationships` VALUES (154,2,0);
INSERT INTO `wp_term_relationships` VALUES (155,2,0);
INSERT INTO `wp_term_relationships` VALUES (164,3,0);
INSERT INTO `wp_term_relationships` VALUES (165,3,0);
INSERT INTO `wp_term_relationships` VALUES (166,3,0);
INSERT INTO `wp_term_relationships` VALUES (168,2,0);
INSERT INTO `wp_term_relationships` VALUES (171,2,0);
INSERT INTO `wp_term_relationships` VALUES (172,16,0);
INSERT INTO `wp_term_relationships` VALUES (175,16,0);
INSERT INTO `wp_term_relationships` VALUES (179,2,0);
INSERT INTO `wp_term_relationships` VALUES (186,2,0);
INSERT INTO `wp_term_relationships` VALUES (187,2,0);
INSERT INTO `wp_term_relationships` VALUES (190,18,0);
INSERT INTO `wp_term_relationships` VALUES (191,19,0);
INSERT INTO `wp_term_relationships` VALUES (199,20,0);
INSERT INTO `wp_term_relationships` VALUES (202,2,0);
INSERT INTO `wp_term_relationships` VALUES (210,21,0);
INSERT INTO `wp_term_relationships` VALUES (211,21,0);
INSERT INTO `wp_term_relationships` VALUES (275,2,0);
INSERT INTO `wp_term_relationships` VALUES (277,16,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,23);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,9);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'nav_menu','',0,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Primary','primary',0);
INSERT INTO `wp_terms` VALUES (3,'Profile','profile',0);
INSERT INTO `wp_terms` VALUES (7,'Secondary 1','secondary-1',0);
INSERT INTO `wp_terms` VALUES (8,'Secondary 2','secondary-2',0);
INSERT INTO `wp_terms` VALUES (9,'Secondary 3','secondary-3',0);
INSERT INTO `wp_terms` VALUES (10,'Kabar Kampus','kabar-kampus',0);
INSERT INTO `wp_terms` VALUES (11,'Lowongan','lowongan',0);
INSERT INTO `wp_terms` VALUES (12,'Journal','journal',0);
INSERT INTO `wp_terms` VALUES (13,'Study Program','study-program',0);
INSERT INTO `wp_terms` VALUES (14,'Hibah','hibah',0);
INSERT INTO `wp_terms` VALUES (15,'Beasiswa','beasiswa',0);
INSERT INTO `wp_terms` VALUES (16,'Pitutur','pitutur',0);
INSERT INTO `wp_terms` VALUES (18,'Development Group','development-group',0);
INSERT INTO `wp_terms` VALUES (19,'Study Center','study-center',0);
INSERT INTO `wp_terms` VALUES (20,'Proceeding and Conference','proceeding-and-conference',0);
INSERT INTO `wp_terms` VALUES (21,'Cooperation','cooperation',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','kampusku');
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
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice,plugin_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"9a1a3559d0714c725e5ec6ff9f2185aa6244b88fc961d3a51d538bf955e7d108\";a:4:{s:10:\"expiration\";i:1628779423;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36\";s:5:\"login\";i:1628606623;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','285');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','mfold=o&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1622107757');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'closedpostboxes_dashboard','a:1:{i:0;s:21:\"dashboard_site_health\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'meta-box-order_','a:3:{s:6:\"normal\";s:16:\"pb_event_metabox\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'wp_media_library_mode','grid');
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
INSERT INTO `wp_users` VALUES (1,'kampusku','$P$Be.g6.kQ9/o9ySbxg7qrYo.P2p8c6S/','kampusku','dev-email@flywheel.local','http://kampusku.local','2021-05-24 12:10:15','',0,'kampusku');
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

-- Dump completed on 2021-08-14  6:16:02
