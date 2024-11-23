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
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CodigoIdentificacion` varchar(20) DEFAULT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `Paginas` int DEFAULT NULL,
  `Editorial` varchar(255) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Unidades` int DEFAULT NULL,
  `UnidadesPrestados` int DEFAULT '0',
  `UnidadesDisponibles` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CodigoIdentificacion` (`CodigoIdentificacion`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'LIB00001','Cien años de soledad','Gabriel Garcia Marquez',416,' Sudamericana','978-950-07-2209-0','0000-00-00','Estante A',10,0,9),(2,'LIB00002','Conejos Blancos','Jabes',300,'Reyes','999-999-99-99','2023-11-14','Estante L',7,0,6),(3,'LIB00003','jabes','jabes',300,'reyes','999-9999-999-999','2023-11-17','Estante F',10,0,9),(5,'LIB00005','Zapatito Negro','Jabes',333,'Reyes','999-999-999-99','2023-12-07','Estante D',15,0,14),(4,'LIB00004','Zapatito Blanco','Jabes',600,'Reyes','999-999-999-99','2023-12-07','Estante D',27,0,26),(6,'LIB00006','Zapatito Negro','Jabes',333,'Reyes','999-999-999-99','2023-12-07','Estante D',15,0,14),(7,NULL,'PRUEBA','PRUEBA',10,'PRUEBA','1232-12321-1','2024-11-22','ESTANTE 1',10,0,10);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
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
