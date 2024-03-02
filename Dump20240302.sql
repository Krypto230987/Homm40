CREATE DATABASE  IF NOT EXISTS `study_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `study_database`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: study_database
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_date` datetime NOT NULL,
  `product_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `qty` decimal(10,3) NOT NULL DEFAULT '0.000',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `FK_product_idx` (`product_id`),
  KEY `FK_supplier` (`supplier_id`),
  CONSTRAINT `FK_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'2015-07-25 12:30:33',3,1,100.000,110.00),(2,'2015-07-25 12:30:33',5,1,80.000,95.00),(3,'2015-07-25 12:30:33',8,1,48.000,84.00),(4,'2015-07-25 12:30:33',11,1,16.000,340.00),(5,'2015-07-30 09:30:00',11,1,10.000,345.00),(6,'2015-07-30 09:30:00',15,1,50.000,40.00),(7,'2015-07-30 09:30:00',16,1,40.000,55.00),(8,'2015-08-14 15:30:00',17,1,50.000,60.00),(9,'2015-08-14 15:30:00',5,1,50.000,98.00),(10,'2015-08-20 10:05:00',14,1,10.000,330.00),(11,'2015-08-25 12:15:00',3,1,50.000,115.00),(12,'2015-08-25 12:15:00',17,1,15.000,86.00),(13,'2015-08-25 12:15:00',4,1,25.000,117.00),(14,'2015-08-25 14:33:00',4,1,25.000,117.00),(15,'2015-10-04 12:50:00',1,1,30.000,121.00),(16,'2015-10-27 09:18:00',4,1,5.000,125.00),(17,'2015-12-11 09:20:00',3,1,10.000,143.00),(18,'2016-02-07 09:43:00',17,1,51.000,43.00),(19,'2016-03-12 09:21:00',15,1,70.000,18.00),(20,'2016-06-28 08:55:00',16,1,35.000,36.00),(21,'2016-07-15 10:02:00',12,1,20.000,135.00),(22,'2016-07-16 09:57:00',1,1,45.000,116.00),(23,'2016-09-15 09:15:00',12,1,5.000,142.00),(24,'2016-09-20 10:03:00',2,1,13.000,74.00),(25,'2016-10-02 11:10:00',9,1,24.000,121.00),(26,'2016-10-23 10:02:00',18,1,55.000,79.00),(27,'2016-10-23 10:03:00',11,1,6.000,295.00),(28,'2016-10-23 10:04:00',4,1,100.000,108.00),(29,'2016-11-11 09:44:00',19,1,75.000,31.00),(30,'2016-12-17 11:00:00',18,1,20.000,77.00),(31,'2016-12-20 08:50:00',17,1,12.000,40.00),(32,'2017-01-12 11:01:00',14,1,10.000,340.00),(33,'2017-01-12 11:02:00',18,1,25.000,76.00),(34,'2017-01-12 11:03:00',1,1,37.000,115.00),(35,'2017-02-25 13:50:00',3,1,50.000,128.00),(36,'2017-02-26 09:30:00',11,1,19.000,302.00),(37,'2017-02-27 09:36:00',4,1,11.000,119.00),(38,'2017-03-02 09:44:00',5,1,40.000,80.00),(39,'2015-07-26 08:30:00',22,2,25.000,76.00),(40,'2015-07-26 08:30:00',23,2,15.000,79.00),(41,'2015-07-26 08:30:00',24,2,20.000,85.00),(42,'2015-07-26 08:30:00',25,2,23.000,88.00),(43,'2015-07-26 08:30:00',26,2,10.000,94.00),(44,'2015-07-28 08:45:00',23,2,10.000,79.00),(45,'2015-07-28 08:45:00',25,2,7.000,89.00),(46,'2015-08-07 08:45:00',22,2,30.000,76.00),(47,'2015-08-07 08:45:00',3,2,24.000,105.00),(48,'2015-08-13 11:12:00',22,2,10.000,75.00),(49,'2015-08-13 11:12:00',25,2,25.000,77.00),(50,'2015-11-20 12:30:00',28,2,17.000,181.00),(51,'2015-11-20 12:31:00',27,2,6.000,168.00),(52,'2016-04-03 11:25:00',23,2,50.000,57.00),(53,'2016-04-24 10:35:00',24,2,60.000,63.00),(54,'2016-07-03 10:45:00',27,2,11.000,169.00),(55,'2016-07-07 13:07:00',23,2,20.000,70.00),(56,'2016-07-07 13:08:00',26,2,25.000,144.00),(57,'2016-07-07 13:09:00',25,2,40.000,81.00),(58,'2016-07-16 14:02:00',29,2,10.000,236.00),(59,'2016-08-12 11:37:00',28,2,12.000,180.00),(60,'2016-08-20 10:04:00',23,2,30.000,68.00),(61,'2016-09-11 11:14:00',24,2,100.000,62.00),(62,'2016-10-06 09:57:00',2,2,10.000,74.00),(63,'2016-10-06 09:59:00',27,2,19.000,159.00),(64,'2016-10-07 13:20:00',23,2,11.000,77.00),(65,'2016-10-16 09:48:00',25,2,3.000,91.00),(66,'2016-10-19 10:06:00',28,2,8.000,188.00),(67,'2016-10-27 10:45:00',24,2,20.000,72.00),(68,'2017-02-25 11:12:00',22,2,25.000,63.00),(69,'2017-03-03 14:25:00',29,2,15.000,234.00),(70,'2017-03-06 09:52:00',2,2,25.000,76.00),(71,'2015-07-25 09:05:00',1,3,33.000,115.00),(72,'2015-07-25 09:05:00',6,3,40.000,90.00),(73,'2015-07-26 16:45:00',8,3,100.000,94.00),(74,'2015-07-28 09:10:00',5,3,80.000,86.00),(75,'2015-08-03 14:15:00',16,3,100.000,34.00),(76,'2015-08-03 14:15:00',14,3,10.000,345.00),(77,'2015-08-13 10:00:00',14,3,5.000,345.00),(78,'2015-08-13 10:00:00',29,3,30.000,235.00),(79,'2015-08-15 17:15:00',17,3,100.000,39.00),(80,'2015-08-16 09:45:00',28,3,50.000,180.00),(81,'2015-08-16 09:45:00',14,3,12.000,350.00),(82,'2015-12-19 09:23:00',6,3,50.000,79.00),(83,'2016-01-07 10:10:00',7,3,30.000,94.00),(84,'2016-01-09 10:23:00',20,3,25.000,18.00),(85,'2016-01-23 15:45:00',17,3,60.000,39.00),(86,'2016-01-25 13:17:00',6,3,5.000,101.00),(87,'2016-02-01 09:45:00',14,3,5.000,351.00),(88,'2016-02-25 09:15:00',29,3,20.000,225.00),(89,'2016-02-25 10:03:00',8,3,16.000,93.00),(90,'2016-03-09 17:43:00',18,3,24.000,75.00),(91,'2016-03-18 13:06:00',28,3,10.000,183.00),(92,'2016-03-24 11:18:00',6,3,40.000,92.00),(93,'2016-03-24 11:19:00',7,3,35.000,99.00),(94,'2016-03-24 11:20:00',19,3,20.000,37.00),(95,'2016-04-12 15:55:00',8,3,50.000,95.00),(96,'2016-05-18 13:15:00',29,3,1.000,255.00),(97,'2016-05-18 13:15:00',28,3,3.000,196.00),(98,'2016-06-01 10:05:00',19,3,60.000,34.00),(99,'2016-07-01 12:21:00',14,3,7.000,348.00),(100,'2016-12-13 09:52:00',19,3,10.000,42.00),(101,'2017-01-20 15:35:00',1,3,20.000,115.00),(102,'2017-02-25 16:05:00',16,3,80.000,36.00),(103,'2017-03-12 12:45:00',17,3,50.000,39.00),(104,'2015-07-29 13:00:00',5,4,120.000,78.00),(105,'2015-07-29 13:00:00',3,4,80.000,130.00),(106,'2015-08-10 09:50:00',5,4,60.000,78.00),(107,'2015-08-12 10:10:00',3,4,85.000,129.00),(108,'2016-02-12 09:15:00',3,4,100.000,127.00),(109,'2016-02-25 17:02:00',2,4,50.000,73.00),(110,'2016-02-25 17:03:00',1,4,63.000,99.00),(111,'2016-02-25 17:03:00',5,4,20.000,82.00),(112,'2016-06-14 16:03:00',3,4,25.000,127.00),(113,'2016-07-19 10:25:00',3,4,20.000,127.00),(114,'2016-09-01 09:25:00',1,4,30.000,116.00),(115,'2016-11-01 10:10:00',2,4,30.000,73.00),(116,'2016-12-25 13:09:00',5,4,20.000,83.00),(117,'2017-01-11 09:15:00',4,4,15.000,120.00),(118,'2017-01-14 10:22:00',3,4,90.000,127.00),(119,'2017-01-29 10:30:00',2,4,40.000,77.00),(120,'2017-02-10 15:56:00',4,4,20.000,118.00),(121,'2017-02-10 15:57:00',1,4,25.000,116.00),(122,'2017-02-22 11:37:00',5,4,65.000,80.00),(123,'2017-02-28 08:47:00',3,4,10.000,145.00),(124,'2017-03-05 10:45:00',4,4,100.000,109.00),(125,'2017-03-10 13:23:00',5,4,45.000,84.00),(126,'2017-03-14 11:00:00',24,2,14.000,161.00);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Samsung'),(2,'ASUS'),(3,'Acer'),(5,'sas'),(6,'sas'),(7,'sas'),(8,'sas'),(9,'sas'),(10,'sas'),(11,'sas'),(12,'sas'),(13,'sas'),(14,'sas'),(15,'sas'),(16,'sas'),(17,'sas'),(18,'sas'),(19,'sas'),(20,'sas'),(21,'sas'),(22,'sas'),(23,'sas'),(25,'sas'),(26,'sas'),(30,'dol'),(31,'dol'),(32,'dol'),(33,'dol'),(34,'dol'),(35,'dol'),(36,'dol'),(37,'dol');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT 'name category',
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_UNIQUE` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'HDD','Жесткие диски'),(2,'Monitors','Мониторы'),(3,'Motherboards','Материнские платы'),(4,'DDR','Оперативная память');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `pay_sum` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2024-03-01 21:23:25',1,1000.50,'Payment for goods');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `brand_id` int DEFAULT NULL,
  `product` varchar(45) NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_category_idx` (`category_id`),
  KEY `FK_brand_idx` (`brand_id`),
  KEY `price_idx` (`price`),
  CONSTRAINT `FK_brand` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'S1 HDD 1T, 7200 rpm',125.00,''),(2,1,1,'S2 HDD 500Gb, 7200 rpm',85.00,''),(3,1,1,'S3 HDD 250Gb, 10000 rpm',150.00,''),(4,1,1,'S4 HDD 1T, 7200rpm',127.00,''),(5,1,1,'S5 HDD 500Gb, 7200rpm',92.00,''),(6,1,3,'Z1 HDD 750Gb, 72000rpm',100.00,''),(7,1,3,'Z2 HDD 750Gb, 72000rpm',110.00,''),(8,1,NULL,'UN1 HDD 750Gb, 72000rpm',105.00,''),(9,2,1,'Monitor B19',135.00,''),(10,2,1,'Monitor B22',170.00,''),(11,2,1,'Monitor B25',320.00,''),(12,2,3,'Monitor A20',150.00,''),(13,2,3,'Monitor A21',170.00,''),(14,2,2,'Monitor DD27',370.00,''),(15,4,1,'DDR3 SST 2Gb',25.00,''),(16,4,1,'DDR3 SST 4Gb',42.00,''),(17,4,2,'DDR3 BTT 4Gb',48.00,''),(18,4,2,'DDR3 BTT 8Gb',90.00,''),(19,4,2,'DDR3 ZPP 4Gb',45.00,''),(20,4,NULL,'DDR3 UNK 2Gb',24.00,''),(21,4,NULL,'DDR2 UNK 1Gb',17.00,''),(22,3,1,'MB-1',75.00,''),(23,3,1,'MB-2',76.00,''),(24,3,2,'MB-3',80.00,''),(25,3,2,'MB-4',95.00,''),(26,3,2,'MB-5',160.00,''),(27,3,3,'MB-6',180.00,''),(28,3,3,'MB-7',200.00,''),(29,3,NULL,'MB-8',250.00,'');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contacts` varchar(50) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Silk Road','Shanghai 6-7/115','mr.Lee p:234-177-123-456-6',-92149.00),(2,'Cargo Transfer','Shanghai, Mao av. 899-1201',NULL,NULL),(3,'4U','Urumchi','',NULL),(4,'IDT','Beijing','',NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-02 16:06:33
