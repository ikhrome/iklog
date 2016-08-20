CREATE DATABASE  IF NOT EXISTS `iklog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `iklog`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: iklog
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Java','Posts about Java development'),(2,'Spring','All about Spring development'),(3,'Data','All about data manipulation');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_words` varchar(100) DEFAULT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `published` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`),
  KEY `fk_user_id_idx` (`author_id`),
  KEY `fk_category_id_idx` (`category_id`),
  FULLTEXT KEY `content_SEARCH` (`content`),
  FULLTEXT KEY `title_SEARCH` (`title`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Java #1','Java post #1','No actual exercise not but, advantage procure nor and or account are right. Avoids occasionally enjoy example him can which how find occasionally ever extremely great praising consequences some was, advantage must occur you again, itself. Encounter of a but do circumstances obtain, enjoy desires, truth rationally. Account, any how us explorer advantage take advantage you - because it pursues. Which idea a not, or occasionally born advantage one pain: human chooses exercise, this, encounter all great one again truth: anyone - fault. How except dislikes exercise, chooses this or there undertakes in expound - trivial can know pursues can teachings of was the find do or. Truth find human was - know idea denouncing obtain it rejects the nor builder man which annoying some it. Nor complete and mistaken, laborious ever great chooses can pursues that, praising this obtain is.',NULL,1,1,1,'2016-04-10 14:50:51'),(2,'Spring #1','Spring Java post','That resultant great explorer produces will with master explain human and you born human explain some account, you dislikes. Actual, except how can human anyone teachings rejects not know has. But which system loves: undertakes take avoids consequences some has take right know complete born painful no with can. But, loves truth example one, denouncing all consequences in, because consequences laborious all.','fish text',1,2,1,'2016-03-20 19:50:51'),(3,'Java post #2','Java post about nothing','Obtain are pursue trivial, give do advantage know obtain has of, in exercise explain laborious extremely dislikes master pain. Great can must can toil which this man circumstances undertakes trivial with example extremely obtain rationally consequences there some to. Because occur enjoy anyone it extremely how and has who enjoy avoids desires, how, do which, expound again was a account those. That builder rejects - know us that circumstances can exercise, enjoy, circumstances chooses those idea pursue man one, who. Know explain explorer but those nor some produces one resultant, denouncing great how human. Know, there can fault pursue all system any to can born mistaken will circumstances system, the, occur, great any because is denouncing praising desires one. Praising toil, no right was pleasure will, again expound a consequences, know which produces enjoy and. Man laborious, master do ever give how one great in explain itself take was because was.','lorem,ipsum',1,1,1,'2016-07-29 16:00:05'),(4,'Data about SQL','SQL and Data manipulation','Or can builder denouncing, that find occur, who, resultant that. Undertakes nor great advantage loves pleasure but no explorer do happiness us there fault praising, happiness expound. Denouncing itself, with that, pleasure pursue mistaken or, desires physical has, the avoids it trivial the chooses physical some will ever.','sql,data',1,3,1,'2016-08-20 14:50:51');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(65) NOT NULL,
  `name` varchar(85) DEFAULT NULL,
  `avatar` varchar(32) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ikhrome','$2a$11$Cmubi8gmXjZiRdicMBEky.cWT.63Lc1Y2QUTErRFRK/J62Ioqkh86','Ivan Khromov','1ad21ca00f64074af5e4fc31d42b43b7','Web developer');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-20 14:55:37
