-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: switchyard.proxy.rlwy.net    Database: railway
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('homechef-cache-1bMB2tB0t2imrRu5','s:7:\"forever\";',2073993657),('homechef-cache-3hIM1omNlSPteuuh','s:7:\"forever\";',2073419731),('homechef-cache-3K9ZHk1MLsLTuApI','s:7:\"forever\";',2073603139),('homechef-cache-4qFzN8QaaST3plIn','s:7:\"forever\";',2073663964),('homechef-cache-4YTgZHCsM47vGVRA','s:7:\"forever\";',2073406314),('homechef-cache-65oKutskhEPxjAaD','s:7:\"forever\";',2073073691),('homechef-cache-6h8TA16xhHi7YXeA','s:7:\"forever\";',2073325059),('homechef-cache-71ntzS5pA7ki9YEQ','s:7:\"forever\";',2073663701),('homechef-cache-8ZUomapQjE4rjBqL','s:7:\"forever\";',2074009128),('homechef-cache-90KESCerGkSpLoFJ','s:7:\"forever\";',2073766868),('homechef-cache-9gI3cZCCKL0vbsll','s:7:\"forever\";',2073406354),('homechef-cache-9KaRhFG8RO2IfMFH','s:7:\"forever\";',2073664644),('homechef-cache-at1vVfY2h0hgA00g','s:7:\"forever\";',2074173490),('homechef-cache-BfqxduhEkdFDZCuT','s:7:\"forever\";',2073327637),('homechef-cache-bM0cq0ikHRxuG7Fk','s:7:\"forever\";',2074173728),('homechef-cache-CILfPKuUAXxBsEeb','s:7:\"forever\";',2073403155),('homechef-cache-DtPv6nEvDMpHA2li','s:7:\"forever\";',2073326096),('homechef-cache-DV7itTUHv3dAhLtw','s:7:\"forever\";',2073658194),('homechef-cache-ejxydg7fBBsEEPwM','s:7:\"forever\";',2074377407),('homechef-cache-fpSuWJ4e77mALfcJ','s:7:\"forever\";',2073840551),('homechef-cache-GhwDpWciB56jM552','s:7:\"forever\";',2074638031),('homechef-cache-gNhLnOH8KdNOj9QL','s:7:\"forever\";',2073645647),('homechef-cache-gp41UMnjLm19Urb5','s:7:\"forever\";',2073842336),('homechef-cache-IKVsaYD1E5pfMK1J','s:7:\"forever\";',2073515565),('homechef-cache-iL8sbG9jLz7wGO9Y','s:7:\"forever\";',2073658508),('homechef-cache-In4VeQymhv2nz9N7','s:7:\"forever\";',2073638522),('homechef-cache-j2vaV7DABsDkqHkv','s:7:\"forever\";',2073406614),('homechef-cache-J5NiWUFlOLLaqBpn','s:7:\"forever\";',2073324753),('homechef-cache-Jbwz5YMxVPm4TMVE','s:7:\"forever\";',2073658079),('homechef-cache-jInrPy3X8CDqtW78','s:7:\"forever\";',2073663681),('homechef-cache-kREUrsh3TdhJqDO1','s:7:\"forever\";',2074364264),('homechef-cache-lqX6L9FUWhFtUrr9','s:7:\"forever\";',2073410149),('homechef-cache-mockGMDVzNX419c9','s:7:\"forever\";',2074638267),('homechef-cache-N2Bfsn1PDC63FR5I','s:7:\"forever\";',2073401954),('homechef-cache-n61qTagcXTPKy9yf','s:7:\"forever\";',2073406654),('homechef-cache-Nqb8E4EkwyHwtCgK','s:7:\"forever\";',2073403792),('homechef-cache-OBlTXugxUzY13AN2','s:7:\"forever\";',2073327047),('homechef-cache-OfYxdd99UQp59vPg','s:7:\"forever\";',2073319008),('homechef-cache-Pc9UxTsjCIJpKMLt','s:7:\"forever\";',2074530902),('homechef-cache-PO1FanSbi72PPb74','s:7:\"forever\";',2073766033),('homechef-cache-POjptMPXTGXuBDKN','s:7:\"forever\";',2073409765),('homechef-cache-qdjYuwyS7JusVRJx','s:7:\"forever\";',2073658489),('homechef-cache-QJEO9Xfk11PTuIJz','s:7:\"forever\";',2073406853),('homechef-cache-Qq97E8LNz712sFgX','s:7:\"forever\";',2073562330),('homechef-cache-QSegwLRv776AtkWM','s:7:\"forever\";',2074375969),('homechef-cache-rel12dnb3b2xkTH6','s:7:\"forever\";',2074442316),('homechef-cache-RQXVQR7wsAfRuM7y','s:7:\"forever\";',2074361641),('homechef-cache-RtMV1Gk2YJP5ycMr','s:7:\"forever\";',2073829101),('homechef-cache-SjR2Rh4u4MZzGZfL','s:7:\"forever\";',2074374238),('homechef-cache-tjc6opvWOOlu8Szb','s:7:\"forever\";',2073324725),('homechef-cache-twxC7DvcK8TU19h3','s:7:\"forever\";',2073751705),('homechef-cache-u1RhkM9w3BP5cpYn','s:7:\"forever\";',2074546904),('homechef-cache-UJaUOZpQRmQOoIZs','s:7:\"forever\";',2074364250),('homechef-cache-UWs70y3xTqB1XwbP','s:7:\"forever\";',2074261111),('homechef-cache-V0LBgiy0gVQMFEQY','s:7:\"forever\";',2073751724),('homechef-cache-V53FkgN03HsSJcfS','s:7:\"forever\";',2074638301),('homechef-cache-V5H2IZHkJU6UpCrs','s:7:\"forever\";',2074462724),('homechef-cache-Vtw3dNCHvhwERtZY','s:7:\"forever\";',2073759461),('homechef-cache-WIPxblCFxWzmb1gm','s:7:\"forever\";',2073740107),('homechef-cache-xSUrSyhcr9UMQ5eL','s:7:\"forever\";',2073562537),('homechef-cache-y6Z0OZqsXI0iD13B','s:7:\"forever\";',2074637986),('homechef-cache-YMUVS6CRbeppeSSL','s:7:\"forever\";',2073510199),('homechef-cache-YuxNYcIqI9SoKTpP','s:7:\"forever\";',2073407359),('homechef-cache-ZnchKMDovWSaaCYZ','s:7:\"forever\";',2073410044),('homechef-cache-zo3HuRtMNAOWJed9','s:7:\"forever\";',2074118894),('homechef-cache-ZYsy0xDf2pVqVUaF','s:7:\"forever\";',2074430345);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `calories_per_unit` decimal(10,2) DEFAULT NULL,
  `protein_per_unit` decimal(10,2) DEFAULT NULL,
  `carbs_per_unit` decimal(10,2) DEFAULT NULL,
  `fat_per_unit` decimal(10,2) DEFAULT NULL,
  `fiber_per_unit` decimal(10,2) DEFAULT NULL,
  `sugar_per_unit` decimal(10,2) DEFAULT NULL,
  `sodium_per_unit` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `category` enum('Vegetables','Fruits','Meat & Poultry','Seafood','Dairy & Eggs','Grains & Cereals','Spices & Herbs','Condiments & Sauces','Baking & Desserts','Beverages','Frozen Foods','Canned & Preserved','Nuts & Seeds','Oils & Fats','Other') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Other',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (27,'Apple','kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ss','Fruits','2025-09-19 16:46:22','2025-09-19 19:21:51'),(28,'Tomatooo','kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.alimentarium.org/sites/default/files/media/image/2016-10/AL001-02%20tomate_0.jpg','Added by Youssef Admin','Vegetables','2025-09-19 18:44:12','2025-09-19 20:31:29'),(29,'Orange','piece',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'...','Fruits','2025-09-19 18:45:13','2025-09-19 18:45:13'),(30,'Fish','kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://sevenfoods.store/storage/products/fresh-fish/makryl-800x800.jpg','fish','Seafood','2025-09-19 19:15:42','2025-09-19 20:30:59'),(31,'Chicken','kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://meatdirect.co.nz/wp-content/uploads/whole-chicken-frozen-raw.jpg','...','Meat & Poultry','2025-09-19 22:17:53','2025-09-19 22:19:01'),(33,'potato','kg',3.00,3.00,35.00,5.00,0.30,0.10,0.20,'https://live.staticflickr.com/598/21648915206_af05e7c92f_w.jpg','...','Vegetables','2025-09-27 20:27:59','2025-09-27 20:28:51'),(34,'onion','kg',13.00,34.00,31.00,2.00,0.30,0.40,0.30,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_c4mzTsqYoLWHNziM4mHQEEp6-qCek6H7bQ&s','...','Vegetables','2025-09-27 20:30:38','2025-09-27 20:30:38'),(35,'Oil','L',22.00,44.00,3.00,42.00,13.00,42.00,42.00,'https://mcprod.hyperone.com.eg/media/catalog/product/cache/8d4e6327d79fd11192282459179cc69e/6/2/6223000263648-1.6l-_1.jpg','...','Oils & Fats','2025-09-27 20:39:49','2025-09-27 21:02:09'),(36,'Cumin','G',4.00,442.00,0.12,0.20,0.40,0.20,0.70,'https://www.healthysupplies.co.uk/pics/800x800/cumin-powder-bowl.webp?tsid=1737732851','...','Spices & Herbs','2025-09-27 21:19:26','2025-09-27 21:19:26');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mealplans`
--

DROP TABLE IF EXISTS `mealplans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mealplans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `meals` json DEFAULT NULL,
  `is_ai_generated` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_mealplans_user` (`user_id`),
  CONSTRAINT `fk_mealplans_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mealplans`
--

LOCK TABLES `mealplans` WRITE;
/*!40000 ALTER TABLE `mealplans` DISABLE KEYS */;
INSERT INTO `mealplans` VALUES (10,36,'Test1','adsfadsf','2025-09-30','2025-10-07','{\"2025-09-30\": {\"lunch\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}}, \"2025-10-01\": {\"lunch\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}, \"dinner\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}, \"breakfast\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}}, \"2025-10-02\": {\"lunch\": {\"name\": \"asdfa\", \"calories\": \"12.00\", \"prep_time\": 22, \"recipe_id\": 21, \"ingredients\": [\"Fish\"], \"instructions\": [\"wewrew\"]}, \"snacks\": {\"name\": \"asdfa\", \"calories\": \"12.00\", \"prep_time\": 22, \"recipe_id\": 21, \"ingredients\": [\"Fish\"], \"instructions\": [\"wewrew\"]}}, \"2025-10-03\": {\"lunch\": {\"name\": \"asdfa\", \"calories\": \"12.00\", \"prep_time\": 22, \"recipe_id\": 21, \"ingredients\": [\"Fish\"], \"instructions\": [\"wewrew\"]}, \"breakfast\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}}}',0,'2025-09-30 23:52:29','2025-10-01 19:54:37'),(11,36,'Test2','asdfadsf','2025-09-30','2025-10-07','{\"2025-10-01\": {\"lunch\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}, \"breakfast\": {\"name\": \"Kbab 7ala\", \"calories\": \"1.00\", \"prep_time\": 30, \"recipe_id\": 20, \"ingredients\": [\"Tomatooo\", \"onion\"], \"instructions\": [\"حط شوية زيت في حلة\", \"انزل بالبصل اديلة تشويحة\"]}}}',0,'2025-09-30 23:52:34','2025-10-01 00:10:58');
/*!40000 ALTER TABLE `mealplans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutritiontracking`
--

DROP TABLE IF EXISTS `nutritiontracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutritiontracking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `calories` decimal(10,2) DEFAULT '0.00',
  `protein` decimal(10,2) DEFAULT '0.00',
  `carbs` decimal(10,2) DEFAULT '0.00',
  `fat` decimal(10,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_nutrition_user` (`user_id`),
  CONSTRAINT `fk_nutrition_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutritiontracking`
--

LOCK TABLES `nutritiontracking` WRITE;
/*!40000 ALTER TABLE `nutritiontracking` DISABLE KEYS */;
INSERT INTO `nutritiontracking` VALUES (1,1,'2025-09-21',2000.00,120.00,250.00,60.00,'2025-09-21 19:56:59','2025-09-21 19:56:59'),(2,1,'2025-09-19',2100.00,130.00,260.00,65.00,'2025-09-21 19:57:55','2025-09-21 20:03:13'),(3,36,'2025-09-19',2000.00,120.00,250.00,60.00,'2025-09-29 23:02:38','2025-09-29 23:02:38'),(4,36,'2025-09-19',2000.00,120.00,250.00,60.00,'2025-09-30 23:58:27','2025-09-30 23:58:27');
/*!40000 ALTER TABLE `nutritiontracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_reviews`
--

DROP TABLE IF EXISTS `recipe_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `recipe_id` int NOT NULL,
  `rating` int NOT NULL,
  `review_text` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `recipe_reviews_user_fk` (`user_id`),
  KEY `recipe_reviews_recipe_fk` (`recipe_id`),
  CONSTRAINT `recipe_reviews_recipe_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipe_reviews_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recipe_reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_reviews`
--

LOCK TABLES `recipe_reviews` WRITE;
/*!40000 ALTER TABLE `recipe_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipeingredients`
--

DROP TABLE IF EXISTS `recipeingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipeingredients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `ingredient_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipeingredients_recipe` (`recipe_id`),
  KEY `fk_recipeingredients_ingredient` (`ingredient_id`),
  CONSTRAINT `fk_recipeingredients_ingredient` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_recipeingredients_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipeingredients`
--

LOCK TABLES `recipeingredients` WRITE;
/*!40000 ALTER TABLE `recipeingredients` DISABLE KEYS */;
INSERT INTO `recipeingredients` VALUES (6,20,28,'Tomatooo',2.00,'Piece','2025-09-28 13:21:00','2025-09-28 13:21:00'),(7,20,34,'onion',1.00,'Kg','2025-09-28 13:21:01','2025-09-28 13:21:01'),(9,21,30,'Fish',1.80,'Piece','2025-09-28 23:47:09','2025-09-28 23:47:09');
/*!40000 ALTER TABLE `recipeingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `cuisine` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `difficulty` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prep_time` int DEFAULT NULL,
  `cook_time` int DEFAULT NULL,
  `servings` int DEFAULT NULL,
  `calories_per_serving` decimal(10,2) DEFAULT NULL,
  `protein_per_serving` decimal(10,2) DEFAULT NULL,
  `carbs_per_serving` decimal(10,2) DEFAULT NULL,
  `fat_per_serving` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` decimal(3,2) NOT NULL DEFAULT '0.00',
  `review_count` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (20,'Kbab 7ala','....','American','Meat & Poultry','medium',30,120,4,1.00,10.00,3.00,7.00,'https://img.youm7.com/ArticleImgs/2023/7/7/62861-%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D9%83%D8%A8%D8%A7%D8%A8-%D8%A7%D9%84%D8%AD%D9%84%D9%87.jpg',NULL,0.00,0,0,'2025-09-28 13:20:31','2025-10-01 00:24:54'),(21,'asdfa','asdfads','American','Meat & Poultry','easy',22,42,1,12.00,44.00,24.00,1.00,NULL,NULL,0.00,0,0,'2025-09-28 23:47:03','2025-09-28 23:47:03');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipesteps`
--

DROP TABLE IF EXISTS `recipesteps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipesteps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `step_number` int DEFAULT NULL,
  `instruction` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_recipesteps_recipe` (`recipe_id`),
  CONSTRAINT `fk_recipesteps_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipesteps`
--

LOCK TABLES `recipesteps` WRITE;
/*!40000 ALTER TABLE `recipesteps` DISABLE KEYS */;
INSERT INTO `recipesteps` VALUES (5,20,1,'حط شوية زيت في حلة','2025-09-28 13:22:16','2025-09-28 13:22:16'),(6,20,2,'انزل بالبصل اديلة تشويحة','2025-09-28 13:22:16','2025-09-28 13:22:16'),(8,21,1,'wewrew','2025-09-28 23:47:15','2025-09-28 23:47:15');
/*!40000 ALTER TABLE `recipesteps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipevideos`
--

DROP TABLE IF EXISTS `recipevideos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipevideos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recipe_id` int NOT NULL,
  `video_url` text NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_recipevideos_recipe` (`recipe_id`),
  CONSTRAINT `fk_recipevideos_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipevideos`
--

LOCK TABLES `recipevideos` WRITE;
/*!40000 ALTER TABLE `recipevideos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipevideos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('859llU4qcT1UGLnSuApxxW2Zciu1tEfDAGDP61ZL',NULL,'100.64.0.3','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGpJcXpPYVNCc0lPZmpzbm9SWlhRb1dNZ0RIN0p4ZWw3andyTmthYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757784204),('BmhSf8zbFwsTOwMVNyTK10kz5CGItR6eAAmhxzk0',NULL,'100.64.0.6','python-requests/2.32.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWx2RFU5bWxrWTZGR09aU0FlY0RVbjJScGxMa3A1SG1ic20xa05pcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758283900),('lbWzEeRPQbAk9gVvEsQG7XFVhDNZYCLe5PXSORMy',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXFCQzJUanJxUjBNSGhYa0xjdXNqdFZmMUpTazNlVU1aSGxhc1dhdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759259962),('lsNj3ZJOUGHzAR39gt25n3k7K1HJzANHwYUMkTvy',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2pZRVJrNE9QY0dsRW10MmVWNFY0VzdYQmxEcm02OFlIaEJPcHJhYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757902469),('LvzkicoSKPL6Ki5us2bIGDTMyGWgXiARDh0UzuDu',NULL,'100.64.0.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXlaTzVsN0xWZVlGNHNMZE5xdlVtc09jN01GM1p3RzRvNVR2dW5IbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757784209),('NCe1w9xiwiGqjBLVNobfUCy314nFeDyeNS42sKmv',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVpQQWMyODl3R1FnQ2ZoOVNEVUc0R0FqQ1A4TVVNV2NoMkU0VmFIUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757778754),('Nd0gNDsMo3xevglhdpUCJrvHjQzevyB9AyW18ueB',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzdvUWoybFZXdUlVcGRLU005NzUwT3cyY2RBWHh0cDFVaVNsMm40SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758141063),('oKbvljdjwiAvITc53criWFFWpUlLUzTIrwt8y0KO',NULL,'100.64.0.14','PostmanRuntime/7.46.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoic1ZLMWYydU41b1VkNWhLcldBZDNmU1lhYkFxRTRMMmRDWGtXOU1MWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758402263),('QvjBH4YnzDIR76IZFbuKN9Setnef7XSVWnk9oFvv',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoid0N4dTdhUzlIUWpYa1oxbnB0WGw4WXRudVdNR1R6VGp6OG9mOHBWSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758235359),('RNPdNdMYCieRuv0GT4qB0P5BpBRnlD52oaagCiz6',NULL,'100.64.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW9zUFg5b09vb2Jtdm50Y1R5NkRjZThiYlJMSzVDWFZLd2xvZE4xMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758322024),('suf4LevXxDwZseY93hHNxqDE6TyHJdpUp8SG5ZiH',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiakdvbzZqS0pURzJRQUNBREZEdTB3MGV1ZEEyM1hHRVBKQVM3aEpleiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758825302),('VJON8LHzX5v9Rmv9L0EY5plqxlW6varM61ZQHp9F',NULL,'100.64.0.4','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVgwWW9SY0JYM09WZ0xaZ3MxYlJIbnRvUFNubzA2WXdpWUZwamNzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757778807),('yXwQvpmJ3ZWtiVEv3jopJvUDqtEahM7qeYtteHD9',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkkydWoxdTFxbEhCNzJhV0xvOTVFT2gxNVJab0kyZGNRR2doS0xNMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757784150),('ZA2EV6wt4eqopAg8xcz5IA9jIY3PHTjZyQSouHo2',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHh6RmNEN3Q0aWlBUG92Wk9xQ3RJR0tsNDZ6NzZyQTk4Q0RlUzVDbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1757712344),('zRZFrp9m3ZLxFpxlBfAawPr2I15c5neZi9h6FgfK',NULL,'100.64.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzlxU3ltMEVrMjNGbGJJZlYyR1ExRkJjMGxoVzVNRzR6MEN6anUyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9ob21lY2hlZjM2MC1wcm9kdWN0aW9uLnVwLnJhaWx3YXkuYXBwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758023933);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_list`
--

DROP TABLE IF EXISTS `shopping_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `recipe_id` int DEFAULT NULL,
  `ingredient_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `status` enum('Pending','Bought') DEFAULT 'Pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_shoppinglist_user` (`user_id`),
  KEY `fk_shoppinglist_recipe` (`recipe_id`),
  KEY `fk_shoppinglist_ingredient` (`ingredient_id`),
  CONSTRAINT `fk_shoppinglist_ingredient` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_shoppinglist_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_shoppinglist_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_list`
--

LOCK TABLES `shopping_list` WRITE;
/*!40000 ALTER TABLE `shopping_list` DISABLE KEYS */;
INSERT INTO `shopping_list` VALUES (2,1,NULL,28,'tomato',2.00,'kg','Pending','2025-09-25 19:43:32','2025-09-25 19:43:32'),(3,1,NULL,31,'chicken',1.00,'kg','Pending','2025-09-25 19:43:32','2025-09-25 19:43:32'),(4,36,NULL,NULL,'Tomato',2.00,'kg','Pending','2025-09-29 23:06:36','2025-09-29 23:06:36');
/*!40000 ALTER TABLE `shopping_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `thumbnail_url` varchar(500) DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `difficulty` varchar(20) DEFAULT NULL,
  `instructor_name` varchar(255) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT '0.00',
  `view_count` int DEFAULT '0',
  `steps` json DEFAULT NULL,
  `tags` json DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
INSERT INTO `tutorials` VALUES (1,'How to Cook Spaghetti Carbonara','Learn how to make authentic Italian spaghetti carbonara step by step.','https://example.com/images/spaghetti-carbonara.jpg','https://example.com/videos/spaghetti-carbonara.mp4',45,'Beginner','Chef Mario Rossi',4.80,3250,'[\"Boil water with salt and cook spaghetti until al dente\", \"Fry pancetta until crispy\", \"Whisk eggs with grated Parmesan and black pepper\", \"Mix hot pasta with pancetta and egg mixture off the heat\", \"Serve immediately with extra cheese and pepper\"]','[\"Italian\", \"Pasta\", \"Dinner\", \"Quick Meal\"]',1,'2025-09-20 22:03:54','2025-09-20 22:03:54');
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `email_verified_at` datetime DEFAULT NULL,
  `onboardingComplete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_image_url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Reem Ahmed','omar@example.com','$2y$12$aTOcNvFjurv3rEuuzTZIF.PP3HugEKKHjtrgNKMKUTJ5XqJ59sTPm','admin','2025-09-05 09:06:22','2025-09-27 21:35:11',1,NULL,1,NULL),(2,'Samar Mahmoud','samar@example.com','$2y$12$tIFMVhI3.0fiMu8DA.tY6uWJaYLQeQ7fmfZoqINRPmnccaCrdd43.','user','2025-09-05 09:12:21','2025-09-05 09:12:21',1,NULL,0,NULL),(3,'Ahmed Mahmoud','ahmed@example.com','$2y$12$tCpsfQ2DxOfk5DJTE2o/J.aVCJCuTIwaCX2RHGj2pUwzQVt0dz12i','user','2025-09-05 10:29:58','2025-09-05 10:29:58',1,NULL,0,NULL),(4,'Ali Yahya','ali@example.com','$2y$12$eY3tyklv3/zLYie.MjMRd.rQ/WRw9EicDSP8i/kGq1VHedr/LJK/.','admin','2025-09-05 11:23:54','2025-09-05 11:23:54',1,NULL,0,NULL),(5,'Reem Ahmed','reem@example.com','$2y$12$FNu19iGTQc1UfmwfcJm7aum.b6Jt6zfExoYRuRfyBpFojfEPVTqKK','user','2025-09-12 21:28:04','2025-09-17 20:40:36',1,NULL,1,NULL),(6,'Omar Yahya','omaryahya@example.com','$2y$12$PdQFbBaYFoQLp2FF44kTHe4rOt8j6LAhMLrgj0Gdm3/AJjJWROmUe','user','2025-09-12 21:40:18','2025-09-12 21:40:18',1,NULL,0,NULL),(8,'Youssef','youssef@gmail.com','$2y$12$hdNOVZ6Z5lGrtm94D3J76.Z76JtnBXmg5Nyr2XXKoxJ3lXqxR2DQC','user','2025-09-12 23:01:44','2025-09-12 23:01:44',1,NULL,0,NULL),(9,'mostafa','mostafa@gmail.com','$2y$12$zxxPcH5LLg1zXL4fjUHiyeJga/xIZ8S2ZgfCzbu5XATQY9/lK59Km','user','2025-09-12 23:39:38','2025-09-16 18:19:00',1,NULL,1,NULL),(10,'youssefff','youssefff@gmail.com','$2y$12$uZkCD.6426lbZcduy2ILQemXIvPMw1Cyqxs5jIPHnNnANwWmbTcJG','user','2025-09-13 16:09:35','2025-09-13 16:09:35',1,NULL,0,NULL),(19,'Omar','omar@gmail.com','$2y$12$Ld9Zji5NBw4/QcCWBv4zJ.m9x/ZjaJ6HXXKjanc84leFySRNmCMhW','user','2025-09-15 19:33:18','2025-09-15 19:37:29',1,NULL,1,NULL),(20,'test','testt@gmail.com','$2y$12$Oy02Pvsu/d6Uqxm8sGWNP.knqpXrmh3d0keb3EB3r8DEpcLGePsne','user','2025-09-15 19:38:05','2025-09-15 19:54:31',1,NULL,1,NULL),(21,'testtt','teqfda@gmail.com','$2y$12$vAT4UvdqPbwFA.Xz.QNqBunDwBKkhANvm6QNAHPCxqatChJieO6ta','user','2025-09-15 19:55:10','2025-09-15 19:55:10',1,NULL,0,NULL),(22,'abdo','abdo@gmail.com','$2y$12$KZOIB4F3FzPWQ3eFjC9sIeKDGs7A.tP2iDW0Z7XikSMs3sVeY506.','user','2025-09-15 20:11:54','2025-09-15 20:12:54',1,NULL,1,NULL),(24,'Nour','nour@gmail.com','$2y$12$AJcmFcsTYeZs.QpLX5Drjejfhh2iQkGuyncBKC5nwW9eZ3FPkF5TG','user','2025-09-16 18:30:11','2025-09-16 18:30:29',1,NULL,1,NULL),(25,'test','test1@gmail.com','$2y$12$ypUnX8Uv829OT/Wf3SKXNe.u0Fp6glx6/gpLEc0opTvTjkHa8XnC2','user','2025-09-16 19:11:52','2025-09-16 19:37:37',1,NULL,1,NULL),(26,'alkmdf','adsfadsf@gmail.com','$2y$12$od1j0npdFgQp0y.fhh/ACO9MeFqFOem2dY/.ieihHkLu9Goane3ne','user','2025-09-16 21:35:12','2025-09-16 21:36:20',1,NULL,1,NULL),(27,'youssef','youssef@icloud.com','$2y$12$Y5QKTnJgrEWiEwdi2iFDq.u5YIbn8U.80DIdHcrRrNtRYy9aj0faC','user','2025-09-16 22:25:24','2025-09-16 22:25:35',1,NULL,1,NULL),(28,'Ghada Sayed','ghada@example.com','$2y$12$xk5pxIAgTOQ9rFHcgPXoSOSr/.TKO8.7iReAbPjZh.Rr1h1a.NMfi','user','2025-09-17 20:51:14','2025-09-17 20:53:23',1,NULL,1,NULL),(29,'Hemt Sayed','hemt@example.com','$2y$12$ewmH4JZ9McyISxHJFUpLA.HzqpDWaI40rdlwkLdiG48vaYaTuziF2','user','2025-09-17 21:16:34','2025-09-17 21:16:34',1,NULL,0,NULL),(30,'Ibrahim','ibrahim@gmail.com','$2y$12$QSaudsoXXrZwaXq3gRtIiu1S8eTOXIhd1ZNFBf3FoLsVGpF4L7cDy','user','2025-09-17 22:25:11','2025-09-18 13:35:29',1,NULL,1,NULL),(31,'Aliaa','ae287780@gmail.com','$2y$12$/BlPeqEh9N9t5pZ4/Tvwcu1bpPNO51iBOr2wZzY9iyfc2YTxmHJPq','user','2025-09-17 23:17:37','2025-09-17 23:19:38',1,NULL,1,NULL),(32,'youssef','youssefwaer@gmail.com','$2y$12$04wjCxx3bKoa0blTB00KgurDpI408a9CKFQ6DFjRNbjPlUIDwb0om','user','2025-09-18 14:45:47','2025-09-18 14:59:54',1,NULL,1,NULL),(33,'madrid','madrid@gmail.com','$2y$12$yoBsPfS1UxddqA/LsXZRueAGAKSuINhJZ6CAPK8MKh6ApqFgZicJe','user','2025-09-18 17:16:05','2025-09-18 17:16:14',1,NULL,1,NULL),(34,'lamin','lamin@gmail.com','$2y$12$Whf6QD/BpiH0S0ja2IX/UuL.AQ85GdZZSM1J6pTSucGIJ1g2qIbfW','user','2025-09-19 00:41:08','2025-09-19 00:41:39',1,NULL,1,NULL),(35,'another','an@gmail.com','$2y$12$XX3MrVcDMYaPIIkzXYvHveYq/.AoztIk40ySvNxENZOzehMlGknZi','user','2025-09-19 00:52:40','2025-09-19 10:42:36',1,NULL,1,NULL),(36,'Kia','kia@gmail.com','$2y$12$L.0JU56odt5dO5GyIRWv7esiSGWewO4rdZ.63IJKPrkUqr1i82MZm','user','2025-09-19 12:41:37','2025-09-19 12:41:55',1,NULL,1,NULL),(37,'Admin','admin@gmail.com','$2y$12$vVeiscqmZCZUKeHt9fU4fux5L6dzoRGEYlHC3Srmpjg9ww4RKIbyi','user','2025-09-19 16:08:18','2025-09-19 16:08:27',1,NULL,1,NULL),(38,'Youssef','youssefadmin@gmail.com','$2y$12$UMGcK97UjLaW.DHuM1UM2.EUyroHz5BgNCLs9xm2v1xr.FCz.J7rC','admin','2025-09-19 16:10:56','2025-09-28 23:07:43',1,NULL,1,NULL),(39,'bosh bosh','kitig95887@camjoint.com','$2y$12$fHcroOrFr4ZWbfZNMebJqubs/7ZR8LJpqe/GjwWK/fAOdEz9YeU9y','user','2025-09-20 21:46:12','2025-09-20 21:46:12',1,NULL,0,NULL),(40,'Bushra Mahmoud Amer','boshraamer30@gmail.com','$2y$12$WAry/wSLN6YwNbAGoOSDFOGXGaacmju1p3ZefCSbOmILpfjnr.sEW','user','2025-09-20 21:54:36','2025-09-20 21:54:36',1,NULL,0,NULL),(41,'bush bush','boshraamer622@gmail.com','$2y$12$qfzvQm7JkKTTXybhT4qXPuKLVcW8uCbD5bl7E3DmBk6kdh9Bm9fHS','user','2025-09-22 09:56:13','2025-09-22 09:56:13',1,NULL,0,NULL),(42,'Nariman','nariman@gmail.com','$2y$12$TqPFCch.Mk2OzgOa3be6KuL90nYt.Tn4cx09AsbHaZfltSV3V3IY.','user','2025-09-23 13:21:26','2025-09-23 13:22:18',1,NULL,1,NULL),(43,'AI For Teams','aiforbetterteams@gmail.com','$2y$12$uql3ejDeCHDejepKd6fRLuRQSze67h4OSR..613aSwePYWn7RL4ke','user','2025-09-23 17:18:27','2025-09-23 17:19:27',1,NULL,1,NULL),(44,'marwan','marwan@gmail.com','$2y$12$g9ulPU4o2m7prq67qWGdVuiAfTGDUhXCW9aaYaFVMifviPeCu0/bK','user','2025-09-25 15:20:10','2025-09-25 15:20:34',1,NULL,1,NULL),(45,'Bashrora','boshraamer10@gmail.com','$2y$12$BhDeRm0.iGm6NtOYd7JtW.J0ATnzpRz9.FHaBQk6P9./eORDF1Jd6','user','2025-09-26 12:46:53','2025-09-26 12:46:53',1,NULL,0,NULL),(46,'Bahroraa','boshraamer20@gmail.com','$2y$12$wtBf.ZuPHJQgEegYpUAhBu3ddAstl6aj5w1Hp2Sv4./narrn.UI5K','user','2025-09-26 13:17:53','2025-09-26 13:17:53',1,NULL,0,NULL),(47,'Bashroraaaa','boshraamer40@gmail.com','$2y$12$ElshVR1X.WfaK6oDWGWyHOW1pxZXYeTsW8Br8kWCEH/m7RIZpD8ja','user','2025-09-26 13:31:56','2025-09-26 13:31:56',1,NULL,0,NULL),(48,'xxx','boshraamer3@gmail.com','$2y$12$cWJlJ0J9Crkw57IDKYIRaeAO1AmXYntgmWSSuI1qN9B1uRPOxVhmS','user','2025-09-28 20:07:09','2025-09-28 20:07:09',1,NULL,0,NULL),(49,'Youssef','youssefnabil@gmail.com','$2y$12$8JIDFAp.qaxV8dWSVMrGHOHTHM1P6cW.K52yecqIEO6bLRedJHQnm','user','2025-09-29 23:00:17','2025-09-29 23:01:02',1,NULL,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorites`
--

DROP TABLE IF EXISTS `user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `recipe_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_favorite` (`user_id`,`recipe_id`),
  KEY `user_favorites_recipe_fk` (`recipe_id`),
  CONSTRAINT `user_favorites_recipe_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorites_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorites`
--

LOCK TABLES `user_favorites` WRITE;
/*!40000 ALTER TABLE `user_favorites` DISABLE KEYS */;
INSERT INTO `user_favorites` VALUES (23,38,20,'2025-09-29 18:49:41','2025-09-29 18:49:41'),(24,38,21,'2025-09-29 21:50:54','2025-09-29 21:50:54'),(25,36,20,'2025-09-29 22:30:33','2025-09-29 22:30:33');
/*!40000 ALTER TABLE `user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pantry`
--

DROP TABLE IF EXISTS `user_pantry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pantry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `ingredient_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `pantry_ingredient_fk` (`ingredient_id`),
  KEY `pantry_user_fk` (`user_id`),
  CONSTRAINT `fk_ingredient` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pantry_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pantry`
--

LOCK TABLES `user_pantry` WRITE;
/*!40000 ALTER TABLE `user_pantry` DISABLE KEYS */;
INSERT INTO `user_pantry` VALUES (25,38,27,22.00,'pieces',NULL,'2025-10-10',NULL,'2025-09-19 17:08:40','2025-09-19 17:08:40'),(28,36,27,1.00,'kg',NULL,'2025-10-10',NULL,'2025-09-19 17:54:56','2025-09-19 17:54:56'),(29,36,27,2.00,'kg',NULL,'2025-10-10',NULL,'2025-09-19 17:55:12','2025-09-19 17:55:12'),(33,38,30,1.00,'kg',NULL,'2025-10-10',NULL,'2025-09-19 20:32:09','2025-09-19 20:32:09'),(34,36,31,22.00,'kg',NULL,'2025-09-30',NULL,'2025-09-23 13:19:38','2025-09-23 13:19:38'),(35,36,29,44.00,'kg',NULL,'2025-10-10',NULL,'2025-09-23 22:01:33','2025-09-23 22:01:33'),(36,36,28,22.00,'kg',NULL,'2025-10-07',NULL,'2025-09-25 15:17:03','2025-09-25 15:17:03'),(37,1,28,3.00,'kg','Vegetables','2025-12-01','Fresh tomatoes','2025-09-25 19:39:40','2025-09-25 19:39:40'),(38,38,33,9.00,'Kg',NULL,'2025-09-30',NULL,'2025-09-27 20:35:02','2025-09-27 21:44:26'),(39,38,34,2.00,'kg',NULL,'2025-10-10',NULL,'2025-09-27 20:43:51','2025-09-27 20:43:51'),(40,38,35,2.00,'L',NULL,'2025-10-10',NULL,'2025-09-27 21:02:31','2025-09-27 21:02:31'),(41,38,36,22.00,'G',NULL,'2025-10-10',NULL,'2025-09-27 21:20:33','2025-09-27 21:20:33'),(42,38,31,2.00,'Kg',NULL,'2025-09-30',NULL,'2025-09-29 22:45:03','2025-09-29 22:45:03');
/*!40000 ALTER TABLE `user_pantry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `dietary_type` varchar(255) DEFAULT NULL,
  `allergies` json DEFAULT NULL,
  `dislikes` json DEFAULT NULL,
  `servings` int DEFAULT '4',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_preferences_user_fk` (`user_id`),
  CONSTRAINT `user_preferences_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,5,'vegetarian','[\"nuts\", \"milk\"]','[\"Onions\", \"Garlic\"]',4,'2025-09-15 02:15:37','2025-09-17 20:46:49'),(3,9,'low carb','[\"egg\"]','[\"pork\"]',2,'2025-09-15 02:50:15','2025-09-15 02:50:15'),(9,19,'vegan','[\"gluten\", \"dairy\", \"nightshade\"]','[]',4,'2025-09-15 19:37:29','2025-09-15 19:37:29'),(10,20,'classic','[\"mustard\", \"nightshade\"]','[\"avocado\", \"fish\"]',4,'2025-09-15 19:54:31','2025-09-15 19:54:31'),(11,22,'keto','[\"peanut\", \"tree nut\"]','[\"fish\"]',1,'2025-09-15 20:12:54','2025-09-15 20:12:54'),(13,24,'low carb','[]','[\"olives\", \"nuts\", \"lamb\", \"avocado\"]',4,'2025-09-16 18:30:29','2025-09-16 18:30:29'),(14,25,'low carb','[\"fish\", \"egg\"]','[\"beef\", \"chicken\"]',2,'2025-09-16 19:13:47','2025-09-16 19:13:47'),(15,26,'vegetarian','[\"tree nut\", \"soy\"]','[\"fish\"]',6,'2025-09-16 21:36:20','2025-09-16 21:36:20'),(16,27,'classic','[\"gluten\", \"peanut\", \"soy\"]','[\"olives\", \"tomatoes\"]',4,'2025-09-16 22:25:35','2025-09-16 22:25:35'),(17,28,'vegetarian','[\"nuts\", \"milk\"]','[\"onion\"]',2,'2025-09-17 20:53:23','2025-09-17 20:53:23'),(18,30,'vegetarian','[\"nuts\", \"milk\"]','[\"onion\"]',1,'2025-09-17 22:33:57','2025-09-17 22:35:20'),(19,31,'low carb','[\"gluten\"]','[\"coconut\", \"avocado\", \"nuts\"]',1,'2025-09-17 23:19:38','2025-09-17 23:19:38'),(20,32,'classic','[\"egg\"]','[\"nuts\", \"olives\"]',6,'2025-09-18 14:45:53','2025-09-18 14:45:53'),(21,33,'classic','[\"fish\"]','[\"tomatoes\"]',1,'2025-09-18 17:16:14','2025-09-18 17:16:14'),(22,34,'classic','[\"soy\", \"Nuts\"]','[\"olives\"]',1,'2025-09-19 00:41:39','2025-09-19 00:47:25'),(23,35,'classic','[\"shellfish\", \"Eggs\"]','[\"avocado\", \"Spicy\"]',3,'2025-09-19 00:52:49','2025-09-19 12:01:48'),(24,36,'low carb','[\"fish\"]','[\"beef\"]',1,'2025-09-19 12:41:55','2025-09-23 18:01:14'),(25,37,'classic','[\"shellfish\"]','[\"lamb\"]',1,'2025-09-19 16:08:27','2025-09-19 16:08:27'),(26,38,'low carb','[]','[\"beef\"]',1,'2025-09-19 16:11:47','2025-09-19 16:11:47'),(27,42,'low carb','[\"fish\"]','[\"corn\", \"potatoes\"]',2,'2025-09-23 13:22:18','2025-09-23 13:22:18'),(28,43,'low carb','[\"nightshade\", \"sulfite\", \"sesame\"]','[\"corn\", \"tomatoes\"]',4,'2025-09-23 17:19:27','2025-09-23 17:19:27'),(29,44,'classic','[\"fish\", \"mustard\"]','[\"corn\", \"nuts\", \"potatoes\"]',1,'2025-09-25 15:20:34','2025-09-25 15:21:06'),(30,1,'vegetarian','[\"nuts\", \"milk\"]','[\"Onions\", \"Garlic\"]',4,'2025-09-27 21:35:11','2025-09-27 21:36:49'),(31,49,'classic','[\"fish\", \"mustard\"]','[\"fish\", \"nuts\"]',1,'2025-09-29 23:01:02','2025-09-29 23:01:02');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `language` varchar(10) DEFAULT 'en',
  `theme` varchar(10) DEFAULT 'light',
  `measurement_units` varchar(10) DEFAULT 'metric',
  `default_cuisine` varchar(100) DEFAULT NULL,
  `default_servings` int DEFAULT '4',
  `notifications` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_user_settings_user` (`user_id`),
  CONSTRAINT `fk_user_settings_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (1,28,'ar','light','metric',NULL,3,'[\"email\"]','2025-09-17 20:59:19','2025-09-17 20:59:19'),(2,29,'en','light','metric',NULL,4,NULL,'2025-09-17 21:16:34','2025-09-17 21:16:34'),(3,30,'en','light','metric',NULL,4,NULL,'2025-09-17 22:25:11','2025-09-17 22:25:11'),(4,31,'en','light','metric',NULL,4,NULL,'2025-09-17 23:17:37','2025-09-17 23:17:37'),(5,32,'en','light','metric',NULL,4,NULL,'2025-09-18 14:45:47','2025-09-18 14:45:47'),(6,33,'en','light','metric',NULL,4,NULL,'2025-09-18 17:16:05','2025-09-18 17:16:05'),(7,34,'en','light','metric',NULL,4,NULL,'2025-09-19 00:41:08','2025-09-19 00:41:08'),(8,35,'en','light','metric',NULL,4,'{\"sms\": false, \"email\": true, \"general\": true, \"mealReminders\": true, \"socialUpdates\": false, \"weeklyReports\": true, \"marketingEmails\": false, \"recipeSuggestions\": true, \"shoppingListReminders\": true}','2025-09-19 00:52:40','2025-09-19 12:20:30'),(9,36,'en','light','metric',NULL,4,'{\"sms\": false, \"email\": true, \"general\": true, \"mealReminders\": true, \"socialUpdates\": false, \"weeklyReports\": true, \"marketingEmails\": false, \"recipeSuggestions\": true, \"shoppingListReminders\": true}','2025-09-19 12:41:37','2025-09-25 15:18:06'),(10,37,'en','light','metric',NULL,4,NULL,'2025-09-19 16:08:18','2025-09-19 16:08:18'),(11,38,'en','light','metric',NULL,4,'{\"sms\": false, \"email\": true, \"general\": true, \"mealReminders\": true, \"socialUpdates\": false, \"weeklyReports\": true, \"marketingEmails\": false, \"recipeSuggestions\": true, \"shoppingListReminders\": true}','2025-09-19 16:10:56','2025-09-19 21:51:11'),(12,39,'en','light','metric',NULL,4,NULL,'2025-09-20 21:46:12','2025-09-20 21:46:12'),(13,40,'en','light','metric',NULL,4,NULL,'2025-09-20 21:54:36','2025-09-20 21:54:36'),(14,41,'en','light','metric',NULL,4,NULL,'2025-09-22 09:56:13','2025-09-22 09:56:13'),(15,42,'en','light','metric',NULL,4,NULL,'2025-09-23 13:21:26','2025-09-23 13:21:26'),(16,43,'en','light','metric',NULL,4,NULL,'2025-09-23 17:18:27','2025-09-23 17:18:27'),(17,44,'en','light','metric',NULL,4,'{\"sms\": false, \"email\": true, \"general\": true, \"mealReminders\": true, \"socialUpdates\": false, \"weeklyReports\": true, \"marketingEmails\": false, \"recipeSuggestions\": true, \"shoppingListReminders\": true}','2025-09-25 15:20:10','2025-09-25 15:21:45'),(18,45,'en','light','metric',NULL,4,NULL,'2025-09-26 12:46:53','2025-09-26 12:46:53'),(19,46,'en','light','metric',NULL,4,NULL,'2025-09-26 13:17:53','2025-09-26 13:17:53'),(20,47,'en','light','metric',NULL,4,NULL,'2025-09-26 13:31:56','2025-09-26 13:31:56'),(21,1,'ar','light','metric',NULL,3,'[\"email\"]','2025-09-26 16:59:16','2025-09-26 16:59:16'),(22,48,'en','light','metric',NULL,4,NULL,'2025-09-28 20:07:09','2025-09-28 20:07:09'),(23,49,'en','light','metric',NULL,4,NULL,'2025-09-29 23:00:17','2025-09-29 23:00:17');
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-10-01 22:55:18
