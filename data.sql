-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blog',7,'add_blog'),(26,'Can change blog',7,'change_blog'),(27,'Can delete blog',7,'delete_blog'),(28,'Can view blog',7,'view_blog'),(29,'Can add blog type',8,'add_blogtype'),(30,'Can change blog type',8,'change_blogtype'),(31,'Can delete blog type',8,'delete_blogtype'),(32,'Can view blog type',8,'view_blogtype'),(33,'Can add read num',9,'add_readnum'),(34,'Can change read num',9,'change_readnum'),(35,'Can delete read num',9,'delete_readnum'),(36,'Can view read num',9,'view_readnum'),(37,'Can add read num',10,'add_readnum'),(38,'Can change read num',10,'change_readnum'),(39,'Can delete read num',10,'delete_readnum'),(40,'Can view read num',10,'view_readnum'),(41,'Can add read detail',11,'add_readdetail'),(42,'Can change read detail',11,'change_readdetail'),(43,'Can delete read detail',11,'delete_readdetail'),(44,'Can view read detail',11,'view_readdetail'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add like record',13,'add_likerecord'),(50,'Can change like record',13,'change_likerecord'),(51,'Can delete like record',13,'delete_likerecord'),(52,'Can view like record',13,'view_likerecord'),(53,'Can add like count',14,'add_likecount'),(54,'Can change like count',14,'change_likecount'),(55,'Can delete like count',14,'delete_likecount'),(56,'Can view like count',14,'view_likecount'),(57,'Can add profile',15,'add_profile'),(58,'Can change profile',15,'change_profile'),(59,'Can delete profile',15,'delete_profile'),(60,'Can view profile',15,'view_profile'),(61,'Can add notification',16,'add_notification'),(62,'Can change notification',16,'change_notification'),(63,'Can delete notification',16,'delete_notification'),(64,'Can view notification',16,'view_notification'),(65,'Can add guestbook',17,'add_guestbook'),(66,'Can change guestbook',17,'change_guestbook'),(67,'Can delete guestbook',17,'delete_guestbook'),(68,'Can view guestbook',17,'view_guestbook');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$27vB4HSuPWYF$4KB5s2DikvG8FuVokXyEfhaaCUVOxldglGE/7DKkbb8=','2020-05-10 12:50:16.528037',1,'admin','','','416983839@qq.com',1,1,'2020-03-08 14:09:08.789000'),(2,'pbkdf2_sha256$150000$WWei1V144fFt$rrdlDTwmsA/lamBOCErwiU5HT99FyqRYWLI3r7CK6h8=','2020-05-05 13:28:48.163571',0,'css','','','',0,1,'2020-04-11 08:42:00.000000'),(4,'pbkdf2_sha256$150000$cL5ZFMgcSj3f$FFdMKxtnh0RiUlyd/TYS+Uo/leh/HDxxYZut9Jr5orY=','2020-04-23 10:41:12.184000',0,'css1','','','1939996515@qq.com',0,1,'2020-04-23 09:37:45.816000'),(5,'pbkdf2_sha256$150000$5y1p4Yi1P7Hk$ShlVInumYrgClQmZJXSv0jfu8viX96XOrNAM6KrXCdY=','2020-05-03 06:56:25.253695',0,'test','','','',0,1,'2020-05-03 06:55:45.880265');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'长内容的博客','很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！很多内容呀！','2020-03-09 13:31:10.980000','2020-03-09 13:31:10.980000',1,4),(4,'无聊2','哈哈哈','2020-03-09 14:21:41.900000','2020-03-09 14:21:41.900000',1,4),(5,'Django','开始，冲呀！','2020-03-10 04:00:11.283000','2020-03-10 04:00:11.283000',1,1),(6,'shell下第一篇文章','this is content','2020-03-25 13:58:40.799000','2020-03-25 13:58:40.799000',1,1),(7,'shell blog for 1','this is content:1','2020-03-25 14:04:04.203000','2020-03-25 14:04:04.203000',1,1),(8,'shell blog for 2','this is content:2','2020-03-25 14:04:04.217000','2020-03-25 14:04:04.217000',1,1),(9,'shell blog for 3','this is content:3','2020-03-25 14:04:04.225000','2020-03-25 14:04:04.225000',1,1),(10,'shell blog for 4','this is content:4','2020-03-25 14:04:04.230000','2020-03-25 14:04:04.230000',1,1),(11,'shell blog for 5','this is content:5','2020-03-25 14:04:04.235000','2020-03-25 14:04:04.235000',1,1),(12,'shell blog for 6','this is content:6','2020-03-25 14:04:04.239000','2020-03-25 14:04:04.239000',1,1),(13,'shell blog for 7','this is content:7','2020-03-25 14:04:04.243000','2020-03-25 14:04:04.243000',1,1),(14,'shell blog for 8','this is content:8','2020-03-25 14:04:04.247000','2020-03-25 14:04:04.247000',1,1),(15,'shell blog for 9','this is content:9','2020-03-25 14:04:04.251000','2020-03-25 14:04:04.251000',1,1),(16,'shell blog for 10','this is content:10','2020-03-25 14:04:04.256000','2020-03-25 14:04:04.256000',1,1),(17,'shell blog for 11','this is content:11','2020-03-25 14:04:04.260000','2020-03-25 14:04:04.260000',1,1),(18,'shell blog for 12','this is content:12','2020-03-25 14:04:04.272000','2020-03-25 14:04:04.272000',1,1),(19,'shell blog for 13','this is content:13','2020-03-25 14:04:04.276000','2020-03-25 14:04:04.276000',1,1),(20,'shell blog for 14','this is content:14','2020-03-25 14:04:04.280000','2020-03-25 14:04:04.280000',1,1),(21,'shell blog for 15','this is content:15','2020-03-25 14:04:04.284000','2020-03-25 14:04:04.284000',1,1),(22,'shell blog for 16','this is content:16','2020-03-25 14:04:04.288000','2020-03-25 14:04:04.288000',1,1),(23,'shell blog for 17','this is content:17','2020-03-25 14:04:04.292000','2020-03-25 14:04:04.292000',1,1),(24,'shell blog for 18','this is content:18','2020-03-25 14:04:04.297000','2020-03-25 14:04:04.297000',1,1),(25,'shell blog for 19','this is content:19','2020-03-25 14:04:04.301000','2020-03-25 14:04:04.301000',1,1),(26,'shell blog for 20','this is content:20','2020-03-25 14:04:04.305000','2020-03-25 14:04:04.305000',1,1),(27,'shell blog for 21','this is content:21','2020-03-25 14:04:04.313000','2020-03-25 14:04:04.313000',1,1),(28,'shell blog for 22','this is content:22','2020-03-25 14:04:04.318000','2020-03-25 14:04:04.318000',1,1),(29,'shell blog for 23','this is content:23','2020-03-25 14:04:04.324000','2020-03-25 14:04:04.324000',1,1),(30,'shell blog for 24','this is content:24','2020-03-25 14:04:04.329000','2020-03-25 14:04:04.329000',1,1),(31,'shell blog for 25','this is content:25','2020-03-25 14:04:04.337000','2020-03-25 14:04:04.337000',1,1),(32,'shell blog for 26','this is content:26','2020-03-25 14:04:04.341000','2020-03-25 14:04:04.341000',1,1),(33,'shell blog for 27','this is content:27','2020-03-25 14:04:04.348000','2020-03-25 14:04:04.348000',1,1),(34,'shell blog for 28','this is content:28','2020-03-25 14:04:04.353000','2020-03-25 14:04:04.353000',1,1),(35,'shell blog for 29','this is content:29','2020-03-25 14:04:04.361000','2020-03-25 14:04:04.361000',1,1),(36,'shell blog for 30','this is content:30','2020-03-25 14:04:04.366000','2020-03-25 14:04:04.366000',1,1),(37,'感悟','<p>好好学，多点耐心！<br />\r\n这个是新的一行！</p>\r\n\r\n<p><strong>这个是粗体字<img alt=\"yes\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></strong><br />\r\n<img alt=\"\" src=\"/media/upload/2020/04/02/zed.jpg\" style=\"height:320px\" /></p>\r\n\r\n<p>&nbsp;</p>','2020-04-02 07:33:46.549000','2020-04-03 14:48:54.845000',1,3);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'随笔'),(3,'感悟'),(4,'无聊');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,36,'123','2020-04-10 09:28:00.808000',7,1,NULL,NULL,NULL),(2,36,'456','2020-04-10 10:02:35.197000',7,1,NULL,NULL,NULL),(3,36,'789','2020-04-10 10:22:52.920000',7,1,NULL,NULL,NULL),(4,36,'789 again','2020-04-10 10:23:44.820000',7,1,NULL,NULL,NULL),(5,36,'登录和注册功能。','2020-04-11 08:42:34.784000',7,2,NULL,NULL,NULL),(6,36,'Django form','2020-04-11 13:53:20.114000',7,1,NULL,NULL,NULL),(7,36,'django form 代替html form完成验证','2020-04-11 14:32:10.119000',7,1,NULL,NULL,NULL),(8,36,'<p><strong>富文本</strong><em>编辑框<img alt=\"yes\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /></em></p>','2020-04-12 05:18:44.426000',7,1,NULL,NULL,NULL),(9,36,'<p>789</p>','2020-04-12 05:54:23.526000',7,1,NULL,NULL,NULL),(10,36,'<p>try?</p>','2020-04-12 06:03:55.839000',7,1,NULL,NULL,NULL),(11,36,'<p>111</p>','2020-04-12 06:05:59.779000',7,1,NULL,NULL,NULL),(12,36,'<p>111</p>','2020-04-12 06:20:12.782000',7,1,NULL,NULL,NULL),(13,36,'<p><img alt=\"smiley\" height=\"23\" src=\"http://localhost:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" title=\"smiley\" width=\"23\" /></p>','2020-04-12 06:21:02.516000',7,1,NULL,NULL,NULL),(14,35,'<p>暂无评论测试</p>','2020-04-12 06:28:48.455000',7,1,NULL,NULL,NULL),(15,34,'<p>暂无评论 bug 测试</p>','2020-04-12 06:29:36.295000',7,1,NULL,NULL,NULL),(16,36,'回复功能1','2020-04-16 06:08:12.977000',7,2,1,1,1),(17,36,'<p>123</p>','2020-04-16 07:24:17.509000',7,1,13,1,13),(18,36,'<p>456</p>','2020-04-16 08:02:01.181000',7,1,13,1,13),(19,36,'<p>789</p>','2020-04-16 08:04:10.224000',7,1,18,1,13),(20,36,'<p>new comment</p>','2020-04-16 08:05:10.494000',7,1,NULL,NULL,NULL),(21,36,'<p>new +1</p>','2020-04-16 08:05:19.230000',7,1,20,1,20),(22,36,'<p>new +2</p>','2020-04-16 08:05:27.783000',7,1,21,1,20),(23,36,'<p>new +3</p>','2020-04-16 08:08:28.469000',7,1,20,1,20),(24,36,'<p>111</p>','2020-04-16 08:15:58.185000',7,1,20,1,20),(25,36,'<p>222</p>','2020-04-16 08:16:30.424000',7,1,NULL,NULL,NULL),(26,36,'<p>222</p>','2020-04-16 08:17:06.124000',7,1,25,1,25),(27,36,'<p>333</p>','2020-04-16 08:17:13.985000',7,1,25,1,25),(28,36,'<p>444</p>','2020-04-16 08:17:20.540000',7,1,27,1,25),(29,35,'<p>修改提交方式</p>','2020-04-17 01:00:21.148000',7,1,NULL,NULL,NULL),(30,35,'<p>回复一下看看</p>','2020-04-17 01:00:29.025000',7,1,29,1,29),(31,35,'<p>获取博客列表</p>','2020-04-17 01:42:03.037000',7,1,NULL,NULL,NULL),(32,35,'<p>回复博客列表</p>','2020-04-17 01:42:13.545000',7,1,31,1,31),(33,35,'<p>评论时间测试</p>','2020-04-17 02:37:53.593000',7,1,NULL,NULL,NULL),(34,35,'<p>评论时间测试</p>','2020-04-17 02:37:56.938000',7,1,NULL,NULL,NULL),(35,35,'<p>Date not Day</p>','2020-04-17 02:39:43.449000',7,1,34,1,34),(36,35,'<p>Date not Data</p>','2020-04-17 02:41:11.408000',7,1,34,1,34),(37,35,'<p>好像不会更新</p>','2020-04-17 02:42:23.370000',7,1,34,1,34),(38,35,'<p>评论</p>','2020-04-17 02:43:40.336000',7,1,NULL,NULL,NULL),(39,35,'<p>评论可以马上刷新，回复不能马上刷新</p>','2020-04-17 02:44:02.783000',7,1,38,1,38),(40,35,'<p>现在好像可以了</p>','2020-04-17 02:44:33.063000',7,1,39,1,38),(41,35,'<p>回复2级还是不能马上刷新</p>','2020-04-17 02:44:56.183000',7,1,40,1,38),(42,36,'<p>111</p>','2020-04-17 03:10:25.574000',7,1,25,1,25),(43,36,'<p>1111</p>','2020-04-17 03:10:44.000000',7,1,25,1,25),(44,35,'<p>评论是马上可以刷新的</p>','2020-04-17 03:26:19.573000',7,1,NULL,NULL,NULL),(45,35,'<p>评论是马上可以刷新的</p>','2020-04-17 03:28:40.718000',7,1,NULL,NULL,NULL),(46,35,'<p>回复就不能马上刷新</p>','2020-04-17 03:28:58.219000',7,1,45,1,45),(47,35,'<p>回复第一级评论是可以刷新的</p>','2020-04-17 03:30:21.045000',7,1,45,1,45),(48,35,'<p>回复第二级回复可以刷新吗</p>','2020-04-17 03:30:53.966000',7,1,47,1,45),(49,35,'<p>再试试</p>','2020-04-17 03:31:43.464000',7,1,45,1,45),(50,35,'<p>试试</p>','2020-04-17 03:31:54.853000',7,1,45,1,45),(51,34,'<p>test</p>','2020-04-17 03:42:35.389000',7,1,NULL,NULL,NULL),(52,34,'<p>回复test</p>','2020-04-17 03:42:46.706000',7,1,51,1,51),(53,34,'<p>回复test test</p>','2020-04-17 03:42:59.051000',7,1,52,1,51),(54,34,'<p>最后一次回复test</p>','2020-04-17 03:43:49.779000',7,1,53,1,51),(55,36,'<p>回复</p>','2020-04-21 03:49:46.501000',7,1,26,1,25),(56,36,'<p>1111</p>','2020-04-21 03:50:15.686000',7,1,25,1,25),(57,36,'<p>test</p>','2020-04-21 03:51:13.737000',7,1,NULL,NULL,NULL),(58,34,'<p>111</p>','2020-04-21 06:28:59.375000',7,1,15,1,15),(59,34,'<p>222</p>','2020-04-21 06:29:57.925000',7,1,15,1,15),(60,34,'<p>333回复总是不能马上显示</p>','2020-04-21 06:37:40.929000',7,1,15,1,15),(61,34,'<p>1111111</p>','2020-04-21 06:47:45.330000',7,1,15,1,15),(62,34,'<p>now？</p>','2020-04-21 06:48:30.140000',7,1,15,1,15),(63,34,'<p>评论，可以吗</p>','2020-04-21 06:48:47.313000',7,1,NULL,NULL,NULL),(64,34,'<p>再次回复试试</p>','2020-04-21 06:48:56.597000',7,1,63,1,63),(65,34,'<p>多了就不可以？</p>','2020-04-21 06:49:07.582000',7,1,64,1,63),(66,34,'<p>1111</p>','2020-04-21 06:50:01.112000',7,1,63,1,63),(67,34,'<p>第四条了</p>','2020-04-21 06:50:10.774000',7,1,63,1,63),(68,34,'<p>回复第四条</p>','2020-04-21 06:50:27.824000',7,1,67,1,63),(69,36,'<p>pingl</p>','2020-04-21 09:41:28.466000',7,1,NULL,NULL,NULL),(70,36,'<p>nihao</p>','2020-04-21 09:41:40.427000',7,1,69,1,69),(71,36,'<p>hello</p>','2020-04-22 13:59:27.497000',7,1,70,1,69),(72,36,'<p>回复总是很不友好</p>','2020-04-22 13:59:56.893000',7,1,71,1,69),(73,36,'<p>评论就可以</p>','2020-04-22 14:00:09.405000',7,1,NULL,NULL,NULL),(74,36,'<p>你好</p>','2020-04-30 08:38:33.433344',7,1,NULL,NULL,NULL),(75,33,'<p>评论测试</p>','2020-05-03 03:18:42.465641',7,1,NULL,NULL,NULL),(76,33,'<p>评论测试</p>','2020-05-03 03:18:49.026631',7,1,NULL,NULL,NULL),(77,32,'<p>评论测试</p>','2020-05-03 03:19:17.609512',7,1,NULL,NULL,NULL),(78,32,'<p>评论测试</p>','2020-05-03 03:19:49.097107',7,1,NULL,NULL,NULL),(79,32,'<p>评论测试</p>','2020-05-03 03:23:35.587326',7,1,NULL,NULL,NULL),(80,32,'<p>评论测试</p>','2020-05-03 03:29:59.764078',7,1,NULL,NULL,NULL),(81,32,'<p>回复测试</p>','2020-05-03 03:30:14.846551',7,1,80,1,80),(82,32,'<p>回复第二条</p>','2020-05-03 03:30:55.367991',7,1,81,1,80),(83,32,'<p>回复第三条</p>','2020-05-03 03:31:39.338748',7,1,82,1,80),(84,32,'<p>回复第四条</p>','2020-05-03 03:32:07.050423',7,1,83,1,80),(85,36,'<p>评论消息测试</p>','2020-05-03 13:35:01.227355',7,1,NULL,NULL,NULL),(86,36,'<p>再一次评论</p>','2020-05-03 13:49:36.638559',7,1,85,1,85),(87,36,'<p>再一次评论</p>','2020-05-03 13:49:39.888420',7,1,85,1,85),(88,36,'<p>再一次评论</p>','2020-05-03 13:50:09.774278',7,1,NULL,NULL,NULL),(89,36,'<p>回复消息测试</p>','2020-05-03 13:52:47.998085',7,1,85,1,85),(90,36,'<p>回复回复消息测试</p>','2020-05-03 13:59:55.180940',7,1,89,1,85),(91,36,'<p>你好呀</p>','2020-05-05 14:12:27.870039',7,1,86,1,85),(92,36,'<p>你好呀</p>','2020-05-05 14:12:40.717196',7,1,88,1,88),(93,36,'<p>有点问题，好是都要改，我应该先完成留言板的，再回来修改这里的！</p>','2020-05-05 14:14:14.088780',7,1,88,1,88),(94,36,'<p>评论测试</p>','2020-05-05 14:15:32.583766',7,1,NULL,NULL,NULL),(95,36,'<p>评论是没有问题的，回复有问题！之后再修改！</p>','2020-05-05 14:15:58.649213',7,1,NULL,NULL,NULL),(96,36,'<p>ajax评论应该没有问题了</p>','2020-05-05 14:17:47.125749',7,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-08 14:25:04.159000','1','BlogType object (1)',1,'[{\"added\": {}}]',8,1),(2,'2020-03-08 14:27:12.288000','2','BlogType object (2)',1,'[{\"added\": {}}]',8,1),(3,'2020-03-08 14:27:20.175000','3','BlogType object (3)',1,'[{\"added\": {}}]',8,1),(4,'2020-03-08 14:30:25.243000','4','BlogType object (4)',1,'[{\"added\": {}}]',8,1),(5,'2020-03-08 14:31:07.945000','1','Blog object (1)',1,'[{\"added\": {}}]',7,1),(6,'2020-03-09 13:08:17.481000','1','<Blog:第一篇博文>',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,1),(7,'2020-03-09 13:15:40.750000','2','<Blog:第二篇博文>',1,'[{\"added\": {}}]',7,1),(8,'2020-03-09 13:29:34.847000','2','<Blog:第二篇博文>',3,'',7,1),(9,'2020-03-09 13:29:34.852000','1','<Blog:第一篇博文>',3,'',7,1),(10,'2020-03-09 13:31:10.981000','3','<Blog:长内容的博客>',1,'[{\"added\": {}}]',7,1),(11,'2020-03-09 14:21:41.902000','4','<Blog:无聊2>',1,'[{\"added\": {}}]',7,1),(12,'2020-03-10 04:00:11.284000','5','<Blog:Django>',1,'[{\"added\": {}}]',7,1),(13,'2020-04-02 07:33:46.557000','37','<Blog:感悟>',1,'[{\"added\": {}}]',7,1),(14,'2020-04-02 13:42:32.332000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(15,'2020-04-02 13:44:42.675000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(16,'2020-04-02 13:46:24.087000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(17,'2020-04-02 14:47:05.492000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(18,'2020-04-02 15:08:48.818000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(19,'2020-04-02 15:11:41.783000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(20,'2020-04-02 15:12:17.173000','37','<Blog:感悟>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(21,'2020-04-04 07:39:14.181000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(22,'2020-04-05 14:04:53.871000','3','ReadDetail object (3)',1,'[{\"added\": {}}]',11,1),(23,'2020-04-05 14:05:14.783000','3','ReadDetail object (3)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(24,'2020-04-06 06:54:59.998000','6','ReadDetail object (6)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(25,'2020-04-06 06:55:07.050000','5','ReadDetail object (5)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(26,'2020-04-06 06:55:22.715000','4','ReadDetail object (4)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(27,'2020-04-06 06:55:29.261000','3','ReadDetail object (3)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(28,'2020-04-06 06:55:45.479000','6','ReadDetail object (6)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(29,'2020-04-06 06:55:48.450000','5','ReadDetail object (5)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(30,'2020-04-06 06:55:54.133000','4','ReadDetail object (4)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(31,'2020-04-06 06:55:58.102000','3','ReadDetail object (3)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',11,1),(32,'2020-04-07 09:29:02.693000','1','ReadNum object (1)',2,'[{\"changed\": {\"fields\": [\"read_num\"]}}]',10,1),(33,'2020-04-07 09:29:29.263000','8','ReadDetail object (8)',1,'[{\"added\": {}}]',11,1),(34,'2020-04-07 09:30:22.131000','10','ReadDetail object (10)',1,'[{\"added\": {}}]',11,1),(35,'2020-04-16 06:08:12.984000','16','Comment object (16)',1,'[{\"added\": {}}]',12,1),(36,'2020-04-16 06:13:47.689000','16','回复功能1',2,'[{\"changed\": {\"fields\": [\"root\"]}}]',12,1),(37,'2020-04-21 02:29:12.680000','1','LikeRecord object (1)',3,'',13,1),(38,'2020-04-21 02:29:36.335000','1','LikeCount object (1)',3,'',14,1),(39,'2020-04-22 09:06:36.463000','1','<Profile:小胖鱼 for admin>',1,'[{\"added\": {}}]',15,1),(40,'2020-04-23 09:34:36.900000','3','css1',3,'',4,1),(41,'2020-04-30 09:01:25.230328','2','css',2,'[{\"changed\": {\"fields\": [\"email\", \"last_login\"]}}]',4,1),(42,'2020-05-03 03:25:05.406508','1','admin 测试消息 1 分钟 ago',1,'[{\"added\": {}}]',16,1),(43,'2020-05-03 06:55:46.019891','5','test',1,'[{\"added\": {}}, {\"added\": {\"name\": \"profile\", \"object\": \"<Profile:\\u6d4b\\u8bd5\\u6ce8\\u518c\\u7528\\u6237 for test>\"}}]',4,1),(44,'2020-05-03 13:18:36.871453','8','test 注册成功，更多精彩内容等你发现 test 6 小时，23 分钟 ago',2,'[{\"changed\": {\"fields\": [\"unread\", \"actor_object_id\"]}}]',16,1),(45,'2020-05-03 13:18:58.830853','9','admin @小胖鱼 点赞了你的《感悟》 LikeRecord object (21) 6 分钟 ago',2,'[{\"changed\": {\"fields\": [\"unread\", \"actor_object_id\"]}}]',16,1),(46,'2020-05-03 13:35:46.674115','10','admin 小胖鱼 点赞了你的评论 \"你好\" LikeRecord object (22) 2 分钟 ago',3,'',16,1),(47,'2020-05-03 13:35:46.677531','9','admin @小胖鱼 点赞了你的《感悟》 LikeRecord object (21) 23 分钟 ago',3,'',16,1),(48,'2020-05-03 13:35:46.680530','8','test 注册成功，更多精彩内容等你发现 test 6 小时，40 分钟 ago',3,'',16,1),(49,'2020-05-03 13:35:46.684588','7','admin 小胖鱼 点赞了你的《shell blog for 26》 LikeRecord object (20) 6 小时，54 分钟 ago',3,'',16,1),(50,'2020-05-03 13:35:46.688804','6','admin 小胖鱼 回复了你的评论 \"回复第三条\" <p>回复第四条</p> 10 小时，3 分钟 ago',3,'',16,1),(51,'2020-05-03 13:35:46.691492','5','admin 小胖鱼 回复了你的评论：\"回复第二条\" <p>回复第三条</p> 10 小时，4 分钟 ago',3,'',16,1),(52,'2020-05-03 13:35:46.695790','4','admin 小胖鱼 回复了你的评论\" 回复测试 \" <p>回复第二条</p> 10 小时，4 分钟 ago',3,'',16,1),(53,'2020-05-03 13:35:46.699520','3','admin 小胖鱼 回复了你的评论\"评论测试\" <p>回复测试</p> 10 小时，5 分钟 ago',3,'',16,1),(54,'2020-05-03 13:35:46.702767','2','admin 小胖鱼 评论了你的《shell blog for 26》 <p>评论测试</p> 10 小时，5 分钟 ago',3,'',16,1),(55,'2020-05-03 13:35:46.705757','1','admin 测试消息 10 小时，11 分钟 ago',3,'',16,1),(56,'2020-05-05 10:13:24.323339','31','None 测试消息 1 分钟 ago',1,'[{\"added\": {}}]',16,1),(57,'2020-05-05 10:14:02.076039','31','None 测试消息 2 分钟 ago',3,'',16,1),(58,'2020-05-05 11:57:11.794552','1','Guestbook object (1)',1,'[{\"added\": {}}]',17,1),(59,'2020-05-05 13:34:38.260159','2','Guestbook object (2)',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',17,1),(60,'2020-05-05 13:51:54.328134','3','Guestbook object (3)',3,'',17,1),(61,'2020-05-05 13:53:52.586910','11','Guestbook object (11)',3,'',17,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','blog'),(8,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(17,'guestbook','guestbook'),(14,'likes','likecount'),(13,'likes','likerecord'),(16,'notifications','notification'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(15,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-24 14:24:07.639585'),(2,'auth','0001_initial','2020-04-24 14:24:07.823095'),(3,'admin','0001_initial','2020-04-24 14:24:08.317817'),(4,'admin','0002_logentry_remove_auto_add','2020-04-24 14:24:08.432502'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-24 14:24:08.441488'),(6,'contenttypes','0002_remove_content_type_name','2020-04-24 14:24:08.572094'),(7,'auth','0002_alter_permission_name_max_length','2020-04-24 14:24:08.654905'),(8,'auth','0003_alter_user_email_max_length','2020-04-24 14:24:08.679830'),(9,'auth','0004_alter_user_username_opts','2020-04-24 14:24:08.724722'),(10,'auth','0005_alter_user_last_login_null','2020-04-24 14:24:08.788547'),(11,'auth','0006_require_contenttypes_0002','2020-04-24 14:24:08.792505'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-24 14:24:08.807497'),(13,'auth','0008_alter_user_username_max_length','2020-04-24 14:24:08.881267'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-24 14:24:08.947103'),(15,'auth','0010_alter_group_name_max_length','2020-04-24 14:24:08.967072'),(16,'auth','0011_update_proxy_permissions','2020-04-24 14:24:08.979012'),(17,'blog','0001_initial','2020-04-24 14:24:09.045834'),(18,'blog','0002_auto_20200326_1646','2020-04-24 14:24:09.163514'),(19,'blog','0003_auto_20200403_2137','2020-04-24 14:24:09.206437'),(20,'blog','0004_auto_20200404_1436','2020-04-24 14:24:09.328077'),(21,'blog','0005_delete_readnum','2020-04-24 14:24:09.407859'),(22,'blog','0006_auto_20200420_2110','2020-04-24 14:24:09.582395'),(23,'comment','0001_initial','2020-04-24 14:24:09.627272'),(24,'comment','0002_auto_20200416_1345','2020-04-24 14:24:09.794826'),(25,'comment','0003_auto_20200416_1349','2020-04-24 14:24:09.874612'),(26,'comment','0004_auto_20200416_1358','2020-04-24 14:24:10.128933'),(27,'comment','0005_comment_root','2020-04-24 14:24:10.218726'),(28,'comment','0006_auto_20200420_2110','2020-04-24 14:24:10.836042'),(29,'likes','0001_initial','2020-04-24 14:24:10.918850'),(30,'read_statistics','0001_initial','2020-04-24 14:24:11.123275'),(31,'read_statistics','0002_readdetail','2020-04-24 14:24:11.226041'),(32,'read_statistics','0003_auto_20200420_2110','2020-04-24 14:24:11.488298'),(33,'sessions','0001_initial','2020-04-24 14:24:11.517221'),(34,'user','0001_initial','2020-04-24 14:24:11.590062'),(35,'notifications','0001_initial','2020-05-02 08:26:15.077779'),(36,'notifications','0002_auto_20150224_1134','2020-05-02 08:26:15.428806'),(37,'notifications','0003_notification_data','2020-05-02 08:26:15.471736'),(38,'notifications','0004_auto_20150826_1508','2020-05-02 08:26:15.489646'),(39,'notifications','0005_auto_20160504_1520','2020-05-02 08:26:15.510589'),(40,'notifications','0006_indexes','2020-05-02 08:26:15.694385'),(41,'notifications','0007_add_timestamp_index','2020-05-02 08:26:15.730289'),(42,'notifications','0008_index_together_recipient_unread','2020-05-02 08:26:15.776167'),(43,'blog','0007_auto_20200505_1952','2020-05-05 11:55:34.656658'),(44,'comment','0007_auto_20200505_1952','2020-05-05 11:55:34.673613'),(45,'guestbook','0001_initial','2020-05-05 11:55:34.744423'),(46,'likes','0002_auto_20200505_1952','2020-05-05 11:55:34.946881'),(47,'read_statistics','0004_auto_20200505_1952','2020-05-05 11:55:34.965878'),(48,'user','0002_auto_20200505_1952','2020-05-05 11:55:34.980791'),(49,'guestbook','0002_auto_20200505_2123','2020-05-05 13:23:38.322692');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0paky86ka5klx0nge86nvhearbgqaopg','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-05-03 12:34:24.181000'),('1x6vyuql5ybk56ex51nkaws7a5nuobbb','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-04-24 10:02:29.711000'),('3nw3wd70z36y5rqkrdgvbn9a20i2zvly','Y2E1OTIxODQ0N2I4ZmI0ODIxNzJkN2M5MzBmNTQwNTIxMjRiNTBkYTp7fQ==','2020-05-17 06:55:57.303354'),('buz0ytfcidvynw0n02gs2b6eroiekgon','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-05-24 12:50:16.538013'),('ihrrtwavmrcuwkzgfqu9knlrorcsbhda','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-03-24 03:59:47.647000'),('j265ux9atbfrcgcf74ma0y40n8m3xkli','M2FhZTYxNTFhNmQ1NDI4Yzc4YTY4MzNlOGUwNTJlOTI2NGE2MzA2ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTI3Y2ViN2Q0YWU4Njk4MWE0OTk2NGJhMDRkZWMyZGE3MWE4MjA2In0=','2020-04-25 08:42:17.563000'),('j970maili0t1ugst6ja3ogouydm1m6l0','OWMwYzk4Yzg0MWE5N2Y4ODg4NzA5OGE3NWQyYTI1OGI4ZWNmNTE5ZDp7InNlbmRfY29kZV90aW1lIjoxNTg3NjM4NDM0LCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzA1N2UxNTU5NzIzYTVlYWJhNjNmNjhhZTViNGY2ZWUzNWZhYWRjOSJ9','2020-05-07 10:41:12.190000'),('s1bim070nlkzkyv47dkxi2gys7p85e97','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-04-25 13:36:45.095000'),('t8w0a70quacktz3lpikglwb6lhabnrni','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-03-22 14:22:27.523000'),('yqj6fgl555u3ahymhq5y18pz6e2j7io8','NDkzZTRmNDYzZGNlZjM3ZmIyZGYzMzBlMjlhNTJkNmZhY2QwNTQ3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjY1MzgzZTliZmVmZDczMzE4ZWQ1NWVjOWY1OWZiMzE1ZjIyZmJjIn0=','2020-05-24 09:33:55.935268');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook_guestbook`
--

DROP TABLE IF EXISTS `guestbook_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook_guestbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guestbook_guestbook_user_id_870973e6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `guestbook_guestbook_user_id_870973e6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook_guestbook`
--

LOCK TABLES `guestbook_guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook_guestbook` DISABLE KEYS */;
INSERT INTO `guestbook_guestbook` VALUES (1,'1111','2020-05-05 11:57:11.793558',1),(2,'嘻嘻嘻','2020-05-05 13:23:51.495815',1),(4,'没问题？','2020-05-05 13:25:32.993304',1),(5,'好像还可以','2020-05-05 13:26:34.172829',1),(6,'如何？','2020-05-05 13:28:56.717834',2),(7,'来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言','2020-05-05 13:50:02.998611',1),(8,'来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言来一个长一点的留言','2020-05-05 13:50:16.180164',1),(9,'试试留言的ID','2020-05-05 13:52:29.748442',1),(10,'删除中间的留言不会按那个留言重新排，我试试删除最新的一条。','2020-05-05 13:53:40.690916',1),(12,'现在如果id是12，就证明删除的id都不会回来，假如是11，就是按现在已有的id加1','2020-05-05 13:54:39.145688',1),(13,'上一条的id是12，所以证明删除的id是不会回来的','2020-05-05 13:55:02.983588',1),(14,'你还好吗？','2020-05-05 14:19:43.484718',1),(15,'呀呀呀！','2020-05-10 09:34:00.842638',1);
/*!40000 ALTER TABLE `guestbook_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likecount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_num` int NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (2,35,0,7),(3,37,1,7),(4,36,1,7),(5,34,0,7),(6,33,0,7),(7,32,1,7),(8,31,0,7),(9,25,1,12),(10,20,0,12),(11,13,0,12),(12,12,0,12),(13,11,0,12),(14,10,0,12),(15,9,0,12),(16,8,0,12),(17,7,0,12),(18,6,0,12),(19,5,0,12),(20,4,0,12),(21,3,0,12),(22,2,0,12),(23,1,0,12),(24,26,0,12),(25,27,0,12),(26,28,0,12),(27,42,0,12),(28,43,0,12),(29,21,0,12),(30,22,0,12),(31,23,0,12),(32,24,0,12),(33,17,0,12),(34,18,0,12),(35,19,0,12),(36,16,0,12),(37,55,0,12),(38,57,1,12),(39,56,0,12),(40,51,0,12),(41,52,0,12),(42,53,0,12),(43,54,0,12),(44,15,0,12),(45,58,0,12),(46,59,0,12),(47,60,0,12),(48,61,0,12),(49,62,0,12),(50,69,1,12),(51,70,1,12),(52,71,1,12),(53,73,1,12),(54,72,1,12),(55,30,0,7),(56,74,1,12),(57,78,0,12),(58,77,0,12),(59,85,1,12),(60,86,1,12),(61,87,1,12),(62,88,1,12),(63,89,1,12),(64,90,1,12),(65,80,0,12),(66,81,0,12),(67,82,0,12),(68,83,0,12),(69,84,0,12),(70,79,0,12),(71,76,0,12),(72,75,0,12),(73,5,0,7),(74,29,0,7),(75,28,0,7),(76,27,0,7),(77,26,0,7),(78,25,0,7),(79,24,0,7),(80,23,0,7),(81,22,0,7),(82,21,0,7),(83,20,0,7),(84,19,0,7),(85,18,0,7),(86,17,0,7),(87,16,0,7),(88,15,0,7),(89,14,0,7),(90,13,0,7),(91,12,0,7),(92,11,0,7),(93,10,0,7),(94,9,0,7),(95,8,0,7),(96,7,0,7),(97,6,0,7),(98,4,0,7),(99,3,0,7),(100,45,0,12),(101,46,0,12),(102,47,0,12),(103,48,0,12),(104,49,0,12),(105,50,0,12),(106,44,0,12),(107,38,0,12),(108,39,0,12),(109,40,0,12),(110,41,0,12),(111,34,0,12),(112,35,0,12),(113,36,0,12),(114,37,0,12),(115,33,0,12),(116,31,0,12),(117,32,0,12),(118,29,0,12),(119,30,0,12),(120,14,0,12),(121,92,0,12),(122,91,0,12),(123,93,0,12),(124,94,0,12),(125,95,0,12),(126,96,0,12),(127,63,0,12),(128,64,0,12),(129,65,0,12),(130,66,0,12),(131,67,0,12),(132,68,0,12);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likerecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
INSERT INTO `likes_likerecord` VALUES (10,36,'2020-04-21 06:19:30.238000',7,1),(19,69,'2020-04-22 05:50:45.315000',12,1),(20,32,'2020-05-03 06:41:38.592681',7,1),(22,74,'2020-05-03 13:33:32.234229',12,1),(26,73,'2020-05-04 01:53:08.591351',12,1),(27,70,'2020-05-04 01:53:29.742963',12,1),(28,37,'2020-05-04 01:58:07.985416',7,1),(29,90,'2020-05-04 01:58:23.096406',12,1),(30,71,'2020-05-04 01:58:54.404285',12,1),(31,72,'2020-05-04 02:01:34.553273',12,1),(32,57,'2020-05-04 02:02:11.370344',12,1),(33,86,'2020-05-04 02:06:21.546396',12,1),(34,88,'2020-05-04 02:10:08.354471',12,1),(35,85,'2020-05-04 02:18:29.233177',12,1),(36,89,'2020-05-04 02:25:16.465981',12,1),(37,87,'2020-05-04 02:27:28.576832',12,1),(38,25,'2020-05-04 02:27:50.038133',12,1);
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:get_week_hot_blogs','gASVIwsAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGKMEmNvbnRhaW5zX2FnZ3JlZ2F0ZZSJdWJoXSmBlH2UKGhgaBRoN2g4aAeMBXRpdGxllIeUUpSGlH2UhpRoZmhuaGdoFGhoaG51YoaUjAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKIwDbGhzlGhdKYGUfZQoaGBoFWg3jA9yZWFkX3N0YXRpc3RpY3OUaD2MBGRhdGWUh5RSlIaUfZSGlGhmaIZoZ2gVaGhohmhpiXVijANyaHOUjAhkYXRldGltZZSMBGRhdGWUk5RDBAfkBQOUhZRSlIwUYmlsYXRlcmFsX3RyYW5zZm9ybXOUXZRoaYl1Ymh7jAhMZXNzVGhhbpSTlCmBlH2UKGiAaIFoimiNQwQH5AUKlIWUUpRokV2UaGmJdWJljAljb25uZWN0b3KUjANBTkSUjAduZWdhdGVklIloaYl1YowLd2hlcmVfY2xhc3OUaHaMCGdyb3VwX2J5lGheaGqGlIwIb3JkZXJfYnmUjA0tcmVhZF9udW1fc3VtlIWUjAhsb3dfbWFya5RLAIwJaGlnaF9tYXJrlEsHjAhkaXN0aW5jdJSJjA9kaXN0aW5jdF9maWVsZHOUKYwRc2VsZWN0X2Zvcl91cGRhdGWUiYwYc2VsZWN0X2Zvcl91cGRhdGVfbm93YWl0lImMHXNlbGVjdF9mb3JfdXBkYXRlX3NraXBfbG9ja2VklImMFHNlbGVjdF9mb3JfdXBkYXRlX29mlCmMDnNlbGVjdF9yZWxhdGVklImMCW1heF9kZXB0aJRLBYwNdmFsdWVzX3NlbGVjdJRoKmhshpSMDF9hbm5vdGF0aW9uc5RoGSlSlIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaGCMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUaKaJjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaF0pgZR9lChoYGgVaDdog2g9jAhyZWFkX251bZSHlFKUhpR9lIaUaGZow2hnaBVoaGjDjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaMNoaYl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloZmjDdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGiykIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllGgZKVKUaLJotnOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1leHBsYWluX3F1ZXJ5lImMDmV4cGxhaW5fZm9ybWF0lE6MD2V4cGxhaW5fb3B0aW9uc5R9lIwNX2xvb2t1cF9qb2luc5RdlChoFGgVZYwKYmFzZV90YWJsZZRoFHVijA1fcmVzdWx0X2NhY2hllF2UKH2UKGgqSyRobIwRc2hlbGwgYmxvZyBmb3IgMzCUaLJLBXV9lChoKkslaGyMBuaEn+aCn5RosksEdX2UKGgqSyFobIwRc2hlbGwgYmxvZyBmb3IgMjeUaLJLA3V9lChoKksjaGyMEXNoZWxsIGJsb2cgZm9yIDI5lGiySwN1fZQoaCpLIGhsjBFzaGVsbCBibG9nIGZvciAyNpRosksCdX2UKGgqSwVobIwGRGphbmdvlGiySwJ1ZYwOX3N0aWNreV9maWx0ZXKUiYwKX2Zvcl93cml0ZZSJjBlfcHJlZmV0Y2hfcmVsYXRlZF9sb29rdXBzlCmMDl9wcmVmZXRjaF9kb25llImMFl9rbm93bl9yZWxhdGVkX29iamVjdHOUfZSMD19pdGVyYWJsZV9jbGFzc5RoAIwOVmFsdWVzSXRlcmFibGWUk5SMB19maWVsZHOUaCpobIaUjA9fZGphbmdvX3ZlcnNpb26UjAYyLjIuMTCUdWIu','2020-05-10 13:50:16.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_notification`
--

DROP TABLE IF EXISTS `notifications_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `target_object_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_object_object_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int DEFAULT NULL,
  `actor_content_type_id` int NOT NULL,
  `recipient_id` int NOT NULL,
  `target_content_type_id` int DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` (`action_object_content_type_id`),
  KEY `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` (`actor_content_type_id`),
  KEY `notifications_notifi_target_content_type__ccb24d88_fk_django_co` (`target_content_type_id`),
  KEY `notifications_notification_deleted_b32b69e6` (`deleted`),
  KEY `notifications_notification_emailed_23a5ad81` (`emailed`),
  KEY `notifications_notification_public_1bc30b1c` (`public`),
  KEY `notifications_notification_unread_cce4be30` (`unread`),
  KEY `notifications_notification_timestamp_6a797bad` (`timestamp`),
  KEY `notifications_notification_recipient_id_unread_253aadc9_idx` (`recipient_id`,`unread`),
  CONSTRAINT `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_target_content_type__ccb24d88_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_notification`
--

LOCK TABLES `notifications_notification` WRITE;
/*!40000 ALTER TABLE `notifications_notification` DISABLE KEYS */;
INSERT INTO `notifications_notification` VALUES (25,'info',0,'1','小胖鱼 点赞了你的评论 \"再一次评论\"',NULL,NULL,'33','2020-05-04 02:06:21.550385',1,13,4,1,NULL,0,0,'{\"url\": \"/blog/36\"}'),(26,'info',0,'1','小胖鱼 点赞了你的评论 \"再一次评论\"',NULL,NULL,'34','2020-05-04 02:10:08.358488',1,13,4,1,NULL,0,0,'{\"url\": \"/blog/36\"}'),(27,'info',0,'1','小胖鱼 点赞了你的评论 \"评论消息测试\"',NULL,NULL,'35','2020-05-04 02:18:29.237207',1,13,4,1,NULL,0,0,'{\"url\": \"/blog/36\"}'),(28,'info',0,'1','小胖鱼 点赞了你的评论 \"回复消息测试\"',NULL,NULL,'36','2020-05-04 02:25:16.471964',1,13,4,1,NULL,0,0,'{\"url\": \"/blog/36\"}'),(29,'info',0,'1','小胖鱼 点赞了你的评论 \"再一次评论\"',NULL,NULL,'37','2020-05-04 02:27:28.581856',1,13,4,1,NULL,0,0,'{\"url\": \"/blog/36\"}'),(30,'info',0,'1','小胖鱼 点赞了你的评论 \"222\"',NULL,NULL,'38','2020-05-04 02:27:50.042120',1,13,4,1,NULL,0,0,'{\"url\": \"/blog/36\"}'),(32,'info',0,'1','小胖鱼 回复了你的评论 \"再一次评论\"',NULL,NULL,'91','2020-05-05 14:12:27.876024',1,12,4,1,NULL,0,0,'{\"url\": \"/blog/36#comment_91\"}'),(33,'info',0,'1','小胖鱼 回复了你的评论 \"再一次评论\"',NULL,NULL,'92','2020-05-05 14:12:40.723180',1,12,4,1,NULL,0,0,'{\"url\": \"/blog/36#comment_92\"}'),(34,'info',0,'1','小胖鱼 回复了你的评论 \"再一次评论\"',NULL,NULL,'93','2020-05-05 14:14:14.099717',1,12,4,1,NULL,0,0,'{\"url\": \"/blog/36#comment_93\"}'),(35,'info',0,'1','小胖鱼 评论了你的《shell blog for 30》',NULL,NULL,'94','2020-05-05 14:15:32.588753',1,12,4,1,NULL,0,0,'{\"url\": \"/blog/36#comment_94\"}'),(36,'info',0,'1','小胖鱼 评论了你的《shell blog for 30》',NULL,NULL,'95','2020-05-05 14:15:58.654200',1,12,4,1,NULL,0,0,'{\"url\": \"/blog/36#comment_95\"}'),(37,'info',0,'1','小胖鱼 评论了你的《shell blog for 30》',NULL,NULL,'96','2020-05-05 14:17:47.130768',1,12,4,1,NULL,0,0,'{\"url\": \"/blog/36#comment_96\"}');
/*!40000 ALTER TABLE `notifications_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2020-04-05',1,37,7),(2,'2020-04-05',1,36,7),(3,'2020-04-04',3,37,7),(4,'2020-04-06',3,37,7),(5,'2020-04-06',1,36,7),(6,'2020-04-06',1,35,7),(7,'2020-04-07',1,37,7),(8,'2020-04-03',1,37,7),(9,'2020-04-07',1,33,7),(10,'2020-04-06',1,33,7),(11,'2020-04-08',1,37,7),(12,'2020-04-10',1,37,7),(13,'2020-04-10',2,36,7),(14,'2020-04-11',3,37,7),(15,'2020-04-11',4,36,7),(16,'2020-04-12',1,36,7),(17,'2020-04-12',1,34,7),(18,'2020-04-12',1,35,7),(19,'2020-04-12',1,37,7),(20,'2020-04-12',1,33,7),(21,'2020-04-16',4,37,7),(22,'2020-04-16',2,36,7),(23,'2020-04-17',2,35,7),(24,'2020-04-17',2,37,7),(25,'2020-04-17',1,36,7),(26,'2020-04-17',1,34,7),(27,'2020-04-20',1,36,7),(28,'2020-04-21',1,36,7),(29,'2020-04-21',1,35,7),(30,'2020-04-21',1,37,7),(31,'2020-04-21',1,34,7),(32,'2020-04-22',1,37,7),(33,'2020-04-22',2,36,7),(34,'2020-04-23',2,37,7),(35,'2020-04-25',1,37,7),(36,'2020-04-25',1,36,7),(37,'2020-04-29',1,37,7),(38,'2020-04-29',1,36,7),(39,'2020-04-30',2,37,7),(40,'2020-04-30',1,36,7),(41,'2020-05-03',1,33,7),(42,'2020-05-03',1,32,7),(43,'2020-05-03',1,37,7),(44,'2020-05-03',1,36,7),(45,'2020-05-04',2,36,7),(46,'2020-05-04',1,37,7),(47,'2020-05-04',1,32,7),(48,'2020-05-04',1,33,7),(49,'2020-05-04',1,5,7),(50,'2020-05-05',1,37,7),(51,'2020-05-05',1,33,7),(52,'2020-05-05',1,36,7),(53,'2020-05-05',2,35,7),(54,'2020-05-05',1,5,7),(55,'2020-05-06',1,35,7),(56,'2020-05-06',1,36,7),(57,'2020-05-06',1,37,7),(58,'2020-05-10',2,37,7),(59,'2020-05-10',1,34,7);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,41,37,7),(2,9,35,7),(3,24,36,7),(4,5,33,7),(5,4,34,7),(6,2,32,7),(7,2,5,7);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'小胖鱼',1),(2,'卡卡罗特',4),(3,'测试注册用户',5);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-10 20:57:28
