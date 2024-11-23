-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: usuarios
-- ------------------------------------------------------
-- Server version	8.0.31

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cds`
--

LOCK TABLES `cds` WRITE;
/*!40000 ALTER TABLE `cds` DISABLE KEYS */;
INSERT INTO `cds` VALUES (1,'CDS00001','titulo','Artista','Genero','00:00:00',3,'Estante A',5,0,4),(2,'CDS00002','MI CD','JABES','POP','00:04:38',1,'ESTANTE J',5,0,4),(3,'CDS00003','MICD2','JABESS','POPP','00:08:21',3,'Estante D',2,0,1),(4,'CDS00004','CDPRUEBA','JABES','ROCK','00:55:55',3,'Estante J',10,0,9),(5,'CDS00005','presentacion','jabes','pop','00:04:38',1,'Estante D',10,0,9),(6,'CDS00006','Nueve','Treinta y Cinco','Diciembre','00:04:00',1,'Estante A',15,0,14),(7,'CDS00007','Ocho','Treinta y Ocho','Catorce','00:14:00',2,'Estante A',15,0,14);
/*!40000 ALTER TABLE `cds` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'LIB00001','Cien años de soledad','Gabriel Garcia Marquez',416,' Sudamericana','978-950-07-2209-0','0000-00-00','Estante A',10,0,9),(2,'LIB00002','Conejos Blancos','Jabes',300,'Reyes','999-999-99-99','2023-11-14','Estante L',7,0,6),(3,'LIB00003','jabes','jabes',300,'reyes','999-9999-999-999','2023-11-17','Estante F',10,0,9),(5,'LIB00005','Zapatito Negro','Jabes',333,'Reyes','999-999-999-99','2023-12-07','Estante D',15,0,14),(4,'LIB00004','Zapatito Blanco','Jabes',600,'Reyes','999-999-999-99','2023-12-07','Estante D',27,0,26),(6,'LIB00006','Zapatito Negro','Jabes',333,'Reyes','999-999-999-99','2023-12-07','Estante D',15,0,14);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras`
--

DROP TABLE IF EXISTS `obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obras` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CodigoIdentificacion` varchar(10) DEFAULT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `Paginas` int DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Unidades` int DEFAULT NULL,
  `UnidadesPrestados` int DEFAULT '0',
  `UnidadesDisponibles` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CodigoIdentificacion` (`CodigoIdentificacion`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'OBR00001','Titulo','Autor',0,'Genero','0000-00-00','Estante G',5,0,4),(2,'OBR00002','Conejo Negro','Jabes',500,'Drama','2023-11-14','Estante O',7,0,6),(3,'OBR00003','Nueva Obra','Jabes Reyes',222,'De los god','2023-12-08','Estante K',5,0,4);
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CodigoIdentificacion` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `IniciaPrestamo` date DEFAULT NULL,
  `FinalizaPrestamo` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,'PRB00000','yo','0000-00-00','0000-00-00'),(2,'CDS00004','profesor','2023-11-09','2023-11-16'),(3,'CDS00004','profesor','2023-11-05','2023-11-16'),(4,'CDS00004','profesor','2023-10-10','2023-11-17'),(5,'CDS00004','profesor','2023-11-09','2023-11-17'),(6,'CDS00004','profesor','2023-11-09','2023-11-17'),(7,'CDS00004','profesor','2023-11-09','2023-11-17'),(8,'CDS00004','profesor','2023-11-09','2023-11-17'),(9,'CDS00004','profesor','2023-11-09','2023-11-17'),(10,'CDS00004','profesor','2023-11-09','2023-11-17'),(11,'CDS00004','profesor','2023-11-09','2023-11-17'),(12,'CDS00004','profesor','2023-11-09','2023-11-17'),(13,'CDS00004','profesor','2023-11-09',NULL),(14,'CDS00001','profesor','2023-11-09','2023-11-17'),(15,'CDS00001','profesor','2023-11-09','2023-11-17'),(16,'CDS00001','profesor','2023-11-09','2023-11-17'),(17,'LBS00003','admin','2023-11-18',NULL),(18,'LIB00003','profesor','2023-11-18','2023-11-26'),(19,'CDS00001','admin',NULL,'2023-12-09'),(20,'LIB00001',NULL,'2023-12-08',NULL),(21,'LIB00001','admin','2023-12-08','2023-12-10'),(22,'LIB00002','admin','2023-12-08',NULL),(23,'REV00001','admin','2023-12-08',NULL),(24,'LIB00003','admin','2023-12-05',NULL),(25,'LIB00001','alumno','2023-12-08',NULL),(26,'LIB00002','alumno','2023-12-08',NULL);
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revistas`
--

LOCK TABLES `revistas` WRITE;
/*!40000 ALTER TABLE `revistas` DISABLE KEYS */;
INSERT INTO `revistas` VALUES (1,'REV00001','Titulo','Editorial','Periodicidad','0000-00-00','Estante D',15,0,14),(2,'REV00002','Conejo Amarillo','Conejo Amarillo','Semanal','2023-11-14','Estante U',15,0,14),(3,'REV00003','Nueva Revista','Reyes','Anual','2023-12-08','Estante K',10,0,9);
/*!40000 ALTER TABLE `revistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tesis`
--

DROP TABLE IF EXISTS `tesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tesis` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CodigoIdentificacion` varchar(10) DEFAULT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Autor` varchar(255) NOT NULL,
  `Facultad` varchar(255) DEFAULT NULL,
  `FechaPublicacion` date DEFAULT NULL,
  `Ubicacion` varchar(255) DEFAULT NULL,
  `Unidades` int DEFAULT NULL,
  `UnidadesPrestados` int DEFAULT '0',
  `UnidadesDisponibles` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CodigoIdentificacion` (`CodigoIdentificacion`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesis`
--

LOCK TABLES `tesis` WRITE;
/*!40000 ALTER TABLE `tesis` DISABLE KEYS */;
INSERT INTO `tesis` VALUES (1,'TES00001','Titulo','Autor','Facultad','0000-00-00','Estante C',5,0,5),(2,'TES00002','Conejos','Jabes','Ingenieria','2023-11-14','Estante T',1,0,0),(3,'TES00003','hola','Yo','Quimica','2023-12-08','Estante D',5,0,4);
/*!40000 ALTER TABLE `tesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `mora` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador',0),(2,'Profesor',0),(3,'Alumno',0);
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','admin','admin','admin@mail.com','2023-12-07 19:57:41',1,0,0,0),(2,'marko','marko','marko','marko@mail.com','0000-00-00 00:00:00',1,0,0,0),(3,'profesor','profesor','profesor','profesor@mail.com','2023-11-18 16:52:45',2,0,0,0),(5,'alumno','alumno','alumno','alumno@mail.com','2023-11-18 16:45:49',3,0,0,0),(6,'alumno2','alumno2','alumno2','alumno2@mail.com','0000-00-00 00:00:00',3,0,0,0),(7,'prueba','prueba','prueba','prueba@mail.com','0000-00-00 00:00:00',1,0,0,0),(8,'nuevoJabes','nuevoJabes','nuevoJabes','nuevojabes@mail.com','0000-00-00 00:00:00',3,0,0,0),(9,'otro','otro','otro','otro@mail.com','0000-00-00 00:00:00',1,0,0,0),(10,'profesorjabes','profesorjabes','profesorjabes','profesorjabes@mail.com','0000-00-00 00:00:00',2,0,0,0);
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

-- Dump completed on 2023-12-09  5:30:26
