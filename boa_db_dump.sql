-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: boa_db
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cin` varchar(255) DEFAULT NULL,
  `customerid` bigint DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rib` varchar(255) DEFAULT NULL,
  `transferid` bigint NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `transfer_entity_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9k47rotqnxuptgoa8d97as0qo` (`customer_id`),
  KEY `FK5c41ynlglg3nq9ofgvrpp1uw9` (`transfer_entity_id`),
  CONSTRAINT `FK5c41ynlglg3nq9ofgvrpp1uw9` FOREIGN KEY (`transfer_entity_id`) REFERENCES `transfer_entity` (`id`),
  CONSTRAINT `FK9k47rotqnxuptgoa8d97as0qo` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary`
--

LOCK TABLES `beneficiary` WRITE;
/*!40000 ALTER TABLE `beneficiary` DISABLE KEYS */;
INSERT INTO `beneficiary` VALUES (1,'ttw556w',1,'zaid','gabri','234567899876',NULL,6,NULL,NULL),(2,'ttw556w',1,'zaid','gabri','234567899876',NULL,7,NULL,NULL),(3,'EE939515',1,'zaid','gabri','234567899876',NULL,8,NULL,NULL),(4,'EE939515',1,'zaid','gabri','234567899876',NULL,9,NULL,NULL),(5,'EE939515',1,'zaid','gabri','234567899876',NULL,10,NULL,NULL),(6,'EE939515',1,'zaid','gabri','234567899876',NULL,11,NULL,NULL),(7,'EE939515',1,'zaid','gabri','234567899876',NULL,12,NULL,NULL),(8,NULL,2,'haffsa','Hamidi','0707070707',NULL,13,NULL,NULL),(9,NULL,2,'issam','YASSINE','0771407988',NULL,15,NULL,NULL),(10,'bw0000',2,'hafssa','Hamidi','+21267890983',NULL,16,NULL,NULL),(11,'EE939515',1,'zaid','gabri','234567899876',NULL,23,NULL,NULL),(12,'EE939515',1,'zaid','gabri','234567899876',NULL,24,NULL,NULL),(13,'EE939515',1,'zaid','gabri','234567899876',NULL,25,NULL,NULL),(14,'EE939515',1,'zaid','gabri','234567899876',NULL,28,NULL,NULL),(15,'EE939515',1,'zaid','gabri','234567899876',NULL,29,NULL,NULL),(16,'EE939515',1,'zaid','gabri','234567899876',NULL,40,NULL,NULL),(17,NULL,2,'elghali','khadouj','+21267890983',NULL,41,NULL,NULL),(18,NULL,1,'weqw','ertghjyy','0919199119',NULL,42,NULL,NULL),(19,'bw0000',3,'zaid','Hamidi','+21267890983',NULL,43,NULL,NULL),(20,'bw0000',1,'hafssa','Bourass','456789',NULL,47,NULL,NULL);
/*!40000 ALTER TABLE `beneficiary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cin` varchar(255) DEFAULT NULL,
  `ctc` bigint DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rib` varchar(255) DEFAULT NULL,
  `kyc_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcycw2mo060conujojml5y2g5j` (`kyc_id`),
  CONSTRAINT `FKcycw2mo060conujojml5y2g5j` FOREIGN KEY (`kyc_id`) REFERENCES `kyc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'9876754321',NULL,'EXISTING','haffsa','Hamidi','3090','+19876543210','123456789012345678901234',1),(2,'EE9392516',1,'PROSPECT','mohamed','AMMAHA','8630','0616671210','123456789012345768967234',2),(3,'bw4904',1,'EXISTING','issam','bourass','8269','0771407988','098765432112345678906543',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kyc`
--

DROP TABLE IF EXISTS `kyc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kyc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country_of_address` varchar(255) DEFAULT NULL,
  `country_of_issue` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gsm` varchar(255) DEFAULT NULL,
  `id_expiration_date` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) DEFAULT NULL,
  `id_validity_date` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `legal_address` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc`
--

LOCK TABLES `kyc` WRITE;
/*!40000 ALTER TABLE `kyc` DISABLE KEYS */;
INSERT INTO `kyc` VALUES (1,'Los Angeles','USA','USA','1985-05-15','jane.smith@example.com','hafssa','+19876543210','2029-06-30','9876754321','Passport',NULL,'Hamidi','456 Sunset Blvd','American','Doctor','Mme'),(2,'paris ','USA','USA','1985-05-15','jane.smith@example.com','mohamed','0616671210','2025-06-30','EE9392516','CIN','2025-06-30','AMMAHA','456 Sunset Blvd','American','Enginner','Dr.'),(3,'nouaceur','ma','ma','2000-06-21','issam.brs@gmail.com','issam','0771407988','2029-06-30','bw4904','Cin',NULL,'bourass','Noueaceur','Maroc','etudiant','M');
/*!40000 ALTER TABLE `kyc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sirone`
--

DROP TABLE IF EXISTS `sirone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sirone` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birth` datetime(6) DEFAULT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `rib` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sirone`
--

LOCK TABLES `sirone` WRITE;
/*!40000 ALTER TABLE `sirone` DISABLE KEYS */;
/*!40000 ALTER TABLE `sirone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_entity`
--

DROP TABLE IF EXISTS `transfer_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_entity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pincode` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `benefeicaryid` bigint DEFAULT NULL,
  `initiated_at` varchar(255) DEFAULT NULL,
  `maxbamount_periodc` double NOT NULL,
  `maxpin_attempts` int NOT NULL,
  `max_transfers_per_customer` int NOT NULL,
  `motif` varchar(255) DEFAULT NULL,
  `pdf_content` longblob,
  `receipt_url` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `to_be_served_from` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `validation_duration` int NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `wallet_id` bigint DEFAULT NULL,
  `beneficiary_wallet_id` bigint DEFAULT NULL,
  `customer_wallet_id` bigint DEFAULT NULL,
  `beneficiaries_ids` varchar(255) DEFAULT NULL,
  `beneficiaries_wallets_ids` varchar(255) DEFAULT NULL,
  `amounts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnqd9nmnq7mptks8twlyeagfgq` (`customer_id`),
  KEY `FK9c8bmgps9ulfi9f5jwtgl55sl` (`wallet_id`),
  CONSTRAINT `FK9c8bmgps9ulfi9f5jwtgl55sl` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`),
  CONSTRAINT `FKnqd9nmnq7mptks8twlyeagfgq` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_entity`
--

LOCK TABLES `transfer_entity` WRITE;
/*!40000 ALTER TABLE `transfer_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_number` varchar(255) DEFAULT NULL,
  `balance` double NOT NULL,
  `rib` varchar(255) DEFAULT NULL,
  `beneficiary_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKixira4nkrvwxbh5auslcu672s` (`beneficiary_id`),
  KEY `FKpb5ltxtks766lq2b9hgvnr2bq` (`customer_id`),
  CONSTRAINT `FKixira4nkrvwxbh5auslcu672s` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `FKpb5ltxtks766lq2b9hgvnr2bq` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,'4567887654345678',99923550,'123456789012345678901234',NULL,1),(2,'4567997645565678',100071922,'123456789012345768967234',NULL,2),(3,'3456789876543456',200000000004061,'098765432112345678906543',NULL,3);
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-06 20:56:29
