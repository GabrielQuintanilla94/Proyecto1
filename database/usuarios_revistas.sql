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
-- Table structure for table `revistas`
--

DROP TABLE IF EXISTS `revistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revistas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CodigoIdentificacion` varchar(10) DEFAULT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Editorial` varchar(255) DEFAULT NULL,
  `Periodicidad` varchar(50) DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Unidades` int DEFAULT NULL,
  `UnidadesPrestados` int DEFAULT '0',
  `UnidadesDisponibles` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CodigoIdentificacion` (`CodigoIdentificacion`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revistas`
--

LOCK TABLES `revistas` WRITE;
/*!40000 ALTER TABLE `revistas` DISABLE KEYS */;
INSERT INTO `revistas` VALUES (1,'REV00001','Titulo','Editorial','Periodicidad','0000-00-00','Estante D',15,0,14),(2,'REV00002','Conejo Amarillo','Conejo Amarillo','Semanal','2023-11-14','Estante U',15,0,14),(3,'REV00003','Nueva Revista','Reyes','Anual','2023-12-08','Estante K',10,0,9),(4,NULL,'PRUEBA','PRUEBA','ANUAL','2024-11-22','ESTANTE',10,0,9),(5,NULL,'BB','BB','Semanal','2024-11-22','ESTANTE 2',10,0,9);
/*!40000 ALTER TABLE `revistas` ENABLE KEYS */;
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
