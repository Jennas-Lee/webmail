-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: POSTFIX_ACCOUNTS
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Current Database: `POSTFIX_ACCOUNTS`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `POSTFIX_ACCOUNTS` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `POSTFIX_ACCOUNTS`;

--
-- Table structure for table `ACCOUNTS_TABLE`
--

DROP TABLE IF EXISTS `ACCOUNTS_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACCOUNTS_TABLE` (
	  `ACCOUNTID` int NOT NULL AUTO_INCREMENT,
	  `DOMAINID` int NOT NULL,
	  `password` varchar(300) NOT NULL,
	  `email` varchar(100) NOT NULL,
	  PRIMARY KEY (`ACCOUNTID`),
	  UNIQUE KEY `EMAIL` (`email`),
	  KEY `DOMAINID` (`DOMAINID`),
	  CONSTRAINT `ACCOUNTS_TABLE_ibfk_1` FOREIGN KEY (`DOMAINID`) REFERENCES `DOMAINS_TABLE` (`DOMAINID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCOUNTS_TABLE`
--

LOCK TABLES `ACCOUNTS_TABLE` WRITE;
/*!40000 ALTER TABLE `ACCOUNTS_TABLE` DISABLE KEYS */;
INSERT INTO `ACCOUNTS_TABLE` VALUES (1,1,'$5$rounds=1000$8/61mSwxOjY4IeC1$LVtazZ/y3bfAtHKXreEFBkzWGWSxQtTWvUJfkjUxlmA','test1@samsungskills.cloud'),(2,1,'$5$rounds=1000$8/61mSwxOjY4IeC1$LVtazZ/y3bfAtHKXreEFBkzWGWSxQtTWvUJfkjUxlmA','test2@samsungskills.cloud');
/*!40000 ALTER TABLE `ACCOUNTS_TABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ALIAS_TABLE`
--

DROP TABLE IF EXISTS `ALIAS_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALIAS_TABLE` (
	  `ALIASID` int NOT NULL AUTO_INCREMENT,
	  `DOMAINID` int NOT NULL,
	  `SOURCE` varchar(100) NOT NULL,
	  `DESTINATION` varchar(100) NOT NULL,
	  PRIMARY KEY (`ALIASID`),
	  KEY `DOMAINID` (`DOMAINID`),
	  CONSTRAINT `ALIAS_TABLE_ibfk_1` FOREIGN KEY (`DOMAINID`) REFERENCES `DOMAINS_TABLE` (`DOMAINID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALIAS_TABLE`
--

LOCK TABLES `ALIAS_TABLE` WRITE;
/*!40000 ALTER TABLE `ALIAS_TABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ALIAS_TABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOMAINS_TABLE`
--

DROP TABLE IF EXISTS `DOMAINS_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DOMAINS_TABLE` (
	  `DOMAINID` int NOT NULL AUTO_INCREMENT,
	  `DOMAINNAME` varchar(50) NOT NULL,
	  PRIMARY KEY (`DOMAINID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOMAINS_TABLE`
--

LOCK TABLES `DOMAINS_TABLE` WRITE;
/*!40000 ALTER TABLE `DOMAINS_TABLE` DISABLE KEYS */;
INSERT INTO `DOMAINS_TABLE` VALUES (1,'samsungskills.cloud'),(2,'samsungskills.cloud');
/*!40000 ALTER TABLE `DOMAINS_TABLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07  8:18:25
