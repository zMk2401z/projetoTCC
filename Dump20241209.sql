-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: login_register_sistem
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(120) NOT NULL,
  `admin_email` varchar(120) NOT NULL,
  `admin_password` varchar(225) NOT NULL,
  `admin_date` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Felipe Alves','gamerproamino990@gmail.com','felipe22ca','2024-09-26 10:22:15'),(2,'Gabriel Antunes','00001100457264sp@al.educacao.sp.gov.br','Celsogama2023@','2024-09-26 10:22:15');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `page_id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(180) NOT NULL,
  `page_status` int NOT NULL,
  `page_content` longtext NOT NULL,
  `page_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `position_position_id` int NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `fk_pages_position_idx` (`position_position_id`),
  CONSTRAINT `fk_pages_position` FOREIGN KEY (`position_position_id`) REFERENCES `position` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (2,'Noticias',1,'<div class=\"container__noticias\">\r\n<div class=\"noticia-1\">\r\n<div class=\"news_style\">\r\n<h1 style=\"text-align: center;\">Noticias</h1>\r\n</div>\r\n<div class=\"news_one\">\r\n<div><img id=\"image_name\" src=\"/1733744549140-901465319_avowed-e-um-rpg-de-fantasia-em-primeira-pessoa-da-obsidian-entertainment-1733500617105_v2_900x506.jpg\" alt=\"\" width=\"560\" height=\"315\"></div>\r\n<h2 style=\"text-align: center;\"><a href=\"https://www.uol.com.br/splash/noticias/2024/12/07/ccxp-24-rpgs-vao-durar-para-sempre-celebra-equipe-de-avowed.htm?cmpid=copiaecola\"><span style=\"font-size: 36pt;\"><span style=\"font-size: 24pt;\">Equipe de \'Avowed\' promete RPG altamente explor&aacute;vel e repleto de</span> <span style=\"font-size: 24pt;\">surpresas</span></span></a></h2>\r\n</div>\r\n</div>\r\n<div class=\"news_two\" style=\"text-align: center;\">\r\n<p><img id=\"image_name\" src=\"/1733744752019-854983166_lancamentos-semana-enigma-do-medo-rpg-cellbit_(1).jpg\" alt=\"\" width=\"395\" height=\"222\"></p>\r\n<div>\r\n<h1 class=\"content-head__title\" itemprop=\"headline\"><a href=\"https://www.techtudo.com.br/noticias/2024/11/enigma-do-medo-e-platform-8-sao-destaques-nos-lancamentos-da-semana-edjogos.ghtml\"><span style=\"font-size: 24pt;\">Enigma do Medo e Platform 8 s&atilde;o destaques nos lan&ccedil;amentos da semana</span></a></h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n<div class=\"news_three\" style=\"text-align: center;\">\r\n<p><img id=\"image_name\" src=\"/1733744897210-837081065_dragon-quest-sales.jpg\" alt=\"\" width=\"317\" height=\"223\"></p>\r\n<div>\r\n<h2 class=\"wp-block-post-title has-jost-font-family\"><span style=\"font-size: 24pt;\">Dragon Quest III HD-2D Remake vende mais de 2 milh&otilde;es de unidades&nbsp;mundialmente</span></h2>\r\n</div>\r\n</div>\r\n<div class=\"news_four\">\r\n<p style=\"text-align: center;\"><img id=\"image_name\" src=\"/1733745279798-37234309_irmduna.jpg\" alt=\"\" width=\"235\" height=\"340\"></p>\r\n<div style=\"text-align: center;\">\r\n<h1 class=\"entry-title\"><a href=\"https://newsrpg.wordpress.com/\"><span style=\"font-size: 24pt;\">Lan&ccedil;amento: Irmandade de Duna: Escolas de&nbsp;Duna</span></a></h1>\r\n</div>\r\n</div>\r\n</div>','2024-12-09 11:23:23',2);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(100) NOT NULL,
  `position_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'teste atualizado','2024-12-06 13:24:24'),(2,'noticias','2024-12-09 11:13:57');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_images`
--

DROP TABLE IF EXISTS `user_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_images` (
  `user_image_id` int NOT NULL AUTO_INCREMENT,
  `user_image_name` varchar(255) NOT NULL,
  `user_image_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_images`
--

LOCK TABLES `user_images` WRITE;
/*!40000 ALTER TABLE `user_images` DISABLE KEYS */;
INSERT INTO `user_images` VALUES (1,'/1733491581853-63441988_dinamarca-vetor-mapa-do-pais_601748-25848.png','2024-12-06 13:26:21'),(2,'/1733491676754-429397829_desprezivel.webp','2024-12-06 13:27:56'),(3,'/1733744549140-901465319_avowed-e-um-rpg-de-fantasia-em-primeira-pessoa-da-obsidian-entertainment-1733500617105_v2_900x506.jpg','2024-12-09 11:42:29'),(4,'/1733744752019-854983166_lancamentos-semana-enigma-do-medo-rpg-cellbit_(1).jpg','2024-12-09 11:45:52'),(5,'/1733744897210-837081065_dragon-quest-sales.jpg','2024-12-09 11:48:17'),(6,'/1733745279798-37234309_irmduna.jpg','2024-12-09 11:54:39');
/*!40000 ALTER TABLE `user_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(120) NOT NULL,
  `user_email` varchar(120) NOT NULL,
  `user_password` varchar(225) NOT NULL,
  `user_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Felipe Alves Sebastião da Silva','gamerproamino990@gmail.com','$2a$10$CFbPQcPSeadqZg/4ZYLgzu2rJQbOaIoVzUfRnU8xpl9EXv4VCzAcO','2024-09-12 14:33:04'),(2,'Felipe Alves Sebastião da Silva','alemane20@gmail.com','$2a$10$DsUvBI6rcbTLUV.eKGmMkelpgnGnV6U93zFTLJ.Ypn.DgtauZkoGu','2024-09-16 12:13:15'),(3,'Eric','eric@eric.com','$2a$10$oieFFxj1QfwyJ4Phm1oZceN5GrAwozgJJDkOI3ry5Oh5yu4fFVuh.','2024-09-17 15:06:47'),(4,'Eric','eric@eric.com','$2a$10$9MV3stigPcNh7bSsKGTj0ukPrM2z.yu34SY873QmTp.ToF/JS.ltW','2024-09-17 15:08:06'),(5,'Nathan','nathan123@123.com','$2a$10$ORk1Ci3ueiFZcRHLDcZBoO7vFvoTMF1gdQwTpxQ45EHGguxCL9iGq','2024-09-18 13:19:44'),(6,'Eric Gregorio','gregorio@gregorio.com','$2a$10$Ib/w9Ym7Fq0FkAwPBr.eqO53qfsrfQkHmW//Kky9sYZSB6cy2nhp6','2024-12-06 13:53:57');
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

-- Dump completed on 2024-12-09 15:16:01
