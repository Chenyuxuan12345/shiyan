-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foot_club
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `aoa_dept`
--

DROP TABLE IF EXISTS `aoa_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_addr` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dept_tel` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deptmanager` bigint DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_dept`
--

LOCK TABLES `aoa_dept` WRITE;
/*!40000 ALTER TABLE `aoa_dept` DISABLE KEYS */;
INSERT INTO `aoa_dept` VALUES (1,'ground floor','Finance','6789685','123@qq.com',6,NULL,NULL);
/*!40000 ALTER TABLE `aoa_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_role`
--

DROP TABLE IF EXISTS `club_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_role` (
  `id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT 'describe',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_role`
--

LOCK TABLES `club_role` WRITE;
/*!40000 ALTER TABLE `club_role` DISABLE KEYS */;
INSERT INTO `club_role` VALUES (1,'administrators','Maximum authority','2022-05-18 16:50:14',NULL,NULL),(2,'player',NULL,'2022-05-18 16:50:36',NULL,NULL),(3,'coach','division manager','2022-05-18 16:50:52',NULL,NULL);
/*!40000 ALTER TABLE `club_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_user`
--

DROP TABLE IF EXISTS `club_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_user` (
  `user_id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL COMMENT 'contact number\n',
  `idcard` varchar(50) DEFAULT NULL COMMENT 'ID No',
  `create_time` datetime DEFAULT NULL COMMENT 'Club time',
  `update_time` datetime DEFAULT NULL COMMENT 'Update information time',
  `is_delete` datetime DEFAULT NULL COMMENT 'Is it deleted',
  `img_path` varchar(255) DEFAULT NULL COMMENT 'Image storage path',
  `is_lock` int DEFAULT NULL COMMENT '1 is it locked',
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL COMMENT 'Department'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_user`
--

LOCK TABLES `club_user` WRITE;
/*!40000 ALTER TABLE `club_user` DISABLE KEYS */;
INSERT INTO `club_user` VALUES (1,'name','2022-05-18 16:44:22','1316789034','1237819371892','2022-05-18 16:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'James','2022-05-18 16:44:22','1316789434','1237839371892','2022-05-18 16:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'James2','2022-05-18 16:44:22','1316789434','1237839371892','2022-05-18 16:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'James3','2022-05-18 16:44:22','1316789434','1237839371892','2022-05-18 16:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'James4','2022-05-18 16:44:22','1316789434','1237839371892','2022-05-18 16:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'James6','2022-05-18 16:44:22','1316789434','1237839371892','2022-05-18 16:44:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `club_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_user_log`
--

DROP TABLE IF EXISTS `club_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_user_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_user_log`
--

LOCK TABLES `club_user_log` WRITE;
/*!40000 ALTER TABLE `club_user_log` DISABLE KEYS */;
INSERT INTO `club_user_log` VALUES (3,'172.31.16.188','2021-11-10 16:30:23','Status management','/testsysstatus',1),(8,'172.31.16.188','2021-11-10 16:42:37','Menu management','/testsysmenu',NULL),(9,'172.31.16.188','2021-11-10 16:42:39','Menu management','/testsysmenu',NULL),(10,'172.31.16.188','2021-11-10 16:42:47','Menu management','/testsysmenu',NULL),(11,'172.31.16.188','2021-11-10 16:43:02','Menu management','/testsysmenu',NULL),(14,'172.31.16.188','2021-11-10 16:47:11','Menu management','/testsysmenu',NULL),(15,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `club_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_user_role`
--

DROP TABLE IF EXISTS `club_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_user_role` (
  `id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_user_role`
--

LOCK TABLES `club_user_role` WRITE;
/*!40000 ALTER TABLE `club_user_role` DISABLE KEYS */;
INSERT INTO `club_user_role` VALUES ('1','1','1','2022-05-18 16:48:29',NULL,NULL),('123123','2','2','2022-05-18 16:48:59',NULL,NULL),('78','3','3','2022-05-18 16:49:19',NULL,NULL);
/*!40000 ALTER TABLE `club_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18 22:29:49
