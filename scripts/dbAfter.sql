CREATE DATABASE  IF NOT EXISTS `dbafter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbafter`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: dbafter
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
-- Table structure for table `tblassuntos`
--

DROP TABLE IF EXISTS `tblassuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblassuntos` (
  `idAssunto` int NOT NULL AUTO_INCREMENT,
  `nomeAssunto` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblCategoriumIdCategoria` int DEFAULT NULL,
  PRIMARY KEY (`idAssunto`),
  KEY `tblCategoriumIdCategoria` (`tblCategoriumIdCategoria`),
  CONSTRAINT `tblassuntos_ibfk_1` FOREIGN KEY (`tblCategoriumIdCategoria`) REFERENCES `tblcategoria` (`idCategoria`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblassuntos`
--

LOCK TABLES `tblassuntos` WRITE;
/*!40000 ALTER TABLE `tblassuntos` DISABLE KEYS */;
INSERT INTO `tblassuntos` VALUES (1,'Música','2022-05-31 13:27:15','2022-05-31 13:27:15',1),(2,'Arte','2022-05-31 13:27:35','2022-05-31 13:27:35',1),(3,'Cinema','2022-05-31 13:28:11','2022-05-31 13:28:11',1),(4,'Concerto','2022-05-31 13:28:17','2022-05-31 13:28:17',1),(5,'Moda','2022-05-31 13:28:23','2022-05-31 13:28:23',1),(6,'Dança','2022-05-31 13:28:29','2022-05-31 13:28:29',1),(7,'Teatro','2022-05-31 13:28:35','2022-05-31 13:28:35',1),(8,'Artesanato','2022-05-31 13:28:40','2022-05-31 13:28:40',1),(9,'Linguagens','2022-05-31 13:28:46','2022-05-31 13:28:46',1),(10,'Lazer','2022-05-31 13:28:51','2022-05-31 13:28:51',1),(11,'Poesia','2022-05-31 13:28:56','2022-05-31 13:28:56',1),(12,'Educacional','2022-05-31 13:29:02','2022-05-31 13:29:02',1),(13,'Religião','2022-05-31 13:29:07','2022-05-31 13:29:07',1),(14,'Saúde','2022-05-31 13:29:11','2022-05-31 13:29:11',1),(15,'Turístico','2022-05-31 13:29:34','2022-05-31 13:29:34',2),(16,'Stand-up','2022-05-31 13:29:51','2022-05-31 13:29:51',2),(17,'Mágica','2022-05-31 13:30:00','2022-05-31 13:30:00',2),(18,'Games','2022-05-31 13:30:06','2022-05-31 13:30:06',2),(19,'Fotografia','2022-05-31 13:30:11','2022-05-31 13:30:11',2),(20,'Anime','2022-05-31 13:30:16','2022-05-31 13:30:16',2),(21,'HQ','2022-05-31 13:30:21','2022-05-31 13:30:21',2),(22,'Animais','2022-05-31 13:30:45','2022-05-31 13:30:45',3),(23,'Jardinagem','2022-05-31 13:30:51','2022-05-31 13:30:51',3),(24,'Gastronomia','2022-05-31 13:30:56','2022-05-31 13:30:56',3),(25,'Decoração','2022-05-31 13:31:01','2022-05-31 13:31:01',3),(26,'Veículos','2022-05-31 13:31:30','2022-05-31 13:31:30',4),(27,'Invasão','2022-05-31 13:31:37','2022-05-31 13:31:37',4),(28,'Rede e parede','2022-05-31 13:31:53','2022-05-31 13:31:53',4),(29,'Campo e taco','2022-05-31 13:32:15','2022-05-31 13:32:15',4),(30,'Combate','2022-05-31 13:32:23','2022-05-31 13:32:23',4),(31,'Marca','2022-05-31 13:32:29','2022-05-31 13:32:29',4),(32,'Precisão','2022-05-31 13:32:35','2022-05-31 13:32:35',4),(33,'Técnico-combinatório','2022-05-31 13:32:44','2022-05-31 13:32:44',4),(34,'Tecnologia','2022-05-31 13:33:23','2022-05-31 13:33:23',5),(35,'Política','2022-05-31 13:33:28','2022-05-31 13:33:28',5),(36,'Empreendedorismo','2022-05-31 13:33:34','2022-05-31 13:33:34',5),(37,'Marketing','2022-05-31 13:33:42','2022-05-31 13:33:42',5);
/*!40000 ALTER TABLE `tblassuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbancoconta`
--

DROP TABLE IF EXISTS `tblbancoconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbancoconta` (
  `idBancoConta` int NOT NULL AUTO_INCREMENT,
  `nomeBanco` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idBancoConta`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbancoconta`
--

LOCK TABLES `tblbancoconta` WRITE;
/*!40000 ALTER TABLE `tblbancoconta` DISABLE KEYS */;
INSERT INTO `tblbancoconta` VALUES (1,'Banrisul','2022-05-31 11:39:07','2022-05-31 11:39:07'),(2,'Banco do Brasil','2022-06-04 19:24:35','2022-06-04 19:24:35'),(3,'Bradesco','2022-06-04 19:24:48','2022-06-04 19:24:48'),(4,'Itaú','2022-06-04 19:24:57','2022-06-04 19:24:57'),(5,'Santander','2022-06-04 19:25:05','2022-06-04 19:25:05'),(6,'Citibank','2022-06-04 19:25:24','2022-06-04 19:25:24'),(7,'Safra','2022-06-04 19:25:32','2022-06-04 19:25:32'),(8,'Caixa','2022-06-04 19:25:40','2022-06-04 19:25:40'),(9,'HSBC','2022-06-04 19:25:48','2022-06-04 19:25:48'),(10,'Nubank','2022-06-04 19:25:57','2022-06-04 19:25:57'),(11,'PicPay','2022-06-04 19:26:06','2022-06-04 19:26:06'),(12,'BTG Pactual','2022-06-04 19:26:30','2022-06-04 19:26:30'),(13,'Inter','2022-06-04 19:27:00','2022-06-04 19:27:00'),(14,'C6 Bank','2022-06-04 19:27:28','2022-06-04 19:27:28'),(15,'PagSeguro','2022-06-04 19:29:04','2022-06-04 19:29:04'),(16,'Next','2022-06-04 19:29:17','2022-06-04 19:29:17'),(17,'BMG','2022-06-04 19:29:25','2022-06-04 19:29:25'),(18,'Original','2022-06-04 19:29:33','2022-06-04 19:29:33'),(19,'Sicoob','2022-06-04 19:29:41','2022-06-04 19:29:41');
/*!40000 ALTER TABLE `tblbancoconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategoria`
--

DROP TABLE IF EXISTS `tblcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategoria`
--

LOCK TABLES `tblcategoria` WRITE;
/*!40000 ALTER TABLE `tblcategoria` DISABLE KEYS */;
INSERT INTO `tblcategoria` VALUES (1,'Cultura','2022-05-31 12:46:20','2022-05-31 12:46:20'),(2,'Entretenimento','2022-05-31 12:46:28','2022-05-31 12:46:28'),(3,'Casual','2022-05-31 12:46:34','2022-05-31 12:46:34'),(4,'Esportes','2022-05-31 12:46:40','2022-05-31 12:46:40'),(5,'Negócios','2022-05-31 12:46:46','2022-05-31 12:46:46');
/*!40000 ALTER TABLE `tblcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcelebridades`
--

DROP TABLE IF EXISTS `tblcelebridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcelebridades` (
  `idCelebridade` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblVerificacaoUsuarioIdVerificacaoUsuario` int DEFAULT NULL,
  `tblTipoCelebridadeIdTipoCelebridade` int DEFAULT NULL,
  PRIMARY KEY (`idCelebridade`),
  KEY `tblVerificacaoUsuarioIdVerificacaoUsuario` (`tblVerificacaoUsuarioIdVerificacaoUsuario`),
  KEY `tblTipoCelebridadeIdTipoCelebridade` (`tblTipoCelebridadeIdTipoCelebridade`),
  CONSTRAINT `tblcelebridades_ibfk_1` FOREIGN KEY (`tblVerificacaoUsuarioIdVerificacaoUsuario`) REFERENCES `tblverificacaousuarios` (`idVerificacaoUsuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcelebridades_ibfk_2` FOREIGN KEY (`tblTipoCelebridadeIdTipoCelebridade`) REFERENCES `tbltipocelebridades` (`idTipoCelebridade`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcelebridades`
--

LOCK TABLES `tblcelebridades` WRITE;
/*!40000 ALTER TABLE `tblcelebridades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcelebridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomentarios`
--

DROP TABLE IF EXISTS `tblcomentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcomentarios` (
  `idComentario` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(300) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblcomentarios_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblperfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcomentarios_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomentarios`
--

LOCK TABLES `tblcomentarios` WRITE;
/*!40000 ALTER TABLE `tblcomentarios` DISABLE KEYS */;
INSERT INTO `tblcomentarios` VALUES (1,'oi','2022-05-31 14:21:20','2022-05-31 14:21:20',2,1),(2,'ISSO VAI SER MANEIRO','2022-06-01 11:37:09','2022-06-01 11:37:09',2,3),(3,'Eu amei esse evento ano passado, fico felix que estejam fazendo de novo','2022-06-02 12:17:28','2022-06-02 12:17:28',2,1),(4,'hehehe','2022-06-02 12:48:59','2022-06-02 12:48:59',2,1),(5,'?','2022-06-04 14:53:42','2022-06-04 14:53:42',1,1);
/*!40000 ALTER TABLE `tblcomentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcompras`
--

DROP TABLE IF EXISTS `tblcompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcompras` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `totalLiquido` float DEFAULT NULL,
  `totalBruto` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblUsuarioComumIdUsuarioComum` int DEFAULT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `tblUsuarioComumIdUsuarioComum` (`tblUsuarioComumIdUsuarioComum`),
  CONSTRAINT `tblcompras_ibfk_1` FOREIGN KEY (`tblUsuarioComumIdUsuarioComum`) REFERENCES `tblusuariocomums` (`idUsuarioComum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcompras`
--

LOCK TABLES `tblcompras` WRITE;
/*!40000 ALTER TABLE `tblcompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontaempresas`
--

DROP TABLE IF EXISTS `tblcontaempresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontaempresas` (
  `idContaEmpresa` int NOT NULL AUTO_INCREMENT,
  `agencia` varchar(45) NOT NULL,
  `numeroConta` varchar(45) NOT NULL,
  `digito` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblEmpresaIdEmpresa` int DEFAULT NULL,
  `tblTipoContumIdTipoConta` int DEFAULT NULL,
  `tblBancoContumIdBancoConta` int DEFAULT NULL,
  PRIMARY KEY (`idContaEmpresa`),
  KEY `tblEmpresaIdEmpresa` (`tblEmpresaIdEmpresa`),
  KEY `tblTipoContumIdTipoConta` (`tblTipoContumIdTipoConta`),
  KEY `tblBancoContumIdBancoConta` (`tblBancoContumIdBancoConta`),
  CONSTRAINT `tblcontaempresas_ibfk_1` FOREIGN KEY (`tblEmpresaIdEmpresa`) REFERENCES `tblempresas` (`idEmpresa`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcontaempresas_ibfk_2` FOREIGN KEY (`tblTipoContumIdTipoConta`) REFERENCES `tbltipoconta` (`idTipoConta`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcontaempresas_ibfk_3` FOREIGN KEY (`tblBancoContumIdBancoConta`) REFERENCES `tblbancoconta` (`idBancoConta`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontaempresas`
--

LOCK TABLES `tblcontaempresas` WRITE;
/*!40000 ALTER TABLE `tblcontaempresas` DISABLE KEYS */;
INSERT INTO `tblcontaempresas` VALUES (1,'0779','1426916','9','2022-05-31 11:41:26','2022-05-31 11:41:26',1,2,1);
/*!40000 ALTER TABLE `tblcontaempresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblempresas`
--

DROP TABLE IF EXISTS `tblempresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblempresas` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(45) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  CONSTRAINT `tblempresas_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblperfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblempresas`
--

LOCK TABLES `tblempresas` WRITE;
/*!40000 ALTER TABLE `tblempresas` DISABLE KEYS */;
INSERT INTO `tblempresas` VALUES (1,'12.249.729/0001-85','2022-05-31 11:41:26','2022-05-31 11:41:26',2);
/*!40000 ALTER TABLE `tblempresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenderecoeventos`
--

DROP TABLE IF EXISTS `tblenderecoeventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblenderecoeventos` (
  `idEnderecoEvento` int NOT NULL AUTO_INCREMENT,
  `cep` varchar(15) DEFAULT NULL,
  `logradouro` varchar(100) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idEnderecoEvento`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblenderecoeventos_ibfk_1` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenderecoeventos`
--

LOCK TABLES `tblenderecoeventos` WRITE;
/*!40000 ALTER TABLE `tblenderecoeventos` DISABLE KEYS */;
INSERT INTO `tblenderecoeventos` VALUES (1,'68630-550','Rua Jeísa Pinho Souza','','Nagibão','Paragominas','PA','66','2022-05-31 14:17:56','2022-05-31 14:17:56',1),(2,'29931-280','Travessa Guarani','','Boa Vista','São Mateus','ES','7-B','2022-06-01 10:41:08','2022-06-01 10:41:08',2),(3,'68909-881','Avenida dos TucanosLot. Habitacional Bella Ville','Próximo a estação de trem.','Marabaixo','Macapá','AP','111','2022-06-01 11:35:52','2022-06-01 11:35:52',3);
/*!40000 ALTER TABLE `tblenderecoeventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblenderecos`
--

DROP TABLE IF EXISTS `tblenderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblenderecos` (
  `idEndereco` int NOT NULL AUTO_INCREMENT,
  `cep` varchar(15) DEFAULT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblUsuarioComumIdUsuarioComum` int DEFAULT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `tblUsuarioComumIdUsuarioComum` (`tblUsuarioComumIdUsuarioComum`),
  CONSTRAINT `tblenderecos_ibfk_1` FOREIGN KEY (`tblUsuarioComumIdUsuarioComum`) REFERENCES `tblusuariocomums` (`idUsuarioComum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblenderecos`
--

LOCK TABLES `tblenderecos` WRITE;
/*!40000 ALTER TABLE `tblenderecos` DISABLE KEYS */;
INSERT INTO `tblenderecos` VALUES (1,'70239-080','Brasília','DF','2022-05-31 11:35:59','2022-05-31 11:35:59',1),(2,'06410210','Barueri','SP','2022-06-02 12:11:40','2022-06-02 12:11:40',2),(3,'68908-814','Macapá','AP','2022-06-04 17:38:22','2022-06-04 17:38:22',3),(4,'68908-814','Macapá','AP','2022-06-04 17:52:30','2022-06-04 17:52:30',4),(5,'68908-814','Macapá','AP','2022-06-04 17:54:17','2022-06-04 17:54:17',5),(6,'68908-814','Macapá','AP','2022-06-04 17:58:56','2022-06-04 17:58:56',6),(7,'68908-814','Macapá','AP','2022-06-04 18:08:07','2022-06-04 18:08:07',7),(8,'68908-814','Macapá','AP','2022-06-04 18:13:51','2022-06-04 18:13:51',8),(9,'68908-814','Macapá','AP','2022-06-04 18:16:32','2022-06-04 18:16:32',9);
/*!40000 ALTER TABLE `tblenderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbleventos`
--

DROP TABLE IF EXISTS `tbleventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbleventos` (
  `idEvento` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descricao` text,
  `capa` text NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date DEFAULT NULL,
  `horaInicio` time NOT NULL,
  `horaFim` time DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblEmpresaIdEmpresa` int DEFAULT NULL,
  `tblFaixaEtariumIdFaixaEtaria` int DEFAULT NULL,
  `tblTipoEventoIdTipoEvento` int DEFAULT NULL,
  `tblCategoriumIdCategoria` int DEFAULT NULL,
  `tblContaEmpresaIdContaEmpresa` int DEFAULT NULL,
  PRIMARY KEY (`idEvento`),
  KEY `tblEmpresaIdEmpresa` (`tblEmpresaIdEmpresa`),
  KEY `tblFaixaEtariumIdFaixaEtaria` (`tblFaixaEtariumIdFaixaEtaria`),
  KEY `tblTipoEventoIdTipoEvento` (`tblTipoEventoIdTipoEvento`),
  KEY `tblCategoriumIdCategoria` (`tblCategoriumIdCategoria`),
  KEY `tblContaEmpresaIdContaEmpresa` (`tblContaEmpresaIdContaEmpresa`),
  CONSTRAINT `tbleventos_ibfk_1` FOREIGN KEY (`tblEmpresaIdEmpresa`) REFERENCES `tblempresas` (`idEmpresa`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_2` FOREIGN KEY (`tblFaixaEtariumIdFaixaEtaria`) REFERENCES `tblfaixaetaria` (`idFaixaEtaria`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_3` FOREIGN KEY (`tblTipoEventoIdTipoEvento`) REFERENCES `tbltipoeventos` (`idTipoEvento`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_4` FOREIGN KEY (`tblCategoriumIdCategoria`) REFERENCES `tblcategoria` (`idCategoria`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_5` FOREIGN KEY (`tblContaEmpresaIdContaEmpresa`) REFERENCES `tblcontaempresas` (`idContaEmpresa`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbleventos`
--

LOCK TABLES `tbleventos` WRITE;
/*!40000 ALTER TABLE `tbleventos` DISABLE KEYS */;
INSERT INTO `tbleventos` VALUES (1,'Músicas assustadoras para se ouvir no escuro','Uma exposição bizarra apenas para os mais corajosos.','uploads/1654006676871aboboras.jpeg','2022-10-31','2022-10-31','20:20:00','20:20:00','2022-05-31 14:17:56','2022-05-31 14:17:56',1,2,8,1,1),(2,'O Mágico do Contraste','Um show de mágica com o maior mágico da cidade: Alexander Borges!','uploads/1654080068516magica2.jpeg','2022-08-15','2022-08-15','14:00:00','14:00:00','2022-06-01 10:41:08','2022-06-01 10:41:08',1,1,7,2,1),(3,'Corridinha de Kart','Uma corrida maluca só para os motoristas mais doidos da cabeça. Venha assistir a esse espetáculo em que os participantes terão que chegar, ou ao menos tentar chegar, em primeiro lugar em uma pista cheia de obstáculos, como cascas de bananas.','uploads/1654083352632corridakart.jpeg','2022-11-06','2022-11-06','15:40:00','15:40:00','2022-06-01 11:35:52','2022-06-01 11:35:52',1,1,11,4,1);
/*!40000 ALTER TABLE `tbleventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbleventoscurtidos`
--

DROP TABLE IF EXISTS `tbleventoscurtidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbleventoscurtidos` (
  `idEventosCurtidos` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idEventosCurtidos`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tbleventoscurtidos_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblperfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventoscurtidos_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbleventoscurtidos`
--

LOCK TABLES `tbleventoscurtidos` WRITE;
/*!40000 ALTER TABLE `tbleventoscurtidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbleventoscurtidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfaixaetaria`
--

DROP TABLE IF EXISTS `tblfaixaetaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfaixaetaria` (
  `idFaixaEtaria` int NOT NULL AUTO_INCREMENT,
  `idade` varchar(5) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idFaixaEtaria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfaixaetaria`
--

LOCK TABLES `tblfaixaetaria` WRITE;
/*!40000 ALTER TABLE `tblfaixaetaria` DISABLE KEYS */;
INSERT INTO `tblfaixaetaria` VALUES (1,'Livre','2022-05-31 13:39:34','2022-05-31 13:39:34'),(2,'+10','2022-05-31 13:39:41','2022-05-31 13:39:41'),(3,'+12','2022-05-31 13:39:45','2022-05-31 13:39:45'),(4,'+14','2022-05-31 13:39:49','2022-05-31 13:39:49'),(5,'+16','2022-05-31 13:39:53','2022-05-31 13:39:53'),(6,'+18','2022-05-31 13:39:57','2022-05-31 13:39:57');
/*!40000 ALTER TABLE `tblfaixaetaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblimagenseventos`
--

DROP TABLE IF EXISTS `tblimagenseventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblimagenseventos` (
  `idImagensEvento` int NOT NULL AUTO_INCREMENT,
  `imagem` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idImagensEvento`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblimagenseventos_ibfk_1` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblimagenseventos`
--

LOCK TABLES `tblimagenseventos` WRITE;
/*!40000 ALTER TABLE `tblimagenseventos` DISABLE KEYS */;
INSERT INTO `tblimagenseventos` VALUES (1,'uploads/1654080068519magica.png','2022-06-01 10:41:08','2022-06-01 10:41:08',2),(2,'uploads/1654083352636corridakart2.jpeg','2022-06-01 11:35:52','2022-06-01 11:35:52',3);
/*!40000 ALTER TABLE `tblimagenseventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblingressos`
--

DROP TABLE IF EXISTS `tblingressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblingressos` (
  `idIngresso` int NOT NULL AUTO_INCREMENT,
  `qrCode` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblVariedadeIngressoLoteIdVariedadeIngressoLote` int DEFAULT NULL,
  `tblCompraIdCompra` int DEFAULT NULL,
  PRIMARY KEY (`idIngresso`),
  KEY `tblVariedadeIngressoLoteIdVariedadeIngressoLote` (`tblVariedadeIngressoLoteIdVariedadeIngressoLote`),
  KEY `tblCompraIdCompra` (`tblCompraIdCompra`),
  CONSTRAINT `tblingressos_ibfk_1` FOREIGN KEY (`tblVariedadeIngressoLoteIdVariedadeIngressoLote`) REFERENCES `tblvariedadeingressolotes` (`idVariedadeIngressoLote`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblingressos_ibfk_2` FOREIGN KEY (`tblCompraIdCompra`) REFERENCES `tblcompras` (`idCompra`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblingressos`
--

LOCK TABLES `tblingressos` WRITE;
/*!40000 ALTER TABLE `tblingressos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblingressos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintermeventoassuntos`
--

DROP TABLE IF EXISTS `tblintermeventoassuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblintermeventoassuntos` (
  `idIntermEventoAssunto` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblAssuntoIdAssunto` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idIntermEventoAssunto`),
  KEY `tblAssuntoIdAssunto` (`tblAssuntoIdAssunto`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblintermeventoassuntos_ibfk_1` FOREIGN KEY (`tblAssuntoIdAssunto`) REFERENCES `tblassuntos` (`idAssunto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblintermeventoassuntos_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintermeventoassuntos`
--

LOCK TABLES `tblintermeventoassuntos` WRITE;
/*!40000 ALTER TABLE `tblintermeventoassuntos` DISABLE KEYS */;
INSERT INTO `tblintermeventoassuntos` VALUES (1,'2022-05-31 14:17:56','2022-05-31 14:17:56',1,1),(2,'2022-06-01 10:41:08','2022-06-01 10:41:08',17,2),(3,'2022-06-01 11:35:52','2022-06-01 11:35:52',26,3);
/*!40000 ALTER TABLE `tblintermeventoassuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintermeventocelebridades`
--

DROP TABLE IF EXISTS `tblintermeventocelebridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblintermeventocelebridades` (
  `idIntermEventoCelebridade` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblCelebridadeIdCelebridade` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idIntermEventoCelebridade`),
  KEY `tblCelebridadeIdCelebridade` (`tblCelebridadeIdCelebridade`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblintermeventocelebridades_ibfk_1` FOREIGN KEY (`tblCelebridadeIdCelebridade`) REFERENCES `tblcelebridades` (`idCelebridade`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblintermeventocelebridades_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintermeventocelebridades`
--

LOCK TABLES `tblintermeventocelebridades` WRITE;
/*!40000 ALTER TABLE `tblintermeventocelebridades` DISABLE KEYS */;
INSERT INTO `tblintermeventocelebridades` VALUES (1,'2022-05-31 14:17:56','2022-05-31 14:17:56',NULL,1),(2,'2022-06-01 10:41:08','2022-06-01 10:41:08',NULL,2);
/*!40000 ALTER TABLE `tblintermeventocelebridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllotes`
--

DROP TABLE IF EXISTS `tbllotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbllotes` (
  `idLote` int NOT NULL AUTO_INCREMENT,
  `qtdeEstoque` int NOT NULL,
  `maxCompraPorUsuario` int DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataFim` date DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFim` time DEFAULT NULL,
  `taxaAbsorvida` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblTipoIngressoIdTipoIngresso` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idLote`),
  KEY `tblTipoIngressoIdTipoIngresso` (`tblTipoIngressoIdTipoIngresso`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tbllotes_ibfk_1` FOREIGN KEY (`tblTipoIngressoIdTipoIngresso`) REFERENCES `tbltipoingressos` (`idTipoIngresso`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbllotes_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tbleventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllotes`
--

LOCK TABLES `tbllotes` WRITE;
/*!40000 ALTER TABLE `tbllotes` DISABLE KEYS */;
INSERT INTO `tbllotes` VALUES (2,150,2,'2022-04-02','2022-06-02','03:00:00','23:59:00',1,'2022-06-02 12:51:48','2022-06-02 12:51:48',1,2);
/*!40000 ALTER TABLE `tbllotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblperfils`
--

DROP TABLE IF EXISTS `tblperfils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblperfils` (
  `idPerfil` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `imagemPerfil` varchar(700) DEFAULT NULL,
  `imagemFundo` varchar(700) DEFAULT NULL,
  `biografia` varchar(200) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblperfils`
--

LOCK TABLES `tblperfils` WRITE;
/*!40000 ALTER TABLE `tblperfils` DISABLE KEYS */;
INSERT INTO `tblperfils` VALUES (1,'Ordinário','ordinario@email.com','1234','uploads/1653996959494camaleao.jpeg','uploads/1653996959507pavao.jpeg','Tudo em cima!','2022-05-31 11:35:59','2022-05-31 11:35:59'),(2,'Entidade','entidade@email.com','1234','uploads/1653997286821panda.png','uploads/1653997286829doninha.jpeg','Somos a Entidade, caso não tenha percebido.','2022-05-31 11:41:26','2022-05-31 11:41:26'),(3,'RodrAlen','rodrigo.alencor@gmail.com','123',NULL,NULL,'Eu festa, e voce tambem #seAme','2022-06-02 12:11:40','2022-06-02 12:11:40'),(10,'RedesLover','loveredes@gmail.com','1234','uploads/1654366592582colorido.jpg','uploads/1654366592588explosao.jpg','Redes é muito bom','2022-06-04 18:16:32','2022-06-04 18:16:32');
/*!40000 ALTER TABLE `tblperfils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipocelebridades`
--

DROP TABLE IF EXISTS `tbltipocelebridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltipocelebridades` (
  `idTipoCelebridade` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoCelebridade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipocelebridades`
--

LOCK TABLES `tbltipocelebridades` WRITE;
/*!40000 ALTER TABLE `tbltipocelebridades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltipocelebridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipoconta`
--

DROP TABLE IF EXISTS `tbltipoconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltipoconta` (
  `idTipoConta` int NOT NULL AUTO_INCREMENT,
  `nomeTipo` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoConta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipoconta`
--

LOCK TABLES `tbltipoconta` WRITE;
/*!40000 ALTER TABLE `tbltipoconta` DISABLE KEYS */;
INSERT INTO `tbltipoconta` VALUES (1,'Conta poupança','2022-05-31 11:39:22','2022-05-31 11:39:22'),(2,'Conta corrente','2022-05-31 11:39:28','2022-05-31 11:39:28');
/*!40000 ALTER TABLE `tbltipoconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipoeventos`
--

DROP TABLE IF EXISTS `tbltipoeventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltipoeventos` (
  `idTipoEvento` int NOT NULL AUTO_INCREMENT,
  `tipo` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipoeventos`
--

LOCK TABLES `tbltipoeventos` WRITE;
/*!40000 ALTER TABLE `tbltipoeventos` DISABLE KEYS */;
INSERT INTO `tbltipoeventos` VALUES (1,'Evento beneficente','2022-05-31 13:36:46','2022-05-31 13:36:46'),(2,'Palestra','2022-05-31 13:36:56','2022-05-31 13:36:56'),(3,'Seminário','2022-05-31 13:37:04','2022-05-31 13:37:04'),(4,'Curso Workshop','2022-05-31 13:37:18','2022-05-31 13:37:18'),(5,'Congresso','2022-05-31 13:37:31','2022-05-31 13:37:31'),(6,'Festival','2022-05-31 13:37:41','2022-05-31 13:37:41'),(7,'Show','2022-05-31 13:37:50','2022-05-31 13:37:50'),(8,'Exposição','2022-05-31 13:37:59','2022-05-31 13:37:59'),(9,'Sarau','2022-05-31 13:38:08','2022-05-31 13:38:08'),(10,'Campeonato','2022-05-31 13:38:16','2022-05-31 13:38:16'),(11,'Corrida','2022-05-31 13:38:23','2022-05-31 13:38:23'),(12,'Reunião','2022-05-31 13:38:32','2022-05-31 13:38:32'),(13,'Conferência','2022-05-31 13:38:39','2022-05-31 13:38:39'),(14,'Feira','2022-05-31 13:38:46','2022-05-31 13:38:46'),(15,'Sociais','2022-05-31 13:38:55','2022-05-31 13:38:55');
/*!40000 ALTER TABLE `tbltipoeventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipoingressos`
--

DROP TABLE IF EXISTS `tbltipoingressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltipoingressos` (
  `idTipoIngresso` int NOT NULL AUTO_INCREMENT,
  `tipoIngresso` varchar(15) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoIngresso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipoingressos`
--

LOCK TABLES `tbltipoingressos` WRITE;
/*!40000 ALTER TABLE `tbltipoingressos` DISABLE KEYS */;
INSERT INTO `tbltipoingressos` VALUES (1,'Gratuito','2022-06-02 12:51:37','2022-06-02 12:51:37'),(2,'Pago','2022-06-02 12:51:45','2022-06-02 12:51:45');
/*!40000 ALTER TABLE `tbltipoingressos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuariocomums`
--

DROP TABLE IF EXISTS `tblusuariocomums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuariocomums` (
  `idUsuarioComum` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `dataNasc` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  PRIMARY KEY (`idUsuarioComum`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  CONSTRAINT `tblusuariocomums_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblperfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuariocomums`
--

LOCK TABLES `tblusuariocomums` WRITE;
/*!40000 ALTER TABLE `tblusuariocomums` DISABLE KEYS */;
INSERT INTO `tblusuariocomums` VALUES (1,'Luis Sergio','2001-10-18','2022-05-31 11:35:59','2022-05-31 11:35:59',1),(2,'Rodrigo Alencor','2022-06-15','2022-06-02 12:11:40','2022-06-02 12:11:40',3),(3,'Vitor Jesus','2000-08-05','2022-06-04 17:38:22','2022-06-04 17:38:22',NULL),(4,'Vitor Jesus','2000-09-05','2022-06-04 17:52:30','2022-06-04 17:52:30',NULL),(5,'Vitor Jesus','2000-05-02','2022-06-04 17:54:17','2022-06-04 17:54:17',NULL),(6,'Vitor Jesus','2000-05-02','2022-06-04 17:58:56','2022-06-04 17:58:56',NULL),(7,'Vitor Jesus','2000-06-02','2022-06-04 18:08:07','2022-06-04 18:08:07',NULL),(8,'Vitor Jesus','2000-05-02','2022-06-04 18:13:51','2022-06-04 18:13:51',NULL),(9,'Vitor Jesus','2000-05-02','2022-06-04 18:16:32','2022-06-04 18:16:32',10);
/*!40000 ALTER TABLE `tblusuariocomums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvariedadeingressolotes`
--

DROP TABLE IF EXISTS `tblvariedadeingressolotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvariedadeingressolotes` (
  `idVariedadeIngressoLote` int NOT NULL AUTO_INCREMENT,
  `quantidade` int NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `tituloIngresso` varchar(50) NOT NULL,
  `valor` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblLoteIdLote` int DEFAULT NULL,
  PRIMARY KEY (`idVariedadeIngressoLote`),
  KEY `tblLoteIdLote` (`tblLoteIdLote`),
  CONSTRAINT `tblvariedadeingressolotes_ibfk_1` FOREIGN KEY (`tblLoteIdLote`) REFERENCES `tbllotes` (`idLote`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvariedadeingressolotes`
--

LOCK TABLES `tblvariedadeingressolotes` WRITE;
/*!40000 ALTER TABLE `tblvariedadeingressolotes` DISABLE KEYS */;
INSERT INTO `tblvariedadeingressolotes` VALUES (2,320,'Esse ingresso dá direito a um tapa na cara','InfraIngressos',759.99,'2022-06-02 12:52:29','2022-06-02 12:52:29',2);
/*!40000 ALTER TABLE `tblvariedadeingressolotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblverificacaousuarios`
--

DROP TABLE IF EXISTS `tblverificacaousuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblverificacaousuarios` (
  `idVerificacaoUsuario` int NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `nickname` varchar(45) NOT NULL,
  `nomeCompleto` varchar(80) NOT NULL,
  `arquivoDoc` text NOT NULL,
  `justificativaSolicitacao` text NOT NULL,
  `justificativaResposta` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblUsuarioComumIdUsuarioComum` int DEFAULT NULL,
  PRIMARY KEY (`idVerificacaoUsuario`),
  KEY `tblUsuarioComumIdUsuarioComum` (`tblUsuarioComumIdUsuarioComum`),
  CONSTRAINT `tblverificacaousuarios_ibfk_1` FOREIGN KEY (`tblUsuarioComumIdUsuarioComum`) REFERENCES `tblusuariocomums` (`idUsuarioComum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblverificacaousuarios`
--

LOCK TABLES `tblverificacaousuarios` WRITE;
/*!40000 ALTER TABLE `tblverificacaousuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblverificacaousuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-04 16:56:38
