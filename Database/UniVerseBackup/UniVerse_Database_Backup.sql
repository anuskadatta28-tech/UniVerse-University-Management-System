-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: universe_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `enrollment_id` int NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_status` varchar(20) NOT NULL,
  PRIMARY KEY (`attendance_id`),
  UNIQUE KEY `uq_enrollment_attendance` (`enrollment_id`,`attendance_date`),
  CONSTRAINT `fk_attendance_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`enrollment_id`),
  CONSTRAINT `chk_attendance_status` CHECK ((`attendance_status` in (_utf8mb4'Present',_utf8mb4'Absent',_utf8mb4'Late')))
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2026-09-01','Late'),(2,2,'2026-09-01','Present'),(3,3,'2026-09-01','Present'),(4,4,'2026-09-01','Present'),(5,5,'2026-09-01','Present'),(6,6,'2026-09-01','Present'),(7,7,'2026-09-01','Present'),(8,8,'2026-09-01','Present'),(9,9,'2026-09-01','Present'),(10,10,'2026-09-01','Absent'),(11,11,'2026-09-01','Late'),(12,12,'2026-09-01','Present'),(13,13,'2026-09-01','Present'),(14,14,'2026-09-01','Present'),(15,15,'2026-09-01','Present'),(16,16,'2026-09-01','Present'),(17,17,'2026-09-01','Present'),(18,18,'2026-09-01','Present'),(19,19,'2026-09-01','Present'),(20,20,'2026-09-01','Absent'),(21,21,'2026-09-01','Late'),(22,22,'2026-09-01','Present'),(23,23,'2026-09-01','Present'),(24,24,'2026-09-01','Present'),(25,25,'2026-09-01','Present'),(26,26,'2026-09-01','Present'),(27,27,'2026-09-01','Present'),(28,28,'2026-09-01','Present'),(29,29,'2026-09-01','Present'),(30,30,'2026-09-01','Absent'),(31,31,'2026-09-01','Late'),(32,32,'2026-09-01','Present'),(33,33,'2026-09-01','Present'),(34,34,'2026-09-01','Present'),(35,35,'2026-09-01','Present'),(36,36,'2026-09-01','Present'),(37,37,'2026-09-01','Present'),(38,38,'2026-09-01','Present'),(39,39,'2026-09-01','Present'),(40,40,'2026-09-01','Absent'),(41,41,'2026-09-01','Late'),(42,42,'2026-09-01','Present'),(43,43,'2026-09-01','Present'),(44,44,'2026-09-01','Present'),(45,45,'2026-09-01','Present'),(46,46,'2026-09-01','Present'),(47,47,'2026-09-01','Present'),(48,48,'2026-09-01','Present'),(49,49,'2026-09-01','Present'),(50,50,'2026-09-01','Absent'),(51,51,'2026-09-01','Late'),(52,52,'2026-09-01','Present'),(53,53,'2026-09-01','Present'),(54,54,'2026-09-01','Present'),(55,55,'2026-09-01','Present'),(56,56,'2026-09-01','Present'),(57,57,'2026-09-01','Present'),(58,58,'2026-09-01','Present'),(59,59,'2026-09-01','Present'),(60,60,'2026-09-01','Absent'),(61,61,'2026-09-01','Late'),(62,62,'2026-09-01','Present'),(63,63,'2026-09-01','Present'),(64,64,'2026-09-01','Present'),(65,65,'2026-09-01','Present'),(66,66,'2026-09-01','Present'),(67,67,'2026-09-01','Present'),(68,68,'2026-09-01','Present'),(69,69,'2026-09-01','Present'),(70,70,'2026-09-01','Absent'),(71,71,'2026-09-01','Late'),(72,72,'2026-09-01','Present'),(73,73,'2026-09-01','Present'),(74,74,'2026-09-01','Present'),(75,75,'2026-09-01','Present'),(76,76,'2026-09-01','Present'),(77,77,'2026-09-01','Present'),(78,78,'2026-09-01','Present'),(79,79,'2026-09-01','Present'),(80,80,'2026-09-01','Absent'),(81,81,'2026-09-01','Late'),(82,82,'2026-09-01','Present'),(83,83,'2026-09-01','Present'),(84,84,'2026-09-01','Present'),(85,85,'2026-09-01','Present'),(86,86,'2026-09-01','Present'),(87,87,'2026-09-01','Present'),(88,88,'2026-09-01','Present'),(89,89,'2026-09-01','Present'),(90,90,'2026-09-01','Absent'),(91,91,'2026-09-01','Late'),(92,92,'2026-09-01','Present'),(93,93,'2026-09-01','Present'),(94,94,'2026-09-01','Present'),(95,95,'2026-09-01','Present'),(96,96,'2026-09-01','Present'),(97,97,'2026-09-01','Present'),(98,98,'2026-09-01','Present'),(99,99,'2026-09-01','Present'),(100,100,'2026-09-01','Absent'),(101,101,'2026-09-01','Late'),(102,102,'2026-09-01','Present'),(103,103,'2026-09-01','Present'),(104,104,'2026-09-01','Present'),(105,105,'2026-09-01','Present'),(106,106,'2026-09-01','Present'),(107,107,'2026-09-01','Present'),(108,108,'2026-09-01','Present'),(109,109,'2026-09-01','Present'),(110,110,'2026-09-01','Absent'),(111,111,'2026-09-01','Late'),(112,112,'2026-09-01','Present'),(113,113,'2026-09-01','Present'),(114,114,'2026-09-01','Present'),(115,115,'2026-09-01','Present'),(116,116,'2026-09-01','Present'),(117,117,'2026-09-01','Present'),(118,118,'2026-09-01','Present'),(119,119,'2026-09-01','Present'),(120,120,'2026-09-01','Absent'),(121,121,'2026-09-01','Late'),(122,122,'2026-09-01','Present'),(123,123,'2026-09-01','Present'),(124,124,'2026-09-01','Present'),(125,125,'2026-09-01','Present'),(126,126,'2026-09-01','Present'),(127,127,'2026-09-01','Present'),(128,128,'2026-09-01','Present'),(129,129,'2026-09-01','Present'),(130,130,'2026-09-01','Absent'),(131,131,'2026-09-01','Late'),(132,132,'2026-09-01','Present'),(133,133,'2026-09-01','Present'),(134,134,'2026-09-01','Present'),(135,135,'2026-09-01','Present'),(136,136,'2026-09-01','Present'),(137,137,'2026-09-01','Present'),(138,138,'2026-09-01','Present'),(139,139,'2026-09-01','Present'),(140,140,'2026-09-01','Absent'),(141,141,'2026-09-01','Late'),(142,142,'2026-09-01','Present'),(143,143,'2026-09-01','Present'),(144,144,'2026-09-01','Present'),(145,145,'2026-09-01','Present'),(146,146,'2026-09-01','Present'),(147,147,'2026-09-01','Present'),(148,148,'2026-09-01','Present'),(149,149,'2026-09-01','Present'),(150,150,'2026-09-01','Absent'),(151,151,'2026-09-01','Late'),(152,152,'2026-09-01','Present'),(153,153,'2026-09-01','Present'),(154,154,'2026-09-01','Present'),(155,155,'2026-09-01','Present'),(156,156,'2026-09-01','Present'),(157,157,'2026-09-01','Present'),(158,158,'2026-09-01','Present'),(159,159,'2026-09-01','Present'),(160,160,'2026-09-01','Absent'),(161,161,'2026-09-01','Late'),(162,162,'2026-09-01','Present'),(163,163,'2026-09-01','Present'),(164,164,'2026-09-01','Present'),(165,165,'2026-09-01','Present'),(166,166,'2026-09-01','Present'),(167,167,'2026-09-01','Present'),(168,168,'2026-09-01','Present'),(169,169,'2026-09-01','Present'),(170,170,'2026-09-01','Absent'),(171,171,'2026-09-01','Late'),(172,172,'2026-09-01','Present'),(173,173,'2026-09-01','Present'),(174,174,'2026-09-01','Present'),(175,175,'2026-09-01','Present'),(176,176,'2026-09-01','Present'),(177,177,'2026-09-01','Present'),(178,178,'2026-09-01','Present'),(179,179,'2026-09-01','Present'),(180,180,'2026-09-01','Absent'),(181,181,'2026-09-01','Late'),(182,182,'2026-09-01','Present'),(183,183,'2026-09-01','Present'),(184,184,'2026-09-01','Present'),(185,185,'2026-09-01','Present'),(186,186,'2026-09-01','Present'),(187,187,'2026-09-01','Present'),(188,188,'2026-09-01','Present'),(189,189,'2026-09-01','Present'),(190,190,'2026-09-01','Absent'),(191,191,'2026-09-01','Late'),(192,192,'2026-09-01','Present'),(193,193,'2026-09-01','Present'),(194,194,'2026-09-01','Present'),(195,195,'2026-09-01','Present'),(196,196,'2026-09-01','Present'),(197,197,'2026-09-01','Present'),(198,198,'2026-09-01','Present'),(199,199,'2026-09-01','Present'),(200,200,'2026-09-01','Absent'),(201,201,'2026-09-01','Late'),(202,202,'2026-09-01','Present'),(203,203,'2026-09-01','Present'),(204,204,'2026-09-01','Present'),(205,205,'2026-09-01','Present'),(206,206,'2026-09-01','Present'),(207,207,'2026-09-01','Present'),(208,208,'2026-09-01','Present'),(209,209,'2026-09-01','Present'),(210,210,'2026-09-01','Absent'),(211,211,'2026-09-01','Late'),(212,212,'2026-09-01','Present'),(213,213,'2026-09-01','Present'),(214,214,'2026-09-01','Present'),(215,215,'2026-09-01','Present'),(216,216,'2026-09-01','Present'),(217,217,'2026-09-01','Present'),(218,218,'2026-09-01','Present'),(219,219,'2026-09-01','Present'),(220,220,'2026-09-01','Absent'),(221,221,'2026-09-01','Late'),(222,222,'2026-09-01','Present'),(223,223,'2026-09-01','Present'),(224,224,'2026-09-01','Present'),(225,225,'2026-09-01','Present'),(226,226,'2026-09-01','Present'),(227,227,'2026-09-01','Present'),(228,228,'2026-09-01','Present'),(229,229,'2026-09-01','Present'),(230,230,'2026-09-01','Absent'),(231,231,'2026-09-01','Late'),(232,232,'2026-09-01','Present'),(233,233,'2026-09-01','Present'),(234,234,'2026-09-01','Present'),(235,235,'2026-09-01','Present'),(236,236,'2026-09-01','Present'),(237,237,'2026-09-01','Present'),(238,238,'2026-09-01','Present'),(239,239,'2026-09-01','Present'),(240,240,'2026-09-01','Absent'),(241,241,'2026-09-01','Late'),(242,242,'2026-09-01','Present'),(243,243,'2026-09-01','Present'),(244,244,'2026-09-01','Present'),(245,245,'2026-09-01','Present'),(246,246,'2026-09-01','Present'),(247,247,'2026-09-01','Present'),(248,248,'2026-09-01','Present'),(249,249,'2026-09-01','Present'),(250,250,'2026-09-01','Absent'),(251,251,'2026-09-01','Late'),(252,252,'2026-09-01','Present'),(253,253,'2026-09-01','Present'),(254,254,'2026-09-01','Present'),(255,255,'2026-09-01','Present'),(256,256,'2026-09-01','Present'),(257,257,'2026-09-01','Present'),(258,258,'2026-09-01','Present'),(259,259,'2026-09-01','Present'),(260,260,'2026-09-01','Absent'),(261,261,'2026-09-01','Late'),(262,262,'2026-09-01','Present'),(263,263,'2026-09-01','Present'),(264,264,'2026-09-01','Present'),(265,265,'2026-09-01','Present'),(266,266,'2026-09-01','Present'),(267,267,'2026-09-01','Present'),(268,268,'2026-09-01','Present'),(269,269,'2026-09-01','Present'),(270,270,'2026-09-01','Absent'),(271,271,'2026-09-01','Late'),(272,272,'2026-09-01','Present'),(273,273,'2026-09-01','Present'),(274,274,'2026-09-01','Present'),(275,275,'2026-09-01','Present'),(276,276,'2026-09-01','Present'),(277,277,'2026-09-01','Present'),(278,278,'2026-09-01','Present'),(279,279,'2026-09-01','Present'),(280,280,'2026-09-01','Absent'),(281,281,'2026-09-01','Late'),(282,282,'2026-09-01','Present'),(283,283,'2026-09-01','Present'),(284,284,'2026-09-01','Present'),(285,285,'2026-09-01','Present'),(286,286,'2026-09-01','Present'),(287,287,'2026-09-01','Present'),(288,288,'2026-09-01','Present'),(289,289,'2026-09-01','Present'),(290,290,'2026-09-01','Absent'),(291,291,'2026-09-01','Late'),(292,292,'2026-09-01','Present'),(293,293,'2026-09-01','Present'),(294,294,'2026-09-01','Present'),(295,295,'2026-09-01','Present'),(296,296,'2026-09-01','Present'),(297,297,'2026-09-01','Present'),(298,298,'2026-09-01','Present'),(299,299,'2026-09-01','Present'),(300,300,'2026-09-01','Absent'),(301,301,'2026-09-01','Late'),(302,302,'2026-09-01','Present'),(303,303,'2026-09-01','Present'),(304,304,'2026-09-01','Present'),(305,305,'2026-09-01','Present'),(306,306,'2026-09-01','Present'),(307,307,'2026-09-01','Present'),(308,308,'2026-09-01','Present'),(309,309,'2026-09-01','Present'),(310,310,'2026-09-01','Absent'),(311,311,'2026-09-01','Late'),(312,312,'2026-09-01','Present'),(313,313,'2026-09-01','Present'),(314,314,'2026-09-01','Present'),(315,315,'2026-09-01','Present'),(316,316,'2026-09-01','Present'),(317,317,'2026-09-01','Present'),(318,318,'2026-09-01','Present'),(319,319,'2026-09-01','Present'),(320,320,'2026-09-01','Absent'),(321,321,'2026-09-01','Late'),(322,322,'2026-09-01','Present'),(323,323,'2026-09-01','Present'),(324,324,'2026-09-01','Present'),(325,325,'2026-09-01','Present'),(326,326,'2026-09-01','Present'),(327,327,'2026-09-01','Present'),(328,328,'2026-09-01','Present'),(329,329,'2026-09-01','Present'),(330,330,'2026-09-01','Absent'),(331,331,'2026-09-01','Late'),(332,332,'2026-09-01','Present'),(333,333,'2026-09-01','Present'),(334,334,'2026-09-01','Present'),(335,335,'2026-09-01','Present'),(336,336,'2026-09-01','Present'),(337,337,'2026-09-01','Present'),(338,338,'2026-09-01','Present'),(339,339,'2026-09-01','Present'),(340,340,'2026-09-01','Absent'),(341,341,'2026-09-01','Late'),(342,342,'2026-09-01','Present'),(343,343,'2026-09-01','Present'),(344,344,'2026-09-01','Present'),(345,345,'2026-09-01','Present'),(346,346,'2026-09-01','Present'),(347,347,'2026-09-01','Present'),(348,348,'2026-09-01','Present'),(349,349,'2026-09-01','Present'),(350,350,'2026-09-01','Absent'),(351,351,'2026-09-01','Late'),(352,352,'2026-09-01','Present'),(353,353,'2026-09-01','Present'),(354,354,'2026-09-01','Present'),(355,355,'2026-09-01','Present'),(356,356,'2026-09-01','Present'),(357,357,'2026-09-01','Present'),(358,358,'2026-09-01','Present'),(359,359,'2026-09-01','Present'),(360,360,'2026-09-01','Absent'),(361,361,'2026-09-01','Late'),(362,362,'2026-09-01','Present'),(363,363,'2026-09-01','Present'),(364,364,'2026-09-01','Present'),(365,365,'2026-09-01','Present'),(366,366,'2026-09-01','Present'),(367,367,'2026-09-01','Present'),(368,368,'2026-09-01','Present'),(369,369,'2026-09-01','Present'),(370,370,'2026-09-01','Absent'),(371,371,'2026-09-01','Late'),(372,372,'2026-09-01','Present'),(373,373,'2026-09-01','Present'),(374,374,'2026-09-01','Present'),(375,375,'2026-09-01','Present'),(376,376,'2026-09-01','Present'),(377,377,'2026-09-01','Present'),(378,378,'2026-09-01','Present'),(379,379,'2026-09-01','Present'),(380,380,'2026-09-01','Absent'),(381,381,'2026-09-01','Late'),(382,382,'2026-09-01','Present'),(383,383,'2026-09-01','Present'),(384,384,'2026-09-01','Present'),(385,385,'2026-09-01','Present'),(386,386,'2026-09-01','Present'),(387,387,'2026-09-01','Present'),(388,388,'2026-09-01','Present'),(389,389,'2026-09-01','Present'),(390,390,'2026-09-01','Absent'),(391,391,'2026-09-01','Late'),(392,392,'2026-09-01','Present'),(393,393,'2026-09-01','Present'),(394,394,'2026-09-01','Present'),(395,395,'2026-09-01','Present'),(396,396,'2026-09-01','Present'),(397,397,'2026-09-01','Present'),(398,398,'2026-09-01','Present'),(399,399,'2026-09-01','Present'),(400,400,'2026-09-01','Absent');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `classroom_id` int NOT NULL AUTO_INCREMENT,
  `building_name` varchar(100) NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`classroom_id`),
  UNIQUE KEY `uq_classroom` (`building_name`,`room_number`),
  CONSTRAINT `chk_classroom_capacity` CHECK ((`capacity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,'B1','101',60),(2,'B1','102',60),(3,'B1','103',60),(4,'B1','104',60),(5,'B1','105',60),(6,'C2','101',60),(7,'C2','102',60),(8,'C2','103',60),(9,'C2','104',60),(10,'C2','105',60),(11,'B3','101',60),(12,'B3','102',60),(13,'B3','103',60),(14,'B3','104',60),(15,'B3','105',60),(16,'B4','101',60),(17,'B4','102',60),(18,'B4','103',60),(19,'B4','104',60),(20,'B4','105',60);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `credits` int NOT NULL,
  `course_type` varchar(30) DEFAULT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_code` (`course_code`),
  KEY `fk_course_department` (`department_id`),
  CONSTRAINT `fk_course_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_course_credits` CHECK ((`credits` between 1 and 10))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Database Management Systems','CSE301',4,'Core',1),(2,'Data Structures and Algorithms','CSE302',4,'Core',1),(3,'Java Programming','CSE303',3,'Core',1),(4,'Computer Organization','CSE304',3,'Core',1),(5,'Digital Electronics','ECE301',4,'Core',2),(6,'Signals and Systems','ECE302',4,'Core',2),(7,'Analog Circuits','ECE303',3,'Core',2),(8,'Communication Systems','ECE304',3,'Core',2),(9,'Engineering Mechanics','ME301',4,'Core',3),(10,'Thermodynamics','ME302',4,'Core',3),(11,'Fluid Mechanics','ME303',3,'Core',3),(12,'Manufacturing Processes','ME304',3,'Core',3),(13,'Principles of Management','MBA301',4,'Core',4),(14,'Marketing Management','MBA302',4,'Core',4),(15,'Financial Management','MBA303',3,'Core',4),(16,'Business Communication','MBA304',3,'Core',4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `department_code` varchar(10) NOT NULL,
  `office_location` varchar(100) DEFAULT NULL,
  `hod_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `department_code` (`department_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science and Engineering','CSE','B1','Dr Gaurav Bathla'),(2,'Electronics and Communication Engineering','ECE','C2','Dr Jasneet Kaur'),(3,'Mechanical Engineering','ME','B3','Dr Ishdeep Singhla'),(4,'Business Administration','MBA','B4','Dr Manoj Singla');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `enrollment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `enrollment_date` date NOT NULL,
  `enrollment_status` varchar(20) DEFAULT 'Enrolled',
  PRIMARY KEY (`enrollment_id`),
  UNIQUE KEY `uq_student_course_semester` (`student_id`,`course_id`,`semester_id`),
  KEY `fk_enrollment_course` (`course_id`),
  KEY `fk_enrollment_semester` (`semester_id`),
  CONSTRAINT `fk_enrollment_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_enrollment_semester` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,1,1,1,'2026-08-05','Enrolled'),(2,2,1,1,'2026-08-05','Enrolled'),(3,3,1,1,'2026-08-05','Enrolled'),(4,4,1,1,'2026-08-05','Enrolled'),(5,5,1,1,'2026-08-05','Enrolled'),(6,6,1,1,'2026-08-05','Enrolled'),(7,7,1,1,'2026-08-05','Enrolled'),(8,8,1,1,'2026-08-05','Enrolled'),(9,9,1,1,'2026-08-05','Enrolled'),(10,10,1,1,'2026-08-05','Enrolled'),(11,11,1,1,'2026-08-05','Enrolled'),(12,12,1,1,'2026-08-05','Enrolled'),(13,13,1,1,'2026-08-05','Enrolled'),(14,14,1,1,'2026-08-05','Enrolled'),(15,15,1,1,'2026-08-05','Enrolled'),(16,16,1,1,'2026-08-05','Enrolled'),(17,17,1,1,'2026-08-05','Enrolled'),(18,18,1,1,'2026-08-05','Enrolled'),(19,19,1,1,'2026-08-05','Enrolled'),(20,20,1,1,'2026-08-05','Enrolled'),(21,21,1,1,'2026-08-05','Enrolled'),(22,22,1,1,'2026-08-05','Enrolled'),(23,23,1,1,'2026-08-05','Enrolled'),(24,24,1,1,'2026-08-05','Enrolled'),(25,25,1,1,'2026-08-05','Enrolled'),(26,1,2,1,'2026-08-05','Enrolled'),(27,2,2,1,'2026-08-05','Enrolled'),(28,3,2,1,'2026-08-05','Enrolled'),(29,4,2,1,'2026-08-05','Enrolled'),(30,5,2,1,'2026-08-05','Enrolled'),(31,6,2,1,'2026-08-05','Enrolled'),(32,7,2,1,'2026-08-05','Enrolled'),(33,8,2,1,'2026-08-05','Enrolled'),(34,9,2,1,'2026-08-05','Enrolled'),(35,10,2,1,'2026-08-05','Enrolled'),(36,11,2,1,'2026-08-05','Enrolled'),(37,12,2,1,'2026-08-05','Enrolled'),(38,13,2,1,'2026-08-05','Enrolled'),(39,14,2,1,'2026-08-05','Enrolled'),(40,15,2,1,'2026-08-05','Enrolled'),(41,16,2,1,'2026-08-05','Enrolled'),(42,17,2,1,'2026-08-05','Enrolled'),(43,18,2,1,'2026-08-05','Enrolled'),(44,19,2,1,'2026-08-05','Enrolled'),(45,20,2,1,'2026-08-05','Enrolled'),(46,21,2,1,'2026-08-05','Enrolled'),(47,22,2,1,'2026-08-05','Enrolled'),(48,23,2,1,'2026-08-05','Enrolled'),(49,24,2,1,'2026-08-05','Enrolled'),(50,25,2,1,'2026-08-05','Enrolled'),(51,1,3,1,'2026-08-05','Enrolled'),(52,2,3,1,'2026-08-05','Enrolled'),(53,3,3,1,'2026-08-05','Enrolled'),(54,4,3,1,'2026-08-05','Enrolled'),(55,5,3,1,'2026-08-05','Enrolled'),(56,6,3,1,'2026-08-05','Enrolled'),(57,7,3,1,'2026-08-05','Enrolled'),(58,8,3,1,'2026-08-05','Enrolled'),(59,9,3,1,'2026-08-05','Enrolled'),(60,10,3,1,'2026-08-05','Enrolled'),(61,11,3,1,'2026-08-05','Enrolled'),(62,12,3,1,'2026-08-05','Enrolled'),(63,13,3,1,'2026-08-05','Enrolled'),(64,14,3,1,'2026-08-05','Enrolled'),(65,15,3,1,'2026-08-05','Enrolled'),(66,16,3,1,'2026-08-05','Enrolled'),(67,17,3,1,'2026-08-05','Enrolled'),(68,18,3,1,'2026-08-05','Enrolled'),(69,19,3,1,'2026-08-05','Enrolled'),(70,20,3,1,'2026-08-05','Enrolled'),(71,21,3,1,'2026-08-05','Enrolled'),(72,22,3,1,'2026-08-05','Enrolled'),(73,23,3,1,'2026-08-05','Enrolled'),(74,24,3,1,'2026-08-05','Enrolled'),(75,25,3,1,'2026-08-05','Enrolled'),(76,1,4,1,'2026-08-05','Enrolled'),(77,2,4,1,'2026-08-05','Enrolled'),(78,3,4,1,'2026-08-05','Enrolled'),(79,4,4,1,'2026-08-05','Enrolled'),(80,5,4,1,'2026-08-05','Enrolled'),(81,6,4,1,'2026-08-05','Enrolled'),(82,7,4,1,'2026-08-05','Enrolled'),(83,8,4,1,'2026-08-05','Enrolled'),(84,9,4,1,'2026-08-05','Enrolled'),(85,10,4,1,'2026-08-05','Enrolled'),(86,11,4,1,'2026-08-05','Enrolled'),(87,12,4,1,'2026-08-05','Enrolled'),(88,13,4,1,'2026-08-05','Enrolled'),(89,14,4,1,'2026-08-05','Enrolled'),(90,15,4,1,'2026-08-05','Enrolled'),(91,16,4,1,'2026-08-05','Enrolled'),(92,17,4,1,'2026-08-05','Enrolled'),(93,18,4,1,'2026-08-05','Enrolled'),(94,19,4,1,'2026-08-05','Enrolled'),(95,20,4,1,'2026-08-05','Enrolled'),(96,21,4,1,'2026-08-05','Enrolled'),(97,22,4,1,'2026-08-05','Enrolled'),(98,23,4,1,'2026-08-05','Enrolled'),(99,24,4,1,'2026-08-05','Enrolled'),(100,25,4,1,'2026-08-05','Enrolled'),(101,26,5,1,'2026-08-05','Enrolled'),(102,27,5,1,'2026-08-05','Enrolled'),(103,28,5,1,'2026-08-05','Enrolled'),(104,29,5,1,'2026-08-05','Enrolled'),(105,30,5,1,'2026-08-05','Enrolled'),(106,31,5,1,'2026-08-05','Enrolled'),(107,32,5,1,'2026-08-05','Enrolled'),(108,33,5,1,'2026-08-05','Enrolled'),(109,34,5,1,'2026-08-05','Enrolled'),(110,35,5,1,'2026-08-05','Enrolled'),(111,36,5,1,'2026-08-05','Enrolled'),(112,37,5,1,'2026-08-05','Enrolled'),(113,38,5,1,'2026-08-05','Enrolled'),(114,39,5,1,'2026-08-05','Enrolled'),(115,40,5,1,'2026-08-05','Enrolled'),(116,41,5,1,'2026-08-05','Enrolled'),(117,42,5,1,'2026-08-05','Enrolled'),(118,43,5,1,'2026-08-05','Enrolled'),(119,44,5,1,'2026-08-05','Enrolled'),(120,45,5,1,'2026-08-05','Enrolled'),(121,46,5,1,'2026-08-05','Enrolled'),(122,47,5,1,'2026-08-05','Enrolled'),(123,48,5,1,'2026-08-05','Enrolled'),(124,49,5,1,'2026-08-05','Enrolled'),(125,50,5,1,'2026-08-05','Enrolled'),(126,26,6,1,'2026-08-05','Enrolled'),(127,27,6,1,'2026-08-05','Enrolled'),(128,28,6,1,'2026-08-05','Enrolled'),(129,29,6,1,'2026-08-05','Enrolled'),(130,30,6,1,'2026-08-05','Enrolled'),(131,31,6,1,'2026-08-05','Enrolled'),(132,32,6,1,'2026-08-05','Enrolled'),(133,33,6,1,'2026-08-05','Enrolled'),(134,34,6,1,'2026-08-05','Enrolled'),(135,35,6,1,'2026-08-05','Enrolled'),(136,36,6,1,'2026-08-05','Enrolled'),(137,37,6,1,'2026-08-05','Enrolled'),(138,38,6,1,'2026-08-05','Enrolled'),(139,39,6,1,'2026-08-05','Enrolled'),(140,40,6,1,'2026-08-05','Enrolled'),(141,41,6,1,'2026-08-05','Enrolled'),(142,42,6,1,'2026-08-05','Enrolled'),(143,43,6,1,'2026-08-05','Enrolled'),(144,44,6,1,'2026-08-05','Enrolled'),(145,45,6,1,'2026-08-05','Enrolled'),(146,46,6,1,'2026-08-05','Enrolled'),(147,47,6,1,'2026-08-05','Enrolled'),(148,48,6,1,'2026-08-05','Enrolled'),(149,49,6,1,'2026-08-05','Enrolled'),(150,50,6,1,'2026-08-05','Enrolled'),(151,26,7,1,'2026-08-05','Enrolled'),(152,27,7,1,'2026-08-05','Enrolled'),(153,28,7,1,'2026-08-05','Enrolled'),(154,29,7,1,'2026-08-05','Enrolled'),(155,30,7,1,'2026-08-05','Enrolled'),(156,31,7,1,'2026-08-05','Enrolled'),(157,32,7,1,'2026-08-05','Enrolled'),(158,33,7,1,'2026-08-05','Enrolled'),(159,34,7,1,'2026-08-05','Enrolled'),(160,35,7,1,'2026-08-05','Enrolled'),(161,36,7,1,'2026-08-05','Enrolled'),(162,37,7,1,'2026-08-05','Enrolled'),(163,38,7,1,'2026-08-05','Enrolled'),(164,39,7,1,'2026-08-05','Enrolled'),(165,40,7,1,'2026-08-05','Enrolled'),(166,41,7,1,'2026-08-05','Enrolled'),(167,42,7,1,'2026-08-05','Enrolled'),(168,43,7,1,'2026-08-05','Enrolled'),(169,44,7,1,'2026-08-05','Enrolled'),(170,45,7,1,'2026-08-05','Enrolled'),(171,46,7,1,'2026-08-05','Enrolled'),(172,47,7,1,'2026-08-05','Enrolled'),(173,48,7,1,'2026-08-05','Enrolled'),(174,49,7,1,'2026-08-05','Enrolled'),(175,50,7,1,'2026-08-05','Enrolled'),(176,26,8,1,'2026-08-05','Enrolled'),(177,27,8,1,'2026-08-05','Enrolled'),(178,28,8,1,'2026-08-05','Enrolled'),(179,29,8,1,'2026-08-05','Enrolled'),(180,30,8,1,'2026-08-05','Enrolled'),(181,31,8,1,'2026-08-05','Enrolled'),(182,32,8,1,'2026-08-05','Enrolled'),(183,33,8,1,'2026-08-05','Enrolled'),(184,34,8,1,'2026-08-05','Enrolled'),(185,35,8,1,'2026-08-05','Enrolled'),(186,36,8,1,'2026-08-05','Enrolled'),(187,37,8,1,'2026-08-05','Enrolled'),(188,38,8,1,'2026-08-05','Enrolled'),(189,39,8,1,'2026-08-05','Enrolled'),(190,40,8,1,'2026-08-05','Enrolled'),(191,41,8,1,'2026-08-05','Enrolled'),(192,42,8,1,'2026-08-05','Enrolled'),(193,43,8,1,'2026-08-05','Enrolled'),(194,44,8,1,'2026-08-05','Enrolled'),(195,45,8,1,'2026-08-05','Enrolled'),(196,46,8,1,'2026-08-05','Enrolled'),(197,47,8,1,'2026-08-05','Enrolled'),(198,48,8,1,'2026-08-05','Enrolled'),(199,49,8,1,'2026-08-05','Enrolled'),(200,50,8,1,'2026-08-05','Enrolled'),(201,51,9,1,'2026-08-05','Enrolled'),(202,52,9,1,'2026-08-05','Enrolled'),(203,53,9,1,'2026-08-05','Enrolled'),(204,54,9,1,'2026-08-05','Enrolled'),(205,55,9,1,'2026-08-05','Enrolled'),(206,56,9,1,'2026-08-05','Enrolled'),(207,57,9,1,'2026-08-05','Enrolled'),(208,58,9,1,'2026-08-05','Enrolled'),(209,59,9,1,'2026-08-05','Enrolled'),(210,60,9,1,'2026-08-05','Enrolled'),(211,61,9,1,'2026-08-05','Enrolled'),(212,62,9,1,'2026-08-05','Enrolled'),(213,63,9,1,'2026-08-05','Enrolled'),(214,64,9,1,'2026-08-05','Enrolled'),(215,65,9,1,'2026-08-05','Enrolled'),(216,66,9,1,'2026-08-05','Enrolled'),(217,67,9,1,'2026-08-05','Enrolled'),(218,68,9,1,'2026-08-05','Enrolled'),(219,69,9,1,'2026-08-05','Enrolled'),(220,70,9,1,'2026-08-05','Enrolled'),(221,71,9,1,'2026-08-05','Enrolled'),(222,72,9,1,'2026-08-05','Enrolled'),(223,73,9,1,'2026-08-05','Enrolled'),(224,74,9,1,'2026-08-05','Enrolled'),(225,75,9,1,'2026-08-05','Enrolled'),(226,51,10,1,'2026-08-05','Enrolled'),(227,52,10,1,'2026-08-05','Enrolled'),(228,53,10,1,'2026-08-05','Enrolled'),(229,54,10,1,'2026-08-05','Enrolled'),(230,55,10,1,'2026-08-05','Enrolled'),(231,56,10,1,'2026-08-05','Enrolled'),(232,57,10,1,'2026-08-05','Enrolled'),(233,58,10,1,'2026-08-05','Enrolled'),(234,59,10,1,'2026-08-05','Enrolled'),(235,60,10,1,'2026-08-05','Enrolled'),(236,61,10,1,'2026-08-05','Enrolled'),(237,62,10,1,'2026-08-05','Enrolled'),(238,63,10,1,'2026-08-05','Enrolled'),(239,64,10,1,'2026-08-05','Enrolled'),(240,65,10,1,'2026-08-05','Enrolled'),(241,66,10,1,'2026-08-05','Enrolled'),(242,67,10,1,'2026-08-05','Enrolled'),(243,68,10,1,'2026-08-05','Enrolled'),(244,69,10,1,'2026-08-05','Enrolled'),(245,70,10,1,'2026-08-05','Enrolled'),(246,71,10,1,'2026-08-05','Enrolled'),(247,72,10,1,'2026-08-05','Enrolled'),(248,73,10,1,'2026-08-05','Enrolled'),(249,74,10,1,'2026-08-05','Enrolled'),(250,75,10,1,'2026-08-05','Enrolled'),(251,51,11,1,'2026-08-05','Enrolled'),(252,52,11,1,'2026-08-05','Enrolled'),(253,53,11,1,'2026-08-05','Enrolled'),(254,54,11,1,'2026-08-05','Enrolled'),(255,55,11,1,'2026-08-05','Enrolled'),(256,56,11,1,'2026-08-05','Enrolled'),(257,57,11,1,'2026-08-05','Enrolled'),(258,58,11,1,'2026-08-05','Enrolled'),(259,59,11,1,'2026-08-05','Enrolled'),(260,60,11,1,'2026-08-05','Enrolled'),(261,61,11,1,'2026-08-05','Enrolled'),(262,62,11,1,'2026-08-05','Enrolled'),(263,63,11,1,'2026-08-05','Enrolled'),(264,64,11,1,'2026-08-05','Enrolled'),(265,65,11,1,'2026-08-05','Enrolled'),(266,66,11,1,'2026-08-05','Enrolled'),(267,67,11,1,'2026-08-05','Enrolled'),(268,68,11,1,'2026-08-05','Enrolled'),(269,69,11,1,'2026-08-05','Enrolled'),(270,70,11,1,'2026-08-05','Enrolled'),(271,71,11,1,'2026-08-05','Enrolled'),(272,72,11,1,'2026-08-05','Enrolled'),(273,73,11,1,'2026-08-05','Enrolled'),(274,74,11,1,'2026-08-05','Enrolled'),(275,75,11,1,'2026-08-05','Enrolled'),(276,51,12,1,'2026-08-05','Enrolled'),(277,52,12,1,'2026-08-05','Enrolled'),(278,53,12,1,'2026-08-05','Enrolled'),(279,54,12,1,'2026-08-05','Enrolled'),(280,55,12,1,'2026-08-05','Enrolled'),(281,56,12,1,'2026-08-05','Enrolled'),(282,57,12,1,'2026-08-05','Enrolled'),(283,58,12,1,'2026-08-05','Enrolled'),(284,59,12,1,'2026-08-05','Enrolled'),(285,60,12,1,'2026-08-05','Enrolled'),(286,61,12,1,'2026-08-05','Enrolled'),(287,62,12,1,'2026-08-05','Enrolled'),(288,63,12,1,'2026-08-05','Enrolled'),(289,64,12,1,'2026-08-05','Enrolled'),(290,65,12,1,'2026-08-05','Enrolled'),(291,66,12,1,'2026-08-05','Enrolled'),(292,67,12,1,'2026-08-05','Enrolled'),(293,68,12,1,'2026-08-05','Enrolled'),(294,69,12,1,'2026-08-05','Enrolled'),(295,70,12,1,'2026-08-05','Enrolled'),(296,71,12,1,'2026-08-05','Enrolled'),(297,72,12,1,'2026-08-05','Enrolled'),(298,73,12,1,'2026-08-05','Enrolled'),(299,74,12,1,'2026-08-05','Enrolled'),(300,75,12,1,'2026-08-05','Enrolled'),(301,76,13,1,'2026-08-05','Enrolled'),(302,77,13,1,'2026-08-05','Enrolled'),(303,78,13,1,'2026-08-05','Enrolled'),(304,79,13,1,'2026-08-05','Enrolled'),(305,80,13,1,'2026-08-05','Enrolled'),(306,81,13,1,'2026-08-05','Enrolled'),(307,82,13,1,'2026-08-05','Enrolled'),(308,83,13,1,'2026-08-05','Enrolled'),(309,84,13,1,'2026-08-05','Enrolled'),(310,85,13,1,'2026-08-05','Enrolled'),(311,86,13,1,'2026-08-05','Enrolled'),(312,87,13,1,'2026-08-05','Enrolled'),(313,88,13,1,'2026-08-05','Enrolled'),(314,89,13,1,'2026-08-05','Enrolled'),(315,90,13,1,'2026-08-05','Enrolled'),(316,91,13,1,'2026-08-05','Enrolled'),(317,92,13,1,'2026-08-05','Enrolled'),(318,93,13,1,'2026-08-05','Enrolled'),(319,94,13,1,'2026-08-05','Enrolled'),(320,95,13,1,'2026-08-05','Enrolled'),(321,96,13,1,'2026-08-05','Enrolled'),(322,97,13,1,'2026-08-05','Enrolled'),(323,98,13,1,'2026-08-05','Enrolled'),(324,99,13,1,'2026-08-05','Enrolled'),(325,100,13,1,'2026-08-05','Enrolled'),(326,76,14,1,'2026-08-05','Enrolled'),(327,77,14,1,'2026-08-05','Enrolled'),(328,78,14,1,'2026-08-05','Enrolled'),(329,79,14,1,'2026-08-05','Enrolled'),(330,80,14,1,'2026-08-05','Enrolled'),(331,81,14,1,'2026-08-05','Enrolled'),(332,82,14,1,'2026-08-05','Enrolled'),(333,83,14,1,'2026-08-05','Enrolled'),(334,84,14,1,'2026-08-05','Enrolled'),(335,85,14,1,'2026-08-05','Enrolled'),(336,86,14,1,'2026-08-05','Enrolled'),(337,87,14,1,'2026-08-05','Enrolled'),(338,88,14,1,'2026-08-05','Enrolled'),(339,89,14,1,'2026-08-05','Enrolled'),(340,90,14,1,'2026-08-05','Enrolled'),(341,91,14,1,'2026-08-05','Enrolled'),(342,92,14,1,'2026-08-05','Enrolled'),(343,93,14,1,'2026-08-05','Enrolled'),(344,94,14,1,'2026-08-05','Enrolled'),(345,95,14,1,'2026-08-05','Enrolled'),(346,96,14,1,'2026-08-05','Enrolled'),(347,97,14,1,'2026-08-05','Enrolled'),(348,98,14,1,'2026-08-05','Enrolled'),(349,99,14,1,'2026-08-05','Enrolled'),(350,100,14,1,'2026-08-05','Enrolled'),(351,76,15,1,'2026-08-05','Enrolled'),(352,77,15,1,'2026-08-05','Enrolled'),(353,78,15,1,'2026-08-05','Enrolled'),(354,79,15,1,'2026-08-05','Enrolled'),(355,80,15,1,'2026-08-05','Enrolled'),(356,81,15,1,'2026-08-05','Enrolled'),(357,82,15,1,'2026-08-05','Enrolled'),(358,83,15,1,'2026-08-05','Enrolled'),(359,84,15,1,'2026-08-05','Enrolled'),(360,85,15,1,'2026-08-05','Enrolled'),(361,86,15,1,'2026-08-05','Enrolled'),(362,87,15,1,'2026-08-05','Enrolled'),(363,88,15,1,'2026-08-05','Enrolled'),(364,89,15,1,'2026-08-05','Enrolled'),(365,90,15,1,'2026-08-05','Enrolled'),(366,91,15,1,'2026-08-05','Enrolled'),(367,92,15,1,'2026-08-05','Enrolled'),(368,93,15,1,'2026-08-05','Enrolled'),(369,94,15,1,'2026-08-05','Enrolled'),(370,95,15,1,'2026-08-05','Enrolled'),(371,96,15,1,'2026-08-05','Enrolled'),(372,97,15,1,'2026-08-05','Enrolled'),(373,98,15,1,'2026-08-05','Enrolled'),(374,99,15,1,'2026-08-05','Enrolled'),(375,100,15,1,'2026-08-05','Enrolled'),(376,76,16,1,'2026-08-05','Enrolled'),(377,77,16,1,'2026-08-05','Enrolled'),(378,78,16,1,'2026-08-05','Enrolled'),(379,79,16,1,'2026-08-05','Enrolled'),(380,80,16,1,'2026-08-05','Enrolled'),(381,81,16,1,'2026-08-05','Enrolled'),(382,82,16,1,'2026-08-05','Enrolled'),(383,83,16,1,'2026-08-05','Enrolled'),(384,84,16,1,'2026-08-05','Enrolled'),(385,85,16,1,'2026-08-05','Enrolled'),(386,86,16,1,'2026-08-05','Enrolled'),(387,87,16,1,'2026-08-05','Enrolled'),(388,88,16,1,'2026-08-05','Enrolled'),(389,89,16,1,'2026-08-05','Enrolled'),(390,90,16,1,'2026-08-05','Enrolled'),(391,91,16,1,'2026-08-05','Enrolled'),(392,92,16,1,'2026-08-05','Enrolled'),(393,93,16,1,'2026-08-05','Enrolled'),(394,94,16,1,'2026-08-05','Enrolled'),(395,95,16,1,'2026-08-05','Enrolled'),(396,96,16,1,'2026-08-05','Enrolled'),(397,97,16,1,'2026-08-05','Enrolled'),(398,98,16,1,'2026-08-05','Enrolled'),(399,99,16,1,'2026-08-05','Enrolled'),(400,100,16,1,'2026-08-05','Enrolled');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examination` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `exam_date` date NOT NULL,
  `maximum_marks` decimal(6,2) NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `fk_exam_course` (`course_id`),
  KEY `fk_exam_semester` (`semester_id`),
  CONSTRAINT `fk_exam_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_exam_semester` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  CONSTRAINT `chk_maximum_marks` CHECK ((`maximum_marks` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,1,1,'MST 1','2026-09-15',30.00),(2,2,1,'MST 1','2026-09-15',30.00),(3,3,1,'MST 1','2026-09-15',30.00),(4,4,1,'MST 1','2026-09-15',30.00),(5,5,1,'MST 1','2026-09-16',30.00),(6,6,1,'MST 1','2026-09-16',30.00),(7,7,1,'MST 1','2026-09-16',30.00),(8,8,1,'MST 1','2026-09-16',30.00),(9,9,1,'MST 1','2026-09-17',30.00),(10,10,1,'MST 1','2026-09-17',30.00),(11,11,1,'MST 1','2026-09-17',30.00),(12,12,1,'MST 1','2026-09-17',30.00),(13,13,1,'MST 1','2026-09-18',30.00),(14,14,1,'MST 1','2026-09-18',30.00),(15,15,1,'MST 1','2026-09-18',30.00),(16,16,1,'MST 1','2026-09-18',30.00);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_faculty_department` (`department_id`),
  CONSTRAINT `fk_faculty_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `chk_faculty_salary` CHECK (((`salary` is null) or (`salary` >= 0)))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'CSE Faculty 1','cse1@universe.edu','9811100001','Professor','2020-07-01',85000.00,1),(2,'CSE Faculty 2','cse2@universe.edu','9811100002','Associate Professor','2021-07-01',75000.00,1),(3,'CSE Faculty 3','cse3@universe.edu','9811100003','Assistant Professor','2022-07-01',60000.00,1),(4,'CSE Faculty 4','cse4@universe.edu','9811100004','Assistant Professor','2023-07-01',55000.00,1),(5,'CSE Faculty 5','cse5@universe.edu','9811100005','Assistant Professor','2024-07-01',50000.00,1),(6,'ECE Faculty 1','ece1@universe.edu','9811100006','Professor','2020-07-01',85000.00,2),(7,'ECE Faculty 2','ece2@universe.edu','9811100007','Associate Professor','2021-07-01',75000.00,2),(8,'ECE Faculty 3','ece3@universe.edu','9811100008','Assistant Professor','2022-07-01',60000.00,2),(9,'ECE Faculty 4','ece4@universe.edu','9811100009','Assistant Professor','2023-07-01',55000.00,2),(10,'ECE Faculty 5','ece5@universe.edu','9811100010','Assistant Professor','2024-07-01',50000.00,2),(11,'ME Faculty 1','me1@universe.edu','9811100011','Professor','2020-07-01',85000.00,3),(12,'ME Faculty 2','me2@universe.edu','9811100012','Associate Professor','2021-07-01',75000.00,3),(13,'ME Faculty 3','me3@universe.edu','9811100013','Assistant Professor','2022-07-01',60000.00,3),(14,'ME Faculty 4','me4@universe.edu','9811100014','Assistant Professor','2023-07-01',55000.00,3),(15,'ME Faculty 5','me5@universe.edu','9811100015','Assistant Professor','2024-07-01',50000.00,3),(16,'MBA Faculty 1','mba1@universe.edu','9811100016','Professor','2020-07-01',85000.00,4),(17,'MBA Faculty 2','mba2@universe.edu','9811100017','Associate Professor','2021-07-01',75000.00,4),(18,'MBA Faculty 3','mba3@universe.edu','9811100018','Assistant Professor','2022-07-01',60000.00,4),(19,'MBA Faculty 4','mba4@universe.edu','9811100019','Assistant Professor','2023-07-01',55000.00,4),(20,'MBA Faculty 5','mba5@universe.edu','9811100020','Assistant Professor','2024-07-01',50000.00,4);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT 'Pending',
  `transaction_reference` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `transaction_reference` (`transaction_reference`),
  KEY `fk_fee_student` (`student_id`),
  KEY `fk_fee_semester` (`semester_id`),
  CONSTRAINT `fk_fee_semester` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  CONSTRAINT `fk_fee_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `chk_fee_amount` CHECK ((`amount` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (1,1,1,45100.00,'2026-08-10','UPI','Paid','UVFEE00001'),(2,2,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00002'),(3,3,1,45000.00,'2026-08-10','Card','Paid','UVFEE00003'),(4,4,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00004'),(5,5,1,45000.00,NULL,'Net Banking','Pending','UVFEE00005'),(6,6,1,45000.00,'2026-08-10','Card','Paid','UVFEE00006'),(7,7,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00007'),(8,8,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00008'),(9,9,1,45000.00,'2026-08-10','Card','Paid','UVFEE00009'),(10,10,1,45000.00,NULL,'UPI','Pending','UVFEE00010'),(11,11,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00011'),(12,12,1,45000.00,'2026-08-10','Card','Paid','UVFEE00012'),(13,13,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00013'),(14,14,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00014'),(15,15,1,45000.00,NULL,'Card','Pending','UVFEE00015'),(16,16,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00016'),(17,17,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00017'),(18,18,1,45000.00,'2026-08-10','Card','Paid','UVFEE00018'),(19,19,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00019'),(20,20,1,45000.00,NULL,'Net Banking','Pending','UVFEE00020'),(21,21,1,45000.00,'2026-08-10','Card','Paid','UVFEE00021'),(22,22,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00022'),(23,23,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00023'),(24,24,1,45000.00,'2026-08-10','Card','Paid','UVFEE00024'),(25,25,1,45000.00,NULL,'UPI','Pending','UVFEE00025'),(26,26,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00026'),(27,27,1,45000.00,'2026-08-10','Card','Paid','UVFEE00027'),(28,28,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00028'),(29,29,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00029'),(30,30,1,45000.00,NULL,'Card','Pending','UVFEE00030'),(31,31,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00031'),(32,32,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00032'),(33,33,1,45000.00,'2026-08-10','Card','Paid','UVFEE00033'),(34,34,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00034'),(35,35,1,45000.00,NULL,'Net Banking','Pending','UVFEE00035'),(36,36,1,45000.00,'2026-08-10','Card','Paid','UVFEE00036'),(37,37,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00037'),(38,38,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00038'),(39,39,1,45000.00,'2026-08-10','Card','Paid','UVFEE00039'),(40,40,1,45000.00,NULL,'UPI','Pending','UVFEE00040'),(41,41,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00041'),(42,42,1,45000.00,'2026-08-10','Card','Paid','UVFEE00042'),(43,43,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00043'),(44,44,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00044'),(45,45,1,45000.00,NULL,'Card','Pending','UVFEE00045'),(46,46,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00046'),(47,47,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00047'),(48,48,1,45000.00,'2026-08-10','Card','Paid','UVFEE00048'),(49,49,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00049'),(50,50,1,45000.00,NULL,'Net Banking','Pending','UVFEE00050'),(51,51,1,45000.00,'2026-08-10','Card','Paid','UVFEE00051'),(52,52,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00052'),(53,53,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00053'),(54,54,1,45000.00,'2026-08-10','Card','Paid','UVFEE00054'),(55,55,1,45000.00,NULL,'UPI','Pending','UVFEE00055'),(56,56,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00056'),(57,57,1,45000.00,'2026-08-10','Card','Paid','UVFEE00057'),(58,58,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00058'),(59,59,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00059'),(60,60,1,45000.00,NULL,'Card','Pending','UVFEE00060'),(61,61,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00061'),(62,62,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00062'),(63,63,1,45000.00,'2026-08-10','Card','Paid','UVFEE00063'),(64,64,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00064'),(65,65,1,45000.00,NULL,'Net Banking','Pending','UVFEE00065'),(66,66,1,45000.00,'2026-08-10','Card','Paid','UVFEE00066'),(67,67,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00067'),(68,68,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00068'),(69,69,1,45000.00,'2026-08-10','Card','Paid','UVFEE00069'),(70,70,1,45000.00,NULL,'UPI','Pending','UVFEE00070'),(71,71,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00071'),(72,72,1,45000.00,'2026-08-10','Card','Paid','UVFEE00072'),(73,73,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00073'),(74,74,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00074'),(75,75,1,45000.00,NULL,'Card','Pending','UVFEE00075'),(76,76,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00076'),(77,77,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00077'),(78,78,1,45000.00,'2026-08-10','Card','Paid','UVFEE00078'),(79,79,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00079'),(80,80,1,45000.00,NULL,'Net Banking','Pending','UVFEE00080'),(81,81,1,45000.00,'2026-08-10','Card','Paid','UVFEE00081'),(82,82,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00082'),(83,83,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00083'),(84,84,1,45000.00,'2026-08-10','Card','Paid','UVFEE00084'),(85,85,1,45000.00,NULL,'UPI','Pending','UVFEE00085'),(86,86,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00086'),(87,87,1,45000.00,'2026-08-10','Card','Paid','UVFEE00087'),(88,88,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00088'),(89,89,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00089'),(90,90,1,45000.00,NULL,'Card','Pending','UVFEE00090'),(91,91,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00091'),(92,92,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00092'),(93,93,1,45000.00,'2026-08-10','Card','Paid','UVFEE00093'),(94,94,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00094'),(95,95,1,45000.00,NULL,'Net Banking','Pending','UVFEE00095'),(96,96,1,45000.00,'2026-08-10','Card','Paid','UVFEE00096'),(97,97,1,45000.00,'2026-08-10','UPI','Paid','UVFEE00097'),(98,98,1,45000.00,'2026-08-10','Net Banking','Paid','UVFEE00098'),(99,99,1,45000.00,'2026-08-10','Card','Paid','UVFEE00099'),(100,100,1,45000.00,NULL,'UPI','Pending','UVFEE00100');
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `result_id` int NOT NULL AUTO_INCREMENT,
  `enrollment_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `marks_obtained` decimal(6,2) NOT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `result_status` varchar(20) DEFAULT 'Declared',
  PRIMARY KEY (`result_id`),
  UNIQUE KEY `uq_enrollment_exam` (`enrollment_id`,`exam_id`),
  KEY `fk_result_exam` (`exam_id`),
  CONSTRAINT `fk_result_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`enrollment_id`),
  CONSTRAINT `fk_result_exam` FOREIGN KEY (`exam_id`) REFERENCES `examination` (`exam_id`),
  CONSTRAINT `chk_marks_obtained` CHECK ((`marks_obtained` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,1,21.00,'C','Declared'),(2,2,1,22.00,'C','Declared'),(3,3,1,23.00,'C','Declared'),(4,4,1,24.00,'B','Declared'),(5,5,1,25.00,'B','Declared'),(6,6,1,26.00,'B','Declared'),(7,7,1,27.00,'A','Declared'),(8,8,1,28.00,'A','Declared'),(9,9,1,29.00,'A','Declared'),(10,10,1,30.00,'A','Declared'),(11,11,1,20.00,'D','Declared'),(12,12,1,21.00,'C','Declared'),(13,13,1,22.00,'C','Declared'),(14,14,1,23.00,'C','Declared'),(15,15,1,24.00,'B','Declared'),(16,16,1,25.00,'B','Declared'),(17,17,1,26.00,'B','Declared'),(18,18,1,27.00,'A','Declared'),(19,19,1,28.00,'A','Declared'),(20,20,1,29.00,'A','Declared'),(21,21,1,30.00,'A','Declared'),(22,22,1,20.00,'D','Declared'),(23,23,1,21.00,'C','Declared'),(24,24,1,22.00,'C','Declared'),(25,25,1,23.00,'C','Declared'),(26,26,2,24.00,'B','Declared'),(27,27,2,25.00,'B','Declared'),(28,28,2,26.00,'B','Declared'),(29,29,2,27.00,'A','Declared'),(30,30,2,28.00,'A','Declared'),(31,31,2,29.00,'A','Declared'),(32,32,2,30.00,'A','Declared'),(33,33,2,20.00,'D','Declared'),(34,34,2,21.00,'C','Declared'),(35,35,2,22.00,'C','Declared'),(36,36,2,23.00,'C','Declared'),(37,37,2,24.00,'B','Declared'),(38,38,2,25.00,'B','Declared'),(39,39,2,26.00,'B','Declared'),(40,40,2,27.00,'A','Declared'),(41,41,2,28.00,'A','Declared'),(42,42,2,29.00,'A','Declared'),(43,43,2,30.00,'A','Declared'),(44,44,2,20.00,'D','Declared'),(45,45,2,21.00,'C','Declared'),(46,46,2,22.00,'C','Declared'),(47,47,2,23.00,'C','Declared'),(48,48,2,24.00,'B','Declared'),(49,49,2,25.00,'B','Declared'),(50,50,2,26.00,'B','Declared'),(51,51,3,27.00,'A','Declared'),(52,52,3,28.00,'A','Declared'),(53,53,3,29.00,'A','Declared'),(54,54,3,30.00,'A','Declared'),(55,55,3,20.00,'D','Declared'),(56,56,3,21.00,'C','Declared'),(57,57,3,22.00,'C','Declared'),(58,58,3,23.00,'C','Declared'),(59,59,3,24.00,'B','Declared'),(60,60,3,25.00,'B','Declared'),(61,61,3,26.00,'B','Declared'),(62,62,3,27.00,'A','Declared'),(63,63,3,28.00,'A','Declared'),(64,64,3,29.00,'A','Declared'),(65,65,3,30.00,'A','Declared'),(66,66,3,20.00,'D','Declared'),(67,67,3,21.00,'C','Declared'),(68,68,3,22.00,'C','Declared'),(69,69,3,23.00,'C','Declared'),(70,70,3,24.00,'B','Declared'),(71,71,3,25.00,'B','Declared'),(72,72,3,26.00,'B','Declared'),(73,73,3,27.00,'A','Declared'),(74,74,3,28.00,'A','Declared'),(75,75,3,29.00,'A','Declared'),(76,76,4,30.00,'A','Declared'),(77,77,4,20.00,'D','Declared'),(78,78,4,21.00,'C','Declared'),(79,79,4,22.00,'C','Declared'),(80,80,4,23.00,'C','Declared'),(81,81,4,24.00,'B','Declared'),(82,82,4,25.00,'B','Declared'),(83,83,4,26.00,'B','Declared'),(84,84,4,27.00,'A','Declared'),(85,85,4,28.00,'A','Declared'),(86,86,4,29.00,'A','Declared'),(87,87,4,30.00,'A','Declared'),(88,88,4,20.00,'D','Declared'),(89,89,4,21.00,'C','Declared'),(90,90,4,22.00,'C','Declared'),(91,91,4,23.00,'C','Declared'),(92,92,4,24.00,'B','Declared'),(93,93,4,25.00,'B','Declared'),(94,94,4,26.00,'B','Declared'),(95,95,4,27.00,'A','Declared'),(96,96,4,28.00,'A','Declared'),(97,97,4,29.00,'A','Declared'),(98,98,4,30.00,'A','Declared'),(99,99,4,20.00,'D','Declared'),(100,100,4,21.00,'C','Declared'),(101,101,5,22.00,'C','Declared'),(102,102,5,23.00,'C','Declared'),(103,103,5,24.00,'B','Declared'),(104,104,5,25.00,'B','Declared'),(105,105,5,26.00,'B','Declared'),(106,106,5,27.00,'A','Declared'),(107,107,5,28.00,'A','Declared'),(108,108,5,29.00,'A','Declared'),(109,109,5,30.00,'A','Declared'),(110,110,5,20.00,'D','Declared'),(111,111,5,21.00,'C','Declared'),(112,112,5,22.00,'C','Declared'),(113,113,5,23.00,'C','Declared'),(114,114,5,24.00,'B','Declared'),(115,115,5,25.00,'B','Declared'),(116,116,5,26.00,'B','Declared'),(117,117,5,27.00,'A','Declared'),(118,118,5,28.00,'A','Declared'),(119,119,5,29.00,'A','Declared'),(120,120,5,30.00,'A','Declared'),(121,121,5,20.00,'D','Declared'),(122,122,5,21.00,'C','Declared'),(123,123,5,22.00,'C','Declared'),(124,124,5,23.00,'C','Declared'),(125,125,5,24.00,'B','Declared'),(126,126,6,25.00,'B','Declared'),(127,127,6,26.00,'B','Declared'),(128,128,6,27.00,'A','Declared'),(129,129,6,28.00,'A','Declared'),(130,130,6,29.00,'A','Declared'),(131,131,6,30.00,'A','Declared'),(132,132,6,20.00,'D','Declared'),(133,133,6,21.00,'C','Declared'),(134,134,6,22.00,'C','Declared'),(135,135,6,23.00,'C','Declared'),(136,136,6,24.00,'B','Declared'),(137,137,6,25.00,'B','Declared'),(138,138,6,26.00,'B','Declared'),(139,139,6,27.00,'A','Declared'),(140,140,6,28.00,'A','Declared'),(141,141,6,29.00,'A','Declared'),(142,142,6,30.00,'A','Declared'),(143,143,6,20.00,'D','Declared'),(144,144,6,21.00,'C','Declared'),(145,145,6,22.00,'C','Declared'),(146,146,6,23.00,'C','Declared'),(147,147,6,24.00,'B','Declared'),(148,148,6,25.00,'B','Declared'),(149,149,6,26.00,'B','Declared'),(150,150,6,27.00,'A','Declared'),(151,151,7,28.00,'A','Declared'),(152,152,7,29.00,'A','Declared'),(153,153,7,30.00,'A','Declared'),(154,154,7,20.00,'D','Declared'),(155,155,7,21.00,'C','Declared'),(156,156,7,22.00,'C','Declared'),(157,157,7,23.00,'C','Declared'),(158,158,7,24.00,'B','Declared'),(159,159,7,25.00,'B','Declared'),(160,160,7,26.00,'B','Declared'),(161,161,7,27.00,'A','Declared'),(162,162,7,28.00,'A','Declared'),(163,163,7,29.00,'A','Declared'),(164,164,7,30.00,'A','Declared'),(165,165,7,20.00,'D','Declared'),(166,166,7,21.00,'C','Declared'),(167,167,7,22.00,'C','Declared'),(168,168,7,23.00,'C','Declared'),(169,169,7,24.00,'B','Declared'),(170,170,7,25.00,'B','Declared'),(171,171,7,26.00,'B','Declared'),(172,172,7,27.00,'A','Declared'),(173,173,7,28.00,'A','Declared'),(174,174,7,29.00,'A','Declared'),(175,175,7,30.00,'A','Declared'),(176,176,8,20.00,'D','Declared'),(177,177,8,21.00,'C','Declared'),(178,178,8,22.00,'C','Declared'),(179,179,8,23.00,'C','Declared'),(180,180,8,24.00,'B','Declared'),(181,181,8,25.00,'B','Declared'),(182,182,8,26.00,'B','Declared'),(183,183,8,27.00,'A','Declared'),(184,184,8,28.00,'A','Declared'),(185,185,8,29.00,'A','Declared'),(186,186,8,30.00,'A','Declared'),(187,187,8,20.00,'D','Declared'),(188,188,8,21.00,'C','Declared'),(189,189,8,22.00,'C','Declared'),(190,190,8,23.00,'C','Declared'),(191,191,8,24.00,'B','Declared'),(192,192,8,25.00,'B','Declared'),(193,193,8,26.00,'B','Declared'),(194,194,8,27.00,'A','Declared'),(195,195,8,28.00,'A','Declared'),(196,196,8,29.00,'A','Declared'),(197,197,8,30.00,'A','Declared'),(198,198,8,20.00,'D','Declared'),(199,199,8,21.00,'C','Declared'),(200,200,8,22.00,'C','Declared'),(201,201,9,23.00,'C','Declared'),(202,202,9,24.00,'B','Declared'),(203,203,9,25.00,'B','Declared'),(204,204,9,26.00,'B','Declared'),(205,205,9,27.00,'A','Declared'),(206,206,9,28.00,'A','Declared'),(207,207,9,29.00,'A','Declared'),(208,208,9,30.00,'A','Declared'),(209,209,9,20.00,'D','Declared'),(210,210,9,21.00,'C','Declared'),(211,211,9,22.00,'C','Declared'),(212,212,9,23.00,'C','Declared'),(213,213,9,24.00,'B','Declared'),(214,214,9,25.00,'B','Declared'),(215,215,9,26.00,'B','Declared'),(216,216,9,27.00,'A','Declared'),(217,217,9,28.00,'A','Declared'),(218,218,9,29.00,'A','Declared'),(219,219,9,30.00,'A','Declared'),(220,220,9,20.00,'D','Declared'),(221,221,9,21.00,'C','Declared'),(222,222,9,22.00,'C','Declared'),(223,223,9,23.00,'C','Declared'),(224,224,9,24.00,'B','Declared'),(225,225,9,25.00,'B','Declared'),(226,226,10,26.00,'B','Declared'),(227,227,10,27.00,'A','Declared'),(228,228,10,28.00,'A','Declared'),(229,229,10,29.00,'A','Declared'),(230,230,10,30.00,'A','Declared'),(231,231,10,20.00,'D','Declared'),(232,232,10,21.00,'C','Declared'),(233,233,10,22.00,'C','Declared'),(234,234,10,23.00,'C','Declared'),(235,235,10,24.00,'B','Declared'),(236,236,10,25.00,'B','Declared'),(237,237,10,26.00,'B','Declared'),(238,238,10,27.00,'A','Declared'),(239,239,10,28.00,'A','Declared'),(240,240,10,29.00,'A','Declared'),(241,241,10,30.00,'A','Declared'),(242,242,10,20.00,'D','Declared'),(243,243,10,21.00,'C','Declared'),(244,244,10,22.00,'C','Declared'),(245,245,10,23.00,'C','Declared'),(246,246,10,24.00,'B','Declared'),(247,247,10,25.00,'B','Declared'),(248,248,10,26.00,'B','Declared'),(249,249,10,27.00,'A','Declared'),(250,250,10,28.00,'A','Declared'),(251,251,11,29.00,'A','Declared'),(252,252,11,30.00,'A','Declared'),(253,253,11,20.00,'D','Declared'),(254,254,11,21.00,'C','Declared'),(255,255,11,22.00,'C','Declared'),(256,256,11,23.00,'C','Declared'),(257,257,11,24.00,'B','Declared'),(258,258,11,25.00,'B','Declared'),(259,259,11,26.00,'B','Declared'),(260,260,11,27.00,'A','Declared'),(261,261,11,28.00,'A','Declared'),(262,262,11,29.00,'A','Declared'),(263,263,11,30.00,'A','Declared'),(264,264,11,20.00,'D','Declared'),(265,265,11,21.00,'C','Declared'),(266,266,11,22.00,'C','Declared'),(267,267,11,23.00,'C','Declared'),(268,268,11,24.00,'B','Declared'),(269,269,11,25.00,'B','Declared'),(270,270,11,26.00,'B','Declared'),(271,271,11,27.00,'A','Declared'),(272,272,11,28.00,'A','Declared'),(273,273,11,29.00,'A','Declared'),(274,274,11,30.00,'A','Declared'),(275,275,11,20.00,'D','Declared'),(276,276,12,21.00,'C','Declared'),(277,277,12,22.00,'C','Declared'),(278,278,12,23.00,'C','Declared'),(279,279,12,24.00,'B','Declared'),(280,280,12,25.00,'B','Declared'),(281,281,12,26.00,'B','Declared'),(282,282,12,27.00,'A','Declared'),(283,283,12,28.00,'A','Declared'),(284,284,12,29.00,'A','Declared'),(285,285,12,30.00,'A','Declared'),(286,286,12,20.00,'D','Declared'),(287,287,12,21.00,'C','Declared'),(288,288,12,22.00,'C','Declared'),(289,289,12,23.00,'C','Declared'),(290,290,12,24.00,'B','Declared'),(291,291,12,25.00,'B','Declared'),(292,292,12,26.00,'B','Declared'),(293,293,12,27.00,'A','Declared'),(294,294,12,28.00,'A','Declared'),(295,295,12,29.00,'A','Declared'),(296,296,12,30.00,'A','Declared'),(297,297,12,20.00,'D','Declared'),(298,298,12,21.00,'C','Declared'),(299,299,12,22.00,'C','Declared'),(300,300,12,23.00,'C','Declared'),(301,301,13,24.00,'B','Declared'),(302,302,13,25.00,'B','Declared'),(303,303,13,26.00,'B','Declared'),(304,304,13,27.00,'A','Declared'),(305,305,13,28.00,'A','Declared'),(306,306,13,29.00,'A','Declared'),(307,307,13,30.00,'A','Declared'),(308,308,13,20.00,'D','Declared'),(309,309,13,21.00,'C','Declared'),(310,310,13,22.00,'C','Declared'),(311,311,13,23.00,'C','Declared'),(312,312,13,24.00,'B','Declared'),(313,313,13,25.00,'B','Declared'),(314,314,13,26.00,'B','Declared'),(315,315,13,27.00,'A','Declared'),(316,316,13,28.00,'A','Declared'),(317,317,13,29.00,'A','Declared'),(318,318,13,30.00,'A','Declared'),(319,319,13,20.00,'D','Declared'),(320,320,13,21.00,'C','Declared'),(321,321,13,22.00,'C','Declared'),(322,322,13,23.00,'C','Declared'),(323,323,13,24.00,'B','Declared'),(324,324,13,25.00,'B','Declared'),(325,325,13,26.00,'B','Declared'),(326,326,14,27.00,'A','Declared'),(327,327,14,28.00,'A','Declared'),(328,328,14,29.00,'A','Declared'),(329,329,14,30.00,'A','Declared'),(330,330,14,20.00,'D','Declared'),(331,331,14,21.00,'C','Declared'),(332,332,14,22.00,'C','Declared'),(333,333,14,23.00,'C','Declared'),(334,334,14,24.00,'B','Declared'),(335,335,14,25.00,'B','Declared'),(336,336,14,26.00,'B','Declared'),(337,337,14,27.00,'A','Declared'),(338,338,14,28.00,'A','Declared'),(339,339,14,29.00,'A','Declared'),(340,340,14,30.00,'A','Declared'),(341,341,14,20.00,'D','Declared'),(342,342,14,21.00,'C','Declared'),(343,343,14,22.00,'C','Declared'),(344,344,14,23.00,'C','Declared'),(345,345,14,24.00,'B','Declared'),(346,346,14,25.00,'B','Declared'),(347,347,14,26.00,'B','Declared'),(348,348,14,27.00,'A','Declared'),(349,349,14,28.00,'A','Declared'),(350,350,14,29.00,'A','Declared'),(351,351,15,30.00,'A','Declared'),(352,352,15,20.00,'D','Declared'),(353,353,15,21.00,'C','Declared'),(354,354,15,22.00,'C','Declared'),(355,355,15,23.00,'C','Declared'),(356,356,15,24.00,'B','Declared'),(357,357,15,25.00,'B','Declared'),(358,358,15,26.00,'B','Declared'),(359,359,15,27.00,'A','Declared'),(360,360,15,28.00,'A','Declared'),(361,361,15,29.00,'A','Declared'),(362,362,15,30.00,'A','Declared'),(363,363,15,20.00,'D','Declared'),(364,364,15,21.00,'C','Declared'),(365,365,15,22.00,'C','Declared'),(366,366,15,23.00,'C','Declared'),(367,367,15,24.00,'B','Declared'),(368,368,15,25.00,'B','Declared'),(369,369,15,26.00,'B','Declared'),(370,370,15,27.00,'A','Declared'),(371,371,15,28.00,'A','Declared'),(372,372,15,29.00,'A','Declared'),(373,373,15,30.00,'A','Declared'),(374,374,15,20.00,'D','Declared'),(375,375,15,21.00,'C','Declared'),(376,376,16,22.00,'C','Declared'),(377,377,16,23.00,'C','Declared'),(378,378,16,24.00,'B','Declared'),(379,379,16,25.00,'B','Declared'),(380,380,16,26.00,'B','Declared'),(381,381,16,27.00,'A','Declared'),(382,382,16,28.00,'A','Declared'),(383,383,16,29.00,'A','Declared'),(384,384,16,30.00,'A','Declared'),(385,385,16,20.00,'D','Declared'),(386,386,16,21.00,'C','Declared'),(387,387,16,22.00,'C','Declared'),(388,388,16,23.00,'C','Declared'),(389,389,16,24.00,'B','Declared'),(390,390,16,25.00,'B','Declared'),(391,391,16,26.00,'B','Declared'),(392,392,16,27.00,'A','Declared'),(393,393,16,28.00,'A','Declared'),(394,394,16,29.00,'A','Declared'),(395,395,16,30.00,'A','Declared'),(396,396,16,20.00,'D','Declared'),(397,397,16,21.00,'C','Declared'),(398,398,16,22.00,'C','Declared'),(399,399,16,23.00,'C','Declared'),(400,400,16,24.00,'B','Declared');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `semester_id` int NOT NULL AUTO_INCREMENT,
  `semester_number` int NOT NULL,
  `academic_year` varchar(9) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`semester_id`),
  UNIQUE KEY `uq_semester_year` (`semester_number`,`academic_year`),
  CONSTRAINT `chk_semester_dates` CHECK ((`end_date` > `start_date`)),
  CONSTRAINT `chk_semester_number` CHECK ((`semester_number` between 1 and 8))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,3,'2026-2027','2026-08-01','2026-12-15');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `admission_date` date NOT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_student_department` (`department_id`),
  CONSTRAINT `fk_student_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Aarav','Sharma','aarav01@universe.edu','9000000001','2006-01-10','Male','2025-08-01',1),(2,'Anuska','Datta','anuska02@universe.edu','9000000002','2006-12-28','Female','2025-08-01',1),(3,'Bhavya','Sharma','bhavya03@universe.edu','9000000003','2006-05-15','Female','2025-08-01',1),(4,'Kanika','Saini','kanika04@universe.edu','9000000004','2006-09-10','Female','2025-08-01',1),(5,'Rohan','Verma','rohan05@universe.edu','9000000005','2006-03-12','Male','2025-08-01',1),(6,'Priya','Gupta','priya06@universe.edu','9000000006','2006-07-21','Female','2025-08-01',1),(7,'Aditya','Singh','aditya07@universe.edu','9000000007','2006-04-18','Male','2025-08-01',1),(8,'Ishita','Kapoor','ishita08@universe.edu','9000000008','2006-11-05','Female','2025-08-01',1),(9,'Arjun','Malhotra','arjun09@universe.edu','9000000009','2006-02-14','Male','2025-08-01',1),(10,'Sneha','Roy','sneha10@universe.edu','9000000010','2006-08-09','Female','2025-08-01',1),(11,'Karan','Mehta','karan11@universe.edu','9000000011','2006-06-17','Male','2025-08-01',1),(12,'Pooja','Shah','pooja12@universe.edu','9000000012','2006-10-23','Female','2025-08-01',1),(13,'Rahul','Das','rahul13@universe.edu','9000000013','2006-01-29','Male','2025-08-01',1),(14,'Riya','Jain','riya14@universe.edu','9000000014','2006-09-02','Female','2025-08-01',1),(15,'Dev','Patel','dev15@universe.edu','9000000015','2006-05-11','Male','2025-08-01',1),(16,'Mehak','Kaur','mehak16@universe.edu','9000000016','2006-12-01','Female','2025-08-01',1),(17,'Yash','Bansal','yash17@universe.edu','9000000017','2006-03-19','Male','2025-08-01',1),(18,'Tanya','Sood','tanya18@universe.edu','9000000018','2006-07-07','Female','2025-08-01',1),(19,'Nikhil','Jha','nikhil19@universe.edu','9000000019','2006-04-22','Male','2025-08-01',1),(20,'Simran','Kaur','simran20@universe.edu','9000000020','2006-11-13','Female','2025-08-01',1),(21,'Vansh','Arora','vansh21@universe.edu','9000000021','2006-02-25','Male','2025-08-01',1),(22,'Aditi','Mishra','aditi22@universe.edu','9000000022','2006-08-15','Female','2025-08-01',1),(23,'Sahil','Chopra','sahil23@universe.edu','9000000023','2006-06-04','Male','2025-08-01',1),(24,'Nisha','Agarwal','nisha24@universe.edu','9000000024','2006-10-10','Female','2025-08-01',1),(25,'Aryan','Khanna','aryan25@universe.edu','9000000025','2006-01-16','Male','2025-08-01',1),(26,'Aman','Kumar','aman26@universe.edu','9000000026','2006-01-10','Male','2025-08-01',2),(27,'Sakshi','Rana','sakshi27@universe.edu','9000000027','2006-02-10','Female','2025-08-01',2),(28,'Mohit','Yadav','mohit28@universe.edu','9000000028','2006-03-10','Male','2025-08-01',2),(29,'Kritika','Sethi','kritika29@universe.edu','9000000029','2006-04-10','Female','2025-08-01',2),(30,'Varun','Gill','varun30@universe.edu','9000000030','2006-05-10','Male','2025-08-01',2),(31,'Shreya','Nair','shreya31@universe.edu','9000000031','2006-06-10','Female','2025-08-01',2),(32,'Manav','Joshi','manav32@universe.edu','9000000032','2006-07-10','Male','2025-08-01',2),(33,'Diya','Bhatia','diya33@universe.edu','9000000033','2006-08-10','Female','2025-08-01',2),(34,'Harsh','Madan','harsh34@universe.edu','9000000034','2006-09-10','Male','2025-08-01',2),(35,'Aashi','Goel','aashi35@universe.edu','9000000035','2006-10-10','Female','2025-08-01',2),(36,'Krish','Saxena','krish36@universe.edu','9000000036','2006-11-10','Male','2025-08-01',2),(37,'Navya','Bedi','navya37@universe.edu','9000000037','2006-12-10','Female','2025-08-01',2),(38,'Ankit','Suri','ankit38@universe.edu','9000000038','2006-01-11','Male','2025-08-01',2),(39,'Muskan','Arora','muskan39@universe.edu','9000000039','2006-02-11','Female','2025-08-01',2),(40,'Rishabh','Jain','rishabh40@universe.edu','9000000040','2006-03-11','Male','2025-08-01',2),(41,'Palak','Saini','palak41@universe.edu','9000000041','2006-04-11','Female','2025-08-01',2),(42,'Abhishek','Rao','abhishek42@universe.edu','9000000042','2006-05-11','Male','2025-08-01',2),(43,'Ira','Sen','ira43@universe.edu','9000000043','2006-06-11','Female','2025-08-01',2),(44,'Samar','Kapoor','samar44@universe.edu','9000000044','2006-07-11','Male','2025-08-01',2),(45,'Tisha','Mehra','tisha45@universe.edu','9000000045','2006-08-11','Female','2025-08-01',2),(46,'Rajat','Puri','rajat46@universe.edu','9000000046','2006-09-11','Male','2025-08-01',2),(47,'Manya','Khanna','manya47@universe.edu','9000000047','2006-10-11','Female','2025-08-01',2),(48,'Deepak','Goyal','deepak48@universe.edu','9000000048','2006-11-11','Male','2025-08-01',2),(49,'Aarohi','Das','aarohi49@universe.edu','9000000049','2006-12-11','Female','2025-08-01',2),(50,'Laksh','Monga','laksh50@universe.edu','9000000050','2006-01-12','Male','2025-08-01',2),(51,'Ritvik','Chauhan','ritvik51@universe.edu','9000000051','2006-01-10','Male','2025-08-01',3),(52,'Khushi','Dutta','khushi52@universe.edu','9000000052','2006-02-10','Female','2025-08-01',3),(53,'Siddharth','Mishra','siddharth53@universe.edu','9000000053','2006-03-10','Male','2025-08-01',3),(54,'Aanya','Sharma','aanya54@universe.edu','9000000054','2006-04-10','Female','2025-08-01',3),(55,'Gaurav','Reddy','gaurav55@universe.edu','9000000055','2006-05-10','Male','2025-08-01',3),(56,'Ishita','Roy','ishita56@universe.edu','9000000056','2006-06-10','Female','2025-08-01',3),(57,'Pranav','Sethi','pranav57@universe.edu','9000000057','2006-07-10','Male','2025-08-01',3),(58,'Mitali','Kohli','mitali58@universe.edu','9000000058','2006-08-10','Female','2025-08-01',3),(59,'Tarun','Gill','tarun59@universe.edu','9000000059','2006-09-10','Male','2025-08-01',3),(60,'Sanya','Bose','sanya60@universe.edu','9000000060','2006-10-10','Female','2025-08-01',3),(61,'Naman','Jain','naman61@universe.edu','9000000061','2006-11-10','Male','2025-08-01',3),(62,'Ritika','Malik','ritika62@universe.edu','9000000062','2006-12-10','Female','2025-08-01',3),(63,'Kunal','Bhatia','kunal63@universe.edu','9000000063','2006-01-11','Male','2025-08-01',3),(64,'Pihu','Arora','pihu64@universe.edu','9000000064','2006-02-11','Female','2025-08-01',3),(65,'Yuvraj','Saini','yuvraj65@universe.edu','9000000065','2006-03-11','Male','2025-08-01',3),(66,'Tanvi','Mehta','tanvi66@universe.edu','9000000066','2006-04-11','Female','2025-08-01',3),(67,'Shivam','Verma','shivam67@universe.edu','9000000067','2006-05-11','Male','2025-08-01',3),(68,'Radhika','Sen','radhika68@universe.edu','9000000068','2006-06-11','Female','2025-08-01',3),(69,'Parth','Kapoor','parth69@universe.edu','9000000069','2006-07-11','Male','2025-08-01',3),(70,'Myra','Gupta','myra70@universe.edu','9000000070','2006-08-11','Female','2025-08-01',3),(71,'Akhil','Das','akhil71@universe.edu','9000000071','2006-09-11','Male','2025-08-01',3),(72,'Siya','Nair','siya72@universe.edu','9000000072','2006-10-11','Female','2025-08-01',3),(73,'Raghav','Puri','raghav73@universe.edu','9000000073','2006-11-11','Male','2025-08-01',3),(74,'Navya','Jha','navya74@universe.edu','9000000074','2006-12-11','Female','2025-08-01',3),(75,'Dhruv','Sood','dhruv75@universe.edu','9000000075','2006-01-12','Male','2025-08-01',3),(76,'Aditi','Shukla','aditi76@universe.edu','9000000076','2006-01-10','Female','2025-08-01',4),(77,'Vikram','Rao','vikram77@universe.edu','9000000077','2006-02-10','Male','2025-08-01',4),(78,'Suhani','Kapoor','suhani78@universe.edu','9000000078','2006-03-10','Female','2025-08-01',4),(79,'Aryan','Bansal','aryan79@universe.edu','9000000079','2006-04-10','Male','2025-08-01',4),(80,'Rhea','Mehta','rhea80@universe.edu','9000000080','2006-05-10','Female','2025-08-01',4),(81,'Kabir','Sinha','kabir81@universe.edu','9000000081','2006-06-10','Male','2025-08-01',4),(82,'Ishani','Garg','ishani82@universe.edu','9000000082','2006-07-10','Female','2025-08-01',4),(83,'Devansh','Jain','devansh83@universe.edu','9000000083','2006-08-10','Male','2025-08-01',4),(84,'Ananya','Roy','ananya84@universe.edu','9000000084','2006-09-10','Female','2025-08-01',4),(85,'Sarthak','Gill','sarthak85@universe.edu','9000000085','2006-10-10','Male','2025-08-01',4),(86,'Mahi','Sethi','mahi86@universe.edu','9000000086','2006-11-10','Female','2025-08-01',4),(87,'Keshav','Bose','keshav87@universe.edu','9000000087','2006-12-10','Male','2025-08-01',4),(88,'Tara','Khanna','tara88@universe.edu','9000000088','2006-01-11','Female','2025-08-01',4),(89,'Rudra','Malik','rudra89@universe.edu','9000000089','2006-02-11','Male','2025-08-01',4),(90,'Nandini','Arora','nandini90@universe.edu','9000000090','2006-03-11','Female','2025-08-01',4),(91,'Abeer','Saini','abeer91@universe.edu','9000000091','2006-04-11','Male','2025-08-01',4),(92,'Sia','Mehra','sia92@universe.edu','9000000092','2006-05-11','Female','2025-08-01',4),(93,'Reyansh','Gupta','reyansh93@universe.edu','9000000093','2006-06-11','Male','2025-08-01',4),(94,'Pari','Das','pari94@universe.edu','9000000094','2006-07-11','Female','2025-08-01',4),(95,'Atharv','Jha','atharv95@universe.edu','9000000095','2006-08-11','Male','2025-08-01',4),(96,'Aarohi','Nair','aarohi96@universe.edu','9000000096','2006-09-11','Female','2025-08-01',4),(97,'Ritvik','Shah','ritvik97@universe.edu','9000000097','2006-10-11','Male','2025-08-01',4),(98,'Mishka','Sen','mishka98@universe.edu','9000000098','2006-11-11','Female','2025-08-01',4),(99,'Arnav','Puri','arnav99@universe.edu','9000000099','2006-12-11','Male','2025-08-01',4),(100,'Kiara','Sood','kiara100@universe.edu','9000000100','2006-01-12','Female','2025-08-01',4);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching_assignment`
--

DROP TABLE IF EXISTS `teaching_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaching_assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `course_id` int NOT NULL,
  `semester_id` int NOT NULL,
  `section` varchar(20) NOT NULL,
  PRIMARY KEY (`assignment_id`),
  UNIQUE KEY `uq_teaching_assignment` (`faculty_id`,`course_id`,`semester_id`,`section`),
  KEY `fk_assignment_course` (`course_id`),
  KEY `fk_assignment_semester` (`semester_id`),
  CONSTRAINT `fk_assignment_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_assignment_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`),
  CONSTRAINT `fk_assignment_semester` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching_assignment`
--

LOCK TABLES `teaching_assignment` WRITE;
/*!40000 ALTER TABLE `teaching_assignment` DISABLE KEYS */;
INSERT INTO `teaching_assignment` VALUES (1,1,1,1,'601'),(2,2,2,1,'601'),(3,3,3,1,'601'),(4,4,4,1,'601'),(5,5,1,1,'601'),(6,6,5,1,'801'),(7,7,6,1,'801'),(8,8,7,1,'801'),(9,9,8,1,'801'),(10,10,5,1,'801'),(11,11,9,1,'701'),(12,12,10,1,'701'),(13,13,11,1,'701'),(14,14,12,1,'701'),(15,15,9,1,'701'),(16,16,13,1,'901'),(17,17,14,1,'901'),(18,18,15,1,'901'),(19,19,16,1,'901'),(20,20,13,1,'901');
/*!40000 ALTER TABLE `teaching_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timetable` (
  `timetable_id` int NOT NULL AUTO_INCREMENT,
  `assignment_id` int NOT NULL,
  `classroom_id` int NOT NULL,
  `day_of_week` varchar(15) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`timetable_id`),
  KEY `fk_timetable_assignment` (`assignment_id`),
  KEY `fk_timetable_classroom` (`classroom_id`),
  CONSTRAINT `fk_timetable_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `teaching_assignment` (`assignment_id`),
  CONSTRAINT `fk_timetable_classroom` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`classroom_id`),
  CONSTRAINT `chk_timetable_day` CHECK ((`day_of_week` in (_utf8mb4'Monday',_utf8mb4'Tuesday',_utf8mb4'Wednesday',_utf8mb4'Thursday',_utf8mb4'Friday',_utf8mb4'Saturday',_utf8mb4'Sunday'))),
  CONSTRAINT `chk_timetable_time` CHECK ((`end_time` > `start_time`))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES (1,1,1,'Monday','09:00:00','10:00:00'),(2,5,5,'Friday','09:00:00','10:00:00'),(3,2,2,'Tuesday','09:00:00','10:00:00'),(4,3,3,'Wednesday','09:00:00','10:00:00'),(5,4,4,'Thursday','09:00:00','10:00:00'),(6,6,6,'Monday','10:00:00','11:00:00'),(7,10,10,'Friday','10:00:00','11:00:00'),(8,7,7,'Tuesday','10:00:00','11:00:00'),(9,8,8,'Wednesday','10:00:00','11:00:00'),(10,9,9,'Thursday','10:00:00','11:00:00'),(11,11,11,'Monday','11:00:00','12:00:00'),(12,15,15,'Friday','11:00:00','12:00:00'),(13,12,12,'Tuesday','11:00:00','12:00:00'),(14,13,13,'Wednesday','11:00:00','12:00:00'),(15,14,14,'Thursday','11:00:00','12:00:00'),(16,16,16,'Monday','12:00:00','13:00:00'),(17,20,20,'Friday','12:00:00','13:00:00'),(18,17,17,'Tuesday','12:00:00','13:00:00'),(19,18,18,'Wednesday','12:00:00','13:00:00'),(20,19,19,'Thursday','12:00:00','13:00:00');
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_attendance_summary`
--

DROP TABLE IF EXISTS `v_attendance_summary`;
/*!50001 DROP VIEW IF EXISTS `v_attendance_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_attendance_summary` AS SELECT 
 1 AS `enrollment_id`,
 1 AS `student_name`,
 1 AS `course_name`,
 1 AS `total_classes`,
 1 AS `present_classes`,
 1 AS `attendance_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_course_details`
--

DROP TABLE IF EXISTS `v_course_details`;
/*!50001 DROP VIEW IF EXISTS `v_course_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_course_details` AS SELECT 
 1 AS `course_id`,
 1 AS `course_name`,
 1 AS `course_code`,
 1 AS `credits`,
 1 AS `course_type`,
 1 AS `department_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_enrollment_details`
--

DROP TABLE IF EXISTS `v_enrollment_details`;
/*!50001 DROP VIEW IF EXISTS `v_enrollment_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_enrollment_details` AS SELECT 
 1 AS `enrollment_id`,
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `course_name`,
 1 AS `course_code`,
 1 AS `semester_number`,
 1 AS `academic_year`,
 1 AS `enrollment_date`,
 1 AS `enrollment_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_faculty_details`
--

DROP TABLE IF EXISTS `v_faculty_details`;
/*!50001 DROP VIEW IF EXISTS `v_faculty_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_faculty_details` AS SELECT 
 1 AS `faculty_id`,
 1 AS `faculty_name`,
 1 AS `email`,
 1 AS `designation`,
 1 AS `salary`,
 1 AS `department_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_fee_details`
--

DROP TABLE IF EXISTS `v_fee_details`;
/*!50001 DROP VIEW IF EXISTS `v_fee_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_fee_details` AS SELECT 
 1 AS `payment_id`,
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `semester_number`,
 1 AS `amount`,
 1 AS `payment_date`,
 1 AS `payment_method`,
 1 AS `payment_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_result_details`
--

DROP TABLE IF EXISTS `v_result_details`;
/*!50001 DROP VIEW IF EXISTS `v_result_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_result_details` AS SELECT 
 1 AS `result_id`,
 1 AS `student_id`,
 1 AS `student_name`,
 1 AS `course_name`,
 1 AS `exam_name`,
 1 AS `marks_obtained`,
 1 AS `maximum_marks`,
 1 AS `grade`,
 1 AS `result_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_student_details`
--

DROP TABLE IF EXISTS `v_student_details`;
/*!50001 DROP VIEW IF EXISTS `v_student_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_student_details` AS SELECT 
 1 AS `student_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `department_name`,
 1 AS `department_code`,
 1 AS `hod_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_timetable_details`
--

DROP TABLE IF EXISTS `v_timetable_details`;
/*!50001 DROP VIEW IF EXISTS `v_timetable_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_timetable_details` AS SELECT 
 1 AS `timetable_id`,
 1 AS `course_name`,
 1 AS `faculty_name`,
 1 AS `section`,
 1 AS `day_of_week`,
 1 AS `start_time`,
 1 AS `end_time`,
 1 AS `building_name`,
 1 AS `room_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_attendance_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_attendance_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_attendance_summary` AS select `e`.`enrollment_id` AS `enrollment_id`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `student_name`,`c`.`course_name` AS `course_name`,count(`a`.`attendance_id`) AS `total_classes`,sum((case when (`a`.`attendance_status` = 'Present') then 1 else 0 end)) AS `present_classes`,round(((100.0 * sum((case when (`a`.`attendance_status` = 'Present') then 1 else 0 end))) / nullif(count(`a`.`attendance_id`),0)),2) AS `attendance_percentage` from (((`enrollment` `e` join `student` `s` on((`e`.`student_id` = `s`.`student_id`))) join `course` `c` on((`e`.`course_id` = `c`.`course_id`))) left join `attendance` `a` on((`e`.`enrollment_id` = `a`.`enrollment_id`))) group by `e`.`enrollment_id`,`s`.`first_name`,`s`.`last_name`,`c`.`course_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_course_details`
--

/*!50001 DROP VIEW IF EXISTS `v_course_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_course_details` AS select `c`.`course_id` AS `course_id`,`c`.`course_name` AS `course_name`,`c`.`course_code` AS `course_code`,`c`.`credits` AS `credits`,`c`.`course_type` AS `course_type`,`d`.`department_name` AS `department_name` from (`course` `c` join `department` `d` on((`c`.`department_id` = `d`.`department_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_enrollment_details`
--

/*!50001 DROP VIEW IF EXISTS `v_enrollment_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_enrollment_details` AS select `e`.`enrollment_id` AS `enrollment_id`,`s`.`student_id` AS `student_id`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `student_name`,`c`.`course_name` AS `course_name`,`c`.`course_code` AS `course_code`,`sem`.`semester_number` AS `semester_number`,`sem`.`academic_year` AS `academic_year`,`e`.`enrollment_date` AS `enrollment_date`,`e`.`enrollment_status` AS `enrollment_status` from (((`enrollment` `e` join `student` `s` on((`e`.`student_id` = `s`.`student_id`))) join `course` `c` on((`e`.`course_id` = `c`.`course_id`))) join `semester` `sem` on((`e`.`semester_id` = `sem`.`semester_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_faculty_details`
--

/*!50001 DROP VIEW IF EXISTS `v_faculty_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_faculty_details` AS select `f`.`faculty_id` AS `faculty_id`,`f`.`faculty_name` AS `faculty_name`,`f`.`email` AS `email`,`f`.`designation` AS `designation`,`f`.`salary` AS `salary`,`d`.`department_name` AS `department_name` from (`faculty` `f` join `department` `d` on((`f`.`department_id` = `d`.`department_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_fee_details`
--

/*!50001 DROP VIEW IF EXISTS `v_fee_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_fee_details` AS select `f`.`payment_id` AS `payment_id`,`s`.`student_id` AS `student_id`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `student_name`,`sem`.`semester_number` AS `semester_number`,`f`.`amount` AS `amount`,`f`.`payment_date` AS `payment_date`,`f`.`payment_method` AS `payment_method`,`f`.`payment_status` AS `payment_status` from ((`fee` `f` join `student` `s` on((`f`.`student_id` = `s`.`student_id`))) join `semester` `sem` on((`f`.`semester_id` = `sem`.`semester_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_result_details`
--

/*!50001 DROP VIEW IF EXISTS `v_result_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_result_details` AS select `r`.`result_id` AS `result_id`,`s`.`student_id` AS `student_id`,concat(`s`.`first_name`,' ',`s`.`last_name`) AS `student_name`,`c`.`course_name` AS `course_name`,`ex`.`exam_name` AS `exam_name`,`r`.`marks_obtained` AS `marks_obtained`,`ex`.`maximum_marks` AS `maximum_marks`,`r`.`grade` AS `grade`,`r`.`result_status` AS `result_status` from ((((`result` `r` join `enrollment` `e` on((`r`.`enrollment_id` = `e`.`enrollment_id`))) join `student` `s` on((`e`.`student_id` = `s`.`student_id`))) join `course` `c` on((`e`.`course_id` = `c`.`course_id`))) join `examination` `ex` on((`r`.`exam_id` = `ex`.`exam_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_student_details`
--

/*!50001 DROP VIEW IF EXISTS `v_student_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_student_details` AS select `s`.`student_id` AS `student_id`,`s`.`first_name` AS `first_name`,`s`.`last_name` AS `last_name`,`s`.`email` AS `email`,`s`.`phone` AS `phone`,`d`.`department_name` AS `department_name`,`d`.`department_code` AS `department_code`,`d`.`hod_name` AS `hod_name` from (`student` `s` join `department` `d` on((`s`.`department_id` = `d`.`department_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_timetable_details`
--

/*!50001 DROP VIEW IF EXISTS `v_timetable_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_timetable_details` AS select `t`.`timetable_id` AS `timetable_id`,`c`.`course_name` AS `course_name`,`f`.`faculty_name` AS `faculty_name`,`ta`.`section` AS `section`,`t`.`day_of_week` AS `day_of_week`,`t`.`start_time` AS `start_time`,`t`.`end_time` AS `end_time`,`cl`.`building_name` AS `building_name`,`cl`.`room_number` AS `room_number` from ((((`timetable` `t` join `teaching_assignment` `ta` on((`t`.`assignment_id` = `ta`.`assignment_id`))) join `faculty` `f` on((`ta`.`faculty_id` = `f`.`faculty_id`))) join `course` `c` on((`ta`.`course_id` = `c`.`course_id`))) join `classroom` `cl` on((`t`.`classroom_id` = `cl`.`classroom_id`))) */;
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

-- Dump completed on 2026-11-13  8:08:39
