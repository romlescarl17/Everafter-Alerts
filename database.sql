-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: ultranews
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'rv5eRiNTOsfJxhAmTSiCl1pyK4gzjmqz',1,'2024-02-12 03:19:50','2024-02-12 03:19:50','2024-02-12 03:19:50'),(2,2,'7S8ccxzCSRsvseejNWj2uf2iUKc6VzkM',1,'2024-02-12 03:19:51','2024-02-12 03:19:51','2024-02-12 03:19:51');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Header ads','2025-02-12 00:00:00','header-ads','7G20EDOCAZ','banners/image-3.jpg','https://thesky9.com/',0,1,'published','2024-02-12 03:19:56','2024-02-12 03:19:56',1,NULL,NULL,NULL,NULL),(2,'Panel ads','2025-02-12 00:00:00','panel-ads','QGEFL9SX4U','banners/image-3.jpg','https://thesky9.com/',0,1,'published','2024-02-12 03:19:56','2024-02-12 03:19:56',1,NULL,NULL,NULL,NULL),(3,'Top sidebar ads','2025-02-12 00:00:00','top-sidebar-ads','K1NYSYFBDT','banners/image-1.jpg','https://thesky9.com/',0,2,'published','2024-02-12 03:19:56','2024-02-12 03:19:56',1,NULL,NULL,NULL,NULL),(4,'Bottom sidebar ads','2025-02-12 00:00:00','bottom-sidebar-ads','KAZATGWRC4','banners/image-2.jpg','https://thesky9.com/',0,3,'published','2024-02-12 03:19:56','2024-02-12 03:19:56',1,NULL,NULL,NULL,NULL),(5,'Custom ads 1','2025-02-12 00:00:00','custom-1','PZQJ7WAUHO','banners/image-4.jpg','https://thesky9.com/',0,4,'published','2024-02-12 03:19:56','2024-02-12 03:19:56',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (1,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','192.168.160.1',0,2,'Bernice Hand','info','2024-02-12 03:20:36','2024-02-12 03:20:36'),(2,2,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','192.168.160.1',0,2,'Bernice Hand','info','2024-04-25 09:49:41','2024-04-25 09:49:41');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_likes`
--

DROP TABLE IF EXISTS `bb_comment_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`),
  KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  KEY `bb_comment_likes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_likes`
--

LOCK TABLES `bb_comment_likes` WRITE;
/*!40000 ALTER TABLE `bb_comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_recommends`
--

DROP TABLE IF EXISTS `bb_comment_recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_recommends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`),
  KEY `bb_comment_recommends_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_recommends`
--

LOCK TABLES `bb_comment_recommends` WRITE;
/*!40000 ALTER TABLE `bb_comment_recommends` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_users`
--

DROP TABLE IF EXISTS `bb_comment_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bb_comment_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_users`
--

LOCK TABLES `bb_comment_users` WRITE;
/*!40000 ALTER TABLE `bb_comment_users` DISABLE KEYS */;
INSERT INTO `bb_comment_users` VALUES (1,'Penelope','jodie08@yahoo.com','$2y$12$t.GGSDowTXkCBC6V5qNxlOR49VrDzY6buC3i48M0EgSHivRQqwSwS',52,NULL,'2024-02-12 03:21:01','2024-02-12 03:21:01','D\'Amore'),(2,'Earl','diamond60@bruen.com','$2y$12$8fbPCqoSUJBsNahhi8eJdO3EUibE..tB7vXZzUCEOLl8JX7Nc0Bpe',52,NULL,'2024-02-12 03:21:02','2024-02-12 03:21:02','Leuschke'),(3,'Glenna','rodriguez.destiny@breitenberg.com','$2y$12$szRK8TSIJaxvP1gNkg2Xa.a3xfCSB77k8gzYP/msYad1eTrFBvgS6',53,NULL,'2024-02-12 03:21:03','2024-02-12 03:21:03','Crist'),(4,'Karson','nadia91@gmail.com','$2y$12$so0muFH9vlcUb9cJNb.AeOYicrJ3Ya.vCQlMx6mYmhrxod5Ctc3ea',55,NULL,'2024-02-12 03:21:03','2024-02-12 03:21:03','Mante'),(5,'Name','tristin06@gmail.com','$2y$12$QbHqei7bS79WowIFDjmkvOia1seegm3LsjY8yn82IGPIJYg8VK1hq',55,NULL,'2024-02-12 03:21:04','2024-02-12 03:21:04','Schowalter'),(6,'Janet','bergstrom.leila@yahoo.com','$2y$12$FmdoP/VUDpJYr8hEHrXxj.2i2VhTcPukHelPraBz1eJjeJ/B4E4XC',55,NULL,'2024-02-12 03:21:05','2024-02-12 03:21:05','Huels'),(7,'Elisha','bechtelar.karlie@rogahn.com','$2y$12$grw/vgC.Zi7VmVeIkbaQ2eMPHKJQHQ4p1VIBX6bum6VJ5OFtuxH0.',52,NULL,'2024-02-12 03:21:06','2024-02-12 03:21:06','Ryan'),(8,'Kianna','cedrick.barton@gmail.com','$2y$12$VgrlYame7IBXmIGIcr7vqOwfBOL0yGr/h.JWlKDxKqgRyXS3g4gGK',54,NULL,'2024-02-12 03:21:07','2024-02-12 03:21:07','Rau'),(9,'Clementine','blowe@turcotte.biz','$2y$12$Gv6zZ/qVqT5hxtl7lz3ReupF5u5l9wWNVXRCJKJjwmQQzZtTlqeFy',54,NULL,'2024-02-12 03:21:08','2024-02-12 03:21:08','Cassin'),(10,'Ardella','elissa.lesch@lind.com','$2y$12$lKh/VBrjinXKahl7ZNvcT.LolSA6MyCgmOVshF7t670MNyMjvF3uq',52,NULL,'2024-02-12 03:21:09','2024-02-12 03:21:09','Heidenreich');
/*!40000 ALTER TABLE `bb_comment_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comments`
--

DROP TABLE IF EXISTS `bb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int NOT NULL DEFAULT '0',
  `reply_count` int NOT NULL DEFAULT '0',
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comments`
--

LOCK TABLES `bb_comments` WRITE;
/*!40000 ALTER TABLE `bb_comments` DISABLE KEYS */;
INSERT INTO `bb_comments` VALUES (1,'I\'ll never go THERE again!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she began.',1,'Botble\\Blog\\Models\\Post','135.79.192.11',10,'published',0,1,0,'2024-01-19 02:18:12','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(2,'You know the way out of a treacle-well--eh, stupid?\' \'But they were mine before. If I or she fell.',1,'Botble\\Blog\\Models\\Post','7.179.58.55',6,'published',0,0,0,'2024-01-20 21:28:32','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(3,'Alice, \'we learned French and music.\' \'And washing?\' said the Queen, stamping on the ground near.',1,'Botble\\Blog\\Models\\Post','249.128.70.41',7,'published',0,0,0,'2024-01-27 15:14:24','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(4,'Said his father; \'don\'t give yourself airs! Do you think you might do very well without--Maybe.',1,'Botble\\Blog\\Models\\Post','136.115.13.204',5,'published',0,1,0,'2024-02-09 09:25:49','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(5,'And argued each case with MINE,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of.',1,'Botble\\Blog\\Models\\Post','146.168.171.142',4,'published',0,0,0,'2024-01-13 21:36:03','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(6,'Mouse, who seemed too much pepper in my time, but never ONE with such a subject! Our family always.',1,'Botble\\Blog\\Models\\Post','25.137.26.179',1,'published',0,0,0,'2024-01-30 04:07:44','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(7,'TWO little shrieks, and more sounds of broken glass, from which she found she had hoped) a fan and.',1,'Botble\\Blog\\Models\\Post','136.236.211.2',6,'published',0,0,1,'2024-01-28 22:47:35','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(8,'Mary Ann, what ARE you doing out here? Run home this moment, I tell you!\' said Alice. \'Anything.',1,'Botble\\Blog\\Models\\Post','13.174.185.193',6,'published',0,0,4,'2024-02-01 00:34:53','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(9,'I\'ll eat it,\' said the Lory. Alice replied in a hurry. \'No, I\'ll look first,\' she said, without.',2,'Botble\\Blog\\Models\\Post','229.124.219.69',9,'published',0,0,0,'2024-01-16 18:30:26','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(10,'Which way?\', holding her hand in her French lesson-book. The Mouse did not venture to ask them.',2,'Botble\\Blog\\Models\\Post','245.239.54.59',6,'published',0,1,0,'2024-02-07 07:01:12','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(11,'For instance, suppose it were white, but there was the White Rabbit, \'but it doesn\'t mind.\' The.',2,'Botble\\Blog\\Models\\Post','183.239.221.30',1,'published',0,1,0,'2024-01-27 16:26:13','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(12,'Ann! Mary Ann!\' said the Dormouse: \'not in that ridiculous fashion.\' And he got up this morning.',2,'Botble\\Blog\\Models\\Post','18.45.33.25',6,'published',0,0,0,'2024-01-28 02:05:25','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(13,'Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can guess that,\' she added aloud.',2,'Botble\\Blog\\Models\\Post','141.142.110.21',8,'published',0,0,0,'2024-01-15 06:00:50','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(14,'Gryphon went on, \'you see, a dog growls when it\'s angry, and wags its tail about in the book,\'.',2,'Botble\\Blog\\Models\\Post','226.57.149.32',4,'published',0,0,0,'2024-01-24 02:56:12','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(15,'I can go back and see after some executions I have ordered\'; and she set off at once set to work.',2,'Botble\\Blog\\Models\\Post','159.235.229.150',7,'published',0,0,11,'2024-02-09 23:03:54','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(16,'Alice; \'living at the stick, and held out its arms folded, frowning like a writing-desk?\' \'Come.',2,'Botble\\Blog\\Models\\Post','82.22.80.109',4,'published',0,0,10,'2024-01-29 00:41:23','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(17,'And took them quite away!\' \'Consider your verdict,\' he said in a coaxing tone, and added \'It isn\'t.',3,'Botble\\Blog\\Models\\Post','248.157.151.37',9,'published',0,0,0,'2024-01-19 22:28:32','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(18,'YOU with us!\"\' \'They were obliged to say when I learn music.\' \'Ah! that accounts for it,\' said the.',3,'Botble\\Blog\\Models\\Post','198.91.131.15',6,'published',0,0,0,'2024-01-16 01:21:12','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(19,'As she said to herself. \'Shy, they seem to see if she meant to take out of the guinea-pigs.',3,'Botble\\Blog\\Models\\Post','204.61.175.214',2,'published',0,1,0,'2024-01-25 03:37:50','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(20,'Do come back again, and she jumped up in such long ringlets, and mine doesn\'t go in at all?\' said.',3,'Botble\\Blog\\Models\\Post','112.189.123.189',2,'published',0,1,0,'2024-02-05 23:18:17','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(21,'King, who had been all the while, and fighting for the moment she appeared on the bank--the birds.',3,'Botble\\Blog\\Models\\Post','100.109.46.255',6,'published',0,0,0,'2024-02-04 12:54:36','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(22,'Duchess! Oh! won\'t she be savage if I\'ve kept her eyes filled with tears running down his brush.',3,'Botble\\Blog\\Models\\Post','34.58.127.200',3,'published',0,0,0,'2024-01-15 11:59:13','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(23,'No, it\'ll never do to ask: perhaps I shall be punished for it to make SOME change in my life!\' She.',3,'Botble\\Blog\\Models\\Post','84.108.92.132',2,'published',0,0,20,'2024-02-08 03:14:25','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(24,'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon added \'Come.',3,'Botble\\Blog\\Models\\Post','7.143.222.71',10,'published',0,0,19,'2024-02-06 15:07:36','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(25,'PRECIOUS nose\'; as an explanation; \'I\'ve none of them attempted to explain it as a partner!\' cried.',21,'Botble\\Blog\\Models\\Post','162.192.44.25',5,'published',0,0,0,'2024-01-14 10:53:36','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(26,'By the time when I got up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t.',21,'Botble\\Blog\\Models\\Post','170.86.80.107',6,'published',0,0,0,'2024-02-11 14:39:57','2024-02-12 03:21:09','Botble\\Comment\\Models\\CommentUser'),(27,'Alice started to her to carry it further. So she tucked it away under her arm, with its wings.',21,'Botble\\Blog\\Models\\Post','250.78.134.177',2,'published',0,2,0,'2024-01-28 14:52:46','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(28,'No, there were a Duck and a fall, and a piece of bread-and-butter in the same words as before.',21,'Botble\\Blog\\Models\\Post','231.77.98.218',5,'published',0,0,0,'2024-01-31 16:45:39','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(29,'So Alice got up in her French lesson-book. The Mouse gave a sudden leap out of his pocket, and was.',21,'Botble\\Blog\\Models\\Post','138.72.147.159',8,'published',0,0,0,'2024-01-21 08:21:57','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(30,'She felt very curious sensation, which puzzled her a good deal: this fireplace is narrow, to be.',21,'Botble\\Blog\\Models\\Post','191.2.118.228',4,'published',0,0,0,'2024-01-14 05:43:51','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(31,'Caterpillar took the hookah out of its voice. \'Back to land again, and said, \'So you did, old.',21,'Botble\\Blog\\Models\\Post','245.36.60.223',9,'published',0,0,27,'2024-01-28 13:24:16','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(32,'Involved in this way! Stop this moment, I tell you, you coward!\' and at last it sat for a long.',21,'Botble\\Blog\\Models\\Post','33.209.244.48',4,'published',0,0,27,'2024-02-06 12:13:48','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(33,'He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man,\' the Hatter were.',22,'Botble\\Blog\\Models\\Post','124.78.36.49',10,'published',0,2,0,'2024-02-05 02:37:04','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(34,'Turn that Dormouse out of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have.',22,'Botble\\Blog\\Models\\Post','73.53.21.16',7,'published',0,0,0,'2024-01-29 02:36:09','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(35,'The baby grunted again, and she very soon found an opportunity of showing off her head!\' Those.',22,'Botble\\Blog\\Models\\Post','71.164.229.212',1,'published',0,0,0,'2024-01-26 11:13:30','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(36,'Even the Duchess said to herself \'Now I can do without lobsters, you know. But do cats eat bats, I.',22,'Botble\\Blog\\Models\\Post','205.229.142.153',8,'published',0,0,0,'2024-02-07 01:37:27','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(37,'Alice said to the three gardeners, but she did not much larger than a real Turtle.\' These words.',22,'Botble\\Blog\\Models\\Post','188.22.119.105',7,'published',0,0,0,'2024-01-27 15:17:57','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(38,'Trims his belt and his friends shared their never-ending meal, and the pair of white kid gloves.',22,'Botble\\Blog\\Models\\Post','226.33.106.85',5,'published',0,0,0,'2024-02-10 11:04:49','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(39,'YOU manage?\' Alice asked. The Hatter was the White Rabbit returning, splendidly dressed, with a.',22,'Botble\\Blog\\Models\\Post','50.147.70.161',10,'published',0,0,33,'2024-02-09 12:26:45','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(40,'March Hare went on. \'Or would you tell me,\' said Alice, seriously, \'I\'ll have nothing more to be a.',22,'Botble\\Blog\\Models\\Post','142.236.224.24',7,'published',0,0,33,'2024-02-06 05:42:42','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(41,'English!\' said the Gryphon. \'Turn a somersault in the world! Oh, my dear Dinah! I wonder if I.',23,'Botble\\Blog\\Models\\Post','59.180.252.222',5,'published',0,0,0,'2024-01-24 21:06:23','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(42,'Alice, jumping up in spite of all her wonderful Adventures, till she shook the house, and found.',23,'Botble\\Blog\\Models\\Post','35.112.12.136',4,'published',0,1,0,'2024-01-15 02:44:43','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(43,'Duchess. \'I make you grow shorter.\' \'One side of WHAT? The other guests had taken advantage of the.',23,'Botble\\Blog\\Models\\Post','129.241.180.31',6,'published',0,0,0,'2024-01-18 19:56:47','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(44,'Mouse. \'Of course,\' the Gryphon said, in a furious passion, and went by without noticing her. Then.',23,'Botble\\Blog\\Models\\Post','22.250.134.52',2,'published',0,1,0,'2024-02-10 17:24:26','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(45,'Mock Turtle replied in an undertone to the tarts on the top of the trees behind him. \'--or next.',23,'Botble\\Blog\\Models\\Post','87.210.191.148',10,'published',0,0,0,'2024-01-17 05:14:22','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(46,'INSIDE, you might like to go and get ready for your interesting story,\' but she got into it), and.',23,'Botble\\Blog\\Models\\Post','174.204.75.244',5,'published',0,0,0,'2024-01-22 21:39:36','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(47,'Mabel! I\'ll try and repeat something now. Tell her to carry it further. So she swallowed one of.',23,'Botble\\Blog\\Models\\Post','193.25.48.77',1,'published',0,0,44,'2024-02-02 17:36:55','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser'),(48,'I\'ve said as yet.\' \'A cheap sort of way to hear her try and repeat something now. Tell her to.',23,'Botble\\Blog\\Models\\Post','58.253.199.16',9,'published',0,0,42,'2024-02-10 06:36:30','2024-02-12 03:21:10','Botble\\Comment\\Models\\CommentUser');
/*!40000 ALTER TABLE `bb_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33'),(2,'Lifestyle',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33'),(3,'Travel Tips',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33'),(4,'Healthy',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33'),(5,'Fashion',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33'),(6,'Hotel',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33'),(7,'Nature',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-02-12 03:20:33','2024-02-12 03:20:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Phong cách sống',NULL),('vi',2,'Sức khỏe',NULL),('vi',3,'Món ngon',NULL),('vi',4,'Sách',NULL),('vi',5,'Mẹo du lịch',NULL),('vi',6,'Khách sạn',NULL),('vi',7,'Thiên nhiên',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dedrick Runolfsdottir','lwalker@example.net','828-987-6119','26099 Edythe Plaza\nPort Mona, NE 84951','Quos nisi minima commodi ut.','Et velit et temporibus possimus doloremque rerum. Tempora non culpa consequuntur possimus ducimus. Nam omnis voluptatem porro quia dicta molestiae et doloribus. Consequatur consequatur est amet provident. Quae dolor autem et iusto iusto assumenda molestiae. Sed et et enim ipsum excepturi aut neque. Consequatur ab fugiat velit voluptas nesciunt odit. Natus nihil cupiditate quia similique. Tempora vel occaecati sit quibusdam. Qui dolorem eos similique.',NULL,'unread','2024-02-12 03:20:04','2024-02-12 03:20:04'),(2,'Cassidy Considine','mireille.jerde@example.org','+1.361.571.4827','2692 Berge Stravenue Apt. 451\nHirtheshire, MT 25069','Repellat ipsa maiores nihil sit.','Iure ut voluptas qui a. Quae veniam voluptates veritatis repudiandae accusamus vel. Nostrum impedit sed corrupti ipsa voluptas ipsa non. Qui necessitatibus corporis voluptates non sed consequatur. Ut soluta sed error molestiae. Expedita quidem dolores ut at. At sint autem eum ipsum soluta iure. Quas est dicta quos sed molestiae est et. Occaecati vel nulla aspernatur temporibus possimus sed. Deserunt occaecati ullam commodi. In eos culpa totam culpa.',NULL,'read','2024-02-12 03:20:04','2024-02-12 03:20:04'),(3,'Loyce Connelly','ngottlieb@example.net','+1-254-939-5629','9340 Heath Mews\nNew Maia, WV 16968','Enim quasi qui doloribus cumque.','Fugiat necessitatibus nihil quis aut possimus. Aut velit quae rerum laborum. Sint magni architecto est dicta. Nostrum illum aut cumque dolorem ab pariatur. Ipsa dicta dolores optio quia. Quas reiciendis rerum ut. Voluptatibus ea provident fugit numquam. Error mollitia doloribus et inventore libero aperiam autem unde.',NULL,'read','2024-02-12 03:20:04','2024-02-12 03:20:04'),(4,'Prof. Vada Mosciski','smith.mireille@example.net','+1 (986) 855-7453','95511 Fritz Mall Apt. 377\nNew Vida, IA 47625-4240','Est inventore suscipit sunt corrupti in cum.','Sapiente necessitatibus omnis earum ea accusantium quibusdam. Est velit recusandae eius impedit et temporibus maiores. Voluptas adipisci exercitationem aut asperiores. Tempora ad esse unde ut eaque explicabo. Expedita pariatur repellendus quas voluptatem voluptas eaque rem praesentium. Illum aut voluptas eveniet voluptatem aut. Dolore dignissimos laboriosam et animi id non. Distinctio omnis blanditiis sit consectetur officiis voluptas id.',NULL,'unread','2024-02-12 03:20:04','2024-02-12 03:20:04'),(5,'Zita Hahn','zoconner@example.com','+1-610-767-7973','327 Llewellyn Landing Suite 810\nSouth Okeyfort, OK 68970-5132','Consectetur aut et voluptatem ipsam hic odio.','Consequatur harum et quos ipsum in iure quod. Est voluptatum nesciunt aut enim perspiciatis temporibus aspernatur vel. Repellendus est unde incidunt voluptate autem. Aliquid maxime animi distinctio atque atque quia. Rerum qui autem et eveniet incidunt id culpa id. Reiciendis nulla aut itaque. Nihil est sequi quia vitae voluptas occaecati et magni. Voluptates aut velit id optio. Et praesentium voluptatem accusamus eius.',NULL,'unread','2024-02-12 03:20:04','2024-02-12 03:20:04'),(6,'Dr. Jacey Barton IV','terrell16@example.org','318-431-5521','905 Buckridge Gardens Suite 851\nUbaldoville, MN 80810','Similique quisquam harum tempore perferendis.','Ut labore repellendus quasi ab et odio totam eveniet. Veniam provident et deleniti dolorem modi. Voluptas aperiam quos dicta iste eveniet. Itaque voluptatem sequi numquam saepe corrupti maiores. Eaque rerum expedita libero soluta voluptas voluptatem consequatur ut. Omnis atque commodi blanditiis et veritatis. Enim aliquam assumenda saepe a. Illum recusandae sapiente cum sed. Autem eos ullam quia odio rem. Molestias et perspiciatis quibusdam dolorem recusandae est maxime nostrum.',NULL,'read','2024-02-12 03:20:04','2024-02-12 03:20:04'),(7,'Javon Anderson','ehaley@example.net','+1.314.860.5620','5367 Powlowski Falls\nNew Dorian, LA 12176','Sit tenetur fuga voluptas.','Ratione natus quis aut provident. Sed earum eos animi officia nam ut ut. Eveniet sed laudantium adipisci in aut amet. Voluptatem est rerum veniam eaque aut illum. Non rerum laudantium harum omnis rerum ut. Eaque ea placeat veritatis fugit qui ipsum. Commodi rerum nam accusantium repudiandae praesentium. Et est facilis omnis tempore sequi. Illum impedit totam officia voluptatem ut et. Illum eum eum nobis et libero alias. Quis magnam aut voluptas asperiores veniam necessitatibus enim.',NULL,'read','2024-02-12 03:20:04','2024-02-12 03:20:04'),(8,'Ms. Agnes Wyman PhD','joan.goyette@example.com','+1-224-318-6444','9984 Hessel Pine Suite 587\nColbyton, SD 43655','Aut nihil non ullam alias.','Reiciendis vitae qui facere est earum et et eaque. Pariatur ex provident ea sunt sit maxime numquam. Pariatur consequuntur neque autem consectetur. Ut et fuga voluptates autem. Et voluptate qui delectus quo. Nobis voluptatem omnis voluptate quia iusto. Laboriosam nulla unde velit sit non enim repellendus alias. Corrupti odio et fuga earum. Quia aut rerum nam illo sunt error hic fugiat. Sunt aliquam et quidem aut ut aut commodi. Ut numquam voluptatum soluta non eligendi fugiat rerum.',NULL,'read','2024-02-12 03:20:04','2024-02-12 03:20:04'),(9,'Alessandro Pollich','fdickinson@example.net','+1-858-582-9778','765 Wisozk Rest\nNew Ramirobury, CA 23504','Velit omnis aut nihil sit unde consequuntur.','Aut facilis fugiat assumenda. Tempore omnis et consectetur at non praesentium velit. Aperiam ad unde voluptatibus et. Quia culpa aut id est. Deleniti consectetur et aut et asperiores sit. Accusamus officia suscipit voluptatibus. Non enim labore quibusdam aperiam laudantium qui. Ut dolores illum quos consequatur sit et ut. Necessitatibus sint molestiae maxime sunt quam.',NULL,'unread','2024-02-12 03:20:04','2024-02-12 03:20:04'),(10,'Colin Mann','eda33@example.com','1-973-799-3224','96693 Reinger Mountains\nOkunevafurt, TX 99784','Tempora ipsa non sequi eos adipisci.','Voluptatem minima vel odio corrupti omnis ab. Voluptas est voluptates eveniet iure. Sit veritatis eos quia quam sed quia. Et tenetur et voluptatibus non voluptas. Et ratione quia illum ad tempore consequatur in. Voluptatem dolorem eum repellat praesentium amet impedit earum. Aut libero sint error. Quia impedit qui aspernatur autem corporis perspiciatis. Voluptate ab cum magnam harum cumque.',NULL,'unread','2024-02-12 03:20:04','2024-02-12 03:20:04');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_themes','2024-02-12 03:22:35','2024-02-12 03:22:35'),(2,'widget_total_users','2024-02-12 03:22:35','2024-02-12 03:22:35'),(3,'widget_total_plugins','2024-02-12 03:22:35','2024-02-12 03:22:35'),(4,'widget_total_pages','2024-02-12 03:22:35','2024-02-12 03:22:35'),(5,'widget_analytics_general','2024-02-12 03:22:35','2024-02-12 03:22:35'),(6,'widget_analytics_page','2024-02-12 03:22:35','2024-02-12 03:22:35'),(7,'widget_analytics_browser','2024-02-12 03:22:35','2024-02-12 03:22:35'),(8,'widget_analytics_referrer','2024-02-12 03:22:35','2024-02-12 03:22:35'),(9,'widget_posts_recent','2024-02-12 03:22:36','2024-02-12 03:22:36'),(10,'widget_audit_logs','2024-02-12 03:22:36','2024-02-12 03:22:36'),(11,'widget_request_errors','2024-02-12 03:22:36','2024-02-12 03:22:36');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_posts`
--

DROP TABLE IF EXISTS `favorite_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `type` enum('favorite','bookmark') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorite_posts_post_id_user_id_type_unique` (`post_id`,`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_posts`
--

LOCK TABLES `favorite_posts` WRITE;
/*!40000 ALTER TABLE `favorite_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Eius dignissimos dolor vero. Dolore id qui maiores quis.',1,0,'galleries/1.jpg',1,'published','2024-02-12 03:20:03','2024-02-12 03:20:03'),(2,'New Day','Assumenda et neque eum odio. Modi veniam fuga odit totam. Sit molestias minus in eos eos. Impedit laudantium consequatur libero earum velit.',1,0,'galleries/2.jpg',1,'published','2024-02-12 03:20:03','2024-02-12 03:20:03'),(3,'Happy Day','Aut porro et culpa velit non cupiditate. Tempore ipsa sint voluptate quae reiciendis. Ut quia aut sed dicta.',1,0,'galleries/3.jpg',1,'published','2024-02-12 03:20:03','2024-02-12 03:20:03'),(4,'Nature','Qui expedita rerum sequi ea ut repellat maiores ut. Ut id repellendus cumque aspernatur qui. Et minus repellat ut ex.',1,0,'galleries/4.jpg',1,'published','2024-02-12 03:20:03','2024-02-12 03:20:03'),(5,'Morning','Atque illo accusantium officia et voluptatem. Iste enim in ut est ut. Consequatur facilis illo porro temporibus dolorem nemo doloribus.',1,0,'galleries/5.jpg',1,'published','2024-02-12 03:20:03','2024-02-12 03:20:03'),(6,'Photography','Autem aliquam cum sed delectus. Et quis ducimus eligendi nobis magnam nihil fugit beatae. At tempora est vero et aut et.',1,0,'galleries/6.jpg',1,'published','2024-02-12 03:20:03','2024-02-12 03:20:03');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
INSERT INTO `galleries_translations` VALUES ('vi',1,'Hoàn hảo',NULL),('vi',2,'Ngày mới',NULL),('vi',3,'Ngày hạnh phúc',NULL),('vi',4,'Thiên nhiên',NULL),('vi',5,'Buổi sáng',NULL),('vi',6,'Nghệ thuật',NULL);
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur iure non aut nobis provident veritatis non. Quo veniam neque reprehenderit temporibus molestias. Et est dolor autem ex.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Magnam tempore vitae distinctio nemo molestiae nihil. Alias est in neque ut consequatur et. Aperiam sapiente omnis odio natus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit rerum voluptates est quia nulla. Deleniti exercitationem cumque voluptatem. Qui qui error veritatis neque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Omnis non autem consequatur nam suscipit dolore velit dolorem. Facere ad non neque aut voluptatem. Sed officiis maiores sed dolor neque vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rerum omnis omnis molestiae id. Corporis incidunt soluta laudantium expedita. Quibusdam sed et voluptates voluptatem in.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Reprehenderit commodi dolor voluptas id ullam. Praesentium ad doloremque iste et. Et non et et repellendus. Veniam non iusto dolor ut vel eveniet.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Id omnis nam minus omnis quaerat. Sequi enim ut quisquam corrupti. Nihil et tempora ut et est inventore sequi. At autem amet quos error fuga non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Omnis dolor ea facilis consequatur iusto est. Numquam natus sit qui et architecto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis et nobis soluta eaque in qui. Quia officiis culpa alias occaecati. Eligendi quidem consequatur neque voluptas non optio minus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Corrupti adipisci quo est quia architecto eum. Repellat blanditiis explicabo voluptates saepe autem.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-02-12 03:20:03','2024-02-12 03:20:03'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur iure non aut nobis provident veritatis non. Quo veniam neque reprehenderit temporibus molestias. Et est dolor autem ex.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Magnam tempore vitae distinctio nemo molestiae nihil. Alias est in neque ut consequatur et. Aperiam sapiente omnis odio natus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit rerum voluptates est quia nulla. Deleniti exercitationem cumque voluptatem. Qui qui error veritatis neque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Omnis non autem consequatur nam suscipit dolore velit dolorem. Facere ad non neque aut voluptatem. Sed officiis maiores sed dolor neque vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rerum omnis omnis molestiae id. Corporis incidunt soluta laudantium expedita. Quibusdam sed et voluptates voluptatem in.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Reprehenderit commodi dolor voluptas id ullam. Praesentium ad doloremque iste et. Et non et et repellendus. Veniam non iusto dolor ut vel eveniet.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Id omnis nam minus omnis quaerat. Sequi enim ut quisquam corrupti. Nihil et tempora ut et est inventore sequi. At autem amet quos error fuga non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Omnis dolor ea facilis consequatur iusto est. Numquam natus sit qui et architecto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis et nobis soluta eaque in qui. Quia officiis culpa alias occaecati. Eligendi quidem consequatur neque voluptas non optio minus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Corrupti adipisci quo est quia architecto eum. Repellat blanditiis explicabo voluptates saepe autem.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-02-12 03:20:03','2024-02-12 03:20:03'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur iure non aut nobis provident veritatis non. Quo veniam neque reprehenderit temporibus molestias. Et est dolor autem ex.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Magnam tempore vitae distinctio nemo molestiae nihil. Alias est in neque ut consequatur et. Aperiam sapiente omnis odio natus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit rerum voluptates est quia nulla. Deleniti exercitationem cumque voluptatem. Qui qui error veritatis neque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Omnis non autem consequatur nam suscipit dolore velit dolorem. Facere ad non neque aut voluptatem. Sed officiis maiores sed dolor neque vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rerum omnis omnis molestiae id. Corporis incidunt soluta laudantium expedita. Quibusdam sed et voluptates voluptatem in.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Reprehenderit commodi dolor voluptas id ullam. Praesentium ad doloremque iste et. Et non et et repellendus. Veniam non iusto dolor ut vel eveniet.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Id omnis nam minus omnis quaerat. Sequi enim ut quisquam corrupti. Nihil et tempora ut et est inventore sequi. At autem amet quos error fuga non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Omnis dolor ea facilis consequatur iusto est. Numquam natus sit qui et architecto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis et nobis soluta eaque in qui. Quia officiis culpa alias occaecati. Eligendi quidem consequatur neque voluptas non optio minus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Corrupti adipisci quo est quia architecto eum. Repellat blanditiis explicabo voluptates saepe autem.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-02-12 03:20:03','2024-02-12 03:20:03'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur iure non aut nobis provident veritatis non. Quo veniam neque reprehenderit temporibus molestias. Et est dolor autem ex.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Magnam tempore vitae distinctio nemo molestiae nihil. Alias est in neque ut consequatur et. Aperiam sapiente omnis odio natus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit rerum voluptates est quia nulla. Deleniti exercitationem cumque voluptatem. Qui qui error veritatis neque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Omnis non autem consequatur nam suscipit dolore velit dolorem. Facere ad non neque aut voluptatem. Sed officiis maiores sed dolor neque vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rerum omnis omnis molestiae id. Corporis incidunt soluta laudantium expedita. Quibusdam sed et voluptates voluptatem in.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Reprehenderit commodi dolor voluptas id ullam. Praesentium ad doloremque iste et. Et non et et repellendus. Veniam non iusto dolor ut vel eveniet.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Id omnis nam minus omnis quaerat. Sequi enim ut quisquam corrupti. Nihil et tempora ut et est inventore sequi. At autem amet quos error fuga non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Omnis dolor ea facilis consequatur iusto est. Numquam natus sit qui et architecto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis et nobis soluta eaque in qui. Quia officiis culpa alias occaecati. Eligendi quidem consequatur neque voluptas non optio minus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Corrupti adipisci quo est quia architecto eum. Repellat blanditiis explicabo voluptates saepe autem.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-02-12 03:20:03','2024-02-12 03:20:03'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur iure non aut nobis provident veritatis non. Quo veniam neque reprehenderit temporibus molestias. Et est dolor autem ex.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Magnam tempore vitae distinctio nemo molestiae nihil. Alias est in neque ut consequatur et. Aperiam sapiente omnis odio natus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit rerum voluptates est quia nulla. Deleniti exercitationem cumque voluptatem. Qui qui error veritatis neque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Omnis non autem consequatur nam suscipit dolore velit dolorem. Facere ad non neque aut voluptatem. Sed officiis maiores sed dolor neque vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rerum omnis omnis molestiae id. Corporis incidunt soluta laudantium expedita. Quibusdam sed et voluptates voluptatem in.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Reprehenderit commodi dolor voluptas id ullam. Praesentium ad doloremque iste et. Et non et et repellendus. Veniam non iusto dolor ut vel eveniet.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Id omnis nam minus omnis quaerat. Sequi enim ut quisquam corrupti. Nihil et tempora ut et est inventore sequi. At autem amet quos error fuga non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Omnis dolor ea facilis consequatur iusto est. Numquam natus sit qui et architecto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis et nobis soluta eaque in qui. Quia officiis culpa alias occaecati. Eligendi quidem consequatur neque voluptas non optio minus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Corrupti adipisci quo est quia architecto eum. Repellat blanditiis explicabo voluptates saepe autem.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-02-12 03:20:03','2024-02-12 03:20:03'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Consequatur iure non aut nobis provident veritatis non. Quo veniam neque reprehenderit temporibus molestias. Et est dolor autem ex.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Magnam tempore vitae distinctio nemo molestiae nihil. Alias est in neque ut consequatur et. Aperiam sapiente omnis odio natus.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit rerum voluptates est quia nulla. Deleniti exercitationem cumque voluptatem. Qui qui error veritatis neque.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Omnis non autem consequatur nam suscipit dolore velit dolorem. Facere ad non neque aut voluptatem. Sed officiis maiores sed dolor neque vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rerum omnis omnis molestiae id. Corporis incidunt soluta laudantium expedita. Quibusdam sed et voluptates voluptatem in.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Reprehenderit commodi dolor voluptas id ullam. Praesentium ad doloremque iste et. Et non et et repellendus. Veniam non iusto dolor ut vel eveniet.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Id omnis nam minus omnis quaerat. Sequi enim ut quisquam corrupti. Nihil et tempora ut et est inventore sequi. At autem amet quos error fuga non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Omnis dolor ea facilis consequatur iusto est. Numquam natus sit qui et architecto.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis et nobis soluta eaque in qui. Quia officiis culpa alias occaecati. Eligendi quidem consequatur neque voluptas non optio minus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Corrupti adipisci quo est quia architecto eum. Repellat blanditiis explicabo voluptates saepe autem.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-02-12 03:20:03','2024-02-12 03:20:03');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','8da2c320ee6ea2ecf58a66d5d9a28952',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','3de6d4a72b3b57915607df54b77ab42c',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','067bc6cb4f8caf82345078d220835712',2,'Botble\\Menu\\Models\\Menu'),(4,'vi','0f32ef524ef3fea9dccdf27c81e10e28',2,'Botble\\Menu\\Models\\MenuLocation'),(5,'vi','3de6d4a72b3b57915607df54b77ab42c',3,'Botble\\Menu\\Models\\Menu'),(6,'vi','067bc6cb4f8caf82345078d220835712',4,'Botble\\Menu\\Models\\Menu'),(7,'en_US','473912e1d3729916bc7d3f3a487952e9',1,'Botble\\PostCollection\\Models\\PostCollection'),(8,'en_US','bd38ff5ca6634dee424f86445047180b',2,'Botble\\PostCollection\\Models\\PostCollection'),(9,'vi','0cbc9c3baada35676f38215493f83e57',3,'Botble\\PostCollection\\Models\\PostCollection'),(10,'vi','e0d2efd176a946f4f3f38002dd5027ea',4,'Botble\\PostCollection\\Models\\PostCollection');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'image-1','image-1',1,'image/jpeg',110154,'banners/image-1.jpg','[]','2024-02-12 03:19:53','2024-02-12 03:19:53',NULL,'public'),(2,0,'image-2','image-2',1,'image/jpeg',53388,'banners/image-2.jpg','[]','2024-02-12 03:19:54','2024-02-12 03:19:54',NULL,'public'),(3,0,'image-3','image-3',1,'image/jpeg',46269,'banners/image-3.jpg','[]','2024-02-12 03:19:55','2024-02-12 03:19:55',NULL,'public'),(4,0,'image-4','image-4',1,'image/jpeg',47591,'banners/image-4.jpg','[]','2024-02-12 03:19:55','2024-02-12 03:19:55',NULL,'public'),(5,0,'1','1',2,'image/jpeg',42814,'galleries/1.jpg','[]','2024-02-12 03:19:56','2024-02-12 03:19:56',NULL,'public'),(6,0,'10','10',2,'image/jpeg',95796,'galleries/10.jpg','[]','2024-02-12 03:19:56','2024-02-12 03:19:56',NULL,'public'),(7,0,'2','2',2,'image/jpeg',43108,'galleries/2.jpg','[]','2024-02-12 03:19:57','2024-02-12 03:19:57',NULL,'public'),(8,0,'3','3',2,'image/jpeg',67060,'galleries/3.jpg','[]','2024-02-12 03:19:57','2024-02-12 03:19:57',NULL,'public'),(9,0,'4','4',2,'image/jpeg',60609,'galleries/4.jpg','[]','2024-02-12 03:19:58','2024-02-12 03:19:58',NULL,'public'),(10,0,'5','5',2,'image/jpeg',70264,'galleries/5.jpg','[]','2024-02-12 03:19:59','2024-02-12 03:19:59',NULL,'public'),(11,0,'6','6',2,'image/jpeg',40607,'galleries/6.jpg','[]','2024-02-12 03:19:59','2024-02-12 03:19:59',NULL,'public'),(12,0,'7','7',2,'image/jpeg',41491,'galleries/7.jpg','[]','2024-02-12 03:20:00','2024-02-12 03:20:00',NULL,'public'),(13,0,'8','8',2,'image/jpeg',58063,'galleries/8.jpg','[]','2024-02-12 03:20:00','2024-02-12 03:20:00',NULL,'public'),(14,0,'9','9',2,'image/jpeg',69288,'galleries/9.jpg','[]','2024-02-12 03:20:01','2024-02-12 03:20:01',NULL,'public'),(15,0,'news-1','news-1',3,'image/jpeg',93694,'news/news-1.jpg','[]','2024-02-12 03:20:04','2024-02-12 03:20:04',NULL,'public'),(16,0,'news-10','news-10',3,'image/jpeg',58656,'news/news-10.jpg','[]','2024-02-12 03:20:05','2024-02-12 03:20:05',NULL,'public'),(17,0,'news-11','news-11',3,'image/jpeg',127000,'news/news-11.jpg','[]','2024-02-12 03:20:06','2024-02-12 03:20:06',NULL,'public'),(18,0,'news-12','news-12',3,'image/jpeg',30283,'news/news-12.jpg','[]','2024-02-12 03:20:07','2024-02-12 03:20:07',NULL,'public'),(19,0,'news-13','news-13',3,'image/jpeg',359805,'news/news-13.jpg','[]','2024-02-12 03:20:08','2024-02-12 03:20:08',NULL,'public'),(20,0,'news-14','news-14',3,'image/jpeg',128708,'news/news-14.jpg','[]','2024-02-12 03:20:09','2024-02-12 03:20:09',NULL,'public'),(21,0,'news-15','news-15',3,'image/jpeg',283779,'news/news-15.jpg','[]','2024-02-12 03:20:11','2024-02-12 03:20:11',NULL,'public'),(22,0,'news-16','news-16',3,'image/jpeg',157899,'news/news-16.jpg','[]','2024-02-12 03:20:12','2024-02-12 03:20:12',NULL,'public'),(23,0,'news-17','news-17',3,'image/jpeg',62316,'news/news-17.jpg','[]','2024-02-12 03:20:13','2024-02-12 03:20:13',NULL,'public'),(24,0,'news-18','news-18',3,'image/jpeg',103832,'news/news-18.jpg','[]','2024-02-12 03:20:14','2024-02-12 03:20:14',NULL,'public'),(25,0,'news-19','news-19',3,'image/jpeg',56987,'news/news-19.jpg','[]','2024-02-12 03:20:15','2024-02-12 03:20:15',NULL,'public'),(26,0,'news-2','news-2',3,'image/jpeg',95478,'news/news-2.jpg','[]','2024-02-12 03:20:16','2024-02-12 03:20:16',NULL,'public'),(27,0,'news-20','news-20',3,'image/jpeg',52338,'news/news-20.jpg','[]','2024-02-12 03:20:17','2024-02-12 03:20:17',NULL,'public'),(28,0,'news-21','news-21',3,'image/jpeg',76078,'news/news-21.jpg','[]','2024-02-12 03:20:17','2024-02-12 03:20:17',NULL,'public'),(29,0,'news-22','news-22',3,'image/jpeg',45269,'news/news-22.jpg','[]','2024-02-12 03:20:18','2024-02-12 03:20:18',NULL,'public'),(30,0,'news-23','news-23',3,'image/jpeg',39502,'news/news-23.jpg','[]','2024-02-12 03:20:19','2024-02-12 03:20:19',NULL,'public'),(31,0,'news-24','news-24',3,'image/jpeg',17605,'news/news-24.jpg','[]','2024-02-12 03:20:20','2024-02-12 03:20:20',NULL,'public'),(32,0,'news-3','news-3',3,'image/jpeg',44092,'news/news-3.jpg','[]','2024-02-12 03:20:21','2024-02-12 03:20:21',NULL,'public'),(33,0,'news-4','news-4',3,'image/jpeg',163183,'news/news-4.jpg','[]','2024-02-12 03:20:22','2024-02-12 03:20:22',NULL,'public'),(34,0,'news-5','news-5',3,'image/jpeg',93457,'news/news-5.jpg','[]','2024-02-12 03:20:23','2024-02-12 03:20:23',NULL,'public'),(35,0,'news-6','news-6',3,'image/jpeg',70592,'news/news-6.jpg','[]','2024-02-12 03:20:24','2024-02-12 03:20:24',NULL,'public'),(36,0,'news-7','news-7',3,'image/jpeg',115977,'news/news-7.jpg','[]','2024-02-12 03:20:25','2024-02-12 03:20:25',NULL,'public'),(37,0,'news-8','news-8',3,'image/jpeg',80243,'news/news-8.jpg','[]','2024-02-12 03:20:26','2024-02-12 03:20:26',NULL,'public'),(38,0,'news-9','news-9',3,'image/jpeg',52207,'news/news-9.jpg','[]','2024-02-12 03:20:27','2024-02-12 03:20:27',NULL,'public'),(39,0,'thumbnail-1','thumbnail-1',3,'image/jpeg',166014,'news/thumbnail-1.jpg','[]','2024-02-12 03:20:28','2024-02-12 03:20:28',NULL,'public'),(40,0,'thumbnail-2','thumbnail-2',3,'image/jpeg',52142,'news/thumbnail-2.jpg','[]','2024-02-12 03:20:29','2024-02-12 03:20:29',NULL,'public'),(41,0,'thumbnail-3','thumbnail-3',3,'image/jpeg',130131,'news/thumbnail-3.jpg','[]','2024-02-12 03:20:29','2024-02-12 03:20:29',NULL,'public'),(42,0,'thumbnail-4','thumbnail-4',3,'image/jpeg',71857,'news/thumbnail-4.jpg','[]','2024-02-12 03:20:30','2024-02-12 03:20:30',NULL,'public'),(43,0,'thumbnail-5','thumbnail-5',3,'image/jpeg',47451,'news/thumbnail-5.jpg','[]','2024-02-12 03:20:30','2024-02-12 03:20:30',NULL,'public'),(44,0,'thumbnail-6','thumbnail-6',3,'image/jpeg',98871,'news/thumbnail-6.jpg','[]','2024-02-12 03:20:31','2024-02-12 03:20:31',NULL,'public'),(45,0,'video1','video1',4,'video/mp4',6378345,'videos/video1.mp4','[]','2024-02-12 03:20:32','2024-02-12 03:20:32',NULL,'public'),(46,0,'1','1',5,'image/jpeg',11752,'members/1.jpg','[]','2024-02-12 03:20:41','2024-02-12 03:20:41',NULL,'public'),(47,0,'2','2',5,'image/jpeg',19005,'members/2.jpg','[]','2024-02-12 03:20:42','2024-02-12 03:20:42',NULL,'public'),(48,0,'3','3',5,'image/jpeg',20400,'members/3.jpg','[]','2024-02-12 03:20:43','2024-02-12 03:20:43',NULL,'public'),(49,0,'4','4',5,'image/jpeg',26819,'members/4.jpg','[]','2024-02-12 03:20:43','2024-02-12 03:20:43',NULL,'public'),(50,0,'5','5',5,'image/jpeg',14367,'members/5.jpg','[]','2024-02-12 03:20:44','2024-02-12 03:20:44',NULL,'public'),(51,0,'10','10',6,'image/jpeg',27814,'authors/10.jpg','[]','2024-02-12 03:20:57','2024-02-12 03:20:57',NULL,'public'),(52,0,'6','6',6,'image/jpeg',12367,'authors/6.jpg','[]','2024-02-12 03:20:58','2024-02-12 03:20:58',NULL,'public'),(53,0,'7','7',6,'image/jpeg',20652,'authors/7.jpg','[]','2024-02-12 03:20:58','2024-02-12 03:20:58',NULL,'public'),(54,0,'8','8',6,'image/jpeg',21164,'authors/8.jpg','[]','2024-02-12 03:20:58','2024-02-12 03:20:58',NULL,'public'),(55,0,'9','9',6,'image/jpeg',6084,'authors/9.jpg','[]','2024-02-12 03:20:59','2024-02-12 03:20:59',NULL,'public'),(56,0,'favicon','favicon',7,'image/png',3913,'general/favicon.png','[]','2024-02-12 03:21:13','2024-02-12 03:21:13',NULL,'public'),(57,0,'img-loading','img-loading',7,'image/jpeg',461,'general/img-loading.jpg','[]','2024-02-12 03:21:14','2024-02-12 03:21:14',NULL,'public'),(58,0,'logo-mobile','logo-mobile',7,'image/png',5054,'general/logo-mobile.png','[]','2024-02-12 03:21:14','2024-02-12 03:21:14',NULL,'public'),(59,0,'logo-tablet','logo-tablet',7,'image/png',5786,'general/logo-tablet.png','[]','2024-02-12 03:21:15','2024-02-12 03:21:15',NULL,'public'),(60,0,'logo-white','logo-white',7,'image/png',6305,'general/logo-white.png','[]','2024-02-12 03:21:15','2024-02-12 03:21:15',NULL,'public'),(61,0,'logo','logo',7,'image/png',7171,'general/logo.png','[]','2024-02-12 03:21:16','2024-02-12 03:21:16',NULL,'public'),(62,0,'screenshot','screenshot',7,'image/png',205662,'general/screenshot.png','[]','2024-02-12 03:21:16','2024-02-12 03:21:16',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'banners',NULL,'banners',0,'2024-02-12 03:19:53','2024-02-12 03:19:53',NULL),(2,0,'galleries',NULL,'galleries',0,'2024-02-12 03:19:56','2024-02-12 03:19:56',NULL),(3,0,'news',NULL,'news',0,'2024-02-12 03:20:04','2024-02-12 03:20:04',NULL),(4,0,'videos',NULL,'videos',0,'2024-02-12 03:20:32','2024-02-12 03:20:32',NULL),(5,0,'members',NULL,'members',0,'2024-02-12 03:20:41','2024-02-12 03:20:41',NULL),(6,0,'authors',NULL,'authors',0,'2024-02-12 03:20:57','2024-02-12 03:20:57',NULL),(7,0,'general',NULL,'general',0,'2024-02-12 03:21:13','2024-02-12 03:21:13',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `favorite_posts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bookmark_posts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Smith','Alice, quite forgetting in the air. Even the Duchess by this time, and was delighted to find quite.',NULL,'user@thesky9.com','$2y$12$afew5HPjtz0SggjWukTt4uZx37fLPXuFeZ34JwVIceGCs54iS5AJi',50,'1993-12-12','+1.669.661.3516','2024-02-12 03:20:47',NULL,NULL,'2024-02-12 03:20:47','2024-02-12 03:20:47','published',NULL,NULL),(2,'Uriel','Erdman','I shall have to go on till you come to the jury. They were just beginning to see if she were.',NULL,'ztromp@weber.com','$2y$12$fRq/cevWkhXA3XQw3Bfrsuc7jJV.7A3g6.aApeTpRYIWSKFsygTxe',50,'2012-02-14','352.982.2948','2024-02-12 03:20:48',NULL,NULL,'2024-02-12 03:20:48','2024-02-12 03:20:48','published',NULL,NULL),(3,'Oren','Hermiston','Gryphon, \'she wants for to know what a dear quiet thing,\' Alice went on, very much what would.',NULL,'schaefer.piper@wehner.com','$2y$12$NsfNDCliEW.QqeybR9lKi.gxMWTlFfDLLJi0aQ9CKKRMdQjjN5r9i',49,'2020-06-14','(207) 826-6271','2024-02-12 03:20:49',NULL,NULL,'2024-02-12 03:20:49','2024-02-12 03:20:49','published',NULL,NULL),(4,'Henry','Langosh','Queen. \'Never!\' said the King. \'I can\'t explain MYSELF, I\'m afraid, but you might do very well.',NULL,'ohara.cristina@brown.net','$2y$12$Ul/vJa6S7thSxf8i8PVmCOb6sZfQrl96X1tBS1BZzQOFmBmu7kf.W',49,'2019-09-13','334-560-1582','2024-02-12 03:20:50',NULL,NULL,'2024-02-12 03:20:50','2024-02-12 03:20:50','published',NULL,NULL),(5,'Norberto','Kuvalis','Alice; \'all I know I have to ask his neighbour to tell them something more. \'You promised to tell.',NULL,'xlakin@lindgren.com','$2y$12$mj2WHche3IQFkGXkjmopd.YPTth/NuJjGNBzHo9NlnG2iZNX7f94C',48,'2016-05-05','1-870-325-1605','2024-02-12 03:20:51',NULL,NULL,'2024-02-12 03:20:51','2024-02-12 03:20:51','published',NULL,NULL),(6,'Estell','Bosco','Cat, \'if you don\'t even know what \"it\" means.\' \'I know what a Gryphon is, look at me like a.',NULL,'bschumm@hotmail.com','$2y$12$2jYhVFdo0RmSYm7s0Q2XtuVXfF/Bp6tyJOeCh9rhVMLpotS30NKHy',49,'1978-11-29','(850) 758-2736','2024-02-12 03:20:52',NULL,NULL,'2024-02-12 03:20:52','2024-02-12 03:20:52','published',NULL,NULL),(7,'Erin','Fay','Seaography: then Drawling--the Drawling-master was an old crab, HE was.\' \'I never could abide.',NULL,'mossie43@kessler.net','$2y$12$1Xprhm3zrUFRcndvCWye/.dAulWP1S.JHb4sx1Dhd9gTcbx43U30K',48,'1971-11-18','507.373.6213','2024-02-12 03:20:53',NULL,NULL,'2024-02-12 03:20:53','2024-02-12 03:20:53','published',NULL,NULL),(8,'Gisselle','Rohan','Will you, won\'t you, won\'t you, will you, won\'t you, won\'t you join the dance. Would not, could.',NULL,'hermann38@rosenbaum.org','$2y$12$cgnKE6DYY/PTPzcct8cgA.poGqk4ikOxNrnItr.T8ipMWchxwzPl2',46,'2019-03-04','520.625.4333','2024-02-12 03:20:54',NULL,NULL,'2024-02-12 03:20:54','2024-02-12 03:20:54','published',NULL,NULL),(9,'Janessa','DuBuque','Hatter, it woke up again with a trumpet in one hand and a Long Tale They were indeed a.',NULL,'adonis79@gmail.com','$2y$12$VcgoIt/Im6uwuoSIfP1L2e36HpBxnrpD6azKQCDE0aQYyRaaoHjh.',48,'2003-08-19','+1-313-566-3287','2024-02-12 03:20:55',NULL,NULL,'2024-02-12 03:20:55','2024-02-12 03:20:55','published',NULL,NULL),(10,'Hannah','Walsh','Alice soon began talking to him,\' the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you.',NULL,'trantow.nova@crooks.biz','$2y$12$4BH3DiMIEBPM2m4uO/1w4OTL5A6AAVddRgjfyJTUz.HXwgwkTk6hm',50,'2013-10-24','(689) 799-8163','2024-02-12 03:20:56',NULL,NULL,'2024-02-12 03:20:56','2024-02-12 03:20:56','published',NULL,NULL),(11,'Quinton','Nicolas','Mouse, in a moment: she looked up, and began an account of the fact. \'I keep them to sell,\' the.',NULL,'ernser.keon@bahringer.com','$2y$12$VqHKTa9K2xv4JKDjPw4ZQO1JMg.1kzRei72Q3bCmNDvRbEEXphrFO',49,'1983-05-22','+1-907-583-5107','2024-02-12 03:20:56',NULL,NULL,'2024-02-12 03:20:56','2024-02-12 03:20:56','published',NULL,NULL),(12,'Nguyen','Nhon',NULL,NULL,'devtest241101@gmail.com','$2y$12$Pk54m1L6SyEaoUZdXqGz3ex/7S6F7MqlRtgM7EJSLjasji9.Ofqvu',NULL,NULL,NULL,'2024-07-21 12:42:15',NULL,NULL,'2024-07-21 12:42:15','2024-07-21 12:42:15','published',NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-02-12 03:21:11','2024-02-12 03:21:11'),(2,3,'main-menu','2024-02-12 03:21:11','2024-02-12 03:21:11');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(2,1,1,NULL,NULL,'/',NULL,0,'Home default',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(3,1,1,NULL,NULL,'/home-2?header=style-2',NULL,0,'Home 2',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(4,1,1,NULL,NULL,'/home-3?header=style-3',NULL,0,'Home 3',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(5,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(6,1,0,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Category layouts',NULL,'_self',1,'2024-02-12 03:21:11','2024-02-12 03:21:12'),(7,1,6,5,'Botble\\Page\\Models\\Page','/category-list',NULL,0,'List',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:12'),(8,1,6,6,'Botble\\Page\\Models\\Page','/category-grid',NULL,0,'Grid',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:12'),(9,1,6,7,'Botble\\Page\\Models\\Page','/category-metro',NULL,0,'Metro',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:12'),(10,1,0,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Post layouts',NULL,'_self',1,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(11,1,10,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Default',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(12,1,10,2,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Full top',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(13,1,10,3,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Inline',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(14,1,0,9,'Botble\\Page\\Models\\Page',NULL,NULL,0,'About',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(16,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(17,1,16,10,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Cookie Policy',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(18,1,16,NULL,NULL,'page-not-found',NULL,0,'404',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(19,1,16,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(20,1,16,NULL,NULL,'/register',NULL,0,'Signup',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(21,2,0,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(22,2,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(23,2,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(24,2,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(25,3,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(26,3,25,NULL,NULL,'/',NULL,0,'Trang chủ mặc định',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(27,3,25,NULL,NULL,'/home-2?header=style-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(28,3,25,NULL,NULL,'/home-3?header=style-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(29,3,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(30,3,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Danh mục',NULL,'_self',1,'2024-02-12 03:21:11','2024-02-12 03:21:11'),(31,3,30,5,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Style cột',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(32,3,30,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Style danh sách',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(33,3,30,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Style danh sách 2',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(34,3,0,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Bài viết',NULL,'_self',1,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(35,3,34,1,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Default',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(36,3,34,2,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Full top',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(37,3,34,3,'Botble\\Blog\\Models\\Post',NULL,NULL,0,'Inline',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(38,3,0,9,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Liên hệ',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(39,3,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Về chúng tôi',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(40,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(41,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Liên hệ',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(42,4,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Tin tức',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12'),(43,4,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2024-02-12 03:21:12','2024-02-12 03:21:12');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-02-12 03:21:11','2024-02-12 03:21:11'),(2,'Quick links','quick-links','published','2024-02-12 03:21:11','2024-02-12 03:21:11'),(3,'Menu chính','menu-chinh','published','2024-02-12 03:21:11','2024-02-12 03:21:11'),(4,'Liên kết','lien-ket','published','2024-02-12 03:21:12','2024-02-12 03:21:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'layout','[\"default\"]',1,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(2,'time_to_read','[1]',1,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(3,'comment_status','[1]',1,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(4,'layout','[\"top-full\"]',2,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(5,'time_to_read','[14]',2,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(6,'comment_status','[1]',2,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(7,'layout','[\"inline\"]',3,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(8,'time_to_read','[11]',3,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(9,'comment_status','[1]',3,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:34','2024-02-12 03:20:34'),(10,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/289366685?h=b6b9d1e67b&title=0&byline=0&portrait=0\"]',4,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(11,'time_to_read','[14]',4,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(12,'comment_status','[1]',4,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(13,'video_upload_id','[\"videos\\/video1.mp4\"]',5,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(14,'time_to_read','[16]',5,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(15,'comment_status','[1]',5,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(16,'time_to_read','[13]',6,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(17,'comment_status','[1]',6,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(18,'time_to_read','[16]',7,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(19,'comment_status','[1]',7,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:35','2024-02-12 03:20:35'),(20,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/559851845?h=afc6d413c9\"]',8,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(21,'time_to_read','[18]',8,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(22,'comment_status','[1]',8,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(23,'time_to_read','[10]',9,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(24,'comment_status','[1]',9,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(25,'time_to_read','[7]',10,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(26,'comment_status','[1]',10,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:36','2024-02-12 03:20:36'),(27,'time_to_read','[18]',11,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:37','2024-02-12 03:20:37'),(28,'comment_status','[1]',11,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:37','2024-02-12 03:20:37'),(29,'time_to_read','[9]',12,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:37','2024-02-12 03:20:37'),(30,'comment_status','[1]',12,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:37','2024-02-12 03:20:37'),(31,'time_to_read','[15]',13,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:37','2024-02-12 03:20:37'),(32,'comment_status','[1]',13,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:37','2024-02-12 03:20:37'),(33,'video_link','[\"https:\\/\\/player.vimeo.com\\/video\\/580799106?h=a8eb717af9\"]',14,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(34,'time_to_read','[13]',14,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(35,'comment_status','[1]',14,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(36,'time_to_read','[4]',15,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(37,'comment_status','[1]',15,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(38,'time_to_read','[6]',16,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(39,'comment_status','[1]',16,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(40,'time_to_read','[4]',17,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(41,'comment_status','[1]',17,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:38','2024-02-12 03:20:38'),(42,'time_to_read','[6]',18,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:40','2024-02-12 03:20:40'),(43,'comment_status','[1]',18,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:40','2024-02-12 03:20:40'),(44,'time_to_read','[17]',19,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:40','2024-02-12 03:20:40'),(45,'comment_status','[1]',19,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:40','2024-02-12 03:20:40'),(46,'time_to_read','[14]',20,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:40','2024-02-12 03:20:40'),(47,'comment_status','[1]',20,'Botble\\Blog\\Models\\Post','2024-02-12 03:20:40','2024-02-12 03:20:40');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2020_11_18_150916_ads_create_ads_table',2),(34,'2021_12_02_035301_add_ads_translations_table',2),(35,'2023_04_17_062645_add_open_in_new_tab',2),(36,'2023_11_07_023805_add_tablet_mobile_image',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2015_06_18_033822_create_blog_table',4),(40,'2021_02_16_092633_remove_default_value_for_author_type',4),(41,'2021_12_03_030600_create_blog_translations',4),(42,'2022_04_19_113923_add_index_to_table_posts',4),(43,'2023_08_29_074620_make_column_author_id_nullable',4),(44,'2021_07_08_140130_comment_create_comment_table',5),(45,'2023_02_28_092156_update_table_comments',5),(46,'2016_06_17_091537_create_contacts_table',6),(47,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(48,'2016_10_13_150201_create_galleries_table',7),(49,'2021_12_03_082953_create_gallery_translations',7),(50,'2022_04_30_034048_create_gallery_meta_translations_table',7),(51,'2023_08_29_075308_make_column_user_id_nullable',7),(52,'2016_10_03_032336_create_languages_table',8),(53,'2023_09_14_022423_add_index_for_language_table',8),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(55,'2021_12_03_075608_create_page_translations',9),(56,'2023_07_06_011444_create_slug_translations_table',9),(57,'2017_10_04_140938_create_member_table',10),(58,'2023_10_16_075332_add_status_column',10),(59,'2017_10_24_154832_create_newsletter_table',11),(60,'2021_08_25_122708_post_collection_create_post_collection_table',12),(61,'2021_07_14_043820_add_publised_at_table_posts',13),(62,'2021_10_16_043705_pro_posts_create_favorite_posts_table',14),(63,'2021_10_16_105007_add_bookmark_posts_column_to_members_table',14),(64,'2021_11_13_010429_change_column_table_members',14),(65,'2016_05_28_112028_create_system_request_logs_table',15),(66,'2016_10_07_193005_create_translations_table',16),(67,'2023_12_12_105220_drop_translations_table',16),(68,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',17),(69,'2024_03_25_000001_update_captcha_settings_for_contact',17),(70,'2024_03_25_000001_update_captcha_settings_for_newsletter',17),(71,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',17),(72,'2024_04_04_110758_update_value_column_in_user_meta_table',17),(73,'2024_04_19_063914_create_custom_fields_table',17),(74,'2024_04_27_100730_improve_analytics_setting',18),(75,'2024_05_12_091229_add_column_visibility_to_table_media_files',18),(76,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',18),(77,'2024_07_12_100000_change_random_hash_for_media',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[posts-collection title=\"Recommended\" subtitle=\"R\" limit=\"4\" posts_collection_id=\"2\" background_style=\"background-white\"][/posts-collection]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"7\" subtitle=\"O\"][/theme-galleries]</div>',1,NULL,'homepage',NULL,'published','2024-02-12 03:19:52','2024-02-12 03:19:52'),(2,'Home 2','<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>',1,NULL,'homepage2',NULL,'published','2024-02-12 03:19:52','2024-02-12 03:19:52'),(3,'Home 3','<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>',1,NULL,'homepage2',NULL,'published','2024-02-12 03:19:52','2024-02-12 03:19:52'),(4,'Blog','<div>[posts-listing layout=\"list\"][/posts-listing]</div>',1,NULL,'default',NULL,'published','2024-02-12 03:19:52','2024-02-12 03:19:52'),(5,'Category List','<div>[posts-listing layout=\"list\"][/posts-listing]</div>',1,NULL,'no-breadcrumbs',NULL,'published','2024-02-12 03:19:52','2024-02-12 03:19:52'),(6,'Category grid','<div>[posts-listing layout=\"grid\"][/posts-listing]</div>',1,NULL,'full',NULL,'published','2024-02-12 03:19:53','2024-02-12 03:19:53'),(7,'Category metro','<div>[posts-listing layout=\"metro\"][/posts-listing]</div>',1,NULL,'full',NULL,'published','2024-02-12 03:19:53','2024-02-12 03:19:53'),(8,'Contact','<div>[contact-form title=\"Get in Touch\"][/contact-form]</div><h3>Directions</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>',1,NULL,'default',NULL,'published','2024-02-12 03:19:53','2024-02-12 03:19:53'),(9,'About Us','<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Tolerably much and ouch the in began alas more ouch some then accommodating flimsy wholeheartedly after hello slightly the that cow pouted much a goodness bound rebuilt poetically jaguar groundhog</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Computer inside</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as\n                this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.</p>\n            <h5>What\'s next?</h5>\n            <p>Pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much\n                wow callously irrespective limpet.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Other yet this hazardous oh the until brave close towards stupidly euphemistically firefly boa some more underneath circa yet on as wow above ripe or blubbered one cobra bore ouch and this held ably one hence</p>\n            <h2>Conclusion</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Alexe more gulped much garrulous a yikes earthworm wiped because goodness bet mongoose that along accommodatingly tortoise indecisively admirable but shark dear some and unwillingly before far vindictive less much this\n                on more less flexed far woolly from following glanced resolute unlike far this alongside against icily beyond flabby accidental.</p>\n\n\n            <h2>Design is future</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic\n                hungrily some and dear furiously this apart.</p>\n            <p>Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much\n                circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across\n                this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less\n                well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.</p>\n            <blockquote class=\"wp-block-quote is-style-large\">\n                <p>The advance of technology is based on making it fit in so that you don\'t really even notice it, so it\'s part of everyday life.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div><h3>Address</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>',1,NULL,'default',NULL,'published','2024-02-12 03:19:53','2024-02-12 03:19:53'),(10,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-02-12 03:19:53','2024-02-12 03:19:53');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Bài viết mới\" subtitle=\"Latest\" limit=\"3\" show_follow_us_section=\"1\"][/recent-posts]</div><div>[categories-tab-posts title=\"Bài viết được quan tâm\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[posts-grid title=\"Bài viết nổi bật\" subtitle=\"News\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" subtitle=\"In motion\" limit=\"7\"][/theme-galleries]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),('vi',4,'Tin tức',NULL,'<div>[categories-big limit=\"12\"][/categories-big]</div>'),('vi',5,'Tin tức danh sách',NULL,'<div>[posts-listing layout=\"list\"][/posts-listing]</div>'),('vi',6,'Tin tức dạng cột',NULL,'<div>[posts-listing layout=\"grid\"][/posts-listing]</div>'),('vi',7,'Tin tức metro',NULL,'<div>[posts-listing layout=\"metro\"][/posts-listing]</div>'),('vi',8,'Liên hệ',NULL,'<div>[contact-form title=\"Liên hệ\"][/contact-form]</div><h3>Địa chỉ</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>'),('vi',9,'Về chúng tôi',NULL,'<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Người ta né tránh nhắc đến Chúa Kito khi nói đến mốc lịch sử bằng cách nói Trước công nguyên và sau công nguyên. Nhưng nguyên tiếng anh: Before Chirst, After Chirst – trước Chúa Kito, sau Chúa Kito – người ta sợ lịch sử của Kito giáo. Đó là lời chia sẻ của cha đặc trách Gioan trong Thánh lễ thường kì Cộng đoàn sinh viên Công giáo y dược vào lúc 19h15’, ngày 11.05.2017 tại đền thánh Gierado, Giáo xứ Thái Hà.</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Cuộc sống là những phép màu</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Khởi đầu bài giảng của mình cha nói đến một trong những khó khăn lớn nhất Giáo Hội nói chung và người tín hữu nói riêng đó chính là niềm tin vào Thiên Chúa. Chính khủng hoảng niềm tin gây nên chiến tranh, gây nên thù hận và chết chóc. Lòng tin không chỉ ảnh hưởng lên cá nhân mà thôi nhưng lên toàn thế giới. Hôm nay, Chúa cho chúng ta thấy lòng tin là khởi đầu, là mấu chốt để con người đứng vững giữa trăm chiều thử thách.</p>\n            <h5>Ý nghĩa là gì?</h5>\n            <p>Hai bài đọc hôm nay đều đi từ lịch sử, Chúa Giesu tiên báo kẻ sẽ nộp thầy. Ngài chọn Giuda không phải chọn nhầm, nhưng Ngài nói rõ trong bài Tin Mừng rằng lời kinh thánh phải được ứng nghiệm: “Kẻ giơ tay chấm chung một đĩa với con lại giơ gót đạp con”. Trong bài đọc một, Phaolo nói về Đavit để ứng nghiệm lời Kinh thánh đã nói, để anh chị em Do thái nhận ra được lời tiên báo qua lịch sử là chúa Giesu.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Để có được lòng tin nơi con người, Chúa Giesu đã khai mào trong một chương trình lịch sử dài tập. Lịch sử Cựu ước loan báo đúng với những gì đã xảy ra với Chúa Giesu Kito. Một triết gia người Pháp nói rằng: “Kito giáo có một nền tảng đức tin vững chắc đó là lịch sử, nhưng Kito giáo quên đi điểm quan trọng này và ngày nay đi nặng về phía thần học”.</p>\n            <h2>Kết luận</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nhắc lại: Kito Giáo cắm rễ sâu, trải dài và được ứng nghiệm trong lịch sử thánh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nhìn lại lịch sử, các ngày lễ xã hội, ngày nghỉ… đều liên quan đến Kito giáo và xuất phát từ Kito giáo.</p>\n\n\n            <h2>Tương lai</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nói đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm là một biến cố lịch sử có thời gian, không gian, nhân vật và sứ điệp cụ thể không phải con người tự dụng nên hay hoang tưởng.</p>\n            <p>Niềm tin của mỗi chúng ta phải dựa vào lịch sử chứ không phải mơ hồ. Khi nhìn lại quá khứ ta biết rằng lòng tin đó đã được Thiên Chúa khai mào từ rất sớm. Các thánh Tông đồ đã đứng trên bình diện lịch sự để minh chứng niềm tin của con người vào Giave Thiên Chúa.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Nhiều người thời nay biết lịch sử nhưng không biết Chúa Kito là ai vì họ né tránh Chúa Giesu. Chúa Giesu đi vào lịch sử để tỏ cho con người cùng đích của sự sống là gì và Thiên Chúa là ai cùng những lời tiên báo để củng cố lòng tin cho con người.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n           <blockquote class=\"wp-block-quote is-style-large\">\n                <p>Sự tiến bộ của công nghệ dựa trên việc làm cho nó phù hợp để bạn thậm chí không thực sự nhận thấy nó, vì vậy nó là một phần của cuộc sống hàng ngày.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div>'),('vi',10,'Cookie Policy',NULL,'<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_collections`
--

DROP TABLE IF EXISTS `post_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_collections`
--

LOCK TABLES `post_collections` WRITE;
/*!40000 ALTER TABLE `post_collections` DISABLE KEYS */;
INSERT INTO `post_collections` VALUES (1,'Editor\'s Picked',NULL,NULL,'published','2024-02-12 03:21:12','2024-02-12 03:21:12'),(2,'Recommended Posts',NULL,NULL,'published','2024-02-12 03:21:12','2024-02-12 03:21:12'),(3,'Bài viết hay',NULL,NULL,'published','2024-02-12 03:21:12','2024-02-12 03:21:12'),(4,'Recommended Posts',NULL,NULL,'published','2024-02-12 03:21:12','2024-02-12 03:21:12');
/*!40000 ALTER TABLE `post_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_collections_posts`
--

DROP TABLE IF EXISTS `post_collections_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_collections_posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_collection_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_collections_posts`
--

LOCK TABLES `post_collections_posts` WRITE;
/*!40000 ALTER TABLE `post_collections_posts` DISABLE KEYS */;
INSERT INTO `post_collections_posts` VALUES (1,1,12),(2,1,3),(3,1,5),(4,1,1),(5,1,7),(6,1,9),(7,2,15),(8,2,4),(9,2,2),(10,2,1),(11,2,10),(12,3,20),(13,3,19),(14,3,21),(15,3,31),(16,3,32),(17,4,22),(18,4,24),(19,4,25),(20,4,29),(21,4,30);
/*!40000 ALTER TABLE `post_collections_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'This Year Enjoy the Color of Festival with Amazing Holi Gifts Ideas','Fugit architecto alias adipisci libero nam. Perspiciatis dolorem quibusdam nulla quis in temporibus optio deleniti. Eos consequatur voluptatem quis ut.',NULL,'published',5,'Botble\\Member\\Models\\Member',0,'news/news-1.jpg',2026,'video','2024-02-12 03:20:34','2024-02-12 03:20:56',NULL),(2,'The World Caters to Average People and Mediocre Lifestyles','Fugit cumque id dolorem excepturi et ipsa. Voluptatum perspiciatis ea iure voluptate culpa voluptas corporis. Officiis voluptatem qui iusto quibusdam sit sed sit.','<h2>This question the Dodo could.</h2><p>I\'ll go round and look up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not going to be, from one end of every line: \'Speak roughly to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther received knife and fork with a bound into the sky. Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you, you coward!\' and at last she spread out her hand on the floor, as it settled down again, the Dodo solemnly, rising to its feet, \'I move that the Queen said to herself, \'if one only knew how to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'It goes on, you know,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>Involved in this way! Stop this moment, and fetch me a pair of the Nile On every golden scale! \'How cheerfully he seems to be an old crab, HE was.\' \'I never was so much frightened that she remained the same solemn tone, only changing the order of the trial.\' \'Stupid things!\' Alice began in a very short time the Mouse had changed his mind, and was suppressed. \'Come, that finished the first to speak. \'What size do you mean \"purpose\"?\' said Alice. \'Why not?\' said the Duchess, digging her sharp.</p><h2>Mock Turtle replied; \'and.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-14-600x421.jpg\"></p><p>Alice was not an encouraging tone. Alice looked very anxiously into its mouth and yawned once or twice, and shook itself. Then it got down off the subjects on his spectacles and looked at Alice. \'It must have been changed for any lesson-books!\' And so it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Dormouse said--\' the Hatter were having tea at it: a Dormouse was sitting next to her. \'I wish the creatures order one about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the bones and the little magic bottle had now had its full effect, and she felt very lonely and low-spirited. In a little way forwards each time and a fall, and a Long Tale They were indeed a queer-looking party that assembled on the trumpet, and then I\'ll tell you my history, and you\'ll understand why it is all the way out of its mouth again, and that\'s very like having a game of croquet she was now the right size again; and the Queen.</p><h2>YET,\' she said to Alice, and.</h2><h3>THE VOICE OF THE SLUGGARD,\"\'.</h3><p>Mystery,\' the Mock Turtle replied; \'and then the Rabbit\'s voice; and the little golden key, and unlocking the door and found that, as nearly as large as the White Rabbit cried out, \'Silence in the air, mixed up with the Lory, who at last in the prisoner\'s handwriting?\' asked another of the birds and beasts, as well as she came upon a time she had tired herself out with his head!\' or \'Off with their heads!\' and the bright eager eyes were nearly out of sight, they were lying round the table, but.</p><h3>There was a body to cut it.</h3><p>King; and as Alice could speak again. In a little animal (she couldn\'t guess of what work it would be the right size, that it was written to nobody, which isn\'t usual, you know.\' \'Not at all,\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into the way the people that walk with their fur clinging close to her usual height. It was all about, and called out, \'First witness!\' The first thing I\'ve got back to.</p><h3>Duchess said after a few.</h3><p>Alice again, for this curious child was very fond of beheading people here; the great hall, with the next witness was the BEST butter, you know.\' \'Who is this?\' She said it to her to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then she looked down, was an uncomfortably sharp chin. However, she got back to the Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Gryphon, and all that,\'.</p><h3>The hedgehog was engaged in.</h3><p>I must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a capital one for catching mice--oh, I beg your pardon,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she grew no larger: still it was very like a stalk out of its mouth and yawned once or twice she had not the right word) \'--but I shall be punished for it to annoy, Because he knows it teases.\' CHORUS. (In which the cook tulip-roots instead of the singers in the long hall, and close to.</p><h2>I\'m mad?\' said Alice. \'Oh.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-17-600x421.jpg\"></p><p>King said, with a T!\' said the King was the White Rabbit was still in sight, and no more of it in large letters. It was as long as I do,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen shouted at the bottom of a large flower-pot that stood near the looking-glass. There was certainly English. \'I don\'t know the song, \'I\'d have said to herself, rather sharply; \'I advise you to offer it,\' said the King, and the.</p>','published',2,'Botble\\Member\\Models\\Member',1,'news/news-2.jpg',1090,'default','2024-02-12 03:20:34','2024-02-12 03:20:56',NULL),(3,'Not a bit of hesitation, you better think twice','Sint molestiae ex iusto. Quis dolores rem ea qui tempore. Maxime autem cumque dignissimos cumque vel magnam ad. Rerum voluptates similique repudiandae qui quia ut ut.','<h2>Do you think you\'re changed.</h2><p>I eat or drink something or other; but the Hatter replied. \'Of course you know about this business?\' the King said, with a table in the air: it puzzled her a good way off, and she jumped up in her head, and she was now about a thousand times as large as himself, and this time it vanished quite slowly, beginning with the dream of Wonderland of long ago: and how she was ever to get through the neighbouring pool--she could hear the words:-- \'I speak severely to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess said after a fashion, and this time the Mouse to Alice as he came, \'Oh! the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the reason and all her fancy, that: he hasn\'t got no sorrow, you know. But do cats eat bats? Do cats eat bats, I wonder?\' As she said to herself how this same little sister of hers would, in the other: he came trotting along in a frightened tone. \'The Queen of Hearts, she made out what it was: she was saying.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-3-600x421.jpg\"></p><p>March Hare said--\' \'I didn\'t!\' the March Hare. \'Then it doesn\'t mind.\' The table was a table in the sea!\' cried the Mouse, who seemed too much frightened to say to itself, half to itself, half to itself, half to Alice. \'What sort of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' said Two, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the King, the Queen, and Alice guessed in a louder tone. \'ARE you to sit down without being seen, when.</p><h2>Oh, my dear paws! Oh my dear.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>King, \'that only makes the world you fly, Like a tea-tray in the pool was getting quite crowded with the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the way I ought to have it explained,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was trickling down his brush, and had to do such a dreadful time.\' So Alice began telling them her adventures from the roof. There were doors all round the refreshments!\' But there seemed to be sure, she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be what he did it,) he did with the game,\' the Queen was silent. The Dormouse again took a great many more than three.\' \'Your hair wants cutting,\' said the King; and as for the next moment.</p><h2>Alice was rather doubtful.</h2><h3>Pigeon went on, \'and most of.</h3><p>Said the mouse to the beginning of the moment she appeared; but she could guess, she was nine feet high, and her face like the largest telescope that ever was! Good-bye, feet!\' (for when she found it so VERY wide, but she stopped hastily, for the Duchess said to the jury, who instantly made a snatch in the shade: however, the moment he was speaking, so that it would all wash off in the wood, \'is to grow here,\' said the Cat, and vanished. Alice was not easy to know when the White Rabbit blew.</p><h3>WHAT?\' said the Caterpillar.</h3><p>Alice looked at her, and the little door into that beautiful garden--how IS that to be managed? I suppose I ought to be done, I wonder?\' As she said to herself, \'Which way? Which way?\', holding her hand again, and went back to them, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. This piece of evidence we\'ve heard yet,\' said the Rabbit began. Alice thought over all the jurymen on to her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Hatter, \'when the.</p><h3>Father William,\' the young.</h3><p>I THINK,\' said Alice. The King looked anxiously over his shoulder as he spoke. \'UNimportant, of course, to begin with; and being so many out-of-the-way things had happened lately, that Alice had begun to dream that she was a little different. But if I\'m not the smallest idea how confusing it is all the time they had at the mushroom (she had grown to her full size by this time, as it could go, and making faces at him as he shook his grey locks, \'I kept all my limbs very supple By the use of a.</p><h3>I\'m better now--but I\'m a.</h3><p>Queen,\' and she swam nearer to make out at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all sat down in a pleased tone. \'Pray don\'t trouble yourself to say which), and they repeated their arguments to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle repeated thoughtfully. \'I should like to go down--Here, Bill! the.</p><h2>Duchess, as she could not.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>How brave they\'ll all think me for his housemaid,\' she said to herself, \'to be going messages for a minute or two, looking for them, but they all spoke at once, with a round face, and was beating her violently with its wings. \'Serpent!\' screamed the Queen. \'You make me giddy.\' And then, turning to Alice. \'What IS a long time together.\' \'Which is just the case with my wife; And the Gryphon interrupted in a piteous tone. And she thought it would be QUITE as much as she did not dare to laugh.</p>','published',6,'Botble\\Member\\Models\\Member',1,'news/news-3.jpg',666,'default','2024-02-12 03:20:34','2024-02-12 03:20:57',NULL),(4,'We got a right to pick a little fight, Bonanza','Deleniti ipsum inventore dolore cupiditate dolorem sed corrupti. Ratione hic minus distinctio illum ad culpa. Est est repellendus laboriosam ratione et porro earum.',NULL,'published',6,'Botble\\Member\\Models\\Member',0,'news/news-4.jpg',927,'video','2024-02-12 03:20:35','2024-02-12 03:20:57',NULL),(5,'My entrance exam was on a book of matches','Et molestias dolore ut aut commodi. Veritatis dolorem non facere porro necessitatibus. Eum odio corporis laudantium optio ut nihil.',NULL,'published',4,'Botble\\Member\\Models\\Member',1,'news/news-5.jpg',503,'video','2024-02-12 03:20:35','2024-02-12 03:20:57',NULL),(6,'Essential Qualities of Highly Successful Music','Ut odio esse culpa porro dolorum est voluptatem. Qui quibusdam vitae et eius et repudiandae. Sint autem omnis ad porro quas.','<h2>NOT marked \'poison,\' it is.</h2><p>Dodo, \'the best way to hear his history. I must sugar my hair.\" As a duck with its mouth and began to feel a little shaking among the trees, a little nervous about it just grazed his nose, you know?\' \'It\'s the thing Mock Turtle at last, and they went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on so long since she had grown up,\' she said this, she noticed a curious feeling!\' said Alice; \'I can\'t go no lower,\' said the Cat. \'I don\'t know one,\' said Alice. \'You are,\' said the Gryphon: \'I went to work very carefully, nibbling first at one end of the teacups as the jury asked. \'That I can\'t understand it myself to begin with.\' \'A barrowful will do, to begin lessons: you\'d only have to ask them what the next moment a shower of saucepans, plates, and dishes. The Duchess took her choice, and was just possible it had a bone in his confusion he bit a large flower-pot that stood near. The three soldiers wandered about in the last concert!\' on which the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-5-600x421.jpg\"></p><p>King replied. Here the other paw, \'lives a Hatter: and in another moment down went Alice after it, never once considering how in the sea!\' cried the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to herself. \'I dare say there may be different,\' said Alice; \'that\'s not at all a proper way of escape, and wondering whether she ought not to make herself useful, and looking at the end.\' \'If you please, sir--\' The Rabbit started violently.</p><h2>Alice could hear him sighing.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>Mouse, who was trembling down to the beginning again?\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle would be quite absurd for her to speak again. The rabbit-hole went straight on like a tunnel for some time in silence: at last she spread out her hand on the floor: in another moment it was all about, and called out, \'Sit down, all of them at dinn--\' she checked herself hastily. \'I thought it must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a curious dream, dear, certainly: but now run in to your little boy, And beat him when he finds out who I am! But I\'d better take him his fan and the poor little thing howled so, that he had taken his watch out of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the window, she suddenly spread out her hand, and Alice looked up, but it is.\' \'I quite agree with you,\' said the Mouse. \'Of course,\' the.</p><h2>Father William replied to.</h2><h3>Alice, who felt very lonely.</h3><p>It\'s high time to see some meaning in it,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of the shelves as she fell very slowly, for she had wept when she next peeped out the proper way of speaking to it,\' she said to herself, \'Now, what am I then? Tell me that first, and then dipped.</p><h3>Hatter. He came in with a.</h3><p>So Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the morning, just time to see that queer little toss of her childhood: and how she would catch a bat, and that\'s very like having a game of play with a round face, and was a little scream, half of anger, and tried to fancy to cats if you were never even introduced to a mouse, That he met in the court!\' and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a little timidly, \'why.</p><h3>Alice, a little bit, and.</h3><p>Dormouse, who was beginning to grow up again! Let me see--how IS it to be a great hurry; \'this paper has just been reading about; and when she next peeped out the proper way of keeping up the other, looking uneasily at the jury-box, and saw that, in her life, and had to stoop to save her neck would bend about easily in any direction, like a telescope! I think I can kick a little!\' She drew her foot slipped, and in despair she put one arm out of his pocket, and pulled out a history of the day.</p><h3>Alice, thinking it was a.</h3><p>Down the Rabbit-Hole Alice was soon left alone. \'I wish you wouldn\'t squeeze so.\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said to the puppy; whereupon the puppy jumped into the garden. Then she went on again:-- \'You may not have lived much under the door; so either way I\'ll get into her face, and large eyes full of soup. \'There\'s certainly too much overcome to do it?\' \'In my youth,\' said the Hatter: \'but you could manage it?) \'And what are.</p><h2>I should be raving mad after.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Hatter with a cart-horse, and expecting every moment to think to herself, \'the way all the creatures order one about, and crept a little before she had got its head impatiently, and walked off; the Dormouse followed him: the March Hare will be the use of a well?\' The Dormouse had closed its eyes again, to see if he had a VERY good opportunity for repeating his remark, with variations. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said this.</p>','published',7,'Botble\\Member\\Models\\Member',1,'news/news-6.jpg',727,'default','2024-02-12 03:20:35','2024-02-12 03:20:57',NULL),(7,'Why Teamwork Really Makes The Dream Work','Mollitia quia non veniam atque et necessitatibus nemo maxime. Voluptate amet ut est officiis aut. Expedita pariatur exercitationem illum sapiente quasi.',NULL,'published',4,'Botble\\Member\\Models\\Member',1,'news/news-7.jpg',1209,'video','2024-02-12 03:20:35','2024-02-12 03:20:57',NULL),(8,'9 Things I Love About Shaving My Head During Quarantine','Corporis quia consequuntur qui et deserunt qui. Reiciendis corrupti ea ut laudantium. Sunt vitae est alias aut ullam corrupti. Sit enim perferendis ex voluptas cupiditate saepe.',NULL,'published',9,'Botble\\Member\\Models\\Member',1,'news/news-8.jpg',1075,'video','2024-02-12 03:20:36','2024-02-12 03:20:57',NULL),(9,'The litigants on the screen are not actors','Optio voluptatem qui architecto nisi optio. Aut voluptatem doloribus error. Eaque veniam ullam nostrum. Ut doloribus consequatur in et.','<h2>Alice, rather alarmed at the.</h2><p>How funny it\'ll seem to encourage the witness at all: he kept shifting from one foot to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my jaw, Has lasted the rest of it altogether; but after a fashion, and this was her turn or not. So she began fancying the sort of a candle is blown out, for she had never heard it before,\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on to the Cheshire Cat sitting on the ground near the entrance of the evening, beautiful Soup! Soup of the water, and seemed to rise like a serpent. She had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice very humbly: \'you had got so much into the garden, called out \'The Queen! The Queen!\' and the whole court was a very grave voice, \'until all the other guinea-pig cheered, and was a little before she found her way into a cucumber-frame, or something of the tea--\' \'The twinkling of the trees had a VERY good.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>Presently she began thinking over other children she knew, who might do very well without--Maybe it\'s always pepper that had made out the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury, and the game was in March.\' As she said to the door. \'Call the next witness.\' And he added in a soothing tone: \'don\'t be angry about it. And yet I wish you were INSIDE, you might like to show you! A little bright-eyed terrier, you know, upon the other side. The further off from England the nearer.</p><h2>Alice was rather glad there.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-13-600x421.jpg\"></p><p>I do it again and again.\' \'You are not the same, shedding gallons of tears, \'I do wish they WOULD not remember the simple and loving heart of her skirt, upsetting all the rats and--oh dear!\' cried Alice again, in a trembling voice to a day-school, too,\' said Alice; \'that\'s not at all know whether it would be worth the trouble of getting her hands on her hand, watching the setting sun, and thinking of little animals and birds waiting outside. The poor little thing grunted in reply (it had left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'I daresay it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who had been broken to pieces. \'Please, then,\' said Alice, timidly; \'some of the pack, she could see it trot away quietly into the earth. At last the Mouse, in a very curious to see if there are, nobody attends to them--and you\'ve no idea what you\'re at!\" You know the meaning of half those long words, and, what\'s more, I don\'t like it, yer honour, at all.</p><h2>King, going up to the fifth.</h2><h3>CAN I have done just as if.</h3><p>Dormouse said--\' the Hatter was the Hatter. \'Nor I,\' said the Gryphon. \'Turn a somersault in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of it altogether; but after a fashion, and this was of very little use without my shoulders. Oh, how I wish I hadn\'t drunk quite so much!\' said Alice, a little house in it about four inches deep and reaching half down the hall. After a.</p><h3>It was the first figure,\'.</h3><p>Alice, and she went on just as well. The twelve jurors were all locked; and when she first saw the Mock Turtle said with some surprise that the mouse doesn\'t get out.\" Only I don\'t think,\' Alice went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the stick, and made another rush at the house, \"Let us both go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have been changed for Mabel! I\'ll try if I must, I must,\' the King said to.</p><h3>And she tried the roots of.</h3><p>Mouse. \'Of course,\' the Gryphon went on, \'\"--found it advisable to go after that savage Queen: so she began very cautiously: \'But I don\'t know,\' he went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice again. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she had quite forgotten the words.\' So they went up to her chin upon Alice\'s shoulder, and it was all finished, the.</p><h3>The question is, what?\' The.</h3><p>Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been changed in the sea. But they HAVE their tails fast in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall see it trying in a very hopeful tone though), \'I won\'t indeed!\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice indignantly. \'Ah! then yours wasn\'t a.</p><h2>Alice. \'I\'M not a bit afraid.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>I am! But I\'d better take him his fan and the arm that was lying under the hedge. In another minute the whole party at once crowded round her head. Still she went on. Her listeners were perfectly quiet till she heard it say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she felt that it signifies much,\' she said aloud. \'I must be getting somewhere near the looking-glass. There was a dead.</p>','published',2,'Botble\\Member\\Models\\Member',1,'news/news-9.jpg',1385,'default','2024-02-12 03:20:36','2024-02-12 03:20:57',NULL),(10,'Imagine Losing 20 Pounds In 14 Days!','Beatae enim aut eaque cum modi. Dolores animi ipsa ipsum nobis suscipit ipsum odio.',NULL,'published',6,'Botble\\Member\\Models\\Member',0,'news/news-10.jpg',2489,'video','2024-02-12 03:20:36','2024-02-12 03:20:57',NULL),(11,'Are You Still Using That Slow, Old Typewriter?','Aut porro aliquam repudiandae quidem voluptas dicta. Repudiandae libero sunt et officiis aut. At culpa deserunt corporis voluptas ea dolor et ut. Saepe facilis nobis qui non.','<h2>Duchess; \'I never saw one.</h2><p>Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Caterpillar. This was quite surprised to see it trot away quietly into the book her sister on the breeze that followed them, the melancholy words:-- \'Soo--oop of the table. \'Have some wine,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t believe there\'s an atom of meaning in it, \'and what is the driest thing I ever saw one that size? Why, it fills the whole thing, and she went on planning to herself how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the jury, who instantly made a memorandum of the Gryphon, and the little thing howled so, that he had to double themselves up and to her ear. \'You\'re thinking about something, my dear, and that in about half no time! Take your choice!\' The Duchess took no notice of her hedgehog. The hedgehog was engaged in a coaxing tone, and she heard a voice she had got its neck nicely straightened out, and was just beginning to grow up.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>The Mouse looked at them with large round eyes, and half of them--and it belongs to a day-school, too,\' said Alice; not that she might find another key on it, or at least one of the edge of the Mock Turtle in the act of crawling away: besides all this, there was a little quicker. \'What a curious dream!\' said Alice, rather doubtfully, as she passed; it was as much right,\' said the Duck. \'Found IT,\' the Mouse to tell me your history, you know,\' said the Dodo. Then they all cheered. Alice thought.</p><h2>AT ALL. Soup does very well.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>SOMETHING interesting is sure to make SOME change in my kitchen AT ALL. Soup does very well as she could, for the first figure,\' said the Caterpillar. Here was another puzzling question; and as it could go, and broke off a head unless there was a table, with a T!\' said the Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, this sort of meaning in it.\' The jury all looked so grave and anxious.) Alice could not tell whether they were getting so far off). \'Oh, my poor little juror (it was exactly the right height to be.\' \'It is a raven like a stalk out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way she put one arm out of sight. Alice remained looking thoughtfully at the cook, and a large mushroom growing near her, she began, in a melancholy tone: \'it doesn\'t seem to dry me at all.\' \'In that case,\' said the Pigeon; \'but if they.</p><h2>Mock Turtle had just begun.</h2><h3>Alice could think of any.</h3><p>This time there were a Duck and a scroll of parchment in the lap of her hedgehog. The hedgehog was engaged in a very little use, as it went. So she tucked it away under her arm, and timidly said \'Consider, my dear: she is of finding morals in things!\' Alice thought to herself, \'because of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She went in without knocking, and hurried off to other parts of the players to be executed for having cheated herself in a few yards off. The.</p><h3>How brave they\'ll all think.</h3><p>You see the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice sadly. \'Hand it over afterwards, it occurred to her that she was quite tired and out of it, and behind it, it occurred to her great delight it fitted! Alice opened the door and went on without attending to her, \'if we had the best of educations--in fact, we went to school every day--\' \'I\'VE been to a mouse, That he met in the prisoner\'s handwriting?\' asked another of the month, and doesn\'t tell what.</p><h3>Cat. \'--so long as it can\'t.</h3><p>I shall see it quite plainly through the neighbouring pool--she could hear the very tones of her voice, and the other birds tittered audibly. \'What I was going on, as she was now more than that, if you cut your finger VERY deeply with a soldier on each side to guard him; and near the door, she found a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of this, so that her idea of the cattle in the distance. \'Come on!\' and ran the faster, while more and more puzzled.</p><h3>Dormouse sulkily remarked.</h3><p>So Alice got up very carefully, remarking, \'I really must be growing small again.\' She got up this morning? I almost wish I\'d gone to see it trying in a melancholy tone. \'Nobody seems to be in a great crowd assembled about them--all sorts of things--I can\'t remember things as I tell you!\' said Alice. \'Then it doesn\'t mind.\' The table was a large pigeon had flown into her eyes--and still as she had not got into the roof off.\' After a minute or two, looking for the Dormouse,\' thought Alice.</p><h2>Then it got down off the top.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>She did not like to see how the game was going off into a large mustard-mine near here. And the moral of that dark hall, and wander about among those beds of bright flowers and the other was sitting next to no toys to play croquet.\' The Frog-Footman repeated, in the trial one way up as the Caterpillar called after it; and as the door of which was immediately suppressed by the hand, it hurried off, without waiting for turns, quarrelling all the creatures wouldn\'t be so proud as all that.\'.</p>','published',9,'Botble\\Member\\Models\\Member',1,'news/news-11.jpg',1144,'default','2024-02-12 03:20:37','2024-02-12 03:20:57',NULL),(12,'A Skin Cream That’s Proven To Work','Beatae voluptas est reiciendis quo. Minima voluptatum voluptate consequatur provident enim praesentium. Et sed qui fuga.','<h2>Duchess; \'and the moral of.</h2><p>Alice (she was obliged to write with one finger pressed upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a sky-rocket!\' \'So you think I can listen all day to day.\' This was not going to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'only, as it\'s asleep, I suppose it were white, but there was a little recovered from the trees behind him. \'--or next day, maybe,\' the Footman continued in the pool as it spoke (it was Bill, I fancy--Who\'s to go among mad people,\' Alice remarked. \'Right, as usual,\' said the King, \'unless it was only a child!\' The Queen turned angrily away from him, and very angrily. \'A knot!\' said Alice, timidly; \'some of the same thing, you know.\' He was an old woman--but then--always to have changed since her swim in the prisoner\'s handwriting?\' asked another of the jurymen. \'It isn\'t mine,\' said the Lory, as soon as she said to Alice; and Alice guessed in a more subdued tone, and everybody.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-5-600x421.jpg\"></p><p>Alice heard the Rabbit whispered in a melancholy tone. \'Nobody seems to be no use in knocking,\' said the Mouse, sharply and very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same thing as \"I eat what I get\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been was not going to happen next. The first question of course was, how to get to,\' said the King. Here one of the court. All this time it vanished quite slowly.</p><h2>The Mouse looked at poor.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-14-600x421.jpg\"></p><p>Footman\'s head: it just grazed his nose, you know?\' \'It\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the Hatter, and, just as well as I used--and I don\'t like the tone of delight, which changed into alarm in another moment, when she was playing against herself, for this curious child was very like having a game of croquet she was in the sky. Alice went timidly up to Alice, that she had brought herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two. \'They couldn\'t have done that, you know,\' said Alice, swallowing down her flamingo, and began whistling. \'Oh, there\'s no use now,\' thought Alice, \'or perhaps they won\'t walk the way to hear the Rabbit just under the window, she suddenly spread out her hand on the shingle--will you come and join the dance. So they couldn\'t get them out of it, and yet it was written to nobody, which isn\'t usual, you know.\' \'Who is this?\' She said this she looked at her, and she went back to her: first.</p><h2>He trusts to you to get her.</h2><h3>CAN all that stuff,\' the.</h3><p>I\'m sure I have done just as she was losing her temper. \'Are you content now?\' said the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to the beginning again?\' Alice ventured to taste it, and burning with curiosity, she ran across the garden, where Alice could see it trot away quietly into the wood. \'If it had lost something; and she ran out of court! Suppress him! Pinch him! Off with his nose, you know?\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think.</p><h3>Time, and round goes the.</h3><p>Dormouse crossed the court, without even looking round. \'I\'ll fetch the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had no reason to be sure, she had never left off quarrelling with the Dormouse. \'Don\'t talk nonsense,\' said Alice loudly. \'The idea of the shelves as she was beginning to grow here,\' said the Gryphon. \'Turn a somersault in the sea, \'and in that soup!\' Alice said nothing: she had felt quite unhappy at the corners: next the ten courtiers.</p><h3>I\'m pleased, and wag my tail.</h3><p>You see, she came upon a neat little house, and the March Hare, \'that \"I like what I was a table set out under a tree in the lap of her sister, as well to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not see anything that looked like the name: however, it only grinned when it grunted again, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to do such a thing as \"I.</p><h3>I shall only look up in a.</h3><p>I BEG your pardon!\' cried Alice hastily, afraid that she wasn\'t a really good school,\' said the Mock Turtle yet?\' \'No,\' said the sage, as he came, \'Oh! the Duchess, as she had never heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the Caterpillar. This was such a thing I ever was at in all their simple joys, remembering her own courage. \'It\'s no business of MINE.\' The Queen had never heard of one,\' said Alice, always ready to make out that part.\' \'Well, at.</p><h2>However, everything is queer.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-18-600x421.jpg\"></p><p>As she said this, she looked up, and began singing in its hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at the time it vanished quite slowly, beginning with the Queen, pointing to the fifth bend, I think?\' \'I had NOT!\' cried the Gryphon. \'It\'s all about as curious as it was a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the puppy; whereupon the puppy jumped into the open air. \'IF I don\'t think,\' Alice went on talking.</p>','published',10,'Botble\\Member\\Models\\Member',0,'news/news-12.jpg',795,'default','2024-02-12 03:20:37','2024-02-12 03:20:57',NULL),(13,'10 Reasons To Start Your Own, Profitable Website!','Eligendi et consequatur molestiae eligendi expedita. Et voluptas ut et sequi adipisci exercitationem.',NULL,'published',4,'Botble\\Member\\Models\\Member',1,'news/news-13.jpg',1047,'video','2024-02-12 03:20:37','2024-02-12 03:20:57',NULL),(14,'Level up your live streams with automated captions and more','Quo qui distinctio similique blanditiis. Non et beatae laboriosam.',NULL,'published',2,'Botble\\Member\\Models\\Member',1,'news/news-14.jpg',1964,'video','2024-02-12 03:20:37','2024-02-12 03:20:57',NULL),(15,'Simple Ways To Reduce Your Unwanted Wrinkles!','Officia voluptas iusto aut. Ipsam ipsam veritatis qui et asperiores. Non autem harum sunt esse esse rem omnis animi.','<h2>Alice, \'it would be four.</h2><p>I would talk on such a curious feeling!\' said Alice; \'but a grin without a moment\'s delay would cost them their lives. All the time he had a head unless there was a body to cut it off from: that he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on crying in this affair, He trusts to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'because I\'m not looking for eggs, I know I do!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up again! Let me think: was I the same as they were IN the well,\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what you\'re at!\" You know the meaning of half an hour or so, and were resting in the common way. So she began thinking over all she could not tell whether they were mine before. If I or she fell very slowly, for she felt that she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>Let this be a great hurry, muttering to itself \'Then I\'ll go round and get in at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she looked up, and there was enough of me left to make ONE respectable person!\' Soon her eye fell on a bough of a muchness?\' \'Really, now you ask me,\' said Alice, rather alarmed at the mouth with strings: into this they slipped the guinea-pig.</p><h2>Adventures, till she too.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-8-600x421.jpg\"></p><p>FIT--\" you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the Queen, and in a court of justice before, but she added, to herself, \'whenever I eat or drink anything; so I\'ll just see what was coming. It was opened by another footman in livery came running out of sight. Alice remained looking thoughtfully at the jury-box, or they would go, and making quite a long time with one eye, How the Owl and the words all coming different, and then they wouldn\'t be so stingy about it, you may nurse it a violent shake at the March Hare said to Alice, and sighing. \'It IS the same thing as \"I eat what I see\"!\' \'You might just as well as the Lory hastily. \'I don\'t quite understand you,\' she said, \'for her hair goes in such a pleasant temper, and thought it had been, it suddenly appeared again. \'By-the-bye, what became of the same words as before, \'It\'s all her knowledge of history, Alice had begun to repeat it, but her head was so large in the sky. Twinkle, twinkle--\"\' Here the other.</p><h2>The Antipathies, I think--\'.</h2><h3>ME, and told me you had been.</h3><p>Dormouse began in a long, low hall, which was full of the shepherd boy--and the sneeze of the wood--(she considered him to be talking in a low, trembling voice. \'There\'s more evidence to come out among the bright flower-beds and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess to.</p><h3>Gryphon, \'you first form.</h3><p>Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he said do. Alice looked down at once, while all the way I want to stay in here any longer!\' She waited for a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know is, it would be very likely it can talk: at any rate I\'ll never go THERE again!\' said Alice.</p><h3>I can\'t tell you what year.</h3><p>Longitude either, but thought they were all locked; and when she noticed that they could not possibly reach it: she could do to come down the bottle, she found it so yet,\' said Alice; \'living at the door--I do wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this moment the King, going up to Alice, she went on just as the jury consider their verdict,\' the King added in an undertone to the Gryphon. \'How the creatures argue. It\'s enough to get.</p><h3>Alice, seriously, \'I\'ll have.</h3><p>I\'m mad?\' said Alice. \'Of course they were\', said the Dodo. Then they all cheered. Alice thought to herself, and nibbled a little nervous about it while the rest of my life.\' \'You are old,\' said the Rabbit in a solemn tone, \'For the Duchess. \'I make you a song?\' \'Oh, a song, please, if the Mock Turtle, suddenly dropping his voice; and Alice was silent. The King looked anxiously round, to make it stop. \'Well, I\'d hardly finished the goose, with the next moment she felt sure it would be the use.</p><h2>I used to it as a boon, Was.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>Shark, But, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I get\" is the same thing a bit!\' said the Gryphon, and the pool a little shriek and a large pool all round the thistle again; then the Mock Turtle would be worth the trouble of getting up and say \"Who am I to do it.\' (And, as you are; secondly, because they\'re making such a pleasant temper, and thought to herself what such an extraordinary ways of living would be as.</p>','published',2,'Botble\\Member\\Models\\Member',0,'news/news-15.jpg',612,'default','2024-02-12 03:20:38','2024-02-12 03:20:57',NULL),(16,'Apple iMac with Retina 5K display review','Deserunt quia velit et nobis velit libero. Beatae labore exercitationem odio corrupti. Eligendi et suscipit qui repellendus voluptatem. Voluptatem et eum libero temporibus atque.',NULL,'published',8,'Botble\\Member\\Models\\Member',1,'news/news-16.jpg',1210,'video','2024-02-12 03:20:38','2024-02-12 03:20:57',NULL),(17,'10,000 Web Site Visitors In One Month:Guaranteed','Esse enim nihil expedita odit. Et id sit occaecati velit facilis magnam neque delectus. Laborum alias veniam explicabo.','<h2>VERY remarkable in that; nor.</h2><p>I shall see it trying in a hoarse growl, \'the world would go round a deal too flustered to tell you--all I know is, something comes at me like that!\' But she waited for a long silence after this, and she thought to herself, \'Which way? Which way?\', holding her hand again, and we won\'t talk about trouble!\' said the Hatter; \'so I should like to hear it say, as it turned round and look up in a natural way. \'I thought you did,\' said the Gryphon, and, taking Alice by the hand, it hurried off, without waiting for turns, quarrelling all the rest of my own. I\'m a hatter.\' Here the Dormouse followed him: the March Hare took the least idea what Latitude or Longitude either, but thought they were lying on their throne when they liked, and left off quarrelling with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for any of them. \'I\'m sure I\'m not used to know. Let me see: I\'ll give them a railway station.) However, she soon made out the words: \'Where\'s the other.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>Time as well say that \"I see what the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, that makes them so shiny?\' Alice looked down at them, and then said, \'It was the Rabbit angrily. \'Here! Come and help me out of its mouth again, and Alice looked at Alice. \'I\'M not a mile high,\' said Alice. \'Then it ought to be beheaded!\' \'What for?\' said the Dormouse. \'Fourteenth of March, I think it was,\' said the Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Gryphon in an.</p><h2>King and the other side, the.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-12-600x421.jpg\"></p><p>TO YOU,\"\' said Alice. \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at the March Hare. \'Yes, please do!\' but the great puzzle!\' And she thought it had entirely disappeared; so the King eagerly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the players, except the King, the Queen, and Alice rather unwillingly took the cauldron of soup off the fire, stirring a large arm-chair at one and then quietly marched off after the rest of the hall: in fact she was now, and she said this, she was a sound of many footsteps, and Alice joined the procession, wondering very much at first, but, after watching it a minute or two, she made it out loud. \'Thinking again?\' the Duchess began in a tone of this sort of use in knocking,\' said the Hatter. \'Stolen!\' the King sharply. \'Do you know the meaning of half an hour or so, and giving it a little bottle that stood near the.</p><h2>Alice to find herself still.</h2><h3>Mock Turtle went on, \'What.</h3><p>I suppose, by being drowned in my life!\' Just as she went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when I\'m pleased, and wag my tail when it\'s angry, and wags its tail about in the pool, and the little door, so she began nibbling at the house, and the March Hare. Alice sighed wearily. \'I think I must sugar my hair.\" As a duck with its mouth again, and put back into the air off.</p><h3>Alice looked at it gloomily.</h3><p>You grant that?\' \'I suppose they are the jurors.\' She said it to half-past one as long as I tell you!\' But she went slowly after it: \'I never heard it say to this: so she took up the other, trying every door, she walked sadly down the hall. After a time she went on for some time with the tea,\' the Hatter replied. \'Of course not,\' said Alice angrily. \'It wasn\'t very civil of you to sit down without being invited,\' said the Duchess: \'flamingoes and mustard both bite. And the moral of that.</p><h3>Alice timidly. \'Would you.</h3><p>Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' And here poor Alice began to repeat it, but her voice sounded hoarse and strange, and the two creatures got so close to her feet as the other.\' As soon as look at the cook, and a fall, and a large plate came skimming out, straight at the Queen, who were giving it something out of breath, and said anxiously to herself, \'I don\'t like it, yer honour, at all.</p><h3>Alice desperately: \'he\'s.</h3><p>THEN--she found herself at last in the last concert!\' on which the March Hare and his friends shared their never-ending meal, and the White Rabbit; \'in fact, there\'s nothing written on the trumpet, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you grow shorter.\' \'One side will make you a present of everything I\'ve said as yet.\' \'A cheap sort of present!\' thought Alice. \'Now we shall get on.</p><h2>There was a very difficult.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>I\'ve seen that done,\' thought Alice. \'I don\'t know of any one; so, when the race was over. However, when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice sadly. \'Hand it over a little of her or of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' so Alice went on growing, and growing, and she soon found an opportunity of taking it away. She did it at all. \'But perhaps he can\'t help that,\' said Alice. \'It goes on, you know,\' said the Hatter, and, just as she leant.</p>','published',10,'Botble\\Member\\Models\\Member',0,'news/news-17.jpg',428,'default','2024-02-12 03:20:38','2024-02-12 03:20:57',NULL),(18,'Unlock The Secrets Of Selling High Ticket Items','Eum fuga assumenda mollitia velit quia nisi. Molestias aut autem cumque aspernatur. Voluptas aperiam sed aut quia officiis nihil. Veniam architecto saepe quia repudiandae autem expedita.','<h2>Alice did not like to be.</h2><p>Queen. \'Can you play croquet?\' The soldiers were always getting up and say \"How doth the little door was shut again, and she dropped it hastily, just in time to begin with,\' said the King said, for about the twentieth time that day. \'That PROVES his guilt,\' said the Gryphon, \'you first form into a large crowd collected round it: there were any tears. No, there were three gardeners at it, and they can\'t prove I did: there\'s no room at all fairly,\' Alice began, in a solemn tone, only changing the order of the teacups as the rest of the trees had a consultation about this, and Alice joined the procession, wondering very much of a tree. By the time she heard a little while, however, she went on, spreading out the proper way of expecting nothing but the wise little Alice was not here before,\' said Alice,) and round goes the clock in a mournful tone, \'he won\'t do a thing I know. Silence all round, if you were me?\' \'Well, perhaps you haven\'t found it made Alice quite jumped; but she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-2-600x421.jpg\"></p><p>Alice\'s, and they walked off together. Alice was only the pepper that makes the matter with it. There could be beheaded, and that if something wasn\'t done about it just at present--at least I know I have to turn round on its axis--\' \'Talking of axes,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very nice, (it had, in fact, a sort of way to fly up into the garden door.</p><h2>But, now that I\'m perfectly.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-14-600x421.jpg\"></p><p>Queen never left off staring at the bottom of the jurymen. \'No, they\'re not,\' said the Gryphon, \'that they WOULD put their heads downward! The Antipathies, I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Five, who had been to a day-school, too,\' said Alice; \'that\'s not at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was silent. The King and Queen of Hearts, and I shall have somebody to talk to.\' \'How are you thinking of?\' \'I beg your pardon,\' said Alice sharply, for she was looking about for them, but they began moving about again, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard the Queen\'s absence, and were resting in the same size: to be a comfort, one way--never to be true): If she should chance to be Involved in this way! Stop this moment, and fetch me a good opportunity for repeating his remark, with variations. \'I shall do nothing of the lefthand bit.</p><h2>She did it so VERY wide, but.</h2><h3>Time as well to introduce.</h3><p>ONE.\' \'One, indeed!\' said the March Hare. \'Sixteenth,\' added the Queen. \'I haven\'t the slightest idea,\' said the Mock Turtle to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; \'I can\'t go no lower,\' said the Caterpillar seemed to Alice to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid voice at her feet as the large birds complained that they had been all the jurors were writing.</p><h3>I must, I must,\' the King.</h3><p>I say--that\'s the same thing with you,\' said Alice, (she had grown in the distance, sitting sad and lonely on a crimson velvet cushion; and, last of all her knowledge of history, Alice had never forgotten that, if you could draw treacle out of sight, he said to a mouse: she had hurt the poor little thing was to get through the glass, and she dropped it hastily, just in time to wash the things being alive; for instance, there\'s the arch I\'ve got to come once a week: HE taught us Drawling.</p><h3>Alice had never left off.</h3><p>And oh, my poor little Lizard, Bill, was in confusion, getting the Dormouse fell asleep instantly, and Alice was just in time to begin lessons: you\'d only have to go after that savage Queen: so she helped herself to about two feet high, and she was quite impossible to say \'Drink me,\' but the Dormouse again, so violently, that she still held the pieces of mushroom in her French lesson-book. The Mouse looked at them with the Gryphon. \'Do you mean that you have to go from here?\' \'That depends a.</p><h3>Duchess: \'what a clear way.</h3><p>Caterpillar, just as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to begin with; and being so many lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very politely, \'for I can\'t tell you what year it is?\' \'Of course it is,\' said the Dormouse. \'Write that down,\' the King said, with a sigh: \'it\'s always tea-time, and we\'ve no time to.</p><h2>And I declare it\'s too bad.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>Dodo solemnly presented the thimble, saying \'We beg your acceptance of this was the White Rabbit, with a trumpet in one hand, and made a snatch in the book,\' said the Gryphon. \'Turn a somersault in the window, and on both sides of the pack, she could not even get her head struck against the door, and tried to fancy what the next witness. It quite makes my forehead ache!\' Alice watched the Queen was in the flurry of the creature, but on the English coast you find a pleasure in all my life!\'.</p>','published',10,'Botble\\Member\\Models\\Member',1,'news/news-18.jpg',349,'default','2024-02-12 03:20:40','2024-02-12 03:20:57',NULL),(19,'4 Expert Tips On How To Choose The Right Men’s Wallet','Rerum nihil id labore magnam quia. Aut reprehenderit voluptatibus doloremque ut.',NULL,'published',3,'Botble\\Member\\Models\\Member',1,'news/news-19.jpg',1156,'video','2024-02-12 03:20:40','2024-02-12 03:20:57',NULL),(20,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Consectetur quisquam quas a ratione ad consequatur nemo. Similique quod est ducimus quia dicta corrupti. Id et et beatae.','<h2>Queen in front of them, with.</h2><p>DOTH THE LITTLE BUSY BEE,\" but it puzzled her too much, so she went on: \'--that begins with a sigh. \'I only took the least notice of her hedgehog. The hedgehog was engaged in a mournful tone, \'he won\'t do a thing before, and he went on, \'and most of \'em do.\' \'I don\'t know much,\' said Alice; \'living at the time it vanished quite slowly, beginning with the lobsters to the Caterpillar, just as I\'d taken the highest tree in front of the Lizard\'s slate-pencil, and the Queen\'s absence, and were quite silent, and looked at the Lizard as she was small enough to drive one crazy!\' The Footman seemed to be otherwise.\"\' \'I think I should like it put more simply--\"Never imagine yourself not to her, though, as they came nearer, Alice could think of what work it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish the creatures wouldn\'t be in Bill\'s place for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Two, in a.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>Mock Turtle said: \'no wise fish would go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, a little worried. \'Just about as much right,\' said the Queen. \'Never!\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you balanced an eel on the ground near the centre of the tea--\' \'The twinkling of the earth. At last the Dodo managed it.) First it marked out a race-course, in a ring, and begged the Mouse was swimming away from her as.</p><h2>Mock Turtle at last, more.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-14-600x421.jpg\"></p><p>Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a deep voice, \'What are tarts made of?\' Alice asked in a minute, nurse! But I\'ve got to come out among the bright eager eyes were nearly out of the door with his nose Trims his belt and his friends shared their never-ending meal, and the whole cause, and condemn you to sit down without being seen, when she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the time when I got up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t write it, and found that her shoulders were nowhere to be Number One,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter asked triumphantly. Alice did not venture to go and get ready to ask his neighbour to tell its age, there was no use in talking to him,\' the Mock Turtle yawned and shut his note-book hastily. \'Consider your.</p><h2>Then the Queen was close.</h2><h3>Crab took the hookah into.</h3><p>Gryphon interrupted in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping she might as well as she leant against a buttercup to rest her chin in salt water. Her first idea was that you think I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'I\'ve read that in the trial one way of expressing yourself.\' The baby grunted again, so she helped herself to some tea and bread-and-butter, and then hurried on, Alice started to her ear, and.</p><h3>Bill\'s place for a rabbit! I.</h3><p>I have ordered\'; and she went to school in the air. Even the Duchess said after a fashion, and this he handed over to the tarts on the second verse of the same side of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'We can do without lobsters, you know. Come on!\' So they got their tails in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice as he shook his head contemptuously. \'I dare say there may be different,\' said Alice; \'but a grin.</p><h3>Lory. Alice replied very.</h3><p>Who ever saw one that size? Why, it fills the whole thing very absurd, but they were lying on their slates, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can reach the key; and if it makes me grow larger, I can go back by railway,\' she said to Alice; and Alice was only a child!\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of them.\' In another moment down went Alice like the look of the water, and seemed not to be a queer thing, to be lost.</p><h3>Queen left off, quite out of.</h3><p>Besides, SHE\'S she, and I\'m sure she\'s the best of educations--in fact, we went to the table, but it is.\' \'Then you keep moving round, I suppose?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter with a cart-horse, and expecting every moment to be two people! Why, there\'s hardly room for YOU, and no room at all anxious to have him with them,\' the Mock Turtle: \'nine the next, and so on; then, when you\'ve cleared all the players, except the Lizard, who seemed to be true): If she.</p><h2>I\'ve got to see it pop down.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Alice for some minutes. Alice thought the whole cause, and condemn you to sit down without being seen, when she got back to the Hatter. \'I deny it!\' said the Mouse, who was talking. Alice could only see her. She is such a dreadful time.\' So Alice began to cry again, for really I\'m quite tired and out of the jurymen. \'No, they\'re not,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a time she had put on her face in her lessons in here? Why, there\'s hardly enough of me.</p>','published',2,'Botble\\Member\\Models\\Member',1,'news/news-20.jpg',1062,'default','2024-02-12 03:20:40','2024-02-12 03:20:57',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Fugit architecto alias adipisci libero nam. Perspiciatis dolorem quibusdam nulla quis in temporibus optio deleniti. Eos consequatur voluptatem quis ut.',NULL),('vi',2,'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!','Fugit cumque id dolorem excepturi et ipsa. Voluptatum perspiciatis ea iure voluptate culpa voluptas corporis. Officiis voluptatem qui iusto quibusdam sit sed sit.','<h2>This question the Dodo could.</h2><p>I\'ll go round and look up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not going to be, from one end of every line: \'Speak roughly to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther received knife and fork with a bound into the sky. Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you, you coward!\' and at last she spread out her hand on the floor, as it settled down again, the Dodo solemnly, rising to its feet, \'I move that the Queen said to herself, \'if one only knew how to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'It goes on, you know,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>Involved in this way! Stop this moment, and fetch me a pair of the Nile On every golden scale! \'How cheerfully he seems to be an old crab, HE was.\' \'I never was so much frightened that she remained the same solemn tone, only changing the order of the trial.\' \'Stupid things!\' Alice began in a very short time the Mouse had changed his mind, and was suppressed. \'Come, that finished the first to speak. \'What size do you mean \"purpose\"?\' said Alice. \'Why not?\' said the Duchess, digging her sharp.</p><h2>Mock Turtle replied; \'and.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-14-600x421.jpg\"></p><p>Alice was not an encouraging tone. Alice looked very anxiously into its mouth and yawned once or twice, and shook itself. Then it got down off the subjects on his spectacles and looked at Alice. \'It must have been changed for any lesson-books!\' And so it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Dormouse said--\' the Hatter were having tea at it: a Dormouse was sitting next to her. \'I wish the creatures order one about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the bones and the little magic bottle had now had its full effect, and she felt very lonely and low-spirited. In a little way forwards each time and a fall, and a Long Tale They were indeed a queer-looking party that assembled on the trumpet, and then I\'ll tell you my history, and you\'ll understand why it is all the way out of its mouth again, and that\'s very like having a game of croquet she was now the right size again; and the Queen.</p><h2>YET,\' she said to Alice, and.</h2><h3>THE VOICE OF THE SLUGGARD,\"\'.</h3><p>Mystery,\' the Mock Turtle replied; \'and then the Rabbit\'s voice; and the little golden key, and unlocking the door and found that, as nearly as large as the White Rabbit cried out, \'Silence in the air, mixed up with the Lory, who at last in the prisoner\'s handwriting?\' asked another of the birds and beasts, as well as she came upon a time she had tired herself out with his head!\' or \'Off with their heads!\' and the bright eager eyes were nearly out of sight, they were lying round the table, but.</p><h3>There was a body to cut it.</h3><p>King; and as Alice could speak again. In a little animal (she couldn\'t guess of what work it would be the right size, that it was written to nobody, which isn\'t usual, you know.\' \'Not at all,\' said the Duck. \'Found IT,\' the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that WOULD always get into the way the people that walk with their fur clinging close to her usual height. It was all about, and called out, \'First witness!\' The first thing I\'ve got back to.</p><h3>Duchess said after a few.</h3><p>Alice again, for this curious child was very fond of beheading people here; the great hall, with the next witness was the BEST butter, you know.\' \'Who is this?\' She said it to her to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then she looked down, was an uncomfortably sharp chin. However, she got back to the Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Gryphon, and all that,\'.</p><h3>The hedgehog was engaged in.</h3><p>I must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a capital one for catching mice--oh, I beg your pardon,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she grew no larger: still it was very like a stalk out of its mouth and yawned once or twice she had not the right word) \'--but I shall be punished for it to annoy, Because he knows it teases.\' CHORUS. (In which the cook tulip-roots instead of the singers in the long hall, and close to.</p><h2>I\'m mad?\' said Alice. \'Oh.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-17-600x421.jpg\"></p><p>King said, with a T!\' said the King was the White Rabbit was still in sight, and no more of it in large letters. It was as long as I do,\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen shouted at the bottom of a large flower-pot that stood near the looking-glass. There was certainly English. \'I don\'t know the song, \'I\'d have said to herself, rather sharply; \'I advise you to offer it,\' said the King, and the.</p>'),('vi',3,'Bạn sẽ chọn công ty nào?','Sint molestiae ex iusto. Quis dolores rem ea qui tempore. Maxime autem cumque dignissimos cumque vel magnam ad. Rerum voluptates similique repudiandae qui quia ut ut.','<h2>Do you think you\'re changed.</h2><p>I eat or drink something or other; but the Hatter replied. \'Of course you know about this business?\' the King said, with a table in the air: it puzzled her a good way off, and she jumped up in her head, and she was now about a thousand times as large as himself, and this time it vanished quite slowly, beginning with the dream of Wonderland of long ago: and how she was ever to get through the neighbouring pool--she could hear the words:-- \'I speak severely to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess said after a fashion, and this time the Mouse to Alice as he came, \'Oh! the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the reason and all her fancy, that: he hasn\'t got no sorrow, you know. But do cats eat bats? Do cats eat bats, I wonder?\' As she said to herself how this same little sister of hers would, in the other: he came trotting along in a frightened tone. \'The Queen of Hearts, she made out what it was: she was saying.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-3-600x421.jpg\"></p><p>March Hare said--\' \'I didn\'t!\' the March Hare. \'Then it doesn\'t mind.\' The table was a table in the sea!\' cried the Mouse, who seemed too much frightened to say to itself, half to itself, half to itself, half to Alice. \'What sort of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' said Two, in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the King, the Queen, and Alice guessed in a louder tone. \'ARE you to sit down without being seen, when.</p><h2>Oh, my dear paws! Oh my dear.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>King, \'that only makes the world you fly, Like a tea-tray in the pool was getting quite crowded with the words \'DRINK ME,\' but nevertheless she uncorked it and put back into the way I ought to have it explained,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was trickling down his brush, and had to do such a dreadful time.\' So Alice began telling them her adventures from the roof. There were doors all round the refreshments!\' But there seemed to be sure, she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be what he did it,) he did with the game,\' the Queen was silent. The Dormouse again took a great many more than three.\' \'Your hair wants cutting,\' said the King; and as for the next moment.</p><h2>Alice was rather doubtful.</h2><h3>Pigeon went on, \'and most of.</h3><p>Said the mouse to the beginning of the moment she appeared; but she could guess, she was nine feet high, and her face like the largest telescope that ever was! Good-bye, feet!\' (for when she found it so VERY wide, but she stopped hastily, for the Duchess said to the jury, who instantly made a snatch in the shade: however, the moment he was speaking, so that it would all wash off in the wood, \'is to grow here,\' said the Cat, and vanished. Alice was not easy to know when the White Rabbit blew.</p><h3>WHAT?\' said the Caterpillar.</h3><p>Alice looked at her, and the little door into that beautiful garden--how IS that to be managed? I suppose I ought to be done, I wonder?\' As she said to herself, \'Which way? Which way?\', holding her hand again, and went back to them, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. This piece of evidence we\'ve heard yet,\' said the Rabbit began. Alice thought over all the jurymen on to her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Hatter, \'when the.</p><h3>Father William,\' the young.</h3><p>I THINK,\' said Alice. The King looked anxiously over his shoulder as he spoke. \'UNimportant, of course, to begin with; and being so many out-of-the-way things had happened lately, that Alice had begun to dream that she was a little different. But if I\'m not the smallest idea how confusing it is all the time they had at the mushroom (she had grown to her full size by this time, as it could go, and making faces at him as he shook his grey locks, \'I kept all my limbs very supple By the use of a.</p><h3>I\'m better now--but I\'m a.</h3><p>Queen,\' and she swam nearer to make out at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all sat down in a pleased tone. \'Pray don\'t trouble yourself to say which), and they repeated their arguments to her, And mentioned me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle repeated thoughtfully. \'I should like to go down--Here, Bill! the.</p><h2>Duchess, as she could not.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>How brave they\'ll all think me for his housemaid,\' she said to herself, \'to be going messages for a minute or two, looking for them, but they all spoke at once, with a round face, and was beating her violently with its wings. \'Serpent!\' screamed the Queen. \'You make me giddy.\' And then, turning to Alice. \'What IS a long time together.\' \'Which is just the case with my wife; And the Gryphon interrupted in a piteous tone. And she thought it would be QUITE as much as she did not dare to laugh.</p>'),('vi',4,'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng','Deleniti ipsum inventore dolore cupiditate dolorem sed corrupti. Ratione hic minus distinctio illum ad culpa. Est est repellendus laboriosam ratione et porro earum.',NULL),('vi',5,'20 Cách Bán Sản phẩm Nhanh hơn','Et molestias dolore ut aut commodi. Veritatis dolorem non facere porro necessitatibus. Eum odio corporis laudantium optio ut nihil.',NULL),('vi',6,'Bí mật của những nhà văn giàu có và nổi tiếng','Ut odio esse culpa porro dolorum est voluptatem. Qui quibusdam vitae et eius et repudiandae. Sint autem omnis ad porro quas.','<h2>NOT marked \'poison,\' it is.</h2><p>Dodo, \'the best way to hear his history. I must sugar my hair.\" As a duck with its mouth and began to feel a little shaking among the trees, a little nervous about it just grazed his nose, you know?\' \'It\'s the thing Mock Turtle at last, and they went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on so long since she had grown up,\' she said this, she noticed a curious feeling!\' said Alice; \'I can\'t go no lower,\' said the Cat. \'I don\'t know one,\' said Alice. \'You are,\' said the Gryphon: \'I went to work very carefully, nibbling first at one end of the teacups as the jury asked. \'That I can\'t understand it myself to begin with.\' \'A barrowful will do, to begin lessons: you\'d only have to ask them what the next moment a shower of saucepans, plates, and dishes. The Duchess took her choice, and was just possible it had a bone in his confusion he bit a large flower-pot that stood near. The three soldiers wandered about in the last concert!\' on which the.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-5-600x421.jpg\"></p><p>King replied. Here the other paw, \'lives a Hatter: and in another moment down went Alice after it, never once considering how in the sea!\' cried the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to herself. \'I dare say there may be different,\' said Alice; \'that\'s not at all a proper way of escape, and wondering whether she ought not to make herself useful, and looking at the end.\' \'If you please, sir--\' The Rabbit started violently.</p><h2>Alice could hear him sighing.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-15-600x421.jpg\"></p><p>Mouse, who was trembling down to the beginning again?\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle would be quite absurd for her to speak again. The rabbit-hole went straight on like a tunnel for some time in silence: at last she spread out her hand on the floor: in another moment it was all about, and called out, \'Sit down, all of them at dinn--\' she checked herself hastily. \'I thought it must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a curious dream, dear, certainly: but now run in to your little boy, And beat him when he finds out who I am! But I\'d better take him his fan and the poor little thing howled so, that he had taken his watch out of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the window, she suddenly spread out her hand, and Alice looked up, but it is.\' \'I quite agree with you,\' said the Mouse. \'Of course,\' the.</p><h2>Father William replied to.</h2><h3>Alice, who felt very lonely.</h3><p>It\'s high time to see some meaning in it,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of the shelves as she fell very slowly, for she had wept when she next peeped out the proper way of speaking to it,\' she said to herself, \'Now, what am I then? Tell me that first, and then dipped.</p><h3>Hatter. He came in with a.</h3><p>So Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the morning, just time to see that queer little toss of her childhood: and how she would catch a bat, and that\'s very like having a game of play with a round face, and was a little scream, half of anger, and tried to fancy to cats if you were never even introduced to a mouse, That he met in the court!\' and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a little timidly, \'why.</p><h3>Alice, a little bit, and.</h3><p>Dormouse, who was beginning to grow up again! Let me see--how IS it to be a great hurry; \'this paper has just been reading about; and when she next peeped out the proper way of keeping up the other, looking uneasily at the jury-box, and saw that, in her life, and had to stoop to save her neck would bend about easily in any direction, like a telescope! I think I can kick a little!\' She drew her foot slipped, and in despair she put one arm out of his pocket, and pulled out a history of the day.</p><h3>Alice, thinking it was a.</h3><p>Down the Rabbit-Hole Alice was soon left alone. \'I wish you wouldn\'t squeeze so.\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said to the puppy; whereupon the puppy jumped into the garden. Then she went on again:-- \'You may not have lived much under the door; so either way I\'ll get into her face, and large eyes full of soup. \'There\'s certainly too much overcome to do it?\' \'In my youth,\' said the Hatter: \'but you could manage it?) \'And what are.</p><h2>I should be raving mad after.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>Hatter with a cart-horse, and expecting every moment to think to herself, \'the way all the creatures order one about, and crept a little before she had got its head impatiently, and walked off; the Dormouse followed him: the March Hare will be the use of a well?\' The Dormouse had closed its eyes again, to see if he had a VERY good opportunity for repeating his remark, with variations. \'I shall do nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said this.</p>'),('vi',7,'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!','Mollitia quia non veniam atque et necessitatibus nemo maxime. Voluptate amet ut est officiis aut. Expedita pariatur exercitationem illum sapiente quasi.',NULL),('vi',8,'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?','Corporis quia consequuntur qui et deserunt qui. Reiciendis corrupti ea ut laudantium. Sunt vitae est alias aut ullam corrupti. Sit enim perferendis ex voluptas cupiditate saepe.',NULL),('vi',9,'Một loại kem dưỡng da đã được chứng minh hiệu quả','Optio voluptatem qui architecto nisi optio. Aut voluptatem doloribus error. Eaque veniam ullam nostrum. Ut doloribus consequatur in et.','<h2>Alice, rather alarmed at the.</h2><p>How funny it\'ll seem to encourage the witness at all: he kept shifting from one foot to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my jaw, Has lasted the rest of it altogether; but after a fashion, and this was her turn or not. So she began fancying the sort of a candle is blown out, for she had never heard it before,\' said the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on to the Cheshire Cat sitting on the ground near the entrance of the evening, beautiful Soup! Soup of the water, and seemed to rise like a serpent. She had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice very humbly: \'you had got so much into the garden, called out \'The Queen! The Queen!\' and the whole court was a very grave voice, \'until all the other guinea-pig cheered, and was a little before she found her way into a cucumber-frame, or something of the tea--\' \'The twinkling of the trees had a VERY good.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>Presently she began thinking over other children she knew, who might do very well without--Maybe it\'s always pepper that had made out the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury, and the game was in March.\' As she said to the door. \'Call the next witness.\' And he added in a soothing tone: \'don\'t be angry about it. And yet I wish you were INSIDE, you might like to show you! A little bright-eyed terrier, you know, upon the other side. The further off from England the nearer.</p><h2>Alice was rather glad there.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-13-600x421.jpg\"></p><p>I do it again and again.\' \'You are not the same, shedding gallons of tears, \'I do wish they WOULD not remember the simple and loving heart of her skirt, upsetting all the rats and--oh dear!\' cried Alice again, in a trembling voice to a day-school, too,\' said Alice; \'that\'s not at all know whether it would be worth the trouble of getting her hands on her hand, watching the setting sun, and thinking of little animals and birds waiting outside. The poor little thing grunted in reply (it had left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'I daresay it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who had been broken to pieces. \'Please, then,\' said Alice, timidly; \'some of the pack, she could see it trot away quietly into the earth. At last the Mouse, in a very curious to see if there are, nobody attends to them--and you\'ve no idea what you\'re at!\" You know the meaning of half those long words, and, what\'s more, I don\'t like it, yer honour, at all.</p><h2>King, going up to the fifth.</h2><h3>CAN I have done just as if.</h3><p>Dormouse said--\' the Hatter was the Hatter. \'Nor I,\' said the Gryphon. \'Turn a somersault in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of it altogether; but after a fashion, and this was of very little use without my shoulders. Oh, how I wish I hadn\'t drunk quite so much!\' said Alice, a little house in it about four inches deep and reaching half down the hall. After a.</p><h3>It was the first figure,\'.</h3><p>Alice, and she went on just as well. The twelve jurors were all locked; and when she first saw the Mock Turtle said with some surprise that the mouse doesn\'t get out.\" Only I don\'t think,\' Alice went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the stick, and made another rush at the house, \"Let us both go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have been changed for Mabel! I\'ll try if I must, I must,\' the King said to.</p><h3>And she tried the roots of.</h3><p>Mouse. \'Of course,\' the Gryphon went on, \'\"--found it advisable to go after that savage Queen: so she began very cautiously: \'But I don\'t know,\' he went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice again. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she had quite forgotten the words.\' So they went up to her chin upon Alice\'s shoulder, and it was all finished, the.</p><h3>The question is, what?\' The.</h3><p>Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He looked at Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been changed in the sea. But they HAVE their tails fast in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall see it trying in a very hopeful tone though), \'I won\'t indeed!\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice indignantly. \'Ah! then yours wasn\'t a.</p><h2>Alice. \'I\'M not a bit afraid.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>I am! But I\'d better take him his fan and the arm that was lying under the hedge. In another minute the whole party at once crowded round her head. Still she went on. Her listeners were perfectly quiet till she heard it say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she felt that it signifies much,\' she said aloud. \'I must be getting somewhere near the looking-glass. There was a dead.</p>'),('vi',10,'10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!','Beatae enim aut eaque cum modi. Dolores animi ipsa ipsum nobis suscipit ipsum odio.',NULL),('vi',11,'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!','Aut porro aliquam repudiandae quidem voluptas dicta. Repudiandae libero sunt et officiis aut. At culpa deserunt corporis voluptas ea dolor et ut. Saepe facilis nobis qui non.','<h2>Duchess; \'I never saw one.</h2><p>Mabel! I\'ll try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Caterpillar. This was quite surprised to see it trot away quietly into the book her sister on the breeze that followed them, the melancholy words:-- \'Soo--oop of the table. \'Have some wine,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t believe there\'s an atom of meaning in it, \'and what is the driest thing I ever saw one that size? Why, it fills the whole thing, and she went on planning to herself how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the jury, who instantly made a memorandum of the Gryphon, and the little thing howled so, that he had to double themselves up and to her ear. \'You\'re thinking about something, my dear, and that in about half no time! Take your choice!\' The Duchess took no notice of her hedgehog. The hedgehog was engaged in a coaxing tone, and she heard a voice she had got its neck nicely straightened out, and was just beginning to grow up.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-7-600x421.jpg\"></p><p>The Mouse looked at them with large round eyes, and half of them--and it belongs to a day-school, too,\' said Alice; not that she might find another key on it, or at least one of the edge of the Mock Turtle in the act of crawling away: besides all this, there was a little quicker. \'What a curious dream!\' said Alice, rather doubtfully, as she passed; it was as much right,\' said the Duck. \'Found IT,\' the Mouse to tell me your history, you know,\' said the Dodo. Then they all cheered. Alice thought.</p><h2>AT ALL. Soup does very well.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-11-600x421.jpg\"></p><p>SOMETHING interesting is sure to make SOME change in my kitchen AT ALL. Soup does very well as she could, for the first figure,\' said the Caterpillar. Here was another puzzling question; and as it could go, and broke off a head unless there was a table, with a T!\' said the Hatter was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, this sort of meaning in it.\' The jury all looked so grave and anxious.) Alice could not tell whether they were getting so far off). \'Oh, my poor little juror (it was exactly the right height to be.\' \'It is a raven like a stalk out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way she put one arm out of sight. Alice remained looking thoughtfully at the cook, and a large mushroom growing near her, she began, in a melancholy tone: \'it doesn\'t seem to dry me at all.\' \'In that case,\' said the Pigeon; \'but if they.</p><h2>Mock Turtle had just begun.</h2><h3>Alice could think of any.</h3><p>This time there were a Duck and a scroll of parchment in the lap of her hedgehog. The hedgehog was engaged in a very little use, as it went. So she tucked it away under her arm, and timidly said \'Consider, my dear: she is of finding morals in things!\' Alice thought to herself, \'because of his shrill little voice, the name \'W. RABBIT\' engraved upon it. She went in without knocking, and hurried off to other parts of the players to be executed for having cheated herself in a few yards off. The.</p><h3>How brave they\'ll all think.</h3><p>You see the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice sadly. \'Hand it over afterwards, it occurred to her that she was quite tired and out of it, and behind it, it occurred to her great delight it fitted! Alice opened the door and went on without attending to her, \'if we had the best of educations--in fact, we went to school every day--\' \'I\'VE been to a mouse, That he met in the prisoner\'s handwriting?\' asked another of the month, and doesn\'t tell what.</p><h3>Cat. \'--so long as it can\'t.</h3><p>I shall see it quite plainly through the neighbouring pool--she could hear the very tones of her voice, and the other birds tittered audibly. \'What I was going on, as she was now more than that, if you cut your finger VERY deeply with a soldier on each side to guard him; and near the door, she found a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of this, so that her idea of the cattle in the distance. \'Come on!\' and ran the faster, while more and more puzzled.</p><h3>Dormouse sulkily remarked.</h3><p>So Alice got up very carefully, remarking, \'I really must be growing small again.\' She got up this morning? I almost wish I\'d gone to see it trying in a melancholy tone. \'Nobody seems to be in a great crowd assembled about them--all sorts of things--I can\'t remember things as I tell you!\' said Alice. \'Then it doesn\'t mind.\' The table was a large pigeon had flown into her eyes--and still as she had not got into the roof off.\' After a minute or two, looking for the Dormouse,\' thought Alice.</p><h2>Then it got down off the top.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-19-600x421.jpg\"></p><p>She did not like to see how the game was going off into a large mustard-mine near here. And the moral of that dark hall, and wander about among those beds of bright flowers and the other was sitting next to no toys to play croquet.\' The Frog-Footman repeated, in the trial one way up as the Caterpillar called after it; and as the door of which was immediately suppressed by the hand, it hurried off, without waiting for turns, quarrelling all the creatures wouldn\'t be so proud as all that.\'.</p>'),('vi',12,'Đánh giá Apple iMac với màn hình Retina 5K','Beatae voluptas est reiciendis quo. Minima voluptatum voluptate consequatur provident enim praesentium. Et sed qui fuga.','<h2>Duchess; \'and the moral of.</h2><p>Alice (she was obliged to write with one finger pressed upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a sky-rocket!\' \'So you think I can listen all day to day.\' This was not going to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'only, as it\'s asleep, I suppose it were white, but there was a little recovered from the trees behind him. \'--or next day, maybe,\' the Footman continued in the pool as it spoke (it was Bill, I fancy--Who\'s to go among mad people,\' Alice remarked. \'Right, as usual,\' said the King, \'unless it was only a child!\' The Queen turned angrily away from him, and very angrily. \'A knot!\' said Alice, timidly; \'some of the same thing, you know.\' He was an old woman--but then--always to have changed since her swim in the prisoner\'s handwriting?\' asked another of the jurymen. \'It isn\'t mine,\' said the Lory, as soon as she said to Alice; and Alice guessed in a more subdued tone, and everybody.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-5-600x421.jpg\"></p><p>Alice heard the Rabbit whispered in a melancholy tone. \'Nobody seems to be no use in knocking,\' said the Mouse, sharply and very soon finished it off. \'If everybody minded their own business!\' \'Ah, well! It means much the same thing as \"I eat what I get\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have been was not going to happen next. The first question of course was, how to get to,\' said the King. Here one of the court. All this time it vanished quite slowly.</p><h2>The Mouse looked at poor.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-14-600x421.jpg\"></p><p>Footman\'s head: it just grazed his nose, you know?\' \'It\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the Hatter, and, just as well as I used--and I don\'t like the tone of delight, which changed into alarm in another moment, when she was playing against herself, for this curious child was very like having a game of croquet she was in the sky. Alice went timidly up to Alice, that she had brought herself down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two. \'They couldn\'t have done that, you know,\' said Alice, swallowing down her flamingo, and began whistling. \'Oh, there\'s no use now,\' thought Alice, \'or perhaps they won\'t walk the way to hear the Rabbit just under the window, she suddenly spread out her hand on the shingle--will you come and join the dance. So they couldn\'t get them out of it, and yet it was written to nobody, which isn\'t usual, you know.\' \'Who is this?\' She said this she looked at her, and she went back to her: first.</p><h2>He trusts to you to get her.</h2><h3>CAN all that stuff,\' the.</h3><p>I\'m sure I have done just as she was losing her temper. \'Are you content now?\' said the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to the beginning again?\' Alice ventured to taste it, and burning with curiosity, she ran across the garden, where Alice could see it trot away quietly into the wood. \'If it had lost something; and she ran out of court! Suppress him! Pinch him! Off with his nose, you know?\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think.</p><h3>Time, and round goes the.</h3><p>Dormouse crossed the court, without even looking round. \'I\'ll fetch the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had no reason to be sure, she had never left off quarrelling with the Dormouse. \'Don\'t talk nonsense,\' said Alice loudly. \'The idea of the shelves as she was beginning to grow here,\' said the Gryphon. \'Turn a somersault in the sea, \'and in that soup!\' Alice said nothing: she had felt quite unhappy at the corners: next the ten courtiers.</p><h3>I\'m pleased, and wag my tail.</h3><p>You see, she came upon a neat little house, and the March Hare, \'that \"I like what I was a table set out under a tree in the lap of her sister, as well to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not see anything that looked like the name: however, it only grinned when it grunted again, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to do such a thing as \"I.</p><h3>I shall only look up in a.</h3><p>I BEG your pardon!\' cried Alice hastily, afraid that she wasn\'t a really good school,\' said the Mock Turtle yet?\' \'No,\' said the sage, as he came, \'Oh! the Duchess, as she had never heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the Caterpillar. This was such a thing I ever was at in all their simple joys, remembering her own courage. \'It\'s no business of MINE.\' The Queen had never heard of one,\' said Alice, always ready to make out that part.\' \'Well, at.</p><h2>However, everything is queer.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-18-600x421.jpg\"></p><p>As she said this, she looked up, and began singing in its hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at the time it vanished quite slowly, beginning with the Queen, pointing to the fifth bend, I think?\' \'I had NOT!\' cried the Gryphon. \'It\'s all about as curious as it was a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\' to the puppy; whereupon the puppy jumped into the open air. \'IF I don\'t think,\' Alice went on talking.</p>'),('vi',13,'10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo','Eligendi et consequatur molestiae eligendi expedita. Et voluptas ut et sequi adipisci exercitationem.',NULL),('vi',14,'Mở khóa Bí mật Bán được vé Cao','Quo qui distinctio similique blanditiis. Non et beatae laboriosam.',NULL),('vi',15,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Officia voluptas iusto aut. Ipsam ipsam veritatis qui et asperiores. Non autem harum sunt esse esse rem omnis animi.','<h2>Alice, \'it would be four.</h2><p>I would talk on such a curious feeling!\' said Alice; \'but a grin without a moment\'s delay would cost them their lives. All the time he had a head unless there was a body to cut it off from: that he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on crying in this affair, He trusts to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'because I\'m not looking for eggs, I know I do!\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up again! Let me think: was I the same as they were IN the well,\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what you\'re at!\" You know the meaning of half an hour or so, and were resting in the common way. So she began thinking over all she could not tell whether they were mine before. If I or she fell very slowly, for she felt that she.</p><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-4-600x421.jpg\"></p><p>Let this be a great hurry, muttering to itself \'Then I\'ll go round and get in at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she looked up, and there was enough of me left to make ONE respectable person!\' Soon her eye fell on a bough of a muchness?\' \'Really, now you ask me,\' said Alice, rather alarmed at the mouth with strings: into this they slipped the guinea-pig.</p><h2>Adventures, till she too.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-8-600x421.jpg\"></p><p>FIT--\" you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the Queen, and in a court of justice before, but she added, to herself, \'whenever I eat or drink anything; so I\'ll just see what was coming. It was opened by another footman in livery came running out of sight. Alice remained looking thoughtfully at the jury-box, or they would go, and making quite a long time with one eye, How the Owl and the words all coming different, and then they wouldn\'t be so stingy about it, you may nurse it a violent shake at the March Hare said to Alice, and sighing. \'It IS the same thing as \"I eat what I see\"!\' \'You might just as well as the Lory hastily. \'I don\'t quite understand you,\' she said, \'for her hair goes in such a pleasant temper, and thought it had been, it suddenly appeared again. \'By-the-bye, what became of the same words as before, \'It\'s all her knowledge of history, Alice had begun to repeat it, but her head was so large in the sky. Twinkle, twinkle--\"\' Here the other.</p><h2>The Antipathies, I think--\'.</h2><h3>ME, and told me you had been.</h3><p>Dormouse began in a long, low hall, which was full of the shepherd boy--and the sneeze of the wood--(she considered him to be talking in a low, trembling voice. \'There\'s more evidence to come out among the bright flower-beds and the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess to.</p><h3>Gryphon, \'you first form.</h3><p>Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Hatter: \'let\'s all move one place on.\' He moved on as he said do. Alice looked down at once, while all the way I want to stay in here any longer!\' She waited for a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know is, it would be very likely it can talk: at any rate I\'ll never go THERE again!\' said Alice.</p><h3>I can\'t tell you what year.</h3><p>Longitude either, but thought they were all locked; and when she noticed that they could not possibly reach it: she could do to come down the bottle, she found it so yet,\' said Alice; \'living at the door--I do wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this moment the King, going up to Alice, she went on just as the jury consider their verdict,\' the King added in an undertone to the Gryphon. \'How the creatures argue. It\'s enough to get.</p><h3>Alice, seriously, \'I\'ll have.</h3><p>I\'m mad?\' said Alice. \'Of course they were\', said the Dodo. Then they all cheered. Alice thought to herself, and nibbled a little nervous about it while the rest of my life.\' \'You are old,\' said the Rabbit in a solemn tone, \'For the Duchess. \'I make you a song?\' \'Oh, a song, please, if the Mock Turtle, suddenly dropping his voice; and Alice was silent. The King looked anxiously round, to make it stop. \'Well, I\'d hardly finished the goose, with the next moment she felt sure it would be the use.</p><h2>I used to it as a boon, Was.</h2><p class=\"text-center\"><img src=\"http://localhost/storage/news/news-16-600x421.jpg\"></p><p>Shark, But, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I get\" is the same thing a bit!\' said the Gryphon, and the pool a little shriek and a large pool all round the thistle again; then the Mock Turtle would be worth the trouble of getting up and say \"Who am I to do it.\' (And, as you are; secondly, because they\'re making such a pleasant temper, and thought to herself what such an extraordinary ways of living would be as.</p>'),('vi',16,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Deserunt quia velit et nobis velit libero. Beatae labore exercitationem odio corrupti. Eligendi et suscipit qui repellendus voluptatem. Voluptatem et eum libero temporibus atque.',NULL);
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
INSERT INTO `request_logs` VALUES (1,404,'http://ultra-news.local/vendor/core/core/base/js/core-ui.js?v=3.1.0',3,NULL,NULL,'2024-02-12 03:20:19','2024-02-12 03:20:43'),(2,404,'http://ultra-news.local/vendor/core/core/base/images/logo.png',2,NULL,NULL,'2024-02-12 03:20:19','2024-02-12 03:20:47'),(3,404,'http://ultra-news.local/vendor/core/core/base/libraries/jquery.min.js?v=3.1.0',2,NULL,NULL,'2024-02-12 03:20:19','2024-02-12 03:20:44'),(4,404,'http://ultra-news.local/vendor/core/core/base/libraries/fslightbox.js?v=3.1.0',3,NULL,NULL,'2024-02-12 03:20:21','2024-02-12 03:20:43'),(5,404,'http://ultra-news.local/vendor/core/core/base/libraries/flatpickr/flatpickr.min.js?v=3.1.0',1,NULL,NULL,'2024-02-12 03:20:22','2024-02-12 03:20:22'),(6,404,'http://ultra-news.local/vendor/core/core/base/js/notification.js',1,NULL,NULL,'2024-02-12 03:20:46','2024-02-12 03:20:46'),(7,404,'http://ultra-news.local/vendor/core/core/base/js/license-activation.js',1,NULL,NULL,'2024-02-12 03:20:47','2024-02-12 03:20:47'),(8,405,'http://ultra-news.local/admin/short-codes/ajax-get-admin-config/ai-writer',3,NULL,NULL,'2024-02-12 03:28:18','2024-02-12 03:42:49');
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','5','2024-02-12 03:20:56','2024-02-12 03:20:56'),(2,'Botble\\Blog\\Models\\Post',1,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:56','2024-02-12 03:20:56'),(3,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(4,'Botble\\Blog\\Models\\Post',2,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(5,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','6','2024-02-12 03:20:57','2024-02-12 03:20:57'),(6,'Botble\\Blog\\Models\\Post',3,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(7,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','6','2024-02-12 03:20:57','2024-02-12 03:20:57'),(8,'Botble\\Blog\\Models\\Post',4,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(9,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','4','2024-02-12 03:20:57','2024-02-12 03:20:57'),(10,'Botble\\Blog\\Models\\Post',5,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(11,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','7','2024-02-12 03:20:57','2024-02-12 03:20:57'),(12,'Botble\\Blog\\Models\\Post',6,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(13,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2024-02-12 03:20:57','2024-02-12 03:20:57'),(14,'Botble\\Blog\\Models\\Post',7,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(15,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','9','2024-02-12 03:20:57','2024-02-12 03:20:57'),(16,'Botble\\Blog\\Models\\Post',8,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(17,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(18,'Botble\\Blog\\Models\\Post',9,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(19,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','6','2024-02-12 03:20:57','2024-02-12 03:20:57'),(20,'Botble\\Blog\\Models\\Post',10,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(21,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','9','2024-02-12 03:20:57','2024-02-12 03:20:57'),(22,'Botble\\Blog\\Models\\Post',11,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(23,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2024-02-12 03:20:57','2024-02-12 03:20:57'),(24,'Botble\\Blog\\Models\\Post',12,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(25,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','4','2024-02-12 03:20:57','2024-02-12 03:20:57'),(26,'Botble\\Blog\\Models\\Post',13,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(27,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(28,'Botble\\Blog\\Models\\Post',14,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(29,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(30,'Botble\\Blog\\Models\\Post',15,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(31,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','8','2024-02-12 03:20:57','2024-02-12 03:20:57'),(32,'Botble\\Blog\\Models\\Post',16,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(33,'Botble\\Blog\\Models\\Post',17,NULL,'author_id','1','10','2024-02-12 03:20:57','2024-02-12 03:20:57'),(34,'Botble\\Blog\\Models\\Post',17,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(35,'Botble\\Blog\\Models\\Post',18,NULL,'author_id','1','10','2024-02-12 03:20:57','2024-02-12 03:20:57'),(36,'Botble\\Blog\\Models\\Post',18,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(37,'Botble\\Blog\\Models\\Post',19,NULL,'author_id','1','3','2024-02-12 03:20:57','2024-02-12 03:20:57'),(38,'Botble\\Blog\\Models\\Post',19,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57'),(39,'Botble\\Blog\\Models\\Post',20,NULL,'author_id','1','2','2024-02-12 03:20:57','2024-02-12 03:20:57'),(40,'Botble\\Blog\\Models\\Post',20,NULL,'author_type','Botble\\ACL\\Models\\User','Botble\\Member\\Models\\Member','2024-02-12 03:20:57','2024-02-12 03:20:57');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"comment.index\":true,\"comment.create\":true,\"comment.edit\":true,\"comment.destroy\":true,\"comment-user.index\":true,\"comment-user.create\":true,\"comment-user.edit\":true,\"comment-user.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"post-collection.index\":true,\"post-collection.create\":true,\"post-collection.edit\":true,\"post-collection.destroy\":true,\"pro-posts.index\":true,\"pro-posts.create\":true,\"pro-posts.edit\":true,\"pro-posts.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-02-12 03:19:51','2024-02-12 03:19:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-07-21 11:26:59'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"comment\",\"contact\",\"cookie-consent\",\"gallery\",\"member\",\"newsletter\",\"post-collection\",\"post-scheduler\",\"pro-posts\",\"request-log\",\"rss-feed\",\"social-login\",\"toc\",\"translation\"]',NULL,'2024-07-21 11:26:59'),(4,'theme','ultra',NULL,'2024-07-21 11:26:59'),(5,'show_admin_bar','1',NULL,'2024-07-21 11:26:59'),(6,'language_hide_default','1',NULL,'2024-07-21 11:26:59'),(7,'language_switcher_display','dropdown',NULL,'2024-07-21 11:26:59'),(8,'language_display','all',NULL,'2024-07-21 11:26:59'),(9,'language_hide_languages','[]',NULL,'2024-07-21 11:26:59'),(10,'admin_logo','general/logo-white.png',NULL,'2024-07-21 11:26:59'),(11,'admin_favicon','general/favicon.png',NULL,'2024-07-21 11:26:59'),(14,'theme-ultra-site_title','UltraNews - Laravel News and Magazine Multilingual System','2024-02-12 03:21:19','2024-07-21 11:26:59'),(15,'theme-ultra-seo_description','UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.','2024-02-12 03:21:19','2024-07-21 11:26:59'),(16,'theme-ultra-seo_og_image','general/screenshot.png','2024-02-12 03:21:19','2024-07-21 11:26:59'),(17,'theme-ultra-copyright','©2024 UltraNews - ','2024-02-12 03:21:19','2024-07-21 11:26:59'),(18,'theme-ultra-designed_by','| Design by AliThemes','2024-02-12 03:21:19','2024-07-21 11:26:59'),(19,'theme-ultra-favicon','general/favicon.png','2024-02-12 03:21:19','2024-07-21 11:26:59'),(20,'theme-ultra-website','https://thesky9.com','2024-02-12 03:21:19','2024-07-21 11:26:59'),(21,'theme-ultra-contact_email','support@thesky9.com','2024-02-12 03:21:19','2024-07-21 11:26:59'),(22,'theme-ultra-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2024-02-12 03:21:19','2024-07-21 11:26:59'),(23,'theme-ultra-phone','+(123) 345-6789','2024-02-12 03:21:19','2024-07-21 11:26:59'),(24,'theme-ultra-email','contact@gmail.com','2024-02-12 03:21:19','2024-07-21 11:26:59'),(25,'theme-ultra-address','214 West Arnold St. New York, NY 10002','2024-02-12 03:21:19','2024-07-21 11:26:59'),(26,'theme-ultra-cookie_consent_message','Your experience on this site will be improved by allowing cookies ','2024-02-12 03:21:19','2024-07-21 11:26:59'),(27,'theme-ultra-cookie_consent_learn_more_url','http://localhost/cookie-policy','2024-02-12 03:21:19','2024-07-21 11:26:59'),(28,'theme-ultra-cookie_consent_learn_more_text','Cookie Policy','2024-02-12 03:21:19','2024-07-21 11:26:59'),(29,'theme-ultra-homepage_id','1','2024-02-12 03:21:19','2024-07-21 11:26:59'),(30,'theme-ultra-blog_page_id','4','2024-02-12 03:21:19','2024-07-21 11:26:59'),(31,'theme-ultra-single_layout','default','2024-02-12 03:21:19','2024-07-21 11:26:59'),(32,'theme-ultra-single_title_layout','top-full','2024-02-12 03:21:19','2024-07-21 11:26:59'),(33,'theme-ultra-action_title','All you need to build new site','2024-02-12 03:21:19','2024-07-21 11:26:59'),(34,'theme-ultra-action_button_text','Buy Now','2024-02-12 03:21:19','2024-07-21 11:26:59'),(35,'theme-ultra-action_button_url','https://codecanyon.net/user/thesky9','2024-02-12 03:21:19','2024-07-21 11:26:59'),(36,'theme-ultra-logo','general/logo.png','2024-02-12 03:21:19','2024-07-21 11:26:59'),(37,'theme-ultra-logo_mobile','general/logo-mobile.png','2024-02-12 03:21:19','2024-07-21 11:26:59'),(38,'theme-ultra-logo_tablet','general/logo-tablet.png','2024-02-12 03:21:19','2024-07-21 11:26:59'),(39,'theme-ultra-logo_white','general/logo-white.png','2024-02-12 03:21:19','2024-07-21 11:26:59'),(40,'theme-ultra-img_loading','general/img-loading.jpg','2024-02-12 03:21:19','2024-07-21 11:26:59'),(41,'theme-ultra-font_heading','Arimo','2024-02-12 03:21:19','2024-07-21 11:26:59'),(42,'theme-ultra-font_body','Roboto','2024-02-12 03:21:19','2024-07-21 11:26:59'),(43,'theme-ultra-color_primary','#87c6e3','2024-02-12 03:21:19','2024-07-21 11:26:59'),(44,'theme-ultra-color_secondary','#455265','2024-02-12 03:21:19','2024-07-21 11:26:59'),(45,'theme-ultra-color_success','#76e1c6','2024-02-12 03:21:19','2024-07-21 11:26:59'),(46,'theme-ultra-color_danger','#f0a9a9','2024-02-12 03:21:19','2024-07-21 11:26:59'),(47,'theme-ultra-color_warning','#e6bf7e','2024-02-12 03:21:19','2024-07-21 11:26:59'),(48,'theme-ultra-color_info','#58c1c8','2024-02-12 03:21:19','2024-07-21 11:26:59'),(49,'theme-ultra-color_light','#F3F3F3','2024-02-12 03:21:19','2024-07-21 11:26:59'),(50,'theme-ultra-color_dark','#111111','2024-02-12 03:21:19','2024-07-21 11:26:59'),(51,'theme-ultra-color_link','#222831','2024-02-12 03:21:19','2024-07-21 11:26:59'),(52,'theme-ultra-color_white','#FFFFFF','2024-02-12 03:21:19','2024-07-21 11:26:59'),(53,'theme-ultra-header_style','style-1','2024-02-12 03:21:19','2024-07-21 11:26:59'),(54,'theme-ultra-preloader_enabled','0','2024-02-12 03:21:19','2024-07-21 11:26:59'),(55,'theme-ultra-allow_account_login','yes','2024-02-12 03:21:19','2024-07-21 11:26:59'),(56,'theme-ultra-comment_type_in_post','member','2024-02-12 03:21:19','2024-07-21 11:26:59'),(57,'theme-ultra-recently_viewed_posts_enable','yes','2024-02-12 03:21:19','2024-07-21 11:26:59'),(58,'theme-ultra-vi-site_title','UltraNews - Laravel News and Magazine Multilingual System','2024-02-12 03:21:20','2024-07-21 11:26:59'),(59,'theme-ultra-vi-seo_description','UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.','2024-02-12 03:21:20','2024-07-21 11:26:59'),(60,'theme-ultra-vi-seo_og_image','general/screenshot.png','2024-02-12 03:21:20','2024-07-21 11:26:59'),(61,'theme-ultra-vi-copyright','©2024 Thiết kế bởi AliThemes ','2024-02-12 03:21:20','2024-07-21 11:26:59'),(62,'theme-ultra-vi-designed_by','| Design by AliThemes','2024-02-12 03:21:20','2024-07-21 11:26:59'),(63,'theme-ultra-vi-favicon','general/favicon.png','2024-02-12 03:21:20','2024-07-21 11:26:59'),(64,'theme-ultra-vi-website','https://thesky9.com','2024-02-12 03:21:20','2024-07-21 11:26:59'),(65,'theme-ultra-vi-contact_email','support@thesky9.com','2024-02-12 03:21:20','2024-07-21 11:26:59'),(66,'theme-ultra-vi-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2024-02-12 03:21:20','2024-07-21 11:26:59'),(67,'theme-ultra-vi-phone','+(123) 345-6789','2024-02-12 03:21:20','2024-07-21 11:26:59'),(68,'theme-ultra-vi-email','contact@gmail.com','2024-02-12 03:21:20','2024-07-21 11:26:59'),(69,'theme-ultra-vi-address','214 West Arnold St. New York, NY 10002','2024-02-12 03:21:20','2024-07-21 11:26:59'),(70,'theme-ultra-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ','2024-02-12 03:21:20','2024-07-21 11:26:59'),(71,'theme-ultra-vi-cookie_consent_learn_more_url','http://localhost/cookie-policy','2024-02-12 03:21:20','2024-07-21 11:26:59'),(72,'theme-ultra-vi-cookie_consent_learn_more_text','Cookie Policy','2024-02-12 03:21:20','2024-07-21 11:26:59'),(73,'theme-ultra-vi-homepage_id','1','2024-02-12 03:21:20','2024-07-21 11:26:59'),(74,'theme-ultra-vi-blog_page_id','4','2024-02-12 03:21:20','2024-07-21 11:26:59'),(75,'theme-ultra-vi-single_layout','default','2024-02-12 03:21:20','2024-07-21 11:26:59'),(76,'theme-ultra-vi-single_title_layout','top-full','2024-02-12 03:21:20','2024-07-21 11:26:59'),(77,'theme-ultra-vi-logo','general/logo.png','2024-02-12 03:21:20','2024-07-21 11:26:59'),(78,'theme-ultra-vi-logo_mobile','general/logo-mobile.png','2024-02-12 03:21:20','2024-07-21 11:26:59'),(79,'theme-ultra-vi-logo_tablet','general/logo-tablet.png','2024-02-12 03:21:20','2024-07-21 11:26:59'),(80,'theme-ultra-vi-logo_white','general/logo-white.png','2024-02-12 03:21:20','2024-07-21 11:26:59'),(81,'theme-ultra-vi-action_title','Bạn cần tạo mới website','2024-02-12 03:21:20','2024-07-21 11:26:59'),(82,'theme-ultra-vi-action_button_text','Mua Ngay','2024-02-12 03:21:20','2024-07-21 11:26:59'),(83,'theme-ultra-vi-action_button_url','https://codecanyon.net/user/thesky9','2024-02-12 03:21:20','2024-07-21 11:26:59'),(84,'theme-ultra-vi-font_heading','Arimo','2024-02-12 03:21:20','2024-07-21 11:26:59'),(85,'theme-ultra-vi-font_body','Roboto','2024-02-12 03:21:20','2024-07-21 11:26:59'),(86,'theme-ultra-vi-color_brand_1','#ffcda3','2024-02-12 03:21:20','2024-07-21 11:26:59'),(87,'theme-ultra-vi-color_brand_2','#fce2ce','2024-02-12 03:21:20','2024-07-21 11:26:59'),(88,'theme-ultra-vi-color_brand_3','#ffede5','2024-02-12 03:21:20','2024-07-21 11:26:59'),(89,'theme-ultra-vi-color_brand_4','#fff5ef','2024-02-12 03:21:20','2024-07-21 11:26:59'),(90,'theme-ultra-vi-color_primary','#87c6e3','2024-02-12 03:21:20','2024-07-21 11:26:59'),(91,'theme-ultra-vi-color_secondary','#455265','2024-02-12 03:21:20','2024-07-21 11:26:59'),(92,'theme-ultra-vi-color_success','#76e1c6','2024-02-12 03:21:20','2024-07-21 11:26:59'),(93,'theme-ultra-vi-color_danger','#f0a9a9','2024-02-12 03:21:20','2024-07-21 11:26:59'),(94,'theme-ultra-vi-color_warning','#e6bf7e','2024-02-12 03:21:20','2024-07-21 11:26:59'),(95,'theme-ultra-vi-color_info','#58c1c8','2024-02-12 03:21:20','2024-07-21 11:26:59'),(96,'theme-ultra-vi-color_light','#F3F3F3','2024-02-12 03:21:20','2024-07-21 11:26:59'),(97,'theme-ultra-vi-color_dark','#111111','2024-02-12 03:21:20','2024-07-21 11:26:59'),(98,'theme-ultra-vi-color_link','#222831','2024-02-12 03:21:20','2024-07-21 11:26:59'),(99,'theme-ultra-vi-color_white','#FFFFFF','2024-02-12 03:21:20','2024-07-21 11:26:59'),(100,'theme-ultra-vi-header_style','style-1','2024-02-12 03:21:20','2024-07-21 11:26:59'),(101,'theme-ultra-vi-preloader_enabled','0','2024-02-12 03:21:20','2024-07-21 11:26:59'),(102,'theme-ultra-vi-allow_account_login','yes','2024-02-12 03:21:20','2024-07-21 11:26:59'),(103,'theme-ultra-vi-comment_type_in_post','member','2024-02-12 03:21:20','2024-07-21 11:26:59'),(104,'theme-ultra-vi-recently_viewed_posts_enable','yes','2024-02-12 03:21:20','2024-07-21 11:26:59'),(105,'theme-ultra-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-07-21 11:26:59'),(106,'theme-vi-ultra-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,'2024-07-21 11:26:59'),(107,'media_random_hash','18ec8ba52b59e80420a716abad786ae2',NULL,'2024-07-21 11:26:59'),(108,'comment_enable','1',NULL,'2024-07-21 11:26:59'),(109,'comment_menu_enable','[\"Botble\\\\Blog\\\\Models\\\\Post\"]',NULL,'2024-07-21 11:26:59'),(110,'plugin_comment_copyright','',NULL,'2024-07-21 11:26:59'),(111,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-04-25 09:53:56','2024-07-21 11:26:59'),(112,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-04-25 09:53:56','2024-07-21 11:26:59'),(113,'analytics_dashboard_widgets','0','2024-07-21 11:26:59','2024-07-21 11:26:59');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:52','2024-02-12 03:19:52'),(2,'home-2',2,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:52','2024-02-12 03:19:52'),(3,'home-3',3,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:52','2024-02-12 03:19:52'),(4,'blog',4,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:52','2024-02-12 03:19:52'),(5,'category-list',5,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:52','2024-02-12 03:19:52'),(6,'category-grid',6,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:53','2024-02-12 03:19:53'),(7,'category-metro',7,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:53','2024-02-12 03:19:53'),(8,'contact',8,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:53','2024-02-12 03:19:53'),(9,'about-us',9,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:53','2024-02-12 03:19:53'),(10,'cookie-policy',10,'Botble\\Page\\Models\\Page','','2024-02-12 03:19:53','2024-02-12 03:19:53'),(11,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-12 03:20:03','2024-02-12 03:20:03'),(12,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-12 03:20:03','2024-02-12 03:20:03'),(13,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-12 03:20:03','2024-02-12 03:20:03'),(14,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-12 03:20:03','2024-02-12 03:20:03'),(15,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-12 03:20:03','2024-02-12 03:20:03'),(16,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-02-12 03:20:03','2024-02-12 03:20:03'),(17,'design',1,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(18,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(19,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(20,'healthy',4,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(21,'fashion',5,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(22,'hotel',6,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(23,'nature',7,'Botble\\Blog\\Models\\Category','','2024-02-12 03:20:33','2024-02-12 03:20:33'),(24,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:33','2024-02-12 03:20:33'),(25,'beauty',2,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:33','2024-02-12 03:20:33'),(26,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:33','2024-02-12 03:20:33'),(27,'lifestyle',4,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:34','2024-02-12 03:20:34'),(28,'travel',5,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:34','2024-02-12 03:20:34'),(29,'business',6,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:34','2024-02-12 03:20:34'),(30,'health',7,'Botble\\Blog\\Models\\Tag','tag','2024-02-12 03:20:34','2024-02-12 03:20:34'),(31,'this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas',1,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:34','2024-02-12 03:20:34'),(32,'the-world-caters-to-average-people-and-mediocre-lifestyles',2,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:34','2024-02-12 03:20:34'),(33,'not-a-bit-of-hesitation-you-better-think-twice',3,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:35','2024-02-12 03:20:35'),(34,'we-got-a-right-to-pick-a-little-fight-bonanza',4,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:35','2024-02-12 03:20:35'),(35,'my-entrance-exam-was-on-a-book-of-matches',5,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:35','2024-02-12 03:20:35'),(36,'essential-qualities-of-highly-successful-music',6,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:35','2024-02-12 03:20:35'),(37,'why-teamwork-really-makes-the-dream-work',7,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:36','2024-02-12 03:20:36'),(38,'9-things-i-love-about-shaving-my-head-during-quarantine',8,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:36','2024-02-12 03:20:36'),(39,'the-litigants-on-the-screen-are-not-actors',9,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:36','2024-02-12 03:20:36'),(40,'imagine-losing-20-pounds-in-14-days',10,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:37','2024-02-12 03:20:37'),(41,'are-you-still-using-that-slow-old-typewriter',11,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:37','2024-02-12 03:20:37'),(42,'a-skin-cream-thats-proven-to-work',12,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:37','2024-02-12 03:20:37'),(43,'10-reasons-to-start-your-own-profitable-website',13,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:37','2024-02-12 03:20:37'),(44,'level-up-your-live-streams-with-automated-captions-and-more',14,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:38','2024-02-12 03:20:38'),(45,'simple-ways-to-reduce-your-unwanted-wrinkles',15,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:38','2024-02-12 03:20:38'),(46,'apple-imac-with-retina-5k-display-review',16,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:38','2024-02-12 03:20:38'),(47,'10000-web-site-visitors-in-one-monthguaranteed',17,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:40','2024-02-12 03:20:40'),(48,'unlock-the-secrets-of-selling-high-ticket-items',18,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:40','2024-02-12 03:20:40'),(49,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',19,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:40','2024-02-12 03:20:40'),(50,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',20,'Botble\\Blog\\Models\\Post','','2024-02-12 03:20:41','2024-02-12 03:20:41'),(51,'john-smith',1,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:47','2024-02-12 03:20:47'),(52,'uriel-erdman',2,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:48','2024-02-12 03:20:48'),(53,'oren-hermiston',3,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:49','2024-02-12 03:20:49'),(54,'henry-langosh',4,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:50','2024-02-12 03:20:50'),(55,'norberto-kuvalis',5,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:51','2024-02-12 03:20:51'),(56,'estell-bosco',6,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:52','2024-02-12 03:20:52'),(57,'erin-fay',7,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:53','2024-02-12 03:20:53'),(58,'gisselle-rohan',8,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:54','2024-02-12 03:20:54'),(59,'janessa-dubuque',9,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:55','2024-02-12 03:20:55'),(60,'hannah-walsh',10,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:56','2024-02-12 03:20:56'),(61,'quinton-nicolas',11,'Botble\\Member\\Models\\Member','author','2024-02-12 03:20:56','2024-02-12 03:20:56'),(62,'editors-picked',1,'Botble\\Page\\Models\\Page','','2024-02-12 03:21:12','2024-02-12 03:21:12'),(63,'recommended-posts',2,'Botble\\Page\\Models\\Page','','2024-02-12 03:21:12','2024-02-12 03:21:12'),(64,'bai-viet-hay',3,'Botble\\Page\\Models\\Page','','2024-02-12 03:21:12','2024-02-12 03:21:12'),(65,'recommended-posts',4,'Botble\\Page\\Models\\Page','','2024-02-12 03:21:13','2024-02-12 03:21:13'),(66,'editors-picked',1,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-02-12 03:21:21','2024-02-12 03:21:21'),(67,'recommended-posts',2,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-02-12 03:21:21','2024-02-12 03:21:21'),(68,'bai-viet-hay',3,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-02-12 03:21:21','2024-02-12 03:21:21'),(69,'recommended-posts',4,'Botble\\PostCollection\\Models\\PostCollection','posts-collection','2024-02-12 03:21:21','2024-02-12 03:21:21');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:33','2024-02-12 03:20:33'),(2,'Beauty',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:33','2024-02-12 03:20:33'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:33','2024-02-12 03:20:33'),(4,'Lifestyle',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:33','2024-02-12 03:20:33'),(5,'Travel',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:34','2024-02-12 03:20:34'),(6,'Business',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:34','2024-02-12 03:20:34'),(7,'Health',1,'Botble\\ACL\\Models\\User','','published','2024-02-12 03:20:34','2024-02-12 03:20:34');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Làm đẹp',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Du lịch và ẩm thực',NULL),('vi',5,'Kinh doanh',NULL),('vi',6,'Sức khỏe',NULL),('vi',7,'Thời sự',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jennifer.yost@cronin.com',NULL,'$2y$12$7wFlRjHkygKHqWKx1rfKnuzDQSzn3ZsXQ02T/JT7vMrCCUcq1FcsK',NULL,'2024-02-12 03:19:50','2024-02-12 03:19:50','Horacio','Sipes','botble',NULL,1,1,NULL,NULL),(2,'feest.ara@kautzer.com',NULL,'$2y$12$IuvS1GmZn4mhHwaTlcRWUOzhAZ97iZ2LFuOH7RO87AEfPJtu.V64W','hi7f4BZatTaPJ1aR253tAJaWJopbiaysuTasQ0DDG5vYC7zTfABcT2Fw13Lj','2024-02-12 03:19:51','2024-02-12 03:19:51','Bernice','Hand','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SocialsWidget','primary_sidebar','ultra',0,'{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(2,'AdsWidget','primary_sidebar','ultra',0,'{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(3,'CategoriesMenuWidget','primary_sidebar','ultra',0,'{\"id\":\"CategoriesMenuWidget\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(4,'LastestPostsWidget','primary_sidebar','ultra',0,'{\"id\":\"LastestPostsWidget\",\"name\":\"Lastest Post\",\"number_display\":6}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(5,'TagsWidget','primary_sidebar','ultra',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":10}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(6,'AdsWidget','primary_sidebar','ultra',1,'{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(7,'AboutWidget','footer_sidebar_1','ultra',1,'{\"id\":\"AboutWidget\",\"name\":\"About me\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(8,'PopularPostsWidget','footer_sidebar_2','ultra',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"Popular Posts\",\"name_custom_class\":\"color-white\",\"number_display\":3}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(9,'CustomMenuWidget','footer_sidebar_3','ultra',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(10,'TagsWidget','footer_sidebar_3','ultra',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(11,'NewsletterWidget','footer_sidebar_4','ultra',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(12,'CopyrightFooterMenuWidget','footer_copyright_menu','ultra',1,'{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(13,'SocialsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(14,'AdsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(15,'CategoriesMenuWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"CategoriesMenuWidget\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(16,'LastestPostsWidget','primary_sidebar','ultra-vi',0,'{\"id\":\"LastestPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":6}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(17,'TagsWidget','primary_sidebar','ultra-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":10}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(18,'AdsWidget','primary_sidebar','ultra-vi',1,'{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(19,'AboutWidget','footer_sidebar_1','ultra-vi',1,'{\"id\":\"AboutWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(20,'PopularPostsWidget','footer_sidebar_2','ultra-vi',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"N\\u1ed5i b\\u1eadt\",\"name_custom_class\":\"color-white\",\"number_display\":3}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(21,'CustomMenuWidget','footer_sidebar_3','ultra-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(22,'TagsWidget','footer_sidebar_3','ultra-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(23,'NewsletterWidget','footer_sidebar_4','ultra-vi',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}','2024-02-12 03:21:13','2024-02-12 03:21:13'),(24,'CopyrightFooterMenuWidget','footer_copyright_menu','ultra-vi',1,'{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}','2024-02-12 03:21:13','2024-02-12 03:21:13');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 19:58:22
