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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary`
--

LOCK TABLES `beneficiary` WRITE;
/*!40000 ALTER TABLE `beneficiary` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'9876754321',NULL,'EXISTING','haffsa','Hamidi','2023','+19876543210',NULL,1),(2,'EE9392516',1,'PROSPECT','mohamed','AMMAHA',NULL,'+19876543210',NULL,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kyc`
--

LOCK TABLES `kyc` WRITE;
/*!40000 ALTER TABLE `kyc` DISABLE KEYS */;
INSERT INTO `kyc` VALUES (1,'Los Angeles','USA','USA','1985-05-15','jane.smith@example.com','haffsa','+19876543210','2025-06-30','9876754321','Passport','2025-06-30','Hamidi','456 Sunset Blvd','American','Doctor','Dr.'),(2,'paris ','USA','USA','1985-05-15','jane.smith@example.com','mohamed','+19876543210','2025-06-30','EE9392516','CIN','2025-06-30','AMMAHA','456 Sunset Blvd','American','Enginner','Dr.');
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
  PRIMARY KEY (`id`),
  KEY `FKnqd9nmnq7mptks8twlyeagfgq` (`customer_id`),
  KEY `FK9c8bmgps9ulfi9f5jwtgl55sl` (`wallet_id`),
  CONSTRAINT `FK9c8bmgps9ulfi9f5jwtgl55sl` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`),
  CONSTRAINT `FKnqd9nmnq7mptks8twlyeagfgq` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_entity`
--

LOCK TABLES `transfer_entity` WRITE;
/*!40000 ALTER TABLE `transfer_entity` DISABLE KEYS */;
INSERT INTO `transfer_entity` VALUES (1,'2023',400,NULL,'2024-01-05 19:16:24',500,0,5,NULL,_binary '%PDF-1.4\n%\�\�\�\�\n2 0 obj\n<</Type/XObject/Subtype/Image/Width 448/Height 83/Length 5389/ColorSpace/DeviceGray/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\�]gXG\�^@�ۻQ\�)*J4v��\�1_,��I\�1�Y\�$`슊]cL�)\�h���F\�\n֨��X���Paޝsfwgwg\�G|��k\��\�9\�v\�ݙ3g\��dÆ\r6lذa\�\�½V\�Ik\���KH���\�\�i�\�z9�E6\�\n=V\\~FtȾ�\�J\�n��<�h�])@Y\�\�+L���b\��4<:0���[g\�1ʄ]�\�\�\�R\�]\�\�0\�XߞV֙��\�e&ަ,�o\�f\�\�q�\�\�\�y\�	\r��t�I:ٻ�X]�\�!��\�\�\�\�F\�Pee\�ʐB\�I\�>9M\�lz\�\�\�F\�!�R���\�T\�\�h�\�\�/�M6\�\�\�k\�=ag0pƛH΃\�J\���yI\�\r}�=����Bk(%�+�K\��\�\�Ä\�j\�ZdM��\�I��a�\��\�-\�g5�\�\�z��S\Zk\�\�\�Ry\�r��>�\�T\�\�{�\nV;��6��d\�WS.�<\�G�\\\�,\�\�`�S�kC�v�W;\�\�\�,��X\�\��\n�:��6tx\�!eb�rY\�%}$�[�E��9�\�6x\�D\����\nW�\�#d��\�\���K�\�\��4d�gW>1�\�#\�oj\�ėNi�\r%��<®\\~uH!]��[�\�Iu�4\�\�\\��+^x.Ʌ>BjY�	\�s\�mP)�rp��b\�s��\�-�e\�L��	\�D�R+�\�s\'0B\��!�:�\�6\0\�\�Q�Ԩ�s�\�\�����t2d\�pJ\�_Ŋ�\�\�I(\�\�\�`\�\�!�%[5APv�\�QSo\0�8�U\�\Z<2lBD\�܅�/��� E�)�e\�\�}?\�\�D\�-�{z_��;$H�\�[Z؂zv]}��\�^\�\�9$؀R�P��oJg���1u@\�\�٘qSf\�Y�h\�\Z\�>��>\��\Z\�\�\�\�\�\�\�/�c\� chQ�`�4�h��\�\�\�XN�2\�4PM�\\w8\�{s�\�jL\�q4+\�\�\Z L\�>\�� x^.>��}�n){�D+\"\rW#!����\�ݮ�n��\�-|\�;>z\�_��e�o�NtuB5\��pSh魵i|⤕�\'y\0��-Z%�z:\�p�Wsa��\��^�G\�u\r��d̿ΰl\�\�z;�\��ƫ\�$�\�^w\�6�\n\�\�*H&x-\�\�\�ΈT\�?ngMw\�Ĝ��*{\�C\�\�æ�\�\�`>P��p=W-�\�\nC�-ٮ� (�%#\�)exYO3cz���-��,+��fN3\�|��\�G6*k�\���\����\�\�f�|�S坿L}Q?�\�?B��~\�L)\�\�*\�¤�\�͒�\��\�_\�S�:\�S\�: 9hY�$\�/C7�W\�ɺ\�G\�\�fK�ʳ\'\�\�\\�\�Vs�c�����\�dx��t\�\�\��Q\'��?\�i�\�\�m�\npz-\�?�G뉡�~�-�1?s\r��8\�Ht\\*��\�Ç��5y��E-Y���\�Gz���?�]�\�\'A݋�2r��\�jX팿\�\'*2\Z	o\�C5\�F��\�\�\����\�\��ۮ\�,\��Aϟ\��d޺|\�\��:\�5�T�G\�ƦكR�\�\�o�\n\�;\�\�\'�\�\��4 p\���\�9u��\�|��񗈯����ۥ!@�\n(Q���x�^���\�U��\�0!�\'\�f\�\�\�_.?5��LX�qos\�\\Ƕ\��ae>]֭���w\�z\���)*yW�\���a\�Փ\�\�R�Gr?ѥ\�\�pq	\0\�>^Tk\�;N\�{\�\�\�\�\Z\�\n4߂�\�ɢ.`\�a\�ȅ����o9h:�\��y\�\�ʐ�\�\�\�\�\���\���ϟZ\�v\��\\�c\�I��6̲\�\�\���L�JR\���_\�pM\�\��\n�C��\\L\"\�\�J�y1u��\��+��5��p�jdBg��k\�\��{ \���\�\���<䯭!=\�O\�	q��$\�_GF��d�8�2�\�8q�\�\�\���m\�\��\��sd� �\�b4����\�_<�D\�\�<d�$\�\���hDU\�9�\�\�$�O���<\�\�}\�}�\�\�\�G䉿��\��?\\6\��&\0��B\�{w�9��L�,$\�H\�YC\�.����,Aᯧ��ݠ\�77Q(�\�;\�MY�i�?6�\�t\�4�[\�h!\��\�\�Z\�4�\�<�5�\�}���@ϟl\"\�\��î�Qy\�\n�W��>��������w�Ȳ_c,\�C\�I_�,A\�/��ę	h\�w��A\������]G\�Iz-\�\�\�\�S\�\�8U\\Tq\��s\Z\�F\�B쀻G�\�o؈\�4DTH�ǌ\\\�\�&)\�\�!5�h�2�XG;\�\�/\n<M�,�ZSxX�}�\�\�䈦�^8} �,K��\�\�a����\�\��\��9��\�\�?\��/\�RF�nf}\�1\�f�l�D\��\\ZE^\�Ne\�P�q��JT\�DP\�\��:�\�\�\��\� e�5*Y�d\�\0\�xؼ�\�\�+��ph�.)λ��4\�T\�@��?}�\�����e&�2N\�\�v�\��\�\n\�U-e\�\�N�\n\�\�\�7�,�;�pv\���T>s\�(��[&(�$�G\�:\�ƾH\�>�[R\�P\'\'\'?b��b�\���\�i�\�C\�\�ZZe�g(\�i-s\"���۞��\��|\�Ӡf�3rǲ\0��|.�\�\��E\�\�uĸ�PE\��+\"�`\�\����K�g�V~F�@ך��\��3O�\r\�M\�p�ݫ\�\�\�c\��\����;�.\��\�\�xs\"\�8VA�Y\�\�r�o\�H��:s\�\�\��#�n{�\�\'+��&P\�c	��)6T����\�WXb#8�e\���ˢ}���Q���\�zi?�Kp\�۟UTn`�6\�\�ʮ�(���[!\�o�ҽ\��a�Q�\�~!\�1HLq\\\�K(bn\�V\�XA_q\r1�\'\�\�\�\�6�2�\r�Μ�r_��\�l\�ٮ\�\'}ϵA\�_V\�\�D6\�Xa�VR7\�q\��:��\'�\���}5�a��� ,<%��01[�> w\��\�\�2\�Mx�\�7�B�\�F�6�֛\���\�d�Y��r��L0i\�0\�i\�\�\�wi0\\a\�}y\�\'�aK\�\�\�/\"\�\�Ŋ�\�\n��\\sYT\�S�\�\�\�O�2A��M\�;\rLQ��#�\��\�\�0}���\�/�\�\�\��\�ދf\�\�*�z`}*H�j�K����\�(\��F�\�~�\�\��$�9�9��r\�\���\�ׇ)[���w��w4\���=�?�۪�T��L���_\�_ֻ\�1}7E\�\�\�Ƽ�)\�Jf|h���\�\�I�\�#\�{��\�7\�\�+*�С�c��Mp>.�ⷄ\�d�2ϟ\�Z]����Mb\�\�g\�TT=^\ZҦ\�\�?0[,�\�\�\�\�\"\�f߳C��\��\�kw�S\��םYi9\�{�ZԷX�&]�-Z�~\�\�͕\�8`j_wEm��y`��؜M\�h��u\��q_E�\��aE����$�2d\�\�\';\�ϓ�7\�@Ql�-w�J?�\�#T\�\�?\�(\�;S\�׏�iw|?�\r\�\�Qt&B<�k���?P�3�TTLgI\�{\�j+�z\�\0�Zb<}\\q\�=ܬi3D\�N��\��\�O]��������\�s劋 w�����\�6C��\0�\�y\��t0\����\�\�aW��\�q�j����\�4�qW�Y�	\�\')\�\�\�ԕ\�d\�	���\�ƢC�\�\�Lhh\�\��\�m͟b�%V6\�>\�X\�(E�+\�R_]�|]\��_u\�\���a���������5p\�\�\�i\�Ϩ&�V�� �Js�L3)Z�\�\�\�,\�dd&�%���\�]\r�?�\��Z�w9\�%\��)\�>.,Lb���\�8�\�\�y��\�]\�ټ�う!v�G\�����\��\�\�\�\�	�Zc��\�}��\�ѩ\"\�4\�\\\�p �%0J\�yJ�\�L\�\��IfO�^5s� �\n~H\�\�Y\�\�/\�ۗ\�[�II���$-Z�!��\�@O�{S\�>�6V\�	,6F5�\�\�B\0\�p驅U�}0�\�\�!D˄V�q\�\�A���]\�\��H���K\\9\�&\�h�\���{\�j8*\�\"p�\"\�H\��\�\n\�r\�X+b��5\�a\0v`�>�tԗ\�D̘1�S���@-\��UiI�A\�){��?�p\�Uu��βJ\�\�-��Ś��e3�\'ףu�ʝ;��5\�ŏ�4�<f��W+(RV\�\r�W0���\�ע1�P��ذ�.\�ݵ\�w�Eڎ_�/�\�\�u��@GC\�֐Co-�\�cj\�>��lq\�CH�\�}Z?]\�\�0�\�ƿ	.\�\�U�Zs�[XE���\�t\�}\��7\�}]�\�XQq�I$ݸI�\�oZ�\�\�y�\�\�0n��\�\�D�M�z�>5�ֆ�\�1l\�țzA�\�\\�T�TlgB\�D>j�!R\�2\�Ь��\�!\�b\�e�[w^\�-Q�Z}�\�X�\�*\�:�\�\�\�@G\�\"I\�$a,�\�q�	���\�J�X�\�\\\�\�(q\'îō�\�x(CO	\�\��\�\�\�^oHz\�\�\�#/\r\���3�W1\'\��\�1�aG�\r\�`����sd\�J�O\���\�C���S}\�\�V�\�(=v\�\�\�\"?S���Ǝa�[\�c\�嚊��\��\�ڙ=!�9(<n\�{=l\�\�\�k����u�\'Θ\�\��0\�q\�?a\�ލ\��\�^#\�\�\�[\�aнՋX�l����2�	fjd�]ݿ�\�șW\�pG�;�\����V�\�uזR�)@�镺]�\�\�\"�Og�\�k8,��D뙋\�u6�?�M\�u\�R\�,\�i4[\�P�~4��A�ry��&\���\�_\�\�\�zL\�\�C\�a|��\�V�3>)\���\�\�iE��k�cep\�$\Ze��@l\Z�\�	%\�G\�D\�\"d;dr�Qd\'�\�XN\�\�V2�,�\�؎��e���w	\�l}\��\��oq��2tCw�\�l7\��	\�f�3e�>!Ͼ�\�+�ב$��;�e�n�M\n)\"��\�N�P�VZ��ofA]!�<h\'\�\�1�\�3\�WK�\�lU��D\�9�\���\�O�?z\�ǫϐ5���\�T\Z6�%�|\�g�$i&d�$K�\��{j\�\�\�\�\�8\�l	\�\��qc��?�?���@y�+���#C�� \�\���\�\'{\����\�v3�p�J\�Β�:�\"\�\�yd𑚕�\�c�^\�K\�	�FB\�?t\��A�\�\�c�N��840-\�q��\�\�\\8\�\�(\�,�\�@�3�\��\���+���\�\"\r\�I�\�uB�\�\�\�dusȷjQ\0����ඝ&&�\�4ܳn�z�&�N\�T��j�\��\�d\�=r\�\�\�6*>\��\�r=�)㰠|��+��O.è\�z�l\\@\�\�x%��?�j\n�%\�Y�$�3g\�.\�d5�R\�{\�J�Od{_��	\�4f�\�,iyL�J�0\�~;�\�c�\����������w\�:Z4A\�n5�p��N�W<��\�f�\��$�\�\\���f\�\\wd�l�Tu��G\�x]�gc\�\�\�\�Dr9��sHVKE\�v\�\�L%Q\�\�\�&��\�s����\�\�,��\�\�>(\�N\�\�\�\�Ӑ�f�H;\�M\Z\�T\�\�\�-\'�\�vi:I�E\�\�	������b\�\�f\�\�*<��*\��\�����d�v:�\�=@N5w�T�	\�?�\�Bĕ\�_�\�V�#\Z\�,�\�\�\� \�@\�|j�t~�˜gd7��\�<\"3�:\�\0�(}A�A��\�AB��\�[\�|r��\�]��Y|U\��\�rĐ��/�\�_Zy\�[��eb\�:�W�9y��\�Ӄ\�GD�\�\�\�~g��7^�\���\�\�\�f�_\�%_O\�u��\�uB5`�\�2��\rV,�⛕D���^�\�3Z_]a��З$\�O��c�\�*��c$\�\�\�,;�G\�\�\�\���|�M�2�#�|dZ\�¹\�\�?�~\�\�\�+qWO/\�\rm\�\�t��\�G�e��MtL\0K\�\�ϫ\�\�];�\�Db\�%\'����pjEO\���x��\�GH\�Go%\�Ǆj\'�\����x\�\�@f\�v��6n��n\�w\�ʝ�9�k\�́�\����aÆ\r6\�;\�.\'\nendstream\nendobj\n3 0 obj\n<</Type/XObject/Subtype/Image/Width 448/Height 83/SMask 2 0 R/Length 1610/ColorSpace[/CalRGB<</Matrix[0.34102 0.18997 0.04361 0.42093 0.73446 0.08085 0.18862 0.07562 0.96528]/WhitePoint[0.95057 1 1.09]>>]/BitsPerComponent 8/Filter/FlateDecode>>stream\nx�\�\�\�SW\�\�\�\��>\�hm�ZG;�cmgl\�\�vJ[�\"� XQ��T-���*\�1���\�9Y�\�\�\�&�K�g>o��\�W�9\�\�w_��(��(��(��(��(��(��(��w\�\����\07\�\'\0�!?�\r�	\0n\�O\0)�m��mҜ���l�ʴ�\��\\��_\�/g\�2\�@:h���m�]\'d�\�o\������䮼�\�\���췯\��q\Z\�\�O\0)�鷫SڮɥQ},�Ӳ0/\�<+�咬�_Y.�}^\�\�kO2\�X�\�\�\�y\�\�,�#\Z�	 Ѵ\�\�\�j�\�ߓ\�b\�\���giQ�\r\�\�k�YOV˲\�I\�|\�qc#?$׎�-`��!�j��qZnJ��Պ�O\��\�䚇G~H���\���#\�vjYcx�\�\��\�\�\�\\����\0�H�\��N[��\�s�N\�\�/C5v�\�\'�\�\�T\�sb\�V;#O���zt��%?$�v�G\�Ia6�\�M#��(\�.8O\�\�O\0	Ҝ���dz\�V)\�\Z�\��\�9\�#My�ђ�\0�\�?(t�a�\�ӷR�\�\�\�L~H\n�G��-F\rO\�rYZ.;,���\0A\�\�\�[\�\�tW|\�*��\�=e\�MÌ��?�>\�9i�2��F��\�y\�Z\�wµ�\�\'��e�˞W\�\�e�g@\�\�\�ʾ\�P�\�\'��5\�\�p\�w+mj�bg�\�\�e\"?\�L[�=���\�!M��� �\�oA\�O\01\�Y�\�\�ɔ]�sZ��\�\�\�D~��F\�\�\�\����\� >\��\�\'��er2p���݃[)\�O�\��\0\�&?\�O\�*w5��=\��\�\�\'��5\�\�P_\�Ϗ�\�\�\�\�\���\�O\0\�\�_	79mG�b\�\�rQ�\n\�\�ɀ\�H\"?$�N��\�b�\�/y\�`B\�\�<0f\�@\"h~~wѮ\�1?�Kr\��?�L�]\�\�\�\'q\�b\�\�\�π߅��\Z\\-�\�<�\�\��\��>\�6[{�S��y�+\�\�y!?$J&\'\�\�s\�rIn�X�\�@�dۭ�G�Z��\�n�\'?$\�\��|��mm\�vz���\�\�H5�\�K�\r\��̓�G�ͯ#?$�6�{O\�\�\\\�n�\�\�{\�p\�K>\�@i���ոwqV<�\�\\\�K>\�@\�\�e\Z{܈w�?+\�\�=[}zf�\�\'��\�n\����o\�:\�\�u\��\�\��`K\�L;u���t\�>U��\'�|x$\�\'�$k\�\��K��\�eZ�H߰C\�)\�\'�$�W÷\�\�G\�\�N_�.\��\����h�V�yH^\�\�A�JY�\�sO!?$��\�\�\�\�WAmM`A>?K~زv\�\�\�\'#�\�Պ�؍%�#?�����N˓�\�B�<����ݡ�����\�s\�\�iyZ� B+�=6�>\�{���	 5�\��s5E�&���\�۞�ב�\0\�$��\��ON;�\�\�\�\��]�\��!Ok����2\�7j�fCG���\�\�-<s�����\0\�H\'\�v�{\"\�y�0h\�Ex\n�	 �4B?\�\r\�\�%ώ\Z�}\�\�u\�\'��j\�\�\�N�~_��7��I{\�9\�z\�M��\0R�9o\�&\��U\��V�\�]?}d��D�B~H;\�O�\�kB��#ssk)Z*Z\�95#\�\��\�	͍��\0�mD��\���۲0o�\Z�{NV���\�3 \��֡)�\�\�g\�H�\��;\�\�fA~\�j4E\�3a�	\0n\�O\0pC~�\�\0ܐ�\0\���\07\�\'\0�!?�\r�	\0n\�O\0pC~�\�\0ܐ�\0\���\07�\�\'EQEQEQEQEQT�\�_kx�<\nendstream\nendobj\n7 0 obj\n<</Length 362/Filter/FlateDecode>>stream\nx���\�N�0\�\��\�\�y�\�\�ݖ�\�F\'/P�l5ЎR\�\�;\�[X�.L�q:{���\�����%*\�\�\���B%8n\0\�D\��\�wmH\n\�bM`.\��Q�Y�\�A�\"	\��\�\0�!\�\�\0.\�\'\�\�t\���\��\�\�.�\r\�x�\�X[��\ZRZQQeL\�g�\�>����e-E&UA5��j!\��R)լV\'���;�}�[Y@\"�m\�\�\�`C�����O�\�,g!�:\�\�p\�`U+\�Y��h2�pʕ��\�f} O�M(\�,�iMӳ�\�~\�lK�5o�\�Ϗ\�P\�\�v-L,<2	�\�n�\� �\�\�ﳣq\'�f�ynR<ö3\�\�Z5Y��H�x\�\��8���\�5\�\�8Z���H\nM�-5\�Cp1b\�E�\�*6\�+o�\�\nendstream\nendobj\n9 0 obj\n<</Type/Page/MediaBox[0 0 595 842]/Resources<</Font<</F1 4 0 R/F2 5 0 R/F3 6 0 R>>/XObject<</img0 2 0 R/img1 3 0 R>>/ExtGState<</GS1 1 0 R>>>>/Contents 7 0 R/Parent 8 0 R>>\nendobj\n4 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Helvetica/Encoding/WinAnsiEncoding>>\nendobj\n5 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Times-Bold/Encoding/WinAnsiEncoding>>\nendobj\n6 0 obj\n<</Type/Font/Subtype/Type1/BaseFont/Times-Roman/Encoding/WinAnsiEncoding>>\nendobj\n1 0 obj\n<</ca 0.5>>\nendobj\n8 0 obj\n<</Type/Pages/Count 1/Kids[9 0 R]>>\nendobj\n10 0 obj\n<</Type/Catalog/Pages 8 0 R>>\nendobj\n11 0 obj\n<</Producer(iText� 5.5.13.3 �2000-2022 iText Group NV \\(AGPL-version\\))/CreationDate(D:20240105191625+01\'00\')/ModDate(D:20240105191625+01\'00\')>>\nendobj\nxref\n0 12\n0000000000 65535 f \n0000008331 00000 n \n0000000015 00000 n \n0000005560 00000 n \n0000008064 00000 n \n0000008152 00000 n \n0000008241 00000 n \n0000007447 00000 n \n0000008358 00000 n \n0000007876 00000 n \n0000008409 00000 n \n0000008455 00000 n \ntrailer\n<</Size 12/Root 10 0 R/Info 11 0 R/ID [<598c9dec2bf256939d117c74d7deb7d0><598c9dec2bf256939d117c74d7deb7d0>]>>\n%iText-5.5.13.3\nstartxref\n8616\n%%EOF\n',NULL,'8370921366003','SERVED','dfghjkl','WALLET_TO_WALLET',60,1,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
INSERT INTO `wallet` VALUES (1,'4567887654345678',99999600,'123456789012345678901234',NULL,1),(2,'4567997645565678',100000400,'123456789012345768967234',NULL,2);
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

-- Dump completed on 2024-01-05 19:18:06
