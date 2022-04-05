-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: weddingdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add hall',6,'add_hall'),(22,'Can change hall',6,'change_hall'),(23,'Can delete hall',6,'delete_hall'),(24,'Can view hall',6,'view_hall'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add category food',8,'add_categoryfood'),(30,'Can change category food',8,'change_categoryfood'),(31,'Can delete category food',8,'delete_categoryfood'),(32,'Can view category food',8,'view_categoryfood'),(33,'Can add food',9,'add_food'),(34,'Can change food',9,'change_food'),(35,'Can delete food',9,'delete_food'),(36,'Can view food',9,'view_food'),(37,'Can add combo',10,'add_combo'),(38,'Can change combo',10,'change_combo'),(39,'Can delete combo',10,'delete_combo'),(40,'Can view combo',10,'view_combo'),(41,'Can add combo detail',11,'add_combodetail'),(42,'Can change combo detail',11,'change_combodetail'),(43,'Can delete combo detail',11,'delete_combodetail'),(44,'Can view combo detail',11,'view_combodetail'),(45,'Can add customer',12,'add_customer'),(46,'Can change customer',12,'change_customer'),(47,'Can delete customer',12,'delete_customer'),(48,'Can view customer',12,'view_customer'),(49,'Can add date of organization',13,'add_dateoforganization'),(50,'Can change date of organization',13,'change_dateoforganization'),(51,'Can delete date of organization',13,'delete_dateoforganization'),(52,'Can view date of organization',13,'view_dateoforganization'),(53,'Can add service',14,'add_service'),(54,'Can change service',14,'change_service'),(55,'Can delete service',14,'delete_service'),(56,'Can view service',14,'view_service'),(57,'Can add wedding service receipt',15,'add_weddingservicereceipt'),(58,'Can change wedding service receipt',15,'change_weddingservicereceipt'),(59,'Can delete wedding service receipt',15,'delete_weddingservicereceipt'),(60,'Can view wedding service receipt',15,'view_weddingservicereceipt'),(61,'Can add wedding service receipt detail',16,'add_weddingservicereceiptdetail'),(62,'Can change wedding service receipt detail',16,'change_weddingservicereceiptdetail'),(63,'Can delete wedding service receipt detail',16,'delete_weddingservicereceiptdetail'),(64,'Can view wedding service receipt detail',16,'view_weddingservicereceiptdetail'),(65,'Can add time frame',17,'add_timeframe'),(66,'Can change time frame',17,'change_timeframe'),(67,'Can delete time frame',17,'delete_timeframe'),(68,'Can view time frame',17,'view_timeframe');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-04-05 12:09:21.461362','1','Món chính',1,'[{\"added\": {}}]',8,1),(2,'2022-04-05 12:09:32.361777','2','Món khai vị',1,'[{\"added\": {}}]',8,1),(3,'2022-04-05 12:09:45.117359','3','Món tráng miệng',1,'[{\"added\": {}}]',8,1),(4,'2022-04-05 12:10:17.266803','1','Gỏi',1,'[{\"added\": {}}]',9,1),(5,'2022-04-05 12:10:36.119570','2','Xà lách trộn',1,'[{\"added\": {}}]',9,1),(6,'2022-04-05 12:11:29.140976','3','Dưa hấu',1,'[{\"added\": {}}]',9,1),(7,'2022-04-05 12:12:16.621148','4','Bành pudding',1,'[{\"added\": {}}]',9,1),(8,'2022-04-05 12:12:34.766257','5','Tôm sốt Singapore',1,'[{\"added\": {}}]',9,1),(9,'2022-04-05 12:12:54.821302','6','Lẩu gà lá é',1,'[{\"added\": {}}]',9,1),(10,'2022-04-05 12:13:30.403774','1','Thực đơn 1',1,'[{\"added\": {}}]',10,1),(11,'2022-04-05 12:13:41.463201','2','Thực đơn 2',1,'[{\"added\": {}}]',10,1),(12,'2022-04-05 12:14:02.260834','1','Thực đơn 1 - Gỏi',1,'[{\"added\": {}}]',11,1),(13,'2022-04-05 12:14:33.451804','2','Thực đơn 1 - Tôm sốt Singapore',1,'[{\"added\": {}}]',11,1),(14,'2022-04-05 12:14:50.601740','3','Thực đơn 1 - Dưa hấu',1,'[{\"added\": {}}]',11,1),(15,'2022-04-05 12:15:01.612836','4','Thực đơn 2 - Xà lách trộn',1,'[{\"added\": {}}]',11,1),(16,'2022-04-05 12:15:15.113479','5','Thực đơn 2 - Lẩu gà lá é',1,'[{\"added\": {}}]',11,1),(17,'2022-04-05 12:15:30.701295','6','Thực đơn 2 - Bành pudding',1,'[{\"added\": {}}]',11,1),(18,'2022-04-05 12:16:11.866625','1','Sảnh VIP',1,'[{\"added\": {}}]',6,1),(19,'2022-04-05 12:16:26.644940','1','Trang trí theo phong cách Châu Âu',1,'[{\"added\": {}}]',14,1),(20,'2022-04-05 12:17:18.331779','1','7:0:0',1,'[{\"added\": {}}]',17,1),(21,'2022-04-05 12:17:44.824551','1','7:0:0',2,'[]',17,1),(22,'2022-04-05 12:18:46.112782','1','5/4/2022',1,'[{\"added\": {}}]',13,1),(23,'2022-04-05 12:20:43.811841','1','phatdatvn2001',1,'[{\"added\": {}}]',12,1),(24,'2022-04-05 12:32:58.749745','1','5/4/2022-phatdatvn2001-Sảnh VIP',1,'[{\"added\": {}}]',15,1),(25,'2022-04-05 12:33:43.565449','1','1-Dat-Que',1,'[{\"added\": {}}]',16,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(8,'wedding','categoryfood'),(10,'wedding','combo'),(11,'wedding','combodetail'),(12,'wedding','customer'),(13,'wedding','dateoforganization'),(9,'wedding','food'),(6,'wedding','hall'),(14,'wedding','service'),(17,'wedding','timeframe'),(7,'wedding','user'),(15,'wedding','weddingservicereceipt'),(16,'wedding','weddingservicereceiptdetail');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-05 12:05:04.955747'),(2,'contenttypes','0002_remove_content_type_name','2022-04-05 12:05:05.081223'),(3,'auth','0001_initial','2022-04-05 12:05:05.442112'),(4,'auth','0002_alter_permission_name_max_length','2022-04-05 12:05:05.505011'),(5,'auth','0003_alter_user_email_max_length','2022-04-05 12:05:05.520632'),(6,'auth','0004_alter_user_username_opts','2022-04-05 12:05:05.520632'),(7,'auth','0005_alter_user_last_login_null','2022-04-05 12:05:05.536516'),(8,'auth','0006_require_contenttypes_0002','2022-04-05 12:05:05.536516'),(9,'auth','0007_alter_validators_add_error_messages','2022-04-05 12:05:05.551847'),(10,'auth','0008_alter_user_username_max_length','2022-04-05 12:05:05.551847'),(11,'auth','0009_alter_user_last_name_max_length','2022-04-05 12:05:05.567497'),(12,'auth','0010_alter_group_name_max_length','2022-04-05 12:05:05.583250'),(13,'auth','0011_update_proxy_permissions','2022-04-05 12:05:05.598876'),(14,'auth','0012_alter_user_first_name_max_length','2022-04-05 12:05:05.598876'),(15,'wedding','0001_initial','2022-04-05 12:05:06.147882'),(16,'admin','0001_initial','2022-04-05 12:05:06.578174'),(17,'admin','0002_logentry_remove_auto_add','2022-04-05 12:05:06.609447'),(18,'admin','0003_logentry_add_action_flag_choices','2022-04-05 12:05:06.625317'),(19,'sessions','0001_initial','2022-04-05 12:05:06.773757'),(20,'wedding','0002_rename_is_customer_user_customer status','2022-04-05 12:05:06.798170'),(21,'wedding','0003_categoryfood_food','2022-04-05 12:05:06.939418'),(22,'wedding','0004_combo_combodetail_combo_food','2022-04-05 12:05:07.158808'),(23,'wedding','0005_customer_alter_combo_options_and_more','2022-04-05 12:05:07.284197'),(24,'wedding','0006_dateoforganization_service_weddingservicereceipt_and_more','2022-04-05 12:05:08.376719'),(25,'wedding','0007_alter_dateoforganization_unique_together','2022-04-05 12:05:08.406350'),(26,'wedding','0008_timeframe_dateoforganization_time_frame','2022-04-05 12:07:05.546262'),(27,'wedding','0009_remove_dateoforganization_time_frame_and_more','2022-04-05 12:28:28.248839');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('vmd6g5u63rqz7exuzly5vyakh0j1gjhc','.eJxVjEEOwiAQRe_C2pBCgUGX7nsGMjOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hjuIilDj9boT8SHUH8Y711iS3ui4zyV2RB-1yajE9r4f7d1Cwl2_to2NjwZqRBuMca2bwYFlp8AlgjI7OpHImCzR4ZbwDjDhmjxpdtka8P8qIN4c:1nbhz5:zNfn5O1f1Xk96eq-nOVwdEN4rb8qhA-W68h-eoq_hio','2022-04-19 12:08:31.087693');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_categoryfood`
--

DROP TABLE IF EXISTS `wedding_categoryfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_categoryfood` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_categoryfood`
--

LOCK TABLES `wedding_categoryfood` WRITE;
/*!40000 ALTER TABLE `wedding_categoryfood` DISABLE KEYS */;
INSERT INTO `wedding_categoryfood` VALUES (1,1,'2022-04-05 12:09:21.460365','2022-04-05 12:09:21.460365','Món chính'),(2,1,'2022-04-05 12:09:32.359783','2022-04-05 12:09:32.360780','Món khai vị'),(3,1,'2022-04-05 12:09:45.117359','2022-04-05 12:09:45.117359','Món tráng miệng');
/*!40000 ALTER TABLE `wedding_categoryfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_combo`
--

DROP TABLE IF EXISTS `wedding_combo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_combo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_combo`
--

LOCK TABLES `wedding_combo` WRITE;
/*!40000 ALTER TABLE `wedding_combo` DISABLE KEYS */;
INSERT INTO `wedding_combo` VALUES (1,1,'2022-04-05 12:13:30.402776','2022-04-05 12:13:30.402776','Thực đơn 1',1500000),(2,1,'2022-04-05 12:13:41.461206','2022-04-05 12:13:41.461206','Thực đơn 2',2000000);
/*!40000 ALTER TABLE `wedding_combo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_combodetail`
--

DROP TABLE IF EXISTS `wedding_combodetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_combodetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `combo_id` bigint NOT NULL,
  `food_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_combodetail_combo_id_9eb5e062_fk_wedding_combo_id` (`combo_id`),
  KEY `wedding_combodetail_food_id_c135b7bf_fk_wedding_food_id` (`food_id`),
  CONSTRAINT `wedding_combodetail_combo_id_9eb5e062_fk_wedding_combo_id` FOREIGN KEY (`combo_id`) REFERENCES `wedding_combo` (`id`),
  CONSTRAINT `wedding_combodetail_food_id_c135b7bf_fk_wedding_food_id` FOREIGN KEY (`food_id`) REFERENCES `wedding_food` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_combodetail`
--

LOCK TABLES `wedding_combodetail` WRITE;
/*!40000 ALTER TABLE `wedding_combodetail` DISABLE KEYS */;
INSERT INTO `wedding_combodetail` VALUES (1,5,1,1),(2,3,1,5),(3,5,1,3),(4,5,2,2),(5,3,2,6),(6,10,2,4);
/*!40000 ALTER TABLE `wedding_combodetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_customer`
--

DROP TABLE IF EXISTS `wedding_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` int NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_customer`
--

LOCK TABLES `wedding_customer` WRITE;
/*!40000 ALTER TABLE `wedding_customer` DISABLE KEYS */;
INSERT INTO `wedding_customer` VALUES (1,1,'2022-04-05 12:20:43.809846','2022-04-05 12:20:43.809846','Dat','Le','2001-04-27',905304644,'An Phú Tây,Bình Chánh','phatdatvn2001@gmail.com','phatdatvn2001','123456','customers/2022/04/cute_yITuSTR.jpg');
/*!40000 ALTER TABLE `wedding_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_dateoforganization`
--

DROP TABLE IF EXISTS `wedding_dateoforganization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_dateoforganization` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `day` int NOT NULL,
  `month` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_dateoforganization_day_month_year_06ce3772_uniq` (`day`,`month`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_dateoforganization`
--

LOCK TABLES `wedding_dateoforganization` WRITE;
/*!40000 ALTER TABLE `wedding_dateoforganization` DISABLE KEYS */;
INSERT INTO `wedding_dateoforganization` VALUES (1,5,4,2022);
/*!40000 ALTER TABLE `wedding_dateoforganization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_food`
--

DROP TABLE IF EXISTS `wedding_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_food` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_food_category_id_df845b72_fk_wedding_categoryfood_id` (`category_id`),
  CONSTRAINT `wedding_food_category_id_df845b72_fk_wedding_categoryfood_id` FOREIGN KEY (`category_id`) REFERENCES `wedding_categoryfood` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_food`
--

LOCK TABLES `wedding_food` WRITE;
/*!40000 ALTER TABLE `wedding_food` DISABLE KEYS */;
INSERT INTO `wedding_food` VALUES (1,1,'2022-04-05 12:10:17.264817','2022-04-05 12:10:17.264817','Gỏi',120000,2),(2,1,'2022-04-05 12:10:36.117218','2022-04-05 12:10:36.117218','Xà lách trộn',100000,2),(3,1,'2022-04-05 12:11:29.139347','2022-04-05 12:11:29.140348','Dưa hấu',150000,3),(4,1,'2022-04-05 12:12:16.620570','2022-04-05 12:12:16.620570','Bành pudding',150000,3),(5,1,'2022-04-05 12:12:34.763726','2022-04-05 12:12:34.763726','Tôm sốt Singapore',500000,1),(6,1,'2022-04-05 12:12:54.820305','2022-04-05 12:12:54.820305','Lẩu gà lá é',600000,1);
/*!40000 ALTER TABLE `wedding_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_hall`
--

DROP TABLE IF EXISTS `wedding_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_hall` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_hall`
--

LOCK TABLES `wedding_hall` WRITE;
/*!40000 ALTER TABLE `wedding_hall` DISABLE KEYS */;
INSERT INTO `wedding_hall` VALUES (1,1,'2022-04-05 12:16:11.865633','2022-04-05 12:16:11.865633','Sảnh VIP',500,200000000);
/*!40000 ALTER TABLE `wedding_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_service`
--

DROP TABLE IF EXISTS `wedding_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_service`
--

LOCK TABLES `wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_service` DISABLE KEYS */;
INSERT INTO `wedding_service` VALUES (1,1,'2022-04-05 12:16:26.643943','2022-04-05 12:16:26.643943','Trang trí theo phong cách Châu Âu',50000000);
/*!40000 ALTER TABLE `wedding_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_timeframe`
--

DROP TABLE IF EXISTS `wedding_timeframe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_timeframe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `hour` int NOT NULL,
  `minute` int NOT NULL,
  `second` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_timeframe_hour_minute_second_1075b233_uniq` (`hour`,`minute`,`second`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_timeframe`
--

LOCK TABLES `wedding_timeframe` WRITE;
/*!40000 ALTER TABLE `wedding_timeframe` DISABLE KEYS */;
INSERT INTO `wedding_timeframe` VALUES (1,1,'2022-04-05 12:17:18.330484','2022-04-05 12:17:44.823543',7,0,0,1500000);
/*!40000 ALTER TABLE `wedding_timeframe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user`
--

DROP TABLE IF EXISTS `wedding_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user`
--

LOCK TABLES `wedding_user` WRITE;
/*!40000 ALTER TABLE `wedding_user` DISABLE KEYS */;
INSERT INTO `wedding_user` VALUES (1,'pbkdf2_sha256$320000$k7KT615sDqksA1x9wnvUV4$BrZPAbiA45O9lnTE6HeWpZI+tpT6VI1HAgfECekU2fA=','2022-04-05 12:08:31.072072',1,'admin','','','admin@gmail.com',1,1,'2022-04-05 12:08:21.452150','');
/*!40000 ALTER TABLE `wedding_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user_groups`
--

DROP TABLE IF EXISTS `wedding_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_user_groups_user_id_group_id_d2f991b2_uniq` (`user_id`,`group_id`),
  KEY `wedding_user_groups_group_id_8316c968_fk_auth_group_id` (`group_id`),
  CONSTRAINT `wedding_user_groups_group_id_8316c968_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wedding_user_groups_user_id_d177c0f9_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user_groups`
--

LOCK TABLES `wedding_user_groups` WRITE;
/*!40000 ALTER TABLE `wedding_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user_user_permissions`
--

DROP TABLE IF EXISTS `wedding_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_user_user_permis_user_id_permission_id_1047e857_uniq` (`user_id`,`permission_id`),
  KEY `wedding_user_user_pe_permission_id_8943d6f7_fk_auth_perm` (`permission_id`),
  CONSTRAINT `wedding_user_user_pe_permission_id_8943d6f7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `wedding_user_user_pe_user_id_f9f97f68_fk_wedding_u` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user_user_permissions`
--

LOCK TABLES `wedding_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `wedding_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_weddingservicereceipt`
--

DROP TABLE IF EXISTS `wedding_weddingservicereceipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_weddingservicereceipt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `date_of_booking` datetime(6) NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `date_of_organization_id` bigint NOT NULL,
  `hall_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `time_frame_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_weddingservi_customer_id_b4cc333b_fk_wedding_c` (`customer_id`),
  KEY `wedding_weddingservi_date_of_organization_58c6edc0_fk_wedding_d` (`date_of_organization_id`),
  KEY `wedding_weddingservi_hall_id_9331cccb_fk_wedding_h` (`hall_id`),
  KEY `wedding_weddingservi_user_id_afa4313d_fk_wedding_u` (`user_id`),
  KEY `wedding_weddingservi_time_frame_id_1efe99e6_fk_wedding_t` (`time_frame_id`),
  CONSTRAINT `wedding_weddingservi_customer_id_b4cc333b_fk_wedding_c` FOREIGN KEY (`customer_id`) REFERENCES `wedding_customer` (`id`),
  CONSTRAINT `wedding_weddingservi_date_of_organization_58c6edc0_fk_wedding_d` FOREIGN KEY (`date_of_organization_id`) REFERENCES `wedding_dateoforganization` (`id`),
  CONSTRAINT `wedding_weddingservi_hall_id_9331cccb_fk_wedding_h` FOREIGN KEY (`hall_id`) REFERENCES `wedding_hall` (`id`),
  CONSTRAINT `wedding_weddingservi_time_frame_id_1efe99e6_fk_wedding_t` FOREIGN KEY (`time_frame_id`) REFERENCES `wedding_timeframe` (`id`),
  CONSTRAINT `wedding_weddingservi_user_id_afa4313d_fk_wedding_u` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_weddingservicereceipt`
--

LOCK TABLES `wedding_weddingservicereceipt` WRITE;
/*!40000 ALTER TABLE `wedding_weddingservicereceipt` DISABLE KEYS */;
INSERT INTO `wedding_weddingservicereceipt` VALUES (1,1,'2022-04-05 12:32:58.741727','2022-04-05 12:32:58.741727','2022-04-05 12:32:58.741727',1,1,1,1,1);
/*!40000 ALTER TABLE `wedding_weddingservicereceipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_weddingservicereceipt_service`
--

DROP TABLE IF EXISTS `wedding_weddingservicereceipt_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_weddingservicereceipt_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `weddingservicereceipt_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_weddingservicere_weddingservicereceipt_id_a45321d8_uniq` (`weddingservicereceipt_id`,`service_id`),
  KEY `wedding_weddingservi_service_id_c94c6cc7_fk_wedding_s` (`service_id`),
  CONSTRAINT `wedding_weddingservi_service_id_c94c6cc7_fk_wedding_s` FOREIGN KEY (`service_id`) REFERENCES `wedding_service` (`id`),
  CONSTRAINT `wedding_weddingservi_weddingservicereceip_0adc87c6_fk_wedding_w` FOREIGN KEY (`weddingservicereceipt_id`) REFERENCES `wedding_weddingservicereceipt` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_weddingservicereceipt_service`
--

LOCK TABLES `wedding_weddingservicereceipt_service` WRITE;
/*!40000 ALTER TABLE `wedding_weddingservicereceipt_service` DISABLE KEYS */;
INSERT INTO `wedding_weddingservicereceipt_service` VALUES (1,1,1);
/*!40000 ALTER TABLE `wedding_weddingservicereceipt_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_weddingservicereceiptdetail`
--

DROP TABLE IF EXISTS `wedding_weddingservicereceiptdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_weddingservicereceiptdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `number_of_table` int NOT NULL,
  `groom_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bride_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `combo_id` bigint NOT NULL,
  `wedding_service_receipt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_weddingservi_combo_id_02ccdc22_fk_wedding_c` (`combo_id`),
  KEY `wedding_weddingservi_wedding_service_rece_93dad476_fk_wedding_w` (`wedding_service_receipt_id`),
  CONSTRAINT `wedding_weddingservi_combo_id_02ccdc22_fk_wedding_c` FOREIGN KEY (`combo_id`) REFERENCES `wedding_combo` (`id`),
  CONSTRAINT `wedding_weddingservi_wedding_service_rece_93dad476_fk_wedding_w` FOREIGN KEY (`wedding_service_receipt_id`) REFERENCES `wedding_weddingservicereceipt` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_weddingservicereceiptdetail`
--

LOCK TABLES `wedding_weddingservicereceiptdetail` WRITE;
/*!40000 ALTER TABLE `wedding_weddingservicereceiptdetail` DISABLE KEYS */;
INSERT INTO `wedding_weddingservicereceiptdetail` VALUES (1,1,'2022-04-05 12:33:43.564451','2022-04-05 12:33:43.564451',450,'Dat','Que',1,1);
/*!40000 ALTER TABLE `wedding_weddingservicereceiptdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-05 19:41:05
