-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: dgnote130
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `dgnote130`
--

/*!40000 DROP DATABASE IF EXISTS `dgnote130`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dgnote130` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dgnote130`;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `genre` enum('fantasy','mystery','nonfiction') NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `title`, `genre`, `description`) VALUES (1,'The Lord of the Rings','fantasy','The Lord of the Rings is an epic fantasy novel written by philologist and University of Oxford professor J. R. R. Tolkien (from Wikipedia).'),(2,'The Maltese Falcon','mystery','The Maltese Falcon is a 1930 detective novel by Dashiell Hammett, originally serialized in the magazine Black Mask (from Wikipedia).'),(3,'Economics in One Lesson','nonfiction','dg2. Economics in One Lesson is an introduction to free market economics written by Henry Hazlitt and published in 1946, based on FrÃ©dÃ©ric Bastiat\\\'s essay Ce qu\\\'on voit et ce qu\\\'on ne voit pas (English: \\\"What is Seen and What is Not Seen\\\") (from Wikipedia).'),(4,'dg2','mystery','a book for dg.');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `dashboard_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dashboard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` (`dashboard_id`) VALUES (1);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__failed_logins`
--

DROP TABLE IF EXISTS `dataface__failed_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__failed_logins` (
  `attempt_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `time_of_attempt` int(11) NOT NULL,
  PRIMARY KEY (`attempt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__failed_logins`
--

LOCK TABLES `dataface__failed_logins` WRITE;
/*!40000 ALTER TABLE `dataface__failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__failed_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__modules`
--

DROP TABLE IF EXISTS `dataface__modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__modules` (
  `module_name` varchar(255) NOT NULL,
  `module_version` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__modules`
--

LOCK TABLES `dataface__modules` WRITE;
/*!40000 ALTER TABLE `dataface__modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__mtimes`
--

DROP TABLE IF EXISTS `dataface__mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__mtimes` (
  `name` varchar(255) NOT NULL,
  `mtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__mtimes`
--

LOCK TABLES `dataface__mtimes` WRITE;
/*!40000 ALTER TABLE `dataface__mtimes` DISABLE KEYS */;
INSERT INTO `dataface__mtimes` (`name`, `mtime`) VALUES ('books',1378408162),('dashboard',1379358425),('dataface__failed_logins',1376579426),('dataface__modules',1376579421),('dataface__mtimes',1376579421),('dataface__preferences',1378311278),('dataface__record_mtimes',1376579486),('dataface__version',1376579421),('dataface__view_05bc21d889015ac9418d98c68778e843',1376579421),('dataface__view_df7958a831669cfaa5d0690b3abaa248',1376580123),('nte_about_this_app',1376579421),('nte_about_this_app__history',1376579421),('nte_note',1378311350),('nte_note_tags',1376579421),('nte_note__history',1376579421),('nte_tags',1376579421),('nte_tags__history',1376579421),('states',1378907248),('users',1376579421),('vw_nte_note',1379432697),('vw_nte_note__history',1376579421);
/*!40000 ALTER TABLE `dataface__mtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__preferences`
--

DROP TABLE IF EXISTS `dataface__preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__preferences` (
  `pref_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `table` varchar(128) NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`pref_id`),
  KEY `username` (`username`),
  KEY `table` (`table`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__preferences`
--

LOCK TABLES `dataface__preferences` WRITE;
/*!40000 ALTER TABLE `dataface__preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataface__preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__record_mtimes`
--

DROP TABLE IF EXISTS `dataface__record_mtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__record_mtimes` (
  `recordhash` varchar(32) NOT NULL,
  `recordid` varchar(255) NOT NULL,
  `mtime` int(11) NOT NULL,
  PRIMARY KEY (`recordhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__record_mtimes`
--

LOCK TABLES `dataface__record_mtimes` WRITE;
/*!40000 ALTER TABLE `dataface__record_mtimes` DISABLE KEYS */;
INSERT INTO `dataface__record_mtimes` (`recordhash`, `recordid`, `mtime`) VALUES ('0c66cdad43b65bfbf8fb9d6653add439','vw_nte_note?note_id=2880',1379339450),('1a8ca565380db5c355dd9b91f82afc4b','vw_nte_note?note_id=2893',1379360157),('284d6f618629934e678b8925e0fc332a','vw_nte_note?note_id=',1379432570),('28c58086ca09096417ac63b84b66f7fa','vw_nte_note?note_id=2892',1378323611),('45bab344eeba6036b20ac8d3a66bf07d','vw_nte_note?note_id=2847',1378911904),('517519452a44535e1331c92d5de47720','vw_nte_note?note_id=2872',1379356588),('5f68aa79be7d761bee8d2579ae426572','vw_nte_note?note_id=2890',1378911150),('6a710cb1ccdef89c79ae126064084d14','nte_note?note_id=2892',1378311350),('741dd772f654835578251d266f6e630b','vw_nte_note?note_id=2884',1379085339),('a5756f20a075fbdf2d4270de9dda5c91','vw_nte_note?note_id=2901',1379432697),('afc6aff99f7b641dd9643a5b9a8b3fc2','vw_nte_note?note_id=2877',1379357032),('c11a07049d7b050a3a5539e81cb2688e','vw_nte_note?note_id=2878',1379010514),('f9d0f46303c2f8f0823db1d73c7956fc','vw_nte_note?note_id=2885',1379007686),('fe972f3b9006197b87169e6c03c9f600','vw_nte_note?note_id=2891',1378908828);
/*!40000 ALTER TABLE `dataface__record_mtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataface__version`
--

DROP TABLE IF EXISTS `dataface__version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataface__version` (
  `version` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataface__version`
--

LOCK TABLES `dataface__version` WRITE;
/*!40000 ALTER TABLE `dataface__version` DISABLE KEYS */;
INSERT INTO `dataface__version` (`version`) VALUES (0);
/*!40000 ALTER TABLE `dataface__version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `dataface__view_05bc21d889015ac9418d98c68778e843`
--

DROP TABLE IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`;
/*!50001 DROP VIEW IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `dataface__view_05bc21d889015ac9418d98c68778e843` (
  `note_id` int(11),
  `note_fld` text,
  `tags_fld` varchar(244),
  `state_fld` varchar(99),
  `createdtime` timestamp,
  `updatedtime` datetime,
  `datenote` datetime,
  `active` enum('Yes','No'),
  `note2` text,
  `nid` int(11),
  `tid` int(11),
  `tags_id` int(11),
  `tags_list` varchar(234),
  `tagslisted` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `dataface__view_df7958a831669cfaa5d0690b3abaa248`
--

DROP TABLE IF EXISTS `dataface__view_df7958a831669cfaa5d0690b3abaa248`;
/*!50001 DROP VIEW IF EXISTS `dataface__view_df7958a831669cfaa5d0690b3abaa248`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `dataface__view_df7958a831669cfaa5d0690b3abaa248` (
  `note_id` int(11),
  `note_fld` text,
  `tags_fld` varchar(244),
  `state_fld` varchar(99),
  `createdtime` timestamp,
  `updatedtime` datetime,
  `datenote` datetime,
  `active` enum('Yes','No'),
  `note2` text,
  `nid` int(11),
  `tid` int(11),
  `tags_id` int(11),
  `tags_list` varchar(234),
  `tagslisted` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nte_about_this_app`
--

DROP TABLE IF EXISTS `nte_about_this_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_about_this_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_fld` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_about_this_app`
--

LOCK TABLES `nte_about_this_app` WRITE;
/*!40000 ALTER TABLE `nte_about_this_app` DISABLE KEYS */;
INSERT INTO `nte_about_this_app` (`id`, `about_fld`, `createdtime`, `updatedtime`) VALUES (1,'this the notes database for g..','2012-06-03 04:54:35','2012-06-07 13:04:48'),(2,'history enabled now.\r\n2012-06-06_Jun_Wed-10.17-AM ','2012-06-06 18:17:23',NULL),(3,'a','2013-04-11 17:21:59','2013-04-11 13:21:59'),(4,'test 2','2013-04-29 20:10:13','2013-04-30 11:17:52');
/*!40000 ALTER TABLE `nte_about_this_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_about_this_app__history`
--

DROP TABLE IF EXISTS `nte_about_this_app__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_about_this_app__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `about_fld` text,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_about_this_app__history`
--

LOCK TABLES `nte_about_this_app__history` WRITE;
/*!40000 ALTER TABLE `nte_about_this_app__history` DISABLE KEYS */;
INSERT INTO `nte_about_this_app__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `id`, `about_fld`, `createdtime`, `updatedtime`) VALUES (1,'en','','user',0,'2013-04-29 16:10:13',4,'test','2013-04-29 20:10:13','2013-04-29 16:10:13'),(2,'en','','user',0,'2013-04-30 11:17:52',4,'test 2','2013-04-29 20:10:13','2013-04-30 11:17:52');
/*!40000 ALTER TABLE `nte_about_this_app__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_note`
--

DROP TABLE IF EXISTS `nte_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT 'Yes',
  `note2` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2902 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_note`
--

LOCK TABLES `nte_note` WRITE;
/*!40000 ALTER TABLE `nte_note` DISABLE KEYS */;
INSERT INTO `nte_note` (`note_id`, `note_fld`, `tags_fld`, `state_fld`, `createdtime`, `updatedtime`, `datenote`, `active`, `note2`) VALUES (2836,'<p>a</p>',NULL,NULL,'2012-07-16 16:38:16','2012-07-16 12:38:16',NULL,NULL,'<p>a</p>'),(2837,'<p>b</p>',NULL,NULL,'2012-07-16 16:38:59','2012-07-16 12:38:59',NULL,NULL,'<p>b</p>'),(2838,'a',NULL,NULL,'2012-07-16 17:01:01','2013-04-15 11:55:51',NULL,NULL,'a'),(2839,'<p>e</p>',NULL,NULL,'2012-07-16 17:04:29','2012-07-16 13:09:20',NULL,NULL,'<p>e</p>'),(2840,'2013-04-08_Mon_11.49-AM',NULL,NULL,'2013-04-08 15:49:08','2013-04-15 11:49:15',NULL,NULL,'2013-04-08_Mon_11.49-AM'),(2841,NULL,NULL,NULL,'2013-04-08 15:50:09','2013-04-08 11:50:09',NULL,NULL,NULL),(2842,'11:56AM',NULL,NULL,'2013-04-08 15:56:29','2013-04-15 11:53:44',NULL,'No','11:56AM'),(2843,'2013-04-08_Mon_12.01-PM',NULL,NULL,'2013-04-08 16:01:39','2013-04-15 11:49:37',NULL,NULL,'2013-04-08_Mon_12.01-PM'),(2844,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>',NULL,NULL,'2013-04-08 16:04:21','2013-04-08 12:05:29',NULL,NULL,'<p>tagger1.</p>\r\n<p>2013-04-08_Mon_12.04-PM</p>'),(2845,'2845\r\n',NULL,NULL,'2013-04-08 19:13:48','2013-04-24 15:43:18',NULL,'No','2845\r\n'),(2846,NULL,NULL,NULL,'2013-04-08 19:53:15','2013-04-08 15:53:15',NULL,NULL,NULL),(2847,' 2013-04-09_Tue_08.26-AM ',NULL,'Tennessee','2013-04-09 12:26:16','2013-09-11 11:05:04',NULL,'Yes','2013-04-09_Tue_08.26-AM'),(2848,NULL,NULL,NULL,'2013-04-09 12:31:02','2013-04-09 08:32:07','2013-04-09 11:31:23','Yes',NULL),(2849,NULL,NULL,NULL,'2013-04-09 12:47:16','2013-04-10 09:19:50','2013-04-09 08:47:23','Yes',NULL),(2850,'q',NULL,NULL,'2013-04-15 18:16:23','2013-04-15 14:16:56','2013-04-10 14:16:23',NULL,'q'),(2851,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n',NULL,NULL,'2013-04-18 15:12:59','2013-04-18 11:49:54',NULL,NULL,'Either spotting a gap in the market or just out of loyalty to its best buddy Microsoft, Dell has released its own Windows RT slate. Aimed at business users, the 10.1-inch Dell XPS 10 is another transformer-style laptop-tablet hybrid, shipping with an attachable keyboard that turns it into a laptop for working on the move.\r\nThe Dell XPS 10 falls into a crowded market, with a host of devices aiming to please similar needs. The Asus VivoTab, Samsung Ativ Tab and of course the Microsoft Surface RT are all offering the same USP, and there are other hybrids such as the Lenovo IdeaPad Yoga 11 too.\r\nWhile there\'s no shortage of big players in the market, Dell\'s late arrival doesn\'t mean it\'s too far behind; no RT device has gained any traction to date.\r\n\r\nBuying Guide\r\n\r\n10 best tablet PCs in the world today\r\nThe XPS 10 fits perfectly into Dell\'s line up of high end machines, joining its XPS 12, XPS 13 and XPS 15 siblings. It looks like an XPS, with a soft black finish and a rubberised texture, and the same rounded chiclet keys adorning the base station.\r\nThe XPS range is certainly high quality, and each component of the 10-inch RT tablet follows this design ethos to a tee.\r\nCompared to some notable offenders, Dell has managed to keep the price down to a reasonable level. The base level 32GB device without the keyboard costs £299/US$449.99, the 32GB version with the keyboard dock costs £409/US$599.99, the 64GB without a keyboard costs £339/US$499.99, while the 64GB version with the dock is £444/US$649.99.\r\n'),(2852,'test mail send',NULL,NULL,'2013-04-19 18:09:18','2013-04-19 14:09:18','2013-04-19 14:09:23',NULL,'test mail send'),(2853,'test tags',NULL,NULL,'2013-04-19 18:09:53','2013-04-19 14:09:53',NULL,NULL,'test tags'),(2854,'04:00PM',NULL,NULL,'2013-04-19 20:00:52','2013-04-19 16:00:52',NULL,NULL,'04:00PM'),(2855,'04:27PM',NULL,NULL,'2013-04-19 20:27:08','2013-04-19 16:27:08',NULL,NULL,'04:27PM'),(2856,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx',NULL,NULL,'2013-04-19 20:30:11','2013-04-19 16:30:11',NULL,NULL,'2013-04-19_Fri_16.29-PM\r\ntest note.\r\n.\r\nx'),(2857,'2013-04-22_Mon_10.30-AM test csd email',NULL,NULL,'2013-04-22 14:30:55','2013-04-22 10:30:55','2013-04-22 10:30:23','Yes','2013-04-22_Mon_10.30-AM test csd email'),(2858,'a',NULL,NULL,'2013-04-22 14:33:43','2013-04-22 10:33:43','2013-04-22 10:33:23','No','a'),(2859,'test double email',NULL,NULL,'2013-04-22 14:40:15','2013-04-22 10:40:15','2013-04-22 10:40:23','Yes','test double email'),(2860,'cleaned up',NULL,NULL,'2013-04-22 15:03:50','2013-04-22 11:03:50','2013-04-22 11:03:23','Yes','cleaned up'),(2861,'Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases',NULL,NULL,'2013-04-22 15:07:43','2013-04-22 11:07:43','2013-04-22 11:07:23','Yes','Get Involved\r\n\r\nIf you want to help contribute to Ubuntu then you\'ve come to the right place. Keep reading to learn how.\r\n\r\nYou have just taken your first step toward getting involved. Before you get started, we ask that you please observe the Ubuntu Code of Conduct, it\'s not very long and it will help you get started.\r\n\r\nNow that\'s done. To find out the best way to get started, you should check out our community page.\r\n\r\nTeams\r\n\r\nThe Teams page contains a listing of all the various Community Teams, links to their Wiki Home Pages and\r\n\r\nMost Teams\' Wiki Home Pages provide information about who they are, what they do, when their meetings are and how to contact them. Using these pages, teammates are able communicate and coordinate projects.\r\n\r\nGovernance and Membership\r\n\r\nLike most communities, we have our rules and governing body.\r\n\r\nAnyone can join and participate in most, if not all, of our Teams and Projects. But if you want an \"@ubuntu.com\" e-mail address, it has to be earned. Find out how in our Membership section.\r\n\r\nCommunity Links\r\n\r\nAs an active member of our community, you probably should check out what else is going on in the world of Ubuntu:\r\n\r\nThe Fridge posts all the latest News and Upcoming Events.\r\nPlanet Ubuntu is a collection of community blogs.\r\nAlso you can help at Ubuntu Brainstorm by submitting your ideas to make Ubuntu better OS for everyone.\r\n\r\nIf you are interested to get to know other Ubuntu users or see a list of Ubuntu teams outside the general Ubuntu world, check out our social network page.\r\n\r\nReleases'),(2862,'b',NULL,NULL,'2013-04-22 15:11:08','2013-04-22 11:11:08','2013-04-22 11:11:23','Yes','b'),(2863,'Weiss\r\n',NULL,NULL,'2013-04-22 15:28:44','2013-04-22 11:28:44','2013-04-22 11:28:23','Yes','Weiss\r\n'),(2864,'email on?',NULL,NULL,'2013-04-24 16:04:36','2013-04-24 12:04:36','2013-04-24 12:04:23','Yes','email on?'),(2865,'2013-04-24_Wed_14.22-PM test with filter. 03:48PM',NULL,NULL,'2013-04-24 18:22:42','2013-04-24 15:48:41','2013-04-24 14:22:23','Yes','2013-04-24_Wed_14.22-PM test with filter. 03:48PM'),(2866,'moved default filter to index.php',NULL,NULL,'2013-04-24 19:34:19','2013-04-24 15:34:19','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2867,'moved default filter to index.php',NULL,NULL,'2013-04-24 19:35:00','2013-04-24 15:35:00','2013-04-24 15:34:23',NULL,'moved default filter to index.php'),(2868,'a',NULL,NULL,'2013-04-24 19:35:31','2013-04-24 15:35:31','2013-04-24 15:35:23','Yes','a'),(2869,'a',NULL,NULL,'2013-04-24 19:35:34','2013-04-24 15:35:34','2013-04-24 15:35:23','Yes','a'),(2870,'test index.php filter',NULL,NULL,'2013-04-24 19:37:08','2013-04-24 15:37:08','2013-04-24 15:37:23','No','test index.php filter'),(2871,'a',NULL,NULL,'2013-04-24 19:41:51','2013-04-24 15:41:51','2013-04-24 15:41:23','Yes','a'),(2872,'   2013-04-25_Thu_09.58-AM   ',NULL,NULL,'2013-04-25 13:59:01','2013-09-16 14:36:28','2013-09-16 13:44:23','','2013-04-25_Thu_09.58-AM'),(2873,'2013-04-25_Thu_10.29-AM default sort in sql in fields.ini',NULL,NULL,'2013-04-25 14:29:35','2013-04-25 10:29:35','2013-04-25 10:29:23','Yes','2013-04-25_Thu_10.29-AM default sort in sql in fields.ini'),(2874,'2013-04-25_Thu_10.36-AM test view add',NULL,NULL,'2013-04-25 14:36:50','2013-04-25 10:36:50','2013-04-25 10:36:23','Yes','2013-04-25_Thu_10.36-AM test view add'),(2875,'2013-04-25_Thu_10.41-AM test view add',NULL,NULL,'2013-04-25 14:41:22','2013-04-25 10:41:22','2013-04-25 10:41:23',NULL,'2013-04-25_Thu_10.41-AM test view add'),(2876,'2013-04-25_Thu_10.49-AM',NULL,NULL,'2013-04-25 14:49:23','2013-04-25 10:49:23','2013-04-25 10:49:23','Yes','2013-04-25_Thu_10.49-AM'),(2877,'    2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n  ','Quite','New Jersey','2013-04-25 14:53:35','2013-09-16 14:43:52','2013-09-16 14:43:23','Yes','2013-04-25_Thu_10.53-AM'),(2878,'     2013-04-25_Thu_10.54-AM     ',NULL,NULL,'2013-04-25 14:54:14','2013-09-12 14:28:34','2013-09-12 14:25:22','Yes','2013-04-25_Thu_10.54-AM'),(2879,'test email from filtered table',NULL,NULL,'2013-04-29 13:12:21','2013-04-29 09:12:21','2013-04-29 09:12:23','Yes','test email from filtered table'),(2880,'  test two email  b',NULL,'Nevada','2013-04-29 18:31:54','2013-09-16 09:50:50',NULL,'','test two email'),(2881,'test bcc cc. 2013-04-30_Tue_11.18-AM',NULL,NULL,'2013-04-29 18:36:27','2013-04-30 11:18:48','2013-04-29 14:36:23','Yes','test bcc cc. 2013-04-30_Tue_11.18-AM'),(2882,'2013-05-02_Thu_13.22-PM test offline',NULL,NULL,'2013-05-02 17:24:06','2013-05-02 13:24:06','2013-05-02 13:22:23','Yes','2013-05-02_Thu_13.22-PM test offline'),(2883,'moved xampp from c p2 websw to c p2',NULL,NULL,'2013-05-02 19:37:30','2013-05-02 15:37:30',NULL,'Yes','moved xampp from c p2 websw to c p2'),(2884,'    testing mysql copy with xcopy    ',NULL,'Vermont','2013-05-03 13:27:11','2013-09-13 11:15:39',NULL,'Yes','testing mysql copy with xcopy'),(2885,' going  home ',NULL,'District of Columbia','2013-05-06 20:36:19','2013-09-12 13:41:26',NULL,'No','going  home'),(2886,'test',NULL,NULL,'2013-05-22 17:44:36','2013-08-01 12:14:00','0000-05-13 00:00:00','Yes','test'),(2887,'a',NULL,NULL,'2013-06-21 13:20:17','2013-06-21 09:20:17',NULL,'Yes','a'),(2888,NULL,NULL,NULL,'2013-08-01 16:02:11','2013-08-01 12:12:37','0000-05-23 00:00:00','Yes',NULL),(2889,'test',NULL,NULL,'2013-08-07 16:01:49','2013-08-07 12:01:49',NULL,NULL,'test'),(2890,' test default active = yes ','artsy','Florida','2013-08-07 16:08:48','2013-09-11 10:52:30','2013-09-11 10:52:23','Yes','test default active = yes'),(2891,' a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM ',NULL,'Maine','2013-08-07 16:51:17','2013-09-11 10:13:47',NULL,'Yes','2013-08-07_Wed_12.51-PM'),(2892,'5,  12:15PM',NULL,NULL,'2013-09-04 16:15:50','2013-09-04 15:40:11',NULL,'Yes',NULL),(2893,' dash\r\n2013-09-16_Mon_15.35-PM ',NULL,'Hawaii','2013-09-16 19:35:17','2013-09-16 15:35:57','2013-09-16 15:35:23','Yes',NULL),(2894,'d','d','Mississippi','2013-09-17 13:57:38','2013-09-17 09:57:38','2013-09-17 09:57:23','',NULL),(2895,NULL,NULL,NULL,'2013-09-17 14:42:10','2013-09-17 10:42:10','2013-09-17 10:42:23','',NULL),(2896,NULL,NULL,NULL,'2013-09-17 14:42:22','2013-09-17 10:42:22','2013-09-17 10:42:23','',NULL),(2897,NULL,NULL,NULL,'2013-09-17 14:46:13','2013-09-17 10:46:13','2013-09-17 10:44:23',NULL,NULL),(2898,NULL,NULL,NULL,'2013-09-17 14:58:11','2013-09-17 10:58:11','2013-09-17 10:58:23',NULL,NULL),(2899,NULL,NULL,NULL,'2013-09-17 15:06:45','2013-09-17 11:06:45','2013-09-17 11:06:23',NULL,NULL),(2900,'a','b','Vermont','2013-09-17 15:20:44','2013-09-17 11:20:44','2013-09-17 11:20:23','Yes',NULL),(2901,'  Wish','sell','Rhode Island','2013-09-17 15:42:50','2013-09-17 11:44:57','2013-09-17 11:42:23','Yes',NULL);
/*!40000 ALTER TABLE `nte_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_note__history`
--

DROP TABLE IF EXISTS `nte_note__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `updatedtime` datetime DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT NULL,
  `note2` text,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`note_id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_note__history`
--

LOCK TABLES `nte_note__history` WRITE;
/*!40000 ALTER TABLE `nte_note__history` DISABLE KEYS */;
INSERT INTO `nte_note__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `note_fld`, `tags_fld`, `updatedtime`, `note_id`, `createdtime`, `datenote`, `active`, `note2`) VALUES (1,'en','','user',0,'2013-04-24 15:34:19','moved default filter to index.php',NULL,'2013-04-24 15:34:19',2866,'2013-04-24 19:34:19','2013-04-24 15:34:23',NULL,NULL),(2,'en','','user',0,'2013-04-24 15:35:00','moved default filter to index.php',NULL,'2013-04-24 15:35:00',2867,'2013-04-24 19:35:00','2013-04-24 15:34:23',NULL,NULL),(3,'en','','user',0,'2013-04-24 15:35:31','a',NULL,'2013-04-24 15:35:31',2868,'2013-04-24 19:35:31','2013-04-24 15:35:23','Yes',NULL),(4,'en','','user',0,'2013-04-24 15:35:34','a',NULL,'2013-04-24 15:35:34',2869,'2013-04-24 19:35:34','2013-04-24 15:35:23','Yes',NULL),(5,'en','','user',0,'2013-04-24 15:37:08','test index.php filter',NULL,'2013-04-24 15:37:08',2870,'2013-04-24 19:37:08','2013-04-24 15:37:23','No',NULL),(6,'en','','user',0,'2013-04-24 15:41:51','a',NULL,'2013-04-24 15:41:51',2871,'2013-04-24 19:41:51','2013-04-24 15:41:23','Yes',NULL),(7,'en','','user',0,'2013-04-24 15:43:18','2845\r\n',NULL,'2013-04-24 15:43:18',2845,'2013-04-08 19:13:48',NULL,'No',NULL),(8,'en','','qadave',0,'2013-04-24 15:48:41','2013-04-24_Wed_14.22-PM test with filter. 03:48PM',NULL,'2013-04-24 15:48:41',2865,'2013-04-24 18:22:42','2013-04-24 14:22:23','Yes',NULL),(9,'en','','user',0,'2013-04-25 09:59:01','2013-04-25_Thu_09.58-AM',NULL,'2013-04-25 09:59:01',2872,'2013-04-25 13:59:01','2013-04-25 09:58:23','Yes',NULL),(10,'en','','user',0,'2013-04-25 10:29:35','2013-04-25_Thu_10.29-AM default sort in sql in fields.ini',NULL,'2013-04-25 10:29:35',2873,'2013-04-25 14:29:35','2013-04-25 10:29:23','Yes',NULL),(11,'en','','user',0,'2013-04-25 10:49:23','2013-04-25_Thu_10.49-AM',NULL,'2013-04-25 10:49:23',2876,'2013-04-25 14:49:23','2013-04-25 10:49:23','Yes',NULL),(12,'en','','user',0,'2013-04-25 10:53:35','2013-04-25_Thu_10.53-AM',NULL,'2013-04-25 10:53:35',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(13,'en','','user',0,'2013-04-25 10:54:14','2013-04-25_Thu_10.54-AM',NULL,'2013-04-25 10:54:14',2878,'2013-04-25 14:54:14','2013-04-25 10:54:23','Yes',NULL),(14,'en','','user',0,'2013-04-25 11:09:58','2013-04-25_Thu_10.54-AM',NULL,'2013-04-25 11:09:58',2878,'2013-04-25 14:54:14','2013-04-25 10:54:23','Yes',NULL),(15,'en','','user',0,'2013-04-29 09:08:27','2013-04-25_Thu_10.54-AM',NULL,'2013-04-29 09:08:27',2878,'2013-04-25 14:54:14','2013-04-29 09:08:23','Yes',NULL),(16,'en','','user',0,'2013-04-29 09:08:34','2013-04-25_Thu_10.54-AM',NULL,'2013-04-29 09:08:34',2878,'2013-04-25 14:54:14','2013-04-29 09:08:23','Yes',NULL),(17,'en','','user',0,'2013-04-29 09:12:21','test email from filtered table',NULL,'2013-04-29 09:12:21',2879,'2013-04-29 13:12:21','2013-04-29 09:12:23','Yes',NULL),(18,'en','','user',0,'2013-04-29 14:31:54','test two email',NULL,'2013-04-29 14:31:54',2880,'2013-04-29 18:31:54','2013-04-29 14:31:23','Yes',NULL),(19,'en','','user',0,'2013-04-29 14:36:27','test bcc cc',NULL,'2013-04-29 14:36:27',2881,'2013-04-29 18:36:27','2013-04-29 14:36:23','Yes',NULL),(20,'en','','user',0,'2013-04-30 11:18:48','test bcc cc. 2013-04-30_Tue_11.18-AM',NULL,'2013-04-30 11:18:48',2881,'2013-04-29 18:36:27','2013-04-29 14:36:23','Yes',NULL),(21,'en','','user',0,'2013-05-02 13:24:06','2013-05-02_Thu_13.22-PM test offline',NULL,'2013-05-02 13:24:06',2882,'2013-05-02 17:24:06','2013-05-02 13:22:23','Yes',NULL),(22,'en','','user',0,'2013-05-02 15:37:30','moved xampp from c p2 websw to c p2',NULL,'2013-05-02 15:37:30',2883,'2013-05-02 19:37:30',NULL,'Yes',NULL),(23,'en','','user',0,'2013-05-03 09:27:11','testing mysql copy with xcopy',NULL,'2013-05-03 09:27:11',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(24,'en','','user',0,'2013-05-03 09:33:36','testing mysql copy with xcopy',NULL,'2013-05-03 09:33:36',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(25,'en','','user',0,'2013-05-03 10:01:05','testing mysql copy with xcopy',NULL,'2013-05-03 10:01:05',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(26,'en','','user',0,'2013-05-03 10:11:44','testing mysql copy with xcopy',NULL,'2013-05-03 10:11:44',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(27,'en','','user',0,'2013-05-03 10:19:21','testing mysql copy with xcopy',NULL,'2013-05-03 10:19:21',2884,'2013-05-03 13:27:11','2013-05-03 09:27:23','Yes',NULL),(28,'en','','user',0,'2013-05-03 10:30:26','test two email',NULL,'2013-05-03 10:30:26',2880,'2013-04-29 18:31:54','2013-04-29 14:31:23','Yes',NULL),(29,'en','','user',0,'2013-05-03 10:30:37','test two email',NULL,'2013-05-03 10:30:37',2880,'2013-04-29 18:31:54','2013-04-29 14:31:23','Yes',NULL),(30,'en','','user',0,'2013-05-03 10:30:55','2013-04-25_Thu_10.53-AM',NULL,'2013-05-03 10:30:55',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(31,'en','','user',0,'2013-05-03 10:31:09','2013-04-25_Thu_10.53-AM',NULL,'2013-05-03 10:31:09',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(32,'en','','user',0,'2013-05-03 10:32:24','2013-04-09_Tue_08.26-AM',NULL,'2013-05-03 10:32:24',2847,'2013-04-09 12:26:16',NULL,'Yes',NULL),(33,'en','','user',0,'2013-05-03 10:37:36','2013-04-09_Tue_08.26-AM',NULL,'2013-05-03 10:37:36',2847,'2013-04-09 12:26:16',NULL,'No',NULL),(34,'en','','user',0,'2013-05-03 10:38:37','2013-04-09_Tue_08.26-AM',NULL,'2013-05-03 10:38:37',2847,'2013-04-09 12:26:16',NULL,'No',NULL),(35,'en','','user',0,'2013-05-06 16:09:34','2013-04-25_Thu_10.53-AM',NULL,'2013-05-06 16:09:34',2877,'2013-04-25 14:53:35','2013-04-25 10:53:23','Yes',NULL),(36,'en','','user',0,'2013-05-06 16:36:19','going  home',NULL,'2013-05-06 16:36:19',2885,'2013-05-06 20:36:19','2013-05-06 16:36:23','Yes',NULL),(37,'en','','user',0,'2013-05-17 14:24:58','going  home',NULL,'2013-05-17 14:24:58',2885,'2013-05-06 20:36:19','2013-05-06 16:36:23','Yes',NULL),(38,'en','','user',0,'2013-05-22 13:35:04','going  home',NULL,'2013-05-22 13:35:04',2885,'2013-05-06 20:36:19','2013-05-06 16:36:23','Yes',NULL),(39,'en','','user',0,'2013-05-22 13:38:40','going  home',NULL,'2013-05-22 13:38:40',2885,'2013-05-06 20:36:19','2013-05-22 13:38:23','Yes',NULL),(40,'en','','user',0,'2013-05-22 13:44:36','test',NULL,'2013-05-22 13:44:36',2886,'2013-05-22 17:44:36','2013-05-22 13:44:23','Yes',NULL),(41,'en','','user',0,'2013-06-21 09:20:17','a',NULL,'2013-06-21 09:20:17',2887,'2013-06-21 13:20:17',NULL,'Yes',NULL),(42,'en','','user',0,'2013-07-11 10:05:02','test',NULL,'2013-07-11 10:05:01',2886,'2013-05-22 17:44:36','2013-05-22 13:44:23','Yes',NULL),(43,'en','','user',0,'2013-08-01 12:02:11',NULL,NULL,'2013-08-01 12:02:11',2888,'2013-08-01 16:02:11','0000-03-01 00:00:00','Yes',NULL),(44,'en','','user',0,'2013-08-01 12:03:01',NULL,NULL,'2013-08-01 12:03:01',2888,'2013-08-01 16:02:11','2002-03-03 00:00:22','Yes',NULL),(45,'en','','user',0,'2013-08-01 12:03:18',NULL,NULL,'2013-08-01 12:03:18',2888,'2013-08-01 16:02:11','2013-03-02 00:00:23','Yes',NULL),(46,'en','','user',0,'2013-08-01 12:03:29',NULL,NULL,'2013-08-01 12:03:29',2888,'2013-08-01 16:02:11','2013-08-01 00:00:23','Yes',NULL),(47,'en','','user',0,'2013-08-01 12:03:43',NULL,NULL,'2013-08-01 12:03:43',2888,'2013-08-01 16:02:11','2013-02-04 00:00:23','Yes',NULL),(48,'en','','user',0,'2013-08-01 12:12:37',NULL,NULL,'2013-08-01 12:12:37',2888,'2013-08-01 16:02:11','0000-05-23 00:00:00','Yes',NULL),(49,'en','','user',0,'2013-08-01 12:13:13','test',NULL,'2013-08-01 12:13:13',2886,'2013-05-22 17:44:36','0000-05-13 00:00:00','Yes',NULL),(50,'en','','user',0,'2013-08-01 12:14:00','test',NULL,'2013-08-01 12:14:00',2886,'2013-05-22 17:44:36','0000-05-13 00:00:00','Yes',NULL),(51,'en','','user',0,'2013-08-01 12:32:06','2013-04-25_Thu_10.53-AM',NULL,'2013-08-01 12:32:06',2877,'2013-04-25 14:53:35','0000-05-14 00:00:00','Yes',NULL),(52,'en','','user',0,'2013-08-01 12:35:49','going  home',NULL,'2013-08-01 12:35:49',2885,'2013-05-06 20:36:19','0000-05-27 00:00:00','Yes',NULL),(53,'en','','user',0,'2013-08-01 12:36:14','going  home',NULL,'2013-08-01 12:36:14',2885,'2013-05-06 20:36:19','2013-05-25 00:00:23','Yes',NULL),(54,'en','','user',0,'2013-08-07 12:01:49','test',NULL,'2013-08-07 12:01:49',2889,'2013-08-07 16:01:49',NULL,NULL,NULL),(55,'en','','user',0,'2013-08-07 12:08:48','test default active = yes',NULL,'2013-08-07 12:08:48',2890,'2013-08-07 16:08:48',NULL,'Yes',NULL),(56,'en','','user',0,'2013-08-07 12:51:17','2013-08-07_Wed_12.51-PM',NULL,'2013-08-07 12:51:17',2891,'2013-08-07 16:51:17',NULL,'Yes',NULL),(57,'en','','user',0,'2013-08-15 11:11:26','2013-08-07_Wed_12.51-PM\r\n2013-08-15_Thu_11.11-AM',NULL,'2013-08-15 11:11:26',2891,'2013-08-07 16:51:17',NULL,'Yes','2013-08-07_Wed_12.51-PM'),(58,'en','','user',0,'2013-09-04 12:15:50','12:15PM',NULL,'2013-09-04 12:15:50',2892,'2013-09-04 16:15:50',NULL,'Yes',NULL);
/*!40000 ALTER TABLE `nte_note__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_note_tags`
--

DROP TABLE IF EXISTS `nte_note_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_note_tags` (
  `nid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`nid`,`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_note_tags`
--

LOCK TABLES `nte_note_tags` WRITE;
/*!40000 ALTER TABLE `nte_note_tags` DISABLE KEYS */;
INSERT INTO `nte_note_tags` (`nid`, `tid`) VALUES (2840,2),(2841,2),(2842,1),(2842,2),(2842,3),(2842,4),(2843,2),(2843,3),(2843,6),(2844,1),(2844,3),(2845,9),(2846,1),(2846,3),(2847,9),(2849,1),(2849,3),(2850,4),(2850,9),(2853,3),(2853,9),(2857,3),(2858,7),(2858,9),(2858,11),(2859,3),(2859,6),(2860,3),(2860,6),(2860,9),(2861,6),(2862,3),(2863,5),(2864,9),(2865,9),(2866,1),(2866,9),(2867,1),(2867,9),(2868,6),(2869,6),(2870,9),(2871,3),(2872,6),(2873,9),(2876,6),(2876,9),(2877,6),(2877,13),(2878,3),(2878,5),(2878,6),(2878,7),(2879,9),(2880,9),(2881,1),(2882,9),(2884,1),(2884,3),(2884,4),(2884,9),(2885,3),(2885,12),(2885,14),(2886,1),(2886,14);
/*!40000 ALTER TABLE `nte_note_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_tags`
--

DROP TABLE IF EXISTS `nte_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_tags` (
  `tags_id` int(11) NOT NULL AUTO_INCREMENT,
  `tags_list` varchar(234) NOT NULL,
  PRIMARY KEY (`tags_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_tags`
--

LOCK TABLES `nte_tags` WRITE;
/*!40000 ALTER TABLE `nte_tags` DISABLE KEYS */;
INSERT INTO `nte_tags` (`tags_id`, `tags_list`) VALUES (1,'computer problem'),(2,'gustin'),(3,'home'),(4,'log'),(5,'money'),(6,'testnote'),(7,'word'),(8,'work'),(9,'xataface'),(10,'co'),(11,'new'),(12,'newtag'),(13,'mysql'),(14,'pmdsdata'),(15,'tim');
/*!40000 ALTER TABLE `nte_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nte_tags__history`
--

DROP TABLE IF EXISTS `nte_tags__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nte_tags__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL,
  `tags_list` varchar(234) DEFAULT NULL,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`tags_id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nte_tags__history`
--

LOCK TABLES `nte_tags__history` WRITE;
/*!40000 ALTER TABLE `nte_tags__history` DISABLE KEYS */;
INSERT INTO `nte_tags__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `tags_id`, `tags_list`) VALUES (1,'en','','user',0,'2013-05-03 10:10:44',12,'newtag'),(2,'en','','user',0,'2013-05-06 16:09:31',13,'mysql'),(3,'en','','user',0,'2013-05-22 13:35:03',14,'pmdsdata'),(4,'en','','user',0,'2013-07-12 08:39:37',15,'tim');
/*!40000 ALTER TABLE `nte_tags__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID',
  `state` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `abbrev` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`id`, `state`, `abbrev`) VALUES (1,'Alabama','AL'),(2,'Alaska','AK'),(3,'Arizona','AZ'),(4,'Arkansas','AR'),(5,'California','CA'),(6,'Colorado','CO'),(7,'Connecticut','CT'),(8,'Delaware','DE'),(9,'District of Columbia','DC'),(10,'Florida','FL'),(11,'Georgia','GA'),(12,'Hawaii','HI'),(13,'Idaho','ID'),(14,'Illinois','IL'),(15,'Indiana','IN'),(16,'Iowa','IA'),(17,'Kansas','KS'),(18,'Kentucky','KY'),(19,'Louisiana','LA'),(20,'Maine','ME'),(21,'Maryland','MD'),(22,'Massachusetts','MA'),(23,'Michigan','MI'),(24,'Minnesota','MN'),(25,'Mississippi','MS'),(26,'Missouri','MO'),(27,'Montana','MT'),(28,'Nebraska','NE'),(29,'Nevada','NV'),(30,'New Hampshire','NH'),(31,'New Jersey','NJ'),(32,'New Mexico','NM'),(33,'New York','NY'),(34,'North Carolina','NC'),(35,'North Dakota','ND'),(36,'Ohio','OH'),(37,'Oklahoma','OK'),(38,'Oregon','OR'),(39,'Pennsylvania','PA'),(40,'Rhode Island','RI'),(41,'South Carolina','SC'),(42,'South Dakota','SD'),(43,'Tennessee','TN'),(44,'Texas','TX'),(45,'Utah','UT'),(46,'Vermont','VT'),(47,'Virginia','VA'),(48,'Washington','WA'),(49,'West Virginia','WV'),(50,'Wisconsin','WI'),(51,'Wyoming','WY');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(32) NOT NULL,
  `password` varchar(244) NOT NULL,
  `Role` enum('READ ONLY','NO ACCESS','EDIT','DELETE','OWNER','USER','ADMIN','REGISTER') DEFAULT 'READ ONLY',
  `comment_fld1` text,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`, `password`, `Role`, `comment_fld1`, `createdtime`, `updatedtime`) VALUES ('dgleba','eled','ADMIN',NULL,'2013-08-07 15:58:22',NULL),('qadave','qad','ADMIN',NULL,'2012-06-06 06:58:40',NULL),('user','user','EDIT',NULL,'2012-06-06 06:56:06',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_nte_note`
--

DROP TABLE IF EXISTS `vw_nte_note`;
/*!50001 DROP VIEW IF EXISTS `vw_nte_note`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_nte_note` (
  `note_id` int(11),
  `note_fld` text,
  `tags_fld` varchar(244),
  `state_fld` varchar(99),
  `createdtime` timestamp,
  `updatedtime` datetime,
  `datenote` datetime,
  `active` enum('Yes','No'),
  `note2` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vw_nte_note__history`
--

DROP TABLE IF EXISTS `vw_nte_note__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vw_nte_note__history` (
  `history__id` int(11) NOT NULL AUTO_INCREMENT,
  `history__language` varchar(2) DEFAULT NULL,
  `history__comments` text,
  `history__user` varchar(32) DEFAULT NULL,
  `history__state` int(5) DEFAULT '0',
  `history__modified` datetime DEFAULT NULL,
  `note_fld` text,
  `tags_fld` varchar(244) DEFAULT NULL,
  `datenote` datetime DEFAULT NULL,
  `active` enum('Yes','No') DEFAULT NULL,
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedtime` datetime DEFAULT NULL,
  `note_id` int(11) DEFAULT NULL,
  `state_fld` varchar(99) DEFAULT NULL,
  `note2` text,
  PRIMARY KEY (`history__id`),
  KEY `prikeys` (`note_id`) USING HASH,
  KEY `datekeys` (`history__modified`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vw_nte_note__history`
--

LOCK TABLES `vw_nte_note__history` WRITE;
/*!40000 ALTER TABLE `vw_nte_note__history` DISABLE KEYS */;
INSERT INTO `vw_nte_note__history` (`history__id`, `history__language`, `history__comments`, `history__user`, `history__state`, `history__modified`, `note_fld`, `tags_fld`, `datenote`, `active`, `createdtime`, `updatedtime`, `note_id`, `state_fld`, `note2`) VALUES (1,'en','','user',0,'2013-05-03 10:40:43','2013-04-09_Tue_08.26-AM',NULL,NULL,'No','2013-04-09 12:26:16','2013-05-03 10:40:43',2847,NULL,NULL),(2,'en','','user',0,'2013-09-04 12:14:47','a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM',NULL,NULL,'Yes','2013-08-07 16:51:17','2013-09-04 12:14:47',2891,NULL,NULL),(3,'en','','user',0,'2013-09-04 12:29:55','b 12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 12:29:55',2892,NULL,NULL),(4,'en','','user',0,'2013-09-04 12:38:38','3,  12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 12:38:38',2892,NULL,NULL),(5,'en','','user',0,'2013-09-04 13:12:25','4,  12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 13:12:25',2892,NULL,NULL),(6,'en','','user',0,'2013-09-04 15:40:11','5,  12:15PM',NULL,NULL,'Yes','2013-09-04 16:15:50','2013-09-04 15:40:11',2892,NULL,NULL),(7,'en','','user',0,'2013-09-11 10:13:48',' a,2013-08-07_Wed_12.51-PM2013-08-15_Thu_11.11-AM ',NULL,NULL,'Yes','2013-08-07 16:51:17','2013-09-11 10:13:47',2891,'Maine','2013-08-07_Wed_12.51-PM'),(8,'en','','dgleba',0,'2013-09-11 10:52:30',' test default active = yes ','artsy','2013-09-11 10:52:23','Yes','2013-08-07 16:08:48','2013-09-11 10:52:30',2890,'Florida','test default active = yes'),(9,'en','','user',0,'2013-09-11 11:02:38',' 2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere','Q','2013-09-11 11:02:49','Yes','2013-04-25 14:53:35','2013-09-11 11:02:38',2877,'District of ColumbOk','2013-04-25_Thu_10.53-AM'),(10,'en','','dgleba',0,'2013-09-11 11:05:04',' 2013-04-09_Tue_08.26-AM ',NULL,NULL,'Yes','2013-04-09 12:26:16','2013-09-11 11:05:04',2847,'Tennessee','2013-04-09_Tue_08.26-AM'),(11,'en','','user',0,'2013-09-11 11:15:38',' testing mysql copy with xcopy ',NULL,'2013-09-11 11:15:23','Yes','2013-05-03 13:27:11','2013-09-11 11:15:38',2884,'Michigan','testing mysql copy with xcopy'),(12,'en','','dgleba',0,'2013-09-11 11:23:36','  2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA\r\n','Q','2013-09-11 13:22:23','No','2013-04-25 14:53:35','2013-09-11 11:23:36',2877,'Rhode Island','2013-04-25_Thu_10.53-AM'),(13,'en','','user',0,'2013-09-12 13:41:26',' going  home ',NULL,NULL,'No','2013-05-06 20:36:19','2013-09-12 13:41:26',2885,'District of Columbia','going  home'),(14,'en','','dgleba',0,'2013-09-12 14:08:59',' 2013-04-25_Thu_10.54-AM ',NULL,NULL,'Yes','2013-04-25 14:54:14','2013-09-12 14:08:58',2878,NULL,'2013-04-25_Thu_10.54-AM'),(15,'en','','dgleba',0,'2013-09-12 14:09:14','  2013-04-25_Thu_10.54-AM  ',NULL,'2013-09-12 01:00:23','Yes','2013-04-25 14:54:14','2013-09-12 14:09:14',2878,NULL,'2013-04-25_Thu_10.54-AM'),(16,'en','','dgleba',0,'2013-09-12 14:15:47','   2013-04-25_Thu_10.54-AM   ',NULL,'2013-09-12 01:00:23','Yes','2013-04-25 14:54:14','2013-09-12 14:15:47',2878,NULL,'2013-04-25_Thu_10.54-AM'),(17,'en','','dgleba',0,'2013-09-12 14:25:06','    2013-04-25_Thu_10.54-AM    ',NULL,'2013-09-12 14:25:22','Yes','2013-04-25 14:54:14','2013-09-12 14:25:06',2878,NULL,'2013-04-25_Thu_10.54-AM'),(18,'en','','dgleba',0,'2013-09-12 14:28:34','     2013-04-25_Thu_10.54-AM     ',NULL,'2013-09-12 14:25:22','Yes','2013-04-25 14:54:14','2013-09-12 14:28:34',2878,NULL,'2013-04-25_Thu_10.54-AM'),(19,'en','','dgleba',0,'2013-09-12 14:29:50',' 2013-04-25_Thu_09.58-AM ',NULL,'2013-08-25 09:58:23','Yes','2013-04-25 13:59:01','2013-09-12 14:29:49',2872,NULL,'2013-04-25_Thu_09.58-AM'),(20,'en','','dgleba',0,'2013-09-12 15:10:19','  testing mysql copy with xcopy  ',NULL,NULL,'Yes','2013-05-03 13:27:11','2013-09-12 15:10:19',2884,'Delaware','testing mysql copy with xcopy'),(21,'en','','dgleba',0,'2013-09-12 15:11:08','   testing mysql copy with xcopy   ',NULL,'2013-09-12 15:11:23','Yes','2013-05-03 13:27:11','2013-09-12 15:11:08',2884,'Delaware','testing mysql copy with xcopy'),(22,'en','','dgleba',0,'2013-09-12 15:13:25','  2013-04-25_Thu_09.58-AM  ',NULL,NULL,'Yes','2013-04-25 13:59:01','2013-09-12 15:13:25',2872,NULL,'2013-04-25_Thu_09.58-AM'),(23,'en','','dgleba',0,'2013-09-13 11:15:39','    testing mysql copy with xcopy    ',NULL,NULL,'Yes','2013-05-03 13:27:11','2013-09-13 11:15:39',2884,'Vermont','testing mysql copy with xcopy'),(24,'en','','dgleba',0,'2013-09-13 11:34:27',' test two email ',NULL,'2013-09-13 11:34:23','Yes','2013-04-29 18:31:54','2013-09-13 11:34:27',2880,'Nevada','test two email'),(25,'en','','dgleba',0,'2013-09-16 09:50:50','  test two email  b',NULL,NULL,'','2013-04-29 18:31:54','2013-09-16 09:50:50',2880,'Nevada','test two email'),(26,'en','','dgleba',0,'2013-09-16 13:47:12','   2013-04-25_Thu_09.58-AM   ',NULL,'2013-09-16 13:44:23','','2013-04-25 13:59:01','2013-09-16 13:47:12',2872,NULL,'2013-04-25_Thu_09.58-AM'),(27,'en','','user',0,'2013-09-16 14:32:17','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite','2013-09-11 13:22:23','Yes','2013-04-25 14:53:35','2013-09-16 14:32:17',2877,'Michigan','2013-04-25_Thu_10.53-AM'),(28,'en','','user',0,'2013-09-16 14:34:35','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite','2013-09-11 14:46:23','Yes','2013-04-25 14:53:35','2013-09-16 14:34:35',2877,'Texas','2013-04-25_Thu_10.53-AM'),(29,'en','','user',0,'2013-09-16 14:34:36','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite','2013-09-11 14:46:23','Yes','2013-04-25 14:53:35','2013-09-16 14:34:36',2877,'Texas','2013-04-25_Thu_10.53-AM'),(30,'en','','user',0,'2013-09-16 14:35:21','   2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n ','Quite',NULL,'Yes','2013-04-25 14:53:35','2013-09-16 14:35:21',2877,'Rhode Island','2013-04-25_Thu_10.53-AM'),(31,'en','','dgleba',0,'2013-09-16 14:36:28','   2013-04-25_Thu_09.58-AM   ',NULL,'2013-09-16 13:44:23','','2013-04-25 13:59:01','2013-09-16 14:36:28',2872,NULL,'2013-04-25_Thu_09.58-AM'),(32,'en','','dgleba',0,'2013-09-16 14:43:52','    2013-04-25_Thu_10.53-AM \r\nAdam\r\nHere \r\n\r\nA b\r\n  ','Quite','2013-09-16 14:43:23','Yes','2013-04-25 14:53:35','2013-09-16 14:43:52',2877,'New Jersey','2013-04-25_Thu_10.53-AM'),(33,'en','','dgleba',0,'2013-09-16 15:35:57',' dash\r\n2013-09-16_Mon_15.35-PM ',NULL,'2013-09-16 15:35:23','Yes','2013-09-16 19:35:17','2013-09-16 15:35:57',2893,'Hawaii',NULL),(34,'en','','dgleba',0,'2013-09-17 11:44:57','  Wish','sell','2013-09-17 11:42:23','Yes','2013-09-17 15:42:50','2013-09-17 11:44:57',2901,'Rhode Island',NULL);
/*!40000 ALTER TABLE `vw_nte_note__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `dgnote130`
--

USE `dgnote130`;

--
-- Final view structure for view `dataface__view_05bc21d889015ac9418d98c68778e843`
--

/*!50001 DROP TABLE IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`*/;
/*!50001 DROP VIEW IF EXISTS `dataface__view_05bc21d889015ac9418d98c68778e843`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dg417`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataface__view_05bc21d889015ac9418d98c68778e843` AS select `n`.`note_id` AS `note_id`,`n`.`note_fld` AS `note_fld`,`n`.`tags_fld` AS `tags_fld`,`n`.`state_fld` AS `state_fld`,`n`.`createdtime` AS `createdtime`,`n`.`updatedtime` AS `updatedtime`,`n`.`datenote` AS `datenote`,`n`.`active` AS `active`,`n`.`note2` AS `note2`,`nt`.`nid` AS `nid`,`nt`.`tid` AS `tid`,`t`.`tags_id` AS `tags_id`,`t`.`tags_list` AS `tags_list`,group_concat(`t`.`tags_list` separator ',') AS `tagslisted` from ((`nte_note` `n` left join `nte_note_tags` `nt` on((`n`.`note_id` = `nt`.`nid`))) left join `nte_tags` `t` on((`nt`.`tid` = `t`.`tags_id`))) group by `n`.`note_id` order by `n`.`updatedtime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dataface__view_df7958a831669cfaa5d0690b3abaa248`
--

/*!50001 DROP TABLE IF EXISTS `dataface__view_df7958a831669cfaa5d0690b3abaa248`*/;
/*!50001 DROP VIEW IF EXISTS `dataface__view_df7958a831669cfaa5d0690b3abaa248`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dg417`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dataface__view_df7958a831669cfaa5d0690b3abaa248` AS select `n`.`note_id` AS `note_id`,`n`.`note_fld` AS `note_fld`,`n`.`tags_fld` AS `tags_fld`,`n`.`state_fld` AS `state_fld`,`n`.`createdtime` AS `createdtime`,`n`.`updatedtime` AS `updatedtime`,`n`.`datenote` AS `datenote`,`n`.`active` AS `active`,`n`.`note2` AS `note2`,`nt`.`nid` AS `nid`,`nt`.`tid` AS `tid`,`t`.`tags_id` AS `tags_id`,`t`.`tags_list` AS `tags_list`,group_concat(`t`.`tags_list` separator ',') AS `tagslisted` from ((`vw_nte_note` `n` left join `nte_note_tags` `nt` on((`n`.`note_id` = `nt`.`nid`))) left join `nte_tags` `t` on((`nt`.`tid` = `t`.`tags_id`))) group by `n`.`note_id` order by `n`.`updatedtime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_nte_note`
--

/*!50001 DROP TABLE IF EXISTS `vw_nte_note`*/;
/*!50001 DROP VIEW IF EXISTS `vw_nte_note`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_nte_note` AS select `nte_note`.`note_id` AS `note_id`,`nte_note`.`note_fld` AS `note_fld`,`nte_note`.`tags_fld` AS `tags_fld`,`nte_note`.`state_fld` AS `state_fld`,`nte_note`.`createdtime` AS `createdtime`,`nte_note`.`updatedtime` AS `updatedtime`,`nte_note`.`datenote` AS `datenote`,`nte_note`.`active` AS `active`,`nte_note`.`note2` AS `note2` from `nte_note` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-17 11:52:39
