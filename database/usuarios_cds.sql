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
-- Table structure for table `cds`
--

DROP TABLE IF EXISTS `cds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cds` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CodigoIdentificacion` varchar(10) DEFAULT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Artista` varchar(255) DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `Duracion` time DEFAULT NULL,
  `NumeroCanciones` int DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Unidades` int DEFAULT NULL,
  `UnidadesPrestados` int DEFAULT '0',
  `UnidadesDisponibles` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CodigoIdentificacion` (`CodigoIdentificacion`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cds`
--

LOCK TABLES `cds` WRITE;
/*!40000 ALTER TABLE `cds` DISABLE KEYS */;
INSERT INTO `cds` VALUES (1,'CDS00001','titulo','Artista','Genero','00:00:00',3,'Estante A',5,0,123),(2,'CDS00002','MI CD','JABES','POP','00:04:38',1,'ESTANTE J',5,-1,5),(3,'CDS00003','MICD2','JABESS','POPP','00:08:21',3,'Estante D',2,0,1),(4,'CDS00004','CDPRUEBA','JABES','ROCK','00:55:55',3,'Estante J',10,0,9),(5,'CDS00005','presentacion','jabes','pop','00:04:38',1,'Estante D',10,0,9),(6,'CDS00006','Nueve','Treinta y Cinco','Diciembre','00:04:00',1,'Estante A',15,0,14),(7,'CDS00007','Ocho','Treinta y Ocho','Catorce','00:14:00',2,'Estante A',15,0,14),(8,NULL,'AA','AA','Pop','03:00:00',10,'ESTANTE 1',10,0,9);
/*!40000 ALTER TABLE `cds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-23 14:59:46
