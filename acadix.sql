CREATE DATABASE  IF NOT EXISTS `acadix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `acadix`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: acadix
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  KEY `User_ID_idx` (`User_ID`),
  CONSTRAINT `User_ID` FOREIGN KEY (`User_ID`) REFERENCES `usuario` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,5);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id_alu` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) DEFAULT NULL,
  `idcurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_alu`),
  KEY `iduser_idx` (`iduser`),
  CONSTRAINT `iduser` FOREIGN KEY (`iduser`) REFERENCES `usuario` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,1,1),(2,3,1);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anio`
--

DROP TABLE IF EXISTS `anio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anio` (
  `id_anio` int(11) NOT NULL AUTO_INCREMENT,
  `anio` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_anio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anio`
--

LOCK TABLES `anio` WRITE;
/*!40000 ALTER TABLE `anio` DISABLE KEYS */;
INSERT INTO `anio` VALUES (1,'2026'),(2,'2027');
/*!40000 ALTER TABLE `anio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asigdocente`
--

DROP TABLE IF EXISTS `asigdocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asigdocente` (
  `id_asignacion` int(11) NOT NULL AUTO_INCREMENT,
  `profe_id` int(11) DEFAULT NULL,
  `id_cursoMat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_asignacion`),
  KEY `profe_id_idx` (`profe_id`),
  KEY `id_cursoMat_idx` (`id_cursoMat`),
  CONSTRAINT `id_cursoMat` FOREIGN KEY (`id_cursoMat`) REFERENCES `cursomateria` (`id_CxM`),
  CONSTRAINT `profe_id` FOREIGN KEY (`profe_id`) REFERENCES `docente` (`id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asigdocente`
--

LOCK TABLES `asigdocente` WRITE;
/*!40000 ALTER TABLE `asigdocente` DISABLE KEYS */;
INSERT INTO `asigdocente` VALUES (1,1,1),(2,1,2),(4,2,3),(5,2,4),(6,2,1),(7,2,2),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,1,3),(14,1,4);
/*!40000 ALTER TABLE `asigdocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bimestre`
--

DROP TABLE IF EXISTS `bimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bimestre` (
  `id_bime` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_bime`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bimestre`
--

LOCK TABLES `bimestre` WRITE;
/*!40000 ALTER TABLE `bimestre` DISABLE KEYS */;
INSERT INTO `bimestre` VALUES (1,'Primer bimestre'),(2,'Segundo bimestre'),(3,'Tercer bimestre'),(4,'Cuarto bimestre'),(5,'Primer bimestre'),(6,'Segundo bimestre'),(7,'Tercer bimestre'),(8,'Cuarto bimestre');
/*!40000 ALTER TABLE `bimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigo`
--

DROP TABLE IF EXISTS `codigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigo` (
  `id_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cod` varchar(90) NOT NULL,
  `rol` varchar(90) DEFAULT NULL,
  `activo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_codigo`),
  UNIQUE KEY `cod_UNIQUE` (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo`
--

LOCK TABLES `codigo` WRITE;
/*!40000 ALTER TABLE `codigo` DISABLE KEYS */;
INSERT INTO `codigo` VALUES (1,'ALUMNO123','alumno','1'),(2,'PROFESOR123','profesor','1'),(3,'ALUMNO456','alumno','1'),(4,'PROFESOR456','profesor','1');
/*!40000 ALTER TABLE `codigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `IDanio` int(11) DEFAULT NULL,
  `IDdiv` int(11) DEFAULT NULL,
  `IDTXE` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `IDanio_idx` (`IDanio`),
  KEY `IDdiv_idx` (`IDdiv`),
  KEY `IDTXE_idx` (`IDTXE`),
  CONSTRAINT `IDTXE` FOREIGN KEY (`IDTXE`) REFERENCES `turnoxespe` (`id_TxE`),
  CONSTRAINT `IDanio` FOREIGN KEY (`IDanio`) REFERENCES `anio` (`id_anio`),
  CONSTRAINT `IDdiv` FOREIGN KEY (`IDdiv`) REFERENCES `division` (`id_div`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,1,1,1),(3,2,2,2);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursomateria`
--

DROP TABLE IF EXISTS `cursomateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursomateria` (
  `id_CxM` int(11) NOT NULL AUTO_INCREMENT,
  `curso_ID` int(11) DEFAULT NULL,
  `materia_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_CxM`),
  KEY `curso_ID_idx` (`curso_ID`),
  KEY `materia_ID_idx` (`materia_ID`),
  CONSTRAINT `curso_ID` FOREIGN KEY (`curso_ID`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `materia_ID` FOREIGN KEY (`materia_ID`) REFERENCES `materia` (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursomateria`
--

LOCK TABLES `cursomateria` WRITE;
/*!40000 ALTER TABLE `cursomateria` DISABLE KEYS */;
INSERT INTO `cursomateria` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,3,1),(6,3,2),(7,3,3),(8,3,4);
/*!40000 ALTER TABLE `cursomateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `division` (
  `id_div` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_div`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'A'),(2,'B');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_docente`),
  KEY `idusuario_idx` (`idusuario`),
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,2),(2,4);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `id_espe` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_espe`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Informatica');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Programacion'),(2,'Base de Datos'),(3,'Redes'),(4,'Desarrollo de sistemas');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `idTemario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_material`),
  KEY `idTemario_idx` (`idTemario`),
  CONSTRAINT `idTemario` FOREIGN KEY (`idTemario`) REFERENCES `temario` (`id_temario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Guia de algoritmos','Ejercicios introductorios','guia_algoritmos.pdf',1),(2,'Practica de SQL','Ejercicios de consultas','practica_sql.pdf',2),(3,'Guia de direccionamiento','Practica de redes IP','guia_redes.pdf',3),(4,'Introducción a redes','Material del primer tema','uploads\\materiales\\5fff491a-752b-4424-bb32-d9abf05d087c.pdf',1),(5,'Introducción a redes','Material del primer tema','plugins\\materiales\\uploads\\materiales\\6bd8513c-02af-47eb-87fd-b628c14a8477.pdf',1);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temario`
--

DROP TABLE IF EXISTS `temario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temario` (
  `id_temario` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(90) DEFAULT NULL,
  `descripcion` varchar(340) DEFAULT NULL,
  `idCursoMateria` int(11) DEFAULT NULL,
  `idBimestre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_temario`),
  KEY `idCursoMateria_idx` (`idCursoMateria`),
  KEY `idBimestre_idx` (`idBimestre`),
  CONSTRAINT `idBimestre` FOREIGN KEY (`idBimestre`) REFERENCES `bimestre` (`id_bime`),
  CONSTRAINT `idCursoMateria` FOREIGN KEY (`idCursoMateria`) REFERENCES `cursomateria` (`id_CxM`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temario`
--

LOCK TABLES `temario` WRITE;
/*!40000 ALTER TABLE `temario` DISABLE KEYS */;
INSERT INTO `temario` VALUES (1,'Introduccion a la programacion','Conceptos basicos, algoritmos y variables.',1,1),(2,'Consultas SQL','Consultas SELECT, filtros y ordenamiento.',2,1),(3,'Fundamentos de redes','Direccionamiento IP y redes locales.',3,1),(4,'Introducción a la programación','Contenidos del primer bimestre',1,1);
/*!40000 ALTER TABLE `temario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'Mañana'),(2,'Tarde');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnoxespe`
--

DROP TABLE IF EXISTS `turnoxespe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnoxespe` (
  `id_TxE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_turno` int(11) DEFAULT NULL,
  `ID_espe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_TxE`),
  KEY `ID_turno_idx` (`ID_turno`),
  KEY `ID_espe_idx` (`ID_espe`),
  CONSTRAINT `ID_espe` FOREIGN KEY (`ID_espe`) REFERENCES `especialidad` (`id_espe`),
  CONSTRAINT `ID_turno` FOREIGN KEY (`ID_turno`) REFERENCES `turno` (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnoxespe`
--

LOCK TABLES `turnoxespe` WRITE;
/*!40000 ALTER TABLE `turnoxespe` DISABLE KEYS */;
INSERT INTO `turnoxespe` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `turnoxespe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(90) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `contraseña` varchar(80) NOT NULL,
  `cod_invitacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `id_user_UNIQUE` (`id_user`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `contraseña_UNIQUE` (`contraseña`),
  KEY `cod_invitacion_idx` (`cod_invitacion`),
  CONSTRAINT `cod_invitacion` FOREIGN KEY (`cod_invitacion`) REFERENCES `codigo` (`id_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Prueba','Alumno','prueba@gmail.com','123456',1),(2,'Juan','Profesor','profesor@gmail.com','Profesor123',2),(3,'Maria','Gonzalez','maria@gmail.com','Maria456',3),(4,'Laura','Martinez','laura@gmail.com','Laura456',4),(5,'Administrador','Acadix','admin@acadix.com','acadix1234',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-15 22:33:01
