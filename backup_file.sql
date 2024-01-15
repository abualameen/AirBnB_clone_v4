-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('29651e05637a');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES ('Wifi','033d0df9-c401-4ee3-81ec-e9808fc2d272','2023-12-29 17:05:21','2023-12-29 17:05:21'),('Wifi','0ccbe603-b9b3-41ed-b097-0e6f46b2f2a9','2024-01-07 19:38:14','2024-01-07 19:38:14'),('Cable','1d93f395-d45f-4f89-8ef7-b9961e83080c','2024-01-07 19:38:14','2024-01-07 19:38:14'),('Oven','33c631fd-04be-40fc-818c-8dd8093f459f','2024-01-07 19:38:15','2024-01-07 19:38:15'),('Gym','5e5edee2-15c7-4874-887a-213a657ca066','2023-12-29 17:05:22','2023-12-29 17:05:22'),('Cable','db8564fe-cbb5-4930-a43d-27333b699f88','2023-12-29 17:05:22','2023-12-29 17:05:22');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('Minna1','a35f372d-ebd1-498f-aee1-90319be9a577','033a4433-a0c9-4249-a31b-4a38d6849b76','2023-12-26 19:20:16','2023-12-26 19:20:16'),('Fane1','1a3f30df-40bc-4dc5-b927-05a14848d7ca','2024b22f-aa9e-4d2c-b4fa-261da170a845','2023-12-26 20:38:29','2023-12-26 20:38:29'),('Wonne1','57659de7-8638-4487-8106-c46ba3fbcb40','21c327d7-ce76-4101-b2aa-3ebfb1b7b48d','2023-12-26 20:40:29','2023-12-26 20:40:29'),('Ponne1','57659de7-8638-4487-8106-c46ba3fbcb40','38f03a22-d788-4c24-89b5-b10b695153f0','2023-12-26 20:40:12','2023-12-26 20:40:12'),('Minna','57659de7-8638-4487-8106-c46ba3fbcb40','482e8034-b985-45f7-a20b-9cc7d73670c6','2023-12-26 19:19:21','2023-12-26 19:19:21'),('Wonne1','a35f372d-ebd1-498f-aee1-90319be9a577','60db9fbd-f883-4ec7-9b1a-09cf6cf6cbca','2023-12-26 20:41:03','2023-12-26 20:41:03'),('San Francisco','c7466436-340f-4f81-840c-0486a20dc323','6579e9c1-a164-4bdb-a1dd-a339af783bc2','2024-01-07 19:38:11','2024-01-07 19:38:11'),('Donne1','a35f372d-ebd1-498f-aee1-90319be9a577','769a4d65-10b0-4e9c-bd5d-f3edf516bd9f','2023-12-26 20:41:24','2023-12-26 20:41:24'),('Vane1','1a3f30df-40bc-4dc5-b927-05a14848d7ca','7d43c3c4-3d8a-453a-9141-52172df17154','2023-12-26 20:38:05','2023-12-26 20:38:05'),('Eggoe1','a35f372d-ebd1-498f-aee1-90319be9a577','8380d5ba-4fce-49e1-912d-7ff73f6971b5','2023-12-26 20:41:58','2023-12-26 20:41:58'),('San Francisco','1a3f30df-40bc-4dc5-b927-05a14848d7ca','c9c56098-ac29-46e9-a7c8-1cd2de614dde','2023-12-26 19:18:10','2023-12-26 19:18:10'),('newrow1','a35f372d-ebd1-498f-aee1-90319be9a577','e8d1cfbd-d38c-43ef-a15f-e38105a7fc96','2023-12-26 19:21:52','2023-12-26 19:21:52'),('Zane1','1a3f30df-40bc-4dc5-b927-05a14848d7ca','ef777a6b-d559-4ca8-aa3d-a31fe7338170','2023-12-26 20:38:48','2023-12-26 20:38:48'),('Hine1','57659de7-8638-4487-8106-c46ba3fbcb40','feaa9a6c-f2b3-49a4-a9d5-e93ed3aa58af','2023-12-26 20:39:48','2023-12-26 20:39:48');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
INSERT INTO `place_amenity` VALUES ('5a3060bc-80ab-45cc-bded-d64813995361','0ccbe603-b9b3-41ed-b097-0e6f46b2f2a9'),('b8e9f4af-6f29-4d6e-ba68-ae98fc0185d7','0ccbe603-b9b3-41ed-b097-0e6f46b2f2a9'),('5a3060bc-80ab-45cc-bded-d64813995361','1d93f395-d45f-4f89-8ef7-b9961e83080c'),('b8e9f4af-6f29-4d6e-ba68-ae98fc0185d7','1d93f395-d45f-4f89-8ef7-b9961e83080c'),('b8e9f4af-6f29-4d6e-ba68-ae98fc0185d7','33c631fd-04be-40fc-818c-8dd8093f459f');
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int NOT NULL,
  `number_bathrooms` int NOT NULL,
  `max_guest` int NOT NULL,
  `price_by_night` int NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('38f03a22-d788-4c24-89b5-b10b695153f0','13c734f1-b69f-4b99-b91c-bc41810eace6','Kindhouse',NULL,5,2,6,250,27.774,-33.4313,'39260685-8491-4fc9-8566-78d7533345f1','2023-12-31 11:21:33','2023-12-31 11:21:33'),('6579e9c1-a164-4bdb-a1dd-a339af783bc2','f1c6fee9-1ea3-4d82-bcde-d0f649904738','House 1',NULL,0,0,0,0,NULL,NULL,'5a3060bc-80ab-45cc-bded-d64813995361','2024-01-07 19:38:12','2024-01-07 19:38:12'),('033a4433-a0c9-4249-a31b-4a38d6849b76','1bf0465d-5685-4ac8-8504-f4b22be4aacb','palacenew place',NULL,2,2,4,100,37.874,-122.331,'94063bc9-a90c-4f71-b62d-7cacf3bfae8c','2023-12-29 15:23:13','2023-12-29 15:23:13'),('033a4433-a0c9-4249-a31b-4a38d6849b76','1bf0465d-5685-4ac8-8504-f4b22be4aacb','Lovely place',NULL,3,1,6,120,37.774,-122.431,'b325dae3-5274-4755-b71e-c69259a863be','2023-12-29 15:20:01','2023-12-29 15:20:01'),('6579e9c1-a164-4bdb-a1dd-a339af783bc2','f1c6fee9-1ea3-4d82-bcde-d0f649904738','House 2',NULL,0,0,0,0,NULL,NULL,'b8e9f4af-6f29-4d6e-ba68-ae98fc0185d7','2024-01-07 19:38:13','2024-01-07 19:38:13'),('033a4433-a0c9-4249-a31b-4a38d6849b76','1bf0465d-5685-4ac8-8504-f4b22be4aacb','Lovely place',NULL,3,1,6,120,37.774,-122.431,'cd7edd20-b164-4c1c-988f-a0140c2f8ff8','2023-12-29 15:29:13','2023-12-29 15:29:13'),('feaa9a6c-f2b3-49a4-a9d5-e93ed3aa58af','1bf0465d-5685-4ac8-8504-f4b22be4aacb','Sample Place Name',NULL,0,0,0,0,NULL,NULL,'e2ba0f42-19ab-4f12-99ab-94d7e48eaeee','2024-01-07 16:09:37','2024-01-07 16:09:37');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `text` varchar(1024) NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('This place was awsome!','cd7edd20-b164-4c1c-988f-a0140c2f8ff8','1bf0465d-5685-4ac8-8504-f4b22be4aacb','5d8fb49f-8a82-4a34-a671-3abf37fa225e','2024-01-07 17:12:46','2024-01-07 17:12:46'),('This place was great!','e2ba0f42-19ab-4f12-99ab-94d7e48eaeee','1bf0465d-5685-4ac8-8504-f4b22be4aacb','7f8cd0af-aeba-4d16-9b4c-055cf6824c99','2024-01-07 17:11:26','2024-01-07 17:11:26');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('Eduna','126f3b81-5a34-4183-81e4-e8f9f0d8a807','2023-12-26 21:46:25','2023-12-26 21:46:25'),('California','1a3f30df-40bc-4dc5-b927-05a14848d7ca','2023-12-26 18:11:09','2023-12-26 18:11:09'),('California is so cool','57659de7-8638-4487-8106-c46ba3fbcb40','2023-12-26 18:12:27','2024-01-07 06:18:46'),('Purehouse','7c4e51f1-25c5-4e56-aa91-47cd35cb1c03','2024-01-07 06:14:19','2024-01-07 06:14:19'),('Cala','a35f372d-ebd1-498f-aee1-90319be9a577','2023-12-26 18:01:28','2023-12-26 18:01:28'),('California','c7466436-340f-4f81-840c-0486a20dc323','2024-01-07 19:38:07','2024-01-07 19:38:07');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('abu@hbtn.io','alameenaume','abuSnow','13c734f1-b69f-4b99-b91c-bc41810eace6','2023-12-29 15:16:11','2023-12-29 15:16:11'),('abci@hbtn.io','yakub','insha','1bf0465d-5685-4ac8-8504-f4b22be4aacb','2023-12-29 13:00:48','2023-12-29 13:00:48'),('john@snow.com','NULL','NULL','2b4eff9b-3ecd-4716-97f4-1624ef0471fb','2023-12-29 17:05:20','2023-12-29 17:05:20'),('goodnews@hbtn.com','Mynew','booow','8cab81fa-6a93-4cfc-8563-828966fe5d6e','2024-01-06 16:49:57','2024-01-06 16:49:57'),('bob@hbtn.io','Bob','Dylan','afcf8170-3f37-4dd5-8e8e-8f1d80fb1165','2024-01-06 16:51:26','2024-01-06 16:51:26'),('john@snow.com','NULL','NULL','f1c6fee9-1ea3-4d82-bcde-d0f649904738','2024-01-07 19:38:12','2024-01-07 19:38:12');
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

-- Dump completed on 2024-01-13 13:48:47
