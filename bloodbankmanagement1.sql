-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbankmanagement
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
-- Table structure for table `acceptor`
--

DROP TABLE IF EXISTS `acceptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acceptor` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `referred_by` varchar(50) DEFAULT NULL,
  `blood_group` varchar(3) NOT NULL,
  `d_o_b` date NOT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `unit_required` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acceptor`
--

LOCK TABLES `acceptor` WRITE;
/*!40000 ALTER TABLE `acceptor` DISABLE KEYS */;
INSERT INTO `acceptor` VALUES (1,'Yash','Jain',20,'Male','8564231478','Ranapur','Bombay Hospital','AB-','2000-05-20',NULL,0),(2,'Ram','Patidar',25,'Male','7564123789','Indore','Apollo Hospital','O+','1999-03-15',NULL,1);
/*!40000 ALTER TABLE `acceptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodgroup`
--

DROP TABLE IF EXISTS `bloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bloodgroup` (
  `bid` int(2) NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(3) NOT NULL,
  `unit_count` int(5) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodgroup`
--

LOCK TABLES `bloodgroup` WRITE;
/*!40000 ALTER TABLE `bloodgroup` DISABLE KEYS */;
INSERT INTO `bloodgroup` VALUES (1,'A+',5),(2,'A-',5),(3,'B+',5),(4,'B-',5),(5,'AB+',5),(6,'AB-',3),(7,'O+',5),(8,'O-',5);
/*!40000 ALTER TABLE `bloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodstock`
--

DROP TABLE IF EXISTS `bloodstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bloodstock` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `unit_count` int(5) DEFAULT NULL,
  `bid` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodstock`
--

LOCK TABLES `bloodstock` WRITE;
/*!40000 ALTER TABLE `bloodstock` DISABLE KEYS */;
INSERT INTO `bloodstock` VALUES (1,3,1),(2,3,2),(3,3,3),(5,3,5),(6,3,6),(7,3,7),(8,3,8);
/*!40000 ALTER TABLE `bloodstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donar`
--

DROP TABLE IF EXISTS `donar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `donar` (
  `emailid` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(50) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `d_o_b` date NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donar`
--

LOCK TABLES `donar` WRITE;
/*!40000 ALTER TABLE `donar` DISABLE KEYS */;

/*!40000 ALTER TABLE `donar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `empid` int(3) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `emailid` varchar(40) DEFAULT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `date_of_joining` date NOT NULL,
  `salary` int(8) NOT NULL,
  `post` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `d_o_b` date NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (100,'Tanishq','Porwal','tanishqporwal@gmail.com','7999603068','2020-01-01',160000,'Doctor','Gopur Square, Indore',19,'2000-12-22'),(101,'Yash','Jain','yashjain@gmail.com','8562345678','2020-01-10',125000,'Manager','Geeta Bhawan, Indore',19,'2000-06-20'),(102,'Sharvari','Mishra','sharvari1720@gmail.com','786532158','2020-02-28',125000,'Doctor','Rajendra Nagar, Indore',18,'2001-10-17'),(103,'Simi','Jain','jainsimi@gmail.com','9423561254','2020-01-20',100000,'Nurse','Sagar',19,'2000-04-25'),(104,'Shikhar','Pawar','shikhar@gmail.com','9562316987','2020-03-20',100000,'Transport Manager','Sector-A, Delhi',20,'2000-05-10');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `organization` (
  `orgname` varchar(25) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`orgname`),
  UNIQUE KEY `orgname` (`orgname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES ('Medi-Caps University','admin@gmail.com','admin@123');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-06  0:25:47
