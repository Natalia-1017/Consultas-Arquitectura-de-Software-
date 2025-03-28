-- MySQL dump 10.13  Distrib 9.2.0, for Linux (x86_64)
--
-- Host: localhost    Database: Cultivo
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `ControlRiego`
--

DROP TABLE IF EXISTS `ControlRiego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ControlRiego` (
  `id_riego` int NOT NULL AUTO_INCREMENT,
  `id_variedad` int DEFAULT NULL,
  `fecha_riego` date NOT NULL,
  `cantidad_agua_litros` decimal(5,2) NOT NULL,
  `metodo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_riego`),
  KEY `id_variedad` (`id_variedad`),
  CONSTRAINT `controlriego_ibfk_1` FOREIGN KEY (`id_variedad`) REFERENCES `VariedadPlantas` (`id_variedad`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ControlRiego`
--

LOCK TABLES `ControlRiego` WRITE;
/*!40000 ALTER TABLE `ControlRiego` DISABLE KEYS */;
INSERT INTO `ControlRiego` VALUES (1,1,'2025-03-01',100.00,'Goteo'),(2,2,'2025-03-02',120.50,'Aspersin'),(3,3,'2025-03-03',90.00,'Goteo'),(4,4,'2025-03-04',110.00,'Microaspersin'),(5,5,'2025-03-05',130.75,'Aspersin'),(6,6,'2025-03-06',95.00,'Goteo'),(7,7,'2025-03-07',105.50,'Aspersin'),(8,8,'2025-03-08',115.75,'Microaspersin'),(9,9,'2025-03-09',98.25,'Goteo'),(10,10,'2025-03-10',123.40,'Aspersin'),(11,11,'2025-03-11',110.00,'Goteo'),(12,12,'2025-03-12',125.50,'Microaspersin'),(13,13,'2025-03-13',85.00,'Goteo'),(14,14,'2025-03-14',132.00,'Aspersin'),(15,15,'2025-03-15',140.50,'Goteo'),(16,16,'2025-03-16',128.75,'Microaspersin'),(17,17,'2025-03-17',99.50,'Aspersin'),(18,18,'2025-03-18',110.80,'Goteo'),(19,19,'2025-03-19',120.30,'Microaspersin'),(20,20,'2025-03-20',115.00,'Aspersin'),(21,21,'2025-03-21',135.50,'Goteo'),(22,22,'2025-03-22',112.00,'Microaspersin'),(23,23,'2025-03-23',98.75,'Aspersin'),(24,24,'2025-03-24',105.25,'Goteo'),(25,25,'2025-03-25',121.00,'Microaspersin'),(26,26,'2025-03-26',108.50,'Aspersin'),(27,27,'2025-03-27',114.30,'Goteo'),(28,28,'2025-03-28',132.75,'Microaspersin'),(29,29,'2025-03-29',129.20,'Aspersin'),(30,30,'2025-03-30',140.00,'Goteo');
/*!40000 ALTER TABLE `ControlRiego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CosechaCultivo`
--

DROP TABLE IF EXISTS `CosechaCultivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CosechaCultivo` (
  `id_cosecha` int NOT NULL AUTO_INCREMENT,
  `id_variedad` int DEFAULT NULL,
  `fecha_cosecha` date NOT NULL,
  `peso_kg` decimal(6,2) NOT NULL,
  `calidad` enum('Alta','Media','Baja') NOT NULL,
  PRIMARY KEY (`id_cosecha`),
  KEY `id_variedad` (`id_variedad`),
  CONSTRAINT `cosechacultivo_ibfk_1` FOREIGN KEY (`id_variedad`) REFERENCES `VariedadPlantas` (`id_variedad`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CosechaCultivo`
--

LOCK TABLES `CosechaCultivo` WRITE;
/*!40000 ALTER TABLE `CosechaCultivo` DISABLE KEYS */;
INSERT INTO `CosechaCultivo` VALUES (1,1,'2025-06-01',120.50,'Alta'),(2,2,'2025-06-03',140.80,'Media'),(3,3,'2025-06-05',110.30,'Alta'),(4,4,'2025-06-07',135.60,'Baja'),(5,5,'2025-06-09',150.75,'Alta'),(6,6,'2025-06-11',115.40,'Media'),(7,7,'2025-06-13',125.90,'Alta'),(8,8,'2025-06-15',130.60,'Baja'),(9,9,'2025-06-17',140.20,'Media'),(10,10,'2025-06-19',155.00,'Alta'),(11,1,'2025-06-21',122.50,'Alta'),(12,2,'2025-06-23',142.80,'Media'),(13,3,'2025-06-25',112.30,'Alta'),(14,4,'2025-06-27',137.60,'Baja'),(15,5,'2025-06-29',152.75,'Alta'),(16,6,'2025-07-01',117.40,'Media'),(17,7,'2025-07-03',127.90,'Alta'),(18,8,'2025-07-05',132.60,'Baja'),(19,9,'2025-07-07',142.20,'Media'),(20,10,'2025-07-09',157.00,'Alta'),(21,1,'2025-07-11',125.50,'Alta'),(22,2,'2025-07-13',145.80,'Media'),(23,3,'2025-07-15',115.30,'Alta'),(24,4,'2025-07-17',140.60,'Baja'),(25,5,'2025-07-19',155.75,'Alta'),(26,6,'2025-07-21',120.40,'Media'),(27,7,'2025-07-23',130.90,'Alta'),(28,8,'2025-07-25',135.60,'Baja'),(29,9,'2025-07-27',145.20,'Media'),(30,10,'2025-07-29',160.00,'Alta');
/*!40000 ALTER TABLE `CosechaCultivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fertilizaciones`
--

DROP TABLE IF EXISTS `Fertilizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fertilizaciones` (
  `id_fertilizacion` int NOT NULL AUTO_INCREMENT,
  `id_variedad` int DEFAULT NULL,
  `fecha_aplicacion` date NOT NULL,
  `tipo_fertilizante` varchar(100) NOT NULL,
  `cantidad_kg` decimal(5,2) NOT NULL,
  `id_suministro` int DEFAULT NULL,
  PRIMARY KEY (`id_fertilizacion`),
  KEY `id_variedad` (`id_variedad`),
  KEY `id_suministro` (`id_suministro`),
  CONSTRAINT `fertilizaciones_ibfk_1` FOREIGN KEY (`id_variedad`) REFERENCES `VariedadPlantas` (`id_variedad`) ON DELETE CASCADE,
  CONSTRAINT `fertilizaciones_ibfk_2` FOREIGN KEY (`id_suministro`) REFERENCES `Suministros` (`id_suministro`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fertilizaciones`
--

LOCK TABLES `Fertilizaciones` WRITE;
/*!40000 ALTER TABLE `Fertilizaciones` DISABLE KEYS */;
INSERT INTO `Fertilizaciones` VALUES (1,1,'2025-03-01','Fertilizante Orgnico',5.00,NULL),(2,2,'2025-03-03','Abono Nitrogenado',6.50,NULL),(3,3,'2025-03-05','Fertilizante de Liberacin Lenta',7.20,NULL),(4,4,'2025-03-07','Mezcla Fosfrica',4.80,NULL),(5,5,'2025-03-09','Compost Mejorado',6.00,NULL),(6,6,'2025-03-11','Biofertilizante Lquido',5.50,NULL),(7,7,'2025-03-13','Fertilizante Foliar',4.70,NULL),(8,8,'2025-03-15','Suplemento de Potasio',5.80,NULL),(9,9,'2025-03-17','Enmienda Orgnica',6.30,NULL),(10,10,'2025-03-19','Humus de Lombriz',7.00,NULL),(11,1,'2025-03-21','Fertilizante Orgnico',5.50,NULL),(12,2,'2025-03-23','Abono Nitrogenado',6.70,NULL),(13,3,'2025-03-25','Fertilizante de Liberacin Lenta',7.10,NULL),(14,4,'2025-03-27','Mezcla Fosfrica',4.90,NULL),(15,5,'2025-03-29','Compost Mejorado',6.20,NULL),(16,6,'2025-03-31','Biofertilizante Lquido',5.40,NULL),(17,7,'2025-04-02','Fertilizante Foliar',4.90,NULL),(18,8,'2025-04-04','Suplemento de Potasio',5.90,NULL),(19,9,'2025-04-06','Enmienda Orgnica',6.50,NULL),(20,10,'2025-04-08','Humus de Lombriz',7.30,NULL),(21,1,'2025-04-10','Fertilizante Orgnico',5.60,NULL),(22,2,'2025-04-12','Abono Nitrogenado',6.80,NULL),(23,3,'2025-04-14','Fertilizante de Liberacin Lenta',7.40,NULL),(24,4,'2025-04-16','Mezcla Fosfrica',4.85,NULL),(25,5,'2025-04-18','Compost Mejorado',6.40,NULL),(26,6,'2025-04-20','Biofertilizante Lquido',5.60,NULL),(27,7,'2025-04-22','Fertilizante Foliar',4.95,NULL),(28,8,'2025-04-24','Suplemento de Potasio',6.00,NULL),(29,9,'2025-04-26','Enmienda Orgnica',6.60,NULL),(30,10,'2025-04-28','Humus de Lombriz',7.50,NULL);
/*!40000 ALTER TABLE `Fertilizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (1,'AgroTech','Roberto Martnez','3021122334'),(2,'GreenFields','Luca Hernndez','3112233445'),(3,'Hidropona Plus','Fernando Ros','3203344556'),(4,'FertiAgro','Elena Castro','3304455667'),(5,'BioCultivos','Germn Ospina','3405566778'),(6,'AgroSupplies','Carlos Prez','3001234567'),(7,'Fertilizantes del Campo','Mara Gmez','3109876543'),(8,'RiegoTec','Juan Lpez','3155678901'),(9,'Semillas Vivas','Ana Ramrez','3206789012'),(10,'AgroQumicos Andinos','Pedro Fernndez','3054321098'),(11,'NutriPlant','Laura Snchez','3123456789'),(12,'Blueberry Growers','Santiago Vargas','3176543210'),(13,'EcoFert','Daniela Herrera','3218765432'),(14,'HidroAgro','Miguel Torres','3187654321'),(15,'Bioplant','Carolina Medina','3012345678'),(16,'VerdeNatural','Sofa Rojas','3151234567'),(17,'Cultivos Sanos','Manuel Pea','3162345678'),(18,'BioRiego','Camila Herrera','3173456789'),(19,'OrganikAgro','Francisco Montes','3184567890'),(20,'AgroGlobal','Andrea Lpez','3195678901'),(21,'VitaPlant','Diego Castro','3206789012'),(22,'CampoFrtil','Patricia Gutirrez','3217890123'),(23,'AgroPro','Rodrigo Mndez','3228901234'),(24,'HidroRiego','Beatriz Ruiz','3239012345'),(25,'AgroEcolgico','Esteban Vargas','3240123456'),(26,'NaturaFertil','Natalia Serrano','3251234567'),(27,'OrganiGrowth','Javier Maldonado','3262345678'),(28,'PlantaVerde','Vernica Reyes','3273456789'),(29,'EcoCultivos','Luis Herrera','3284567890'),(30,'ArndanoSupreme','Julia Prez','3295678901');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suministros`
--

DROP TABLE IF EXISTS `Suministros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suministros` (
  `id_suministro` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `fecha_compra` date NOT NULL,
  PRIMARY KEY (`id_suministro`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `suministros_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores` (`id_proveedor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suministros`
--

LOCK TABLES `Suministros` WRITE;
/*!40000 ALTER TABLE `Suministros` DISABLE KEYS */;
INSERT INTO `Suministros` VALUES (1,1,'Sustrato para arndanos',200,'2025-03-01'),(2,2,'Fertilizante NPK',150,'2025-03-02'),(3,3,'Insecticida biolgico',50,'2025-03-03'),(4,4,'Sistema de riego por goteo',20,'2025-03-04'),(5,5,'Mallas de proteccin',30,'2025-03-05'),(6,6,'Contenedores de cosecha',100,'2025-03-06'),(7,7,'Fertilizante orgnico',80,'2025-03-07'),(8,8,'Herbicida natural',40,'2025-03-08'),(9,9,'Semillas mejoradas',500,'2025-03-09'),(10,10,'Abono mineral',70,'2025-03-10'),(11,11,'Bioestimulantes',60,'2025-03-11'),(12,12,'Fungicida para hongos',55,'2025-03-12'),(13,13,'Sistema de microaspersin',15,'2025-03-13'),(14,14,'Mallas antigranizo',35,'2025-03-14'),(15,15,'Controlador de pH',25,'2025-03-15'),(16,16,'Sustrato especial',90,'2025-03-16'),(17,17,'Regulador de crecimiento',45,'2025-03-17'),(18,18,'cido hmico',120,'2025-03-18'),(19,19,'Cal agrcola',130,'2025-03-19'),(20,20,'Bactericida orgnico',75,'2025-03-20'),(21,21,'Polinizadores artificiales',20,'2025-03-21'),(22,22,'Fertilizante foliar',200,'2025-03-22'),(23,23,'Pesticida biolgico',65,'2025-03-23'),(24,24,'Medidores de humedad',10,'2025-03-24'),(25,25,'Suplemento mineral',95,'2025-03-25'),(26,26,'Macronutrientes lquidos',110,'2025-03-26'),(27,27,'Inhibidor de plagas',85,'2025-03-27'),(28,28,'Hidrogel para suelos',150,'2025-03-28'),(29,29,'Acondicionador de suelo',180,'2025-03-29'),(30,30,'Antifngico natural',50,'2025-03-30');
/*!40000 ALTER TABLE `Suministros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VariedadPlantas`
--

DROP TABLE IF EXISTS `VariedadPlantas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VariedadPlantas` (
  `id_variedad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_variedad`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VariedadPlantas`
--

LOCK TABLES `VariedadPlantas` WRITE;
/*!40000 ALTER TABLE `VariedadPlantas` DISABLE KEYS */;
INSERT INTO `VariedadPlantas` VALUES (1,'Biloxi','Variedad resistente a climas clidos'),(2,'Legacy','Produce frutos grandes y dulces'),(3,'Bluecrop','Alta productividad y resistencia a enfermedades'),(4,'Duke','Frutos de alta calidad y maduracin temprana'),(5,'Elliot','Cosecha tarda con buena resistencia al fro'),(6,'Brigitta','Frutos firmes y larga vida postcosecha'),(7,'Aurora','Gran produccin y excelente sabor'),(8,'Spartan','Baya grande y muy dulce'),(9,'Chandler','Baya grande con excelente sabor'),(10,'Patriot','Tolerante a suelos pobres y resistente al fro'),(11,'Northland','Buena produccin en climas fros'),(12,'Bluegold','Alto rendimiento y resistencia a plagas'),(13,'Toro','Produccin uniforme y buena calidad'),(14,'Jersey','Variedad clsica con frutos dulces'),(15,'Sunshine Blue','Apto para climas clidos y fros'),(16,'Ozarkblue','Gran tamao y sabor excepcional'),(17,'Nelson','Buen equilibrio entre dulzura y acidez'),(18,'Rubel','Alto contenido de antioxidantes'),(19,'Reka','Crecimiento vigoroso y resistente al fro'),(20,'Pink Lemonade','Frutos rosados con sabor dulce nico'),(21,'Powderblue','Resistente a sequas y plagas'),(22,'Tifblue','Buena calidad y resistencia a enfermedades'),(23,'Sharpblue','Maduracin temprana y sabor dulce'),(24,'O Neal','Alto rendimiento y sabor excepcional'),(25,'New Hanover','Baya grande y jugosa'),(26,'Columbus','Excelente adaptacin a diferentes climas'),(27,'Berkeley','Fcil de cultivar y buen sabor'),(28,'Windsor','Produccin constante y frutos grandes'),(29,'Arlen','Frutos jugosos y dulces'),(30,'Centurion','Maduracin tarda y buena calidad');
/*!40000 ALTER TABLE `VariedadPlantas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23  9:28:05
