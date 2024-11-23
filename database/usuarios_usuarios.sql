-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: usuarios
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `last_session` datetime DEFAULT '0000-00-00 00:00:00',
  `id_tipo` int DEFAULT NULL,
  `doc_prestados` int DEFAULT '0',
  `limite` int DEFAULT NULL,
  `mora` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','admin','admin','admin@mail.com','2023-12-07 19:57:41',1,0,0,0),(2,'marko','marko','marko','marko@mail.com','0000-00-00 00:00:00',1,0,0,0),(3,'profesor','profesor','profesor','profesor@mail.com','2023-11-18 16:52:45',2,0,5,0),(5,'alumno','alumno','alumno','alumno@mail.com','2023-11-18 16:45:49',3,0,4,0),(6,'alumno2','alumno2','alumno2','alumno2@mail.com','0000-00-00 00:00:00',3,0,4,0),(7,'prueba','prueba','prueba','prueba@mail.com','0000-00-00 00:00:00',1,0,0,0),(8,'nuevoJabes','nuevoJabes','nuevoJabes','nuevojabes@mail.com','0000-00-00 00:00:00',3,0,4,0),(9,'otro','otro','otro','otro@mail.com','0000-00-00 00:00:00',1,0,0,0),(10,'profesorjabes','profesorjabes','profesorjabes','profesorjabes@mail.com','0000-00-00 00:00:00',2,0,5,0),(11,'superadmin','7110eda4d09e062aa5e4a390b0a572ac0d2c0220','SUPER ADMIN','superadmin@udb.com','0000-00-00 00:00:00',2,0,5,0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-23 14:59:47
