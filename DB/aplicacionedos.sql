-- mysqldump -u root  -p aplicacionesdos  > aplicacionedos.sql
-- Comando Export de la Base de Datos
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: aplicacionesdos
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `informes`
--

DROP TABLE IF EXISTS `informes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `producto_id` int DEFAULT '0',
  `cantidad_vendida` int NOT NULL,
  `ganancias` decimal(10,2) DEFAULT '0.00',
  `descripcion` varchar(255) DEFAULT NULL,
  `ingreso_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `informes_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `inventario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informes`
--

LOCK TABLES `informes` WRITE;
/*!40000 ALTER TABLE `informes` DISABLE KEYS */;
INSERT INTO `informes` VALUES (6,'2024-05-01',1,50,0.00,'Informe de ventas del 1 de mayo de 2024',789.25),(7,'2024-05-02',2,45,0.00,'Informe de ventas del 2 de mayo de 2024',702.80),(8,'2024-05-03',3,60,0.00,'Informe de ventas del 3 de mayo de 2024',890.50),(9,'2024-05-04',4,55,0.00,'Informe de ventas del 4 de mayo de 2024',815.75),(10,'2024-05-05',5,48,0.00,'Informe de ventas del 5 de mayo de 2024',750.60);
/*!40000 ALTER TABLE `informes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'Arduino Uno',20,15.99),(2,'Sensor de temperatura',50,5.49),(3,'Motor paso a paso',30,8.75),(4,'Batería recargable',100,12.99),(5,'Cable jumper (pack)',200,9.99);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario1', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario2', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario3', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario4', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario5', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario6', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario7', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario8', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario9', 'harol123@poli.edu.co', '12345678');
INSERT INTO usuarios (nombre, email, contraseña) VALUES ('usuario10', 'harol123@poli.edu.co', '12345678');
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

-- Dump completed on 2024-05-12 15:40:37
