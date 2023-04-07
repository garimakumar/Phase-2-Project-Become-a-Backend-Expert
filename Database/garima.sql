-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: garima
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('garima','Garima@1991');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines` (
  `code` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES ('AIRN','AirIndia'),('KING','KingFisher'),('SPIC','SpiceJet'),('INDG','Indigo'),('TRUJ','TrueJet'),('VIST','Vistara');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `name` varchar(40) NOT NULL,
  `airlines` varchar(50) NOT NULL,
  `source` varchar(40) NOT NULL,
  `destination` varchar(40) NOT NULL,
  `way` varchar(40) NOT NULL,
  `ticketprice` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES ('AIRN','AirIndia','Delhi','Mumbai','DEL-MUM',5000),('AIRN1','AirIndia','Mumbai','Delhi','MUM-DEL',5000),('AIRN2','AirIndia','Mumbai','Bengaluru','MUM-BENG',5000),('AIRN2','AirIndia','Bengaluru','Mumbai','BENG-MUM',5000),('INDG1','Indigo','Delhi','Bengaluru','DEL-BENG',5000),('INDG2','Indigo','Bengaluru','Delhi','BENG-DEL',5000),('SPIC','SpiceJet','Kolkata','Delhi','KOL-DEL',5000),('SPIC1','SpiceJet','Delhi','Kolkata','DEL-KOL',5000),('VIS1','Vistara','Delhi','Gujarat','DEL-GUJ',5000),('VIS2','Vistara','Gujarat','Delhi','GUJ-DEL',5000),('VIS3','Vistara','Gujarat','Mumbai','GUJ-MUM',5000),('VIS3','Vistara','Mumbai','Gujarat','MUM-GUJ',5000),('TRUJ1','TrueJet','Bengaluru','Gujarat','BENG-GUJ',5000),('TRUJ2','TrueJet','Gujarat','Bengaluru','GUJ-BENG',5000),('KING1','KingFisher','Gujarat','Kolkata','GUJ-KOL',5000),('KING2','KingFisher','Kolkata','Gujarat','KOL-GUJ',5000),('INDG3','Indigo','Chennai','Delhi','CHEN-DEL',5000),('INDG3','Indigo','Delhi','Chennai','DEL-CHEN',5000),('INDG4','Indigo','Chennai','Mumbai','CHEN-MUM',5000),('INDG4','Indigo','Mumbai','Chennai','MUM-CHEN',5000),('AIRN3','AirIndia','Chennai','Bengaluru','CHEN-BENG',5000),('AIRN3','AirIndia','Bengaluru','Chennai','CHEN-BENG',5000);
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('Delhi','Mumbai'),('Mumbai','Delhi'),('Bengaluru','Mumbai'),('Mumbai','Bengaluru'),('Delhi','Bengaluru'),('Bengaluru','Delhi'),('Kolkata','Delhi'),('Delhi','Kolkata'),('Gujarat','Delhi'),('Delhi','Gujarat'),('Mumbai','Gujarat'),('Gujarat','Mumbai'),('Gujarat','Bengaluru'),('Bengaluru','Gujarat'),('Gujarat','Kolkata'),('Kolkata','Gujarat'),('Chennai','Delhi'),('Delhi','Chennai'),('Chennai','Mumbai'),('Mumbai','Chennai'),('Chennai','Bengaluru'),('Bengaluru','Chennai');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05 10:07:08
