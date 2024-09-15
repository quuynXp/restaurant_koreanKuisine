-- MySQL dump 10.13  Distrib 9.0.1, for Linux (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_date` datetime(6) DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_guests` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('2024-09-15 17:30:00.000000','10 / 10 An Ph├║ ─É├┤ng, Q.12','quyen10924@gmail.com','84fbec62-cd10-4136-a7a6-07445c734c5b','name','','1','2432432','1 / 1'),('2024-09-15 16:48:00.000000','10 / 10 An Ph├║ ─É├┤ng, Q.12','quyen10924@gmail.com','d0c2510c-ef98-47d3-ba4f-79f0d2d12626','name','','1','2432432','1 / 1');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `total_amount` decimal(38,2) DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK9emlp6m95v5er2bcqkjsw48he` (`user_id`),
  CONSTRAINT `FKl70asp4l4w0jmbm1tqyofho4o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (620000.00,'715683f5-1a00-43b4-bbed-a2f106bce99e','667f879a-5bf5-4a3c-b763-8f51175a2ffd'),(840000.00,'9d4c73b8-370e-460d-b6da-c5951ffb9f18','a512c8d2-ad85-40ff-b4ef-568bdefd0aab');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dish` (
  `price` decimal(38,2) DEFAULT NULL,
  `rating` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish`
--

LOCK TABLES `dish` WRITE;
/*!40000 ALTER TABLE `dish` DISABLE KEYS */;
INSERT INTO `dish` VALUES (150000.00,4.8,'Canh kimchi cay','f6550427-72d5-11ef-8818-0242ac110002','kimchi_jjigae.jpg','[\"kimchi_jjigae1.jpg\", \"kimchi_jjigae2.jpg\", \"kimchi_jjigae3.jpg\"]','Kimchi, Thß╗ït heo, ─Éß║¡u h┼⌐, H├ánh l├í','Kimchi Jjigae','Canh'),(170000.00,4.9,'C╞ím trß╗Ön rau cß╗º','f65506c2-72d5-11ef-8818-0242ac110002','bibimbap.jpg','[\"bibimbap1.jpg\", \"bibimbap2.jpg\", \"bibimbap3.jpg\"]','C╞ím, Rau cß╗º, Trß╗⌐ng, Gochujang','Bibimbap','M├│n ch├¡nh'),(200000.00,4.7,'Thß╗ït b├▓ ╞░ß╗¢p n╞░ß╗¢ng','f65508fa-72d5-11ef-8818-0242ac110002','bulgogi.jpg','[\"bulgogi1.jpg\", \"bulgogi2.jpg\", \"bulgogi3.jpg\"]','Thß╗ït b├▓, N╞░ß╗¢c t╞░╞íng, Tß╗Åi, ─É╞░ß╗¥ng','Bulgogi','M├│n ch├¡nh'),(160000.00,4.6,'Miß║┐n x├áo H├án Quß╗æc','f65509bb-72d5-11ef-8818-0242ac110002','japchae.jpg','[\"japchae1.jpg\", \"japchae2.jpg\", \"japchae3.jpg\"]','Miß║┐n khoai lang, Rau cß╗º, Thß╗ït b├▓','Japchae','M├│n ch├¡nh'),(120000.00,4.5,'B├ính gß║ío x├áo cay','f6550a6e-72d5-11ef-8818-0242ac110002','tteokbokki.jpg','[\"tteokbokki1.jpg\", \"tteokbokki2.jpg\", \"tteokbokki3.jpg\"]','B├ính gß║ío, Gochujang, Chß║ú c├í','Tteokbokki','M├│n ─ân vß║╖t'),(250000.00,4.8,'Thß╗ït ba chß╗ë n╞░ß╗¢ng','f6550b69-72d5-11ef-8818-0242ac110002','samgyeopsal.jpg','[\"samgyeopsal1.jpg\", \"samgyeopsal2.jpg\", \"samgyeopsal3.jpg\"]','Ba chß╗ë heo, Tß╗Åi, Dß║ºu m├¿','Samgyeopsal','M├│n ch├¡nh'),(150000.00,4.7,'Canh ─æß║¡u h┼⌐ non cay','f6550df8-72d5-11ef-8818-0242ac110002','sundubu_jjigae.jpg','[\"sundubu_jjigae1.jpg\", \"sundubu_jjigae2.jpg\", \"sundubu_jjigae3.jpg\"]','─Éß║¡u h┼⌐ non, Hß║úi sß║ún, Gochujang','Sundubu Jjigae','Canh'),(130000.00,4.6,'C╞ím cuß╗Ön H├án Quß╗æc','f6550ee0-72d5-11ef-8818-0242ac110002','gimbap.jpg','[\"gimbap1.jpg\", \"gimbap2.jpg\", \"gimbap3.jpg\"]','C╞ím, Rau cß╗º, Rong biß╗ân, Thß╗ït','Gimbap','M├│n ─ân vß║╖t'),(140000.00,4.7,'C╞ím chi├¬n kimchi','f6550fb5-72d5-11ef-8818-0242ac110002','kimchi_fried_rice.jpg','[\"kimchi_fried_rice1.jpg\", \"kimchi_fried_rice2.jpg\", \"kimchi_fried_rice3.jpg\"]','C╞ím, Kimchi, Trß╗⌐ng, Rau cß╗º','Kimchi Fried Rice','M├│n ch├¡nh'),(180000.00,4.5,'B├ính kß║┐pdish hß║úi sß║ún','f65510ac-72d5-11ef-8818-0242ac110002','haemul_pajeon.jpg','[\"haemul_pajeon1.jpg\", \"haemul_pajeon2.jpg\", \"haemul_pajeon3.jpg\"]','H├ánh l├í, Hß║úi sß║ún, Bß╗Öt m├¼','Haemul Pajeon','Khai vß╗ï'),(190000.00,4.6,'Canh s╞░ß╗¥n b├▓','f6551184-72d5-11ef-8818-0242ac110002','galbitang.jpg','[\"galbitang1.jpg\", \"galbitang2.jpg\", \"galbitang3.jpg\"]','S╞░ß╗¥n b├▓, Cß╗º cß║úi, H├ánh l├í','Galbitang','Canh'),(200000.00,4.8,'G├á x├áo cay','f6551259-72d5-11ef-8818-0242ac110002','dakgalbi.jpg','[\"dakgalbi1.jpg\", \"dakgalbi2.jpg\", \"dakgalbi3.jpg\"]','Thß╗ït g├á, Gochujang, Khoai lang','Dakgalbi','M├│n ch├¡nh'),(90000.00,4.9,'Cß║úi thß║úo muß╗æi cay','f6551311-72d5-11ef-8818-0242ac110002','kimchi.jpg','[\"kimchi1.jpg\", \"kimchi2.jpg\", \"kimchi3.jpg\"]','Cß║úi thß║úo, Bß╗Öt ß╗¢t, Tß╗Åi','Kimchi','M├│n phß╗Ñ'),(100000.00,4.5,'M├│n phß╗Ñ H├án Quß╗æc','f65513c5-72d5-11ef-8818-0242ac110002','banchan.jpg','[\"banchan1.jpg\", \"banchan2.jpg\", \"banchan3.jpg\"]','Rau cß╗º, N╞░ß╗¢c t╞░╞íng, Dß║ºu m├¿','Banchan','M├│n phß╗Ñ'),(160000.00,4.4,'Dß╗ôi tr╞░ß╗¥ng H├án Quß╗æc','f6551498-72d5-11ef-8818-0242ac110002','soondae.jpg','[\"soondae1.jpg\", \"soondae2.jpg\", \"soondae3.jpg\"]','L├▓ng heo, Miß║┐n, Huyß║┐t','Soondae','M├│n ch├¡nh'),(150000.00,4.6,'M├¼ t╞░╞íng ─æen','f6551535-72d5-11ef-8818-0242ac110002','jjajangmyeon.jpg','[\"jjajangmyeon1.jpg\", \"jjajangmyeon2.jpg\", \"jjajangmyeon3.jpg\"]','M├¼, T╞░╞íng ─æen, Thß╗ït heo','Jjajangmyeon','M├│n ch├¡nh'),(220000.00,4.7,'Canh g├á nh├ón s├óm','f6551696-72d5-11ef-8818-0242ac110002','samgyetang.jpg','[\"samgyetang1.jpg\", \"samgyetang2.jpg\", \"samgyetang3.jpg\"]','G├á, Nh├ón s├óm, Tß╗Åi, Gß║ío nß║┐p','Samgyetang','Canh'),(110000.00,4.8,'B├ính kß║┐p ngß╗ìt H├án Quß╗æc','f655176a-72d5-11ef-8818-0242ac110002','hoddeok.jpg','[\"hoddeok1.jpg\", \"hoddeok2.jpg\", \"hoddeok3.jpg\"]','Bß╗Öt m├¼, ─É╞░ß╗¥ng n├óu, Quß║┐','Hoddeok','Tr├íng miß╗çng'),(110000.00,4.8,'B├ính kß║┐p ngß╗ìt H├án Quß╗æc','f6551811-72d5-11ef-8818-0242ac110002','hotteok.jpg','[\"hotteok1.jpg\", \"hotteok2.jpg\", \"hotteok3.jpg\"]','Bß╗Öt m├¼, ─É╞░ß╗¥ng n├óu, Quß║┐','Hotteok','M├│n ─ân vß║╖t'),(150000.00,4.9,'─É├í b├áo ─æß║¡u ─æß╗Å H├án Quß╗æc','f65518bf-72d5-11ef-8818-0242ac110002','patbingsu.jpg','[\"patbingsu1.jpg\", \"patbingsu2.jpg\", \"patbingsu3.jpg\"]','─É├í b├áo, ─Éß║¡u ─æß╗Å, Tr├íi c├óy','Patbingsu','Tr├íng miß╗çng');
/*!40000 ALTER TABLE `dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drinks` (
  `price` decimal(38,2) DEFAULT NULL,
  `rating` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinks`
--

LOCK TABLES `drinks` WRITE;
/*!40000 ALTER TABLE `drinks` DISABLE KEYS */;
INSERT INTO `drinks` VALUES (60000.00,4.8,'R╞░ß╗úu nß╗òi tiß║┐ng cß╗ºa H├án Quß╗æc','fbe91cb0-72d5-11ef-8818-0242ac110002','soju.jpg','[\"soju1.jpg\", \"soju2.jpg\", \"soju3.jpg\"]','R╞░ß╗úu gß║ío, L├║a mß║ích, L├║a m├¼','Soju','R╞░ß╗úu'),(70000.00,4.7,'R╞░ß╗úu gß║ío truyß╗ün thß╗æng','fbe91f4c-72d5-11ef-8818-0242ac110002','makgeolli.jpg','[\"makgeolli1.jpg\", \"makgeolli2.jpg\", \"makgeolli3.jpg\"]','Gß║ío, N╞░ß╗¢c, Men','Makgeolli','R╞░ß╗úu'),(75000.00,4.6,'R╞░ß╗úu m├óm x├┤i ─æen H├án Quß╗æc','fbe92141-72d5-11ef-8818-0242ac110002','bokbunja_ju.jpg','[\"bokbunja_ju1.jpg\", \"bokbunja_ju2.jpg\", \"bokbunja_ju3.jpg\"]','M├óm x├┤i ─æen, R╞░ß╗úu gß║ío','Bokbunja Ju','R╞░ß╗úu'),(50000.00,4.5,'N╞░ß╗¢c l├¬ H├án Quß╗æc','fbe921c2-72d5-11ef-8818-0242ac110002','baesuk.jpg','[\"baesuk1.jpg\", \"baesuk2.jpg\", \"baesuk3.jpg\"]','L├¬, Mß║¡t ong, Gß╗½ng','Baesuk','Kh├┤ng cß╗ôn'),(40000.00,4.6,'N╞░ß╗¢c gß║ío ngß╗ìt','fbe92231-72d5-11ef-8818-0242ac110002','sikhye.jpg','[\"sikhye1.jpg\", \"sikhye2.jpg\", \"sikhye3.jpg\"]','C╞ím, Mß║ích nha, ─É╞░ß╗¥ng','Sikhye','Kh├┤ng cß╗ôn'),(45000.00,4.7,'N╞░ß╗¢c quß║┐ H├án Quß╗æc','fbe922c2-72d5-11ef-8818-0242ac110002','sujeonggwa.jpg','[\"sujeonggwa1.jpg\", \"sujeonggwa2.jpg\", \"sujeonggwa3.jpg\"]','Quß║┐, Gß╗½ng, Hß╗ông kh├┤','SuJeongGwa','Kh├┤ng cß╗ôn'),(30000.00,4.8,'Sß╗»a chuß╗æi phß╗ò biß║┐n','fbe92375-72d5-11ef-8818-0242ac110002','banana_milk.jpg','[\"banana_milk1.jpg\", \"banana_milk2.jpg\", \"banana_milk3.jpg\"]','Chuß╗æi, Sß╗»a, ─É╞░ß╗¥ng','Sß╗»a Chuß╗æi','Kh├┤ng cß╗ôn'),(55000.00,4.7,'Tr├á ng┼⌐ vß╗ï H├án Quß╗æc','fbe9242b-72d5-11ef-8818-0242ac110002','omija_tea.jpg','[\"omija_tea1.jpg\", \"omija_tea2.jpg\", \"omija_tea3.jpg\"]','Quß║ú ng┼⌐ vß╗ï tß╗¡, Mß║¡t ong, N╞░ß╗¢c','Tr├á Omija','Kh├┤ng cß╗ôn'),(50000.00,4.8,'Tr├á tr├íi c├óy chua ngß╗ìt','fbe924e2-72d5-11ef-8818-0242ac110002','citron_tea.jpg','[\"citron_tea1.jpg\", \"citron_tea2.jpg\", \"citron_tea3.jpg\"]','Tr├íi yuzu, Mß║¡t ong, N╞░ß╗¢c','Tr├á Yuzu','Kh├┤ng cß╗ôn'),(45000.00,4.7,'C├á ph├¬ ─æ├í phß╗ò biß║┐n ß╗ƒ H├án Quß╗æc','fbe9256c-72d5-11ef-8818-0242ac110002','iced_americano.jpg','[\"iced_americano1.jpg\", \"iced_americano2.jpg\", \"iced_americano3.jpg\"]','C├á ph├¬, ─É├í, N╞░ß╗¢c','Iced Americano','Kh├┤ng cß╗ôn'),(30000.00,4.6,'Tr├á l├║a mß║ích m├ít lß║ính','fbe9261f-72d5-11ef-8818-0242ac110002','barley_tea.jpg','[\"barley_tea1.jpg\", \"barley_tea2.jpg\", \"barley_tea3.jpg\"]','L├║a mß║ích rang, N╞░ß╗¢c','Tr├á L├║a Mß║ích','Kh├┤ng cß╗ôn'),(30000.00,4.5,'Tr├á ng├┤ truyß╗ün thß╗æng H├án Quß╗æc','fbe92832-72d5-11ef-8818-0242ac110002','corn_tea.jpg','[\"corn_tea1.jpg\", \"corn_tea2.jpg\", \"corn_tea3.jpg\"]','Ng├┤ rang, N╞░ß╗¢c','Tr├á Ng├┤','Kh├┤ng cß╗ôn'),(50000.00,4.6,'Tr├á ng┼⌐ cß╗æc H├án Quß╗æc','fbe928be-72d5-11ef-8818-0242ac110002','yulmu_tea.jpg','[\"yulmu_tea1.jpg\", \"yulmu_tea2.jpg\", \"yulmu_tea3.jpg\"]','Hß║ít ├╜ d─⌐, Sß╗»a, N╞░ß╗¢c','Tr├á Yulmu','Kh├┤ng cß╗ôn'),(35000.00,4.5,'N╞░ß╗¢c d╞░a leo m├ít lß║ính','fbe9294b-72d5-11ef-8818-0242ac110002','cucumber_water.jpg','[\"cucumber_water1.jpg\", \"cucumber_water2.jpg\", \"cucumber_water3.jpg\"]','D╞░a leo, N╞░ß╗¢c','N╞░ß╗¢c D╞░a Leo','Kh├┤ng cß╗ôn'),(75000.00,4.7,'R╞░ß╗úu gß║ío ch╞░a lß╗ìc','fbe929cf-72d5-11ef-8818-0242ac110002','dongdongju.jpg','[\"dongdongju1.jpg\", \"dongdongju2.jpg\", \"dongdongju3.jpg\"]','Gß║ío, Men, N╞░ß╗¢c','Dongdongju','R╞░ß╗úu');
/*!40000 ALTER TABLE `drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `quantity` decimal(38,2) DEFAULT NULL,
  `total_price` decimal(38,2) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1ntpvbsdhh3gx12a3vu0ft6ts` (`cart_id`),
  KEY `FK7xf2gmq3yok90kilflnu8aa7e` (`orders_id`),
  CONSTRAINT `FK1ntpvbsdhh3gx12a3vu0ft6ts` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK7xf2gmq3yok90kilflnu8aa7e` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (2.00,340000.00,170000.00,NULL,'0ff7f926-be5a-46cb-9bde-5f5dd04f3b4a','bibimbap.jpg',NULL,'f65506c2-72d5-11ef-8818-0242ac110002','Bibimbap','Dish'),(2.00,340000.00,170000.00,NULL,'519cbf63-6c5d-4d64-8981-dc6ea1d05271',NULL,'e0389d3d-76dc-4715-9007-891912693c59','f65506c2-72d5-11ef-8818-0242ac110002','Bibimbap',NULL),(2.00,280000.00,140000.00,NULL,'5f1a4216-f693-426e-852d-e660f3135a6e',NULL,'e0389d3d-76dc-4715-9007-891912693c59','f6550fb5-72d5-11ef-8818-0242ac110002','Kimchi Fried Rice',NULL),(2.00,500000.00,250000.00,NULL,'80c3ed1e-e11f-4427-af8f-019d67cdbd98','samgyeopsal.jpg',NULL,'f6550b69-72d5-11ef-8818-0242ac110002','Samgyeopsal','Dish'),(2.00,340000.00,170000.00,NULL,'9f8c508f-6045-4a21-ba07-61ffcb58934a',NULL,'a604243b-175a-4659-af75-96b387431854','f65506c2-72d5-11ef-8818-0242ac110002','Bibimbap',NULL),(2.00,340000.00,170000.00,NULL,'ad136ee3-7f0a-4ef5-a259-461fb0f744d7','bibimbap.jpg',NULL,'f65506c2-72d5-11ef-8818-0242ac110002','Bibimbap','Dish'),(2.00,500000.00,250000.00,NULL,'d68b03ac-24ff-45fa-aadc-053fda90bc8c',NULL,'a604243b-175a-4659-af75-96b387431854','f6550b69-72d5-11ef-8818-0242ac110002','Samgyeopsal',NULL),(2.00,280000.00,140000.00,NULL,'d9f55cba-a369-4126-813f-1b1e4ef218c8','kimchi_fried_rice.jpg',NULL,'f6550fb5-72d5-11ef-8818-0242ac110002','Kimchi Fried Rice','Dish');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `total_amount` decimal(38,2) DEFAULT NULL,
  `orders_date` datetime(6) DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (672000.00,'2024-09-15 15:56:29.965048','a604243b-175a-4659-af75-96b387431854','COD','vip','a512c8d2-ad85-40ff-b4ef-568bdefd0aab'),(558000.00,'2024-09-15 15:58:04.664879','e0389d3d-76dc-4715-9007-891912693c59','COD','koreanKuisine','667f879a-5bf5-4a3c-b763-8f51175a2ffd');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `day_of_birth` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2000-01-01','quy├¬n','667f879a-5bf5-4a3c-b763-8f51175a2ffd','Th├íi ngß╗ìc','quyen10924@gmail.com','$2a$10$TX5HEb9HzGuXchVzj9/JNevc0612dG6ropeM6CbVibfI5Zlyfmw6y','0373730397','thaingocquyen8240',_binary '¼\φ\0sr\0java.util.ArrayListxü\╥Ö\╟a¥\0I\0sizexp\0\0\0w\0\0\0t\0USERx'),(NULL,NULL,'a512c8d2-ad85-40ff-b4ef-568bdefd0aab',NULL,NULL,'$2a$10$oS3DK1jiFuTXzq2dAppQTuWOAaX3i9eumSvEBvgG0Bmh2JZ.LV0G.',NULL,'admin',_binary '¼\φ\0sr\0java.util.ArrayListxü\╥Ö\╟a¥\0I\0sizexp\0\0\0w\0\0\0t\0ADMINx');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-15 15:43:56
