-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: travellors
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `travels_to`
--

DROP TABLE IF EXISTS `travels_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travels_to` (
  `transportation_id` int NOT NULL,
  `attraction_id` int NOT NULL,
  `start_destination` varchar(150) NOT NULL,
  `end_destination` varchar(150) NOT NULL,
  PRIMARY KEY (`transportation_id`,`attraction_id`),
  KEY `attraction_id_travels_to` (`attraction_id`),
  CONSTRAINT `attraction_id_travels_to` FOREIGN KEY (`attraction_id`) REFERENCES `attraction` (`attraction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transportation_id_travels_to` FOREIGN KEY (`transportation_id`) REFERENCES `transportation` (`transportation_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travels_to`
--

LOCK TABLES `travels_to` WRITE;
/*!40000 ALTER TABLE `travels_to` DISABLE KEYS */;
INSERT INTO `travels_to` VALUES (1,1,'100 Ventura Drive','8080 Miami Beach Rd'),(1,2,'100 Ventura Drive','102 Palm Bay Street'),(2,1,'100 Ventura Drive','8080 Miami Beach Rd'),(2,2,'100 Holled Up Drive','102 Palm Bay Street'),(3,1,'568 Coolio Street','8080 Miami Beach Rd'),(3,2,'568 Coolio Street','102 Palm Bay Street');
/*!40000 ALTER TABLE `travels_to` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-25 18:17:03
