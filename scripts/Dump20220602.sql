CREATE DATABASE  IF NOT EXISTS `dbafter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbafter`;
-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: dbafter
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tblAssuntos`
--

DROP TABLE IF EXISTS `tblAssuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblAssuntos` (
  `idAssunto` int NOT NULL AUTO_INCREMENT,
  `nomeAssunto` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblCategoriumIdCategoria` int DEFAULT NULL,
  PRIMARY KEY (`idAssunto`),
  KEY `tblCategoriumIdCategoria` (`tblCategoriumIdCategoria`),
  CONSTRAINT `tblassuntos_ibfk_1` FOREIGN KEY (`tblCategoriumIdCategoria`) REFERENCES `tblCategoria` (`idCategoria`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblAssuntos`
--

LOCK TABLES `tblAssuntos` WRITE;
/*!40000 ALTER TABLE `tblAssuntos` DISABLE KEYS */;
INSERT INTO `tblAssuntos` VALUES (1,'Música','2022-05-31 13:27:15','2022-05-31 13:27:15',1),(2,'Arte','2022-05-31 13:27:35','2022-05-31 13:27:35',1),(3,'Cinema','2022-05-31 13:28:11','2022-05-31 13:28:11',1),(4,'Concerto','2022-05-31 13:28:17','2022-05-31 13:28:17',1),(5,'Moda','2022-05-31 13:28:23','2022-05-31 13:28:23',1),(6,'Dança','2022-05-31 13:28:29','2022-05-31 13:28:29',1),(7,'Teatro','2022-05-31 13:28:35','2022-05-31 13:28:35',1),(8,'Artesanato','2022-05-31 13:28:40','2022-05-31 13:28:40',1),(9,'Linguagens','2022-05-31 13:28:46','2022-05-31 13:28:46',1),(10,'Lazer','2022-05-31 13:28:51','2022-05-31 13:28:51',1),(11,'Poesia','2022-05-31 13:28:56','2022-05-31 13:28:56',1),(12,'Educacional','2022-05-31 13:29:02','2022-05-31 13:29:02',1),(13,'Religião','2022-05-31 13:29:07','2022-05-31 13:29:07',1),(14,'Saúde','2022-05-31 13:29:11','2022-05-31 13:29:11',1),(15,'Turístico','2022-05-31 13:29:34','2022-05-31 13:29:34',2),(16,'Stand-up','2022-05-31 13:29:51','2022-05-31 13:29:51',2),(17,'Mágica','2022-05-31 13:30:00','2022-05-31 13:30:00',2),(18,'Games','2022-05-31 13:30:06','2022-05-31 13:30:06',2),(19,'Fotografia','2022-05-31 13:30:11','2022-05-31 13:30:11',2),(20,'Anime','2022-05-31 13:30:16','2022-05-31 13:30:16',2),(21,'HQ','2022-05-31 13:30:21','2022-05-31 13:30:21',2),(22,'Animais','2022-05-31 13:30:45','2022-05-31 13:30:45',3),(23,'Jardinagem','2022-05-31 13:30:51','2022-05-31 13:30:51',3),(24,'Gastronomia','2022-05-31 13:30:56','2022-05-31 13:30:56',3),(25,'Decoração','2022-05-31 13:31:01','2022-05-31 13:31:01',3),(26,'Veículos','2022-05-31 13:31:30','2022-05-31 13:31:30',4),(27,'Invasão','2022-05-31 13:31:37','2022-05-31 13:31:37',4),(28,'Rede e parede','2022-05-31 13:31:53','2022-05-31 13:31:53',4),(29,'Campo e taco','2022-05-31 13:32:15','2022-05-31 13:32:15',4),(30,'Combate','2022-05-31 13:32:23','2022-05-31 13:32:23',4),(31,'Marca','2022-05-31 13:32:29','2022-05-31 13:32:29',4),(32,'Precisão','2022-05-31 13:32:35','2022-05-31 13:32:35',4),(33,'Técnico-combinatório','2022-05-31 13:32:44','2022-05-31 13:32:44',4),(34,'Tecnologia','2022-05-31 13:33:23','2022-05-31 13:33:23',5),(35,'Política','2022-05-31 13:33:28','2022-05-31 13:33:28',5),(36,'Empreendedorismo','2022-05-31 13:33:34','2022-05-31 13:33:34',5),(37,'Marketing','2022-05-31 13:33:42','2022-05-31 13:33:42',5);
/*!40000 ALTER TABLE `tblAssuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblBancoConta`
--

DROP TABLE IF EXISTS `tblBancoConta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblBancoConta` (
  `idBancoConta` int NOT NULL AUTO_INCREMENT,
  `nomeBanco` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idBancoConta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblBancoConta`
--

LOCK TABLES `tblBancoConta` WRITE;
/*!40000 ALTER TABLE `tblBancoConta` DISABLE KEYS */;
INSERT INTO `tblBancoConta` VALUES (1,'Banrisul','2022-05-31 11:39:07','2022-05-31 11:39:07');
/*!40000 ALTER TABLE `tblBancoConta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblCategoria`
--

DROP TABLE IF EXISTS `tblCategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblCategoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblCategoria`
--

LOCK TABLES `tblCategoria` WRITE;
/*!40000 ALTER TABLE `tblCategoria` DISABLE KEYS */;
INSERT INTO `tblCategoria` VALUES (1,'Cultura','2022-05-31 12:46:20','2022-05-31 12:46:20'),(2,'Entretenimento','2022-05-31 12:46:28','2022-05-31 12:46:28'),(3,'Casual','2022-05-31 12:46:34','2022-05-31 12:46:34'),(4,'Esportes','2022-05-31 12:46:40','2022-05-31 12:46:40'),(5,'Negócios','2022-05-31 12:46:46','2022-05-31 12:46:46');
/*!40000 ALTER TABLE `tblCategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblCelebridades`
--

DROP TABLE IF EXISTS `tblCelebridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblCelebridades` (
  `idCelebridade` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblVerificacaoUsuarioIdVerificacaoUsuario` int DEFAULT NULL,
  `tblTipoCelebridadeIdTipoCelebridade` int DEFAULT NULL,
  PRIMARY KEY (`idCelebridade`),
  KEY `tblVerificacaoUsuarioIdVerificacaoUsuario` (`tblVerificacaoUsuarioIdVerificacaoUsuario`),
  KEY `tblTipoCelebridadeIdTipoCelebridade` (`tblTipoCelebridadeIdTipoCelebridade`),
  CONSTRAINT `tblcelebridades_ibfk_1` FOREIGN KEY (`tblVerificacaoUsuarioIdVerificacaoUsuario`) REFERENCES `tblVerificacaoUsuarios` (`idVerificacaoUsuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcelebridades_ibfk_2` FOREIGN KEY (`tblTipoCelebridadeIdTipoCelebridade`) REFERENCES `tblTipoCelebridades` (`idTipoCelebridade`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblCelebridades`
--

LOCK TABLES `tblCelebridades` WRITE;
/*!40000 ALTER TABLE `tblCelebridades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblCelebridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblComentarios`
--

DROP TABLE IF EXISTS `tblComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblComentarios` (
  `idComentario` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(300) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblcomentarios_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblPerfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcomentarios_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblComentarios`
--

LOCK TABLES `tblComentarios` WRITE;
/*!40000 ALTER TABLE `tblComentarios` DISABLE KEYS */;
INSERT INTO `tblComentarios` VALUES (1,'oi','2022-05-31 14:21:20','2022-05-31 14:21:20',2,1),(2,'ISSO VAI SER MANEIRO','2022-06-01 11:37:09','2022-06-01 11:37:09',2,3),(3,'Eu amei esse evento ano passado, fico felix que estejam fazendo de novo','2022-06-02 12:17:28','2022-06-02 12:17:28',2,1),(4,'hehehe','2022-06-02 12:48:59','2022-06-02 12:48:59',2,1);
/*!40000 ALTER TABLE `tblComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblCompras`
--

DROP TABLE IF EXISTS `tblCompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblCompras` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `totalLiquido` float DEFAULT NULL,
  `totalBruto` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblUsuarioComumIdUsuarioComum` int DEFAULT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `tblUsuarioComumIdUsuarioComum` (`tblUsuarioComumIdUsuarioComum`),
  CONSTRAINT `tblcompras_ibfk_1` FOREIGN KEY (`tblUsuarioComumIdUsuarioComum`) REFERENCES `tblUsuarioComums` (`idUsuarioComum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblCompras`
--

LOCK TABLES `tblCompras` WRITE;
/*!40000 ALTER TABLE `tblCompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblCompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblContaEmpresas`
--

DROP TABLE IF EXISTS `tblContaEmpresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblContaEmpresas` (
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
  CONSTRAINT `tblcontaempresas_ibfk_1` FOREIGN KEY (`tblEmpresaIdEmpresa`) REFERENCES `tblEmpresas` (`idEmpresa`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcontaempresas_ibfk_2` FOREIGN KEY (`tblTipoContumIdTipoConta`) REFERENCES `tblTipoConta` (`idTipoConta`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblcontaempresas_ibfk_3` FOREIGN KEY (`tblBancoContumIdBancoConta`) REFERENCES `tblBancoConta` (`idBancoConta`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblContaEmpresas`
--

LOCK TABLES `tblContaEmpresas` WRITE;
/*!40000 ALTER TABLE `tblContaEmpresas` DISABLE KEYS */;
INSERT INTO `tblContaEmpresas` VALUES (1,'0779','1426916','9','2022-05-31 11:41:26','2022-05-31 11:41:26',1,2,1);
/*!40000 ALTER TABLE `tblContaEmpresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEmpresas`
--

DROP TABLE IF EXISTS `tblEmpresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblEmpresas` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(45) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  CONSTRAINT `tblempresas_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblPerfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEmpresas`
--

LOCK TABLES `tblEmpresas` WRITE;
/*!40000 ALTER TABLE `tblEmpresas` DISABLE KEYS */;
INSERT INTO `tblEmpresas` VALUES (1,'12.249.729/0001-85','2022-05-31 11:41:26','2022-05-31 11:41:26',2);
/*!40000 ALTER TABLE `tblEmpresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEnderecoEventos`
--

DROP TABLE IF EXISTS `tblEnderecoEventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblEnderecoEventos` (
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
  CONSTRAINT `tblenderecoeventos_ibfk_1` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEnderecoEventos`
--

LOCK TABLES `tblEnderecoEventos` WRITE;
/*!40000 ALTER TABLE `tblEnderecoEventos` DISABLE KEYS */;
INSERT INTO `tblEnderecoEventos` VALUES (1,'68630-550','Rua Jeísa Pinho Souza','','Nagibão','Paragominas','PA','66','2022-05-31 14:17:56','2022-05-31 14:17:56',1),(2,'29931-280','Travessa Guarani','','Boa Vista','São Mateus','ES','7-B','2022-06-01 10:41:08','2022-06-01 10:41:08',2),(3,'68909-881','Avenida dos TucanosLot. Habitacional Bella Ville','Próximo a estação de trem.','Marabaixo','Macapá','AP','111','2022-06-01 11:35:52','2022-06-01 11:35:52',3);
/*!40000 ALTER TABLE `tblEnderecoEventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEnderecos`
--

DROP TABLE IF EXISTS `tblEnderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblEnderecos` (
  `idEndereco` int NOT NULL AUTO_INCREMENT,
  `cep` varchar(15) DEFAULT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblUsuarioComumIdUsuarioComum` int DEFAULT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `tblUsuarioComumIdUsuarioComum` (`tblUsuarioComumIdUsuarioComum`),
  CONSTRAINT `tblenderecos_ibfk_1` FOREIGN KEY (`tblUsuarioComumIdUsuarioComum`) REFERENCES `tblUsuarioComums` (`idUsuarioComum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEnderecos`
--

LOCK TABLES `tblEnderecos` WRITE;
/*!40000 ALTER TABLE `tblEnderecos` DISABLE KEYS */;
INSERT INTO `tblEnderecos` VALUES (1,'70239-080','Brasília','DF','2022-05-31 11:35:59','2022-05-31 11:35:59',1),(2,'06410210','Barueri','SP','2022-06-02 12:11:40','2022-06-02 12:11:40',2);
/*!40000 ALTER TABLE `tblEnderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEventos`
--

DROP TABLE IF EXISTS `tblEventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblEventos` (
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
  CONSTRAINT `tbleventos_ibfk_1` FOREIGN KEY (`tblEmpresaIdEmpresa`) REFERENCES `tblEmpresas` (`idEmpresa`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_2` FOREIGN KEY (`tblFaixaEtariumIdFaixaEtaria`) REFERENCES `tblFaixaEtaria` (`idFaixaEtaria`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_3` FOREIGN KEY (`tblTipoEventoIdTipoEvento`) REFERENCES `tblTipoEventos` (`idTipoEvento`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_4` FOREIGN KEY (`tblCategoriumIdCategoria`) REFERENCES `tblCategoria` (`idCategoria`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventos_ibfk_5` FOREIGN KEY (`tblContaEmpresaIdContaEmpresa`) REFERENCES `tblContaEmpresas` (`idContaEmpresa`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEventos`
--

LOCK TABLES `tblEventos` WRITE;
/*!40000 ALTER TABLE `tblEventos` DISABLE KEYS */;
INSERT INTO `tblEventos` VALUES (1,'Músicas assustadoras para se ouvir no escuro','Uma exposição bizarra apenas para os mais corajosos.','uploads/1654006676871aboboras.jpeg','2022-10-31','2022-10-31','20:20:00','20:20:00','2022-05-31 14:17:56','2022-05-31 14:17:56',1,2,8,1,1),(2,'O Mágico do Contraste','Um show de mágica com o maior mágico da cidade: Alexander Borges!','uploads/1654080068516magica2.jpeg','2022-08-15','2022-08-15','14:00:00','14:00:00','2022-06-01 10:41:08','2022-06-01 10:41:08',1,1,7,2,1),(3,'Corridinha de Kart','Uma corrida maluca só para os motoristas mais doidos da cabeça. Venha assistir a esse espetáculo em que os participantes terão que chegar, ou ao menos tentar chegar, em primeiro lugar em uma pista cheia de obstáculos, como cascas de bananas.','uploads/1654083352632corridakart.jpeg','2022-11-06','2022-11-06','15:40:00','15:40:00','2022-06-01 11:35:52','2022-06-01 11:35:52',1,1,11,4,1);
/*!40000 ALTER TABLE `tblEventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEventosCurtidos`
--

DROP TABLE IF EXISTS `tblEventosCurtidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblEventosCurtidos` (
  `idEventosCurtidos` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idEventosCurtidos`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tbleventoscurtidos_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblPerfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbleventoscurtidos_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEventosCurtidos`
--

LOCK TABLES `tblEventosCurtidos` WRITE;
/*!40000 ALTER TABLE `tblEventosCurtidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblEventosCurtidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblFaixaEtaria`
--

DROP TABLE IF EXISTS `tblFaixaEtaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblFaixaEtaria` (
  `idFaixaEtaria` int NOT NULL AUTO_INCREMENT,
  `idade` varchar(5) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idFaixaEtaria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblFaixaEtaria`
--

LOCK TABLES `tblFaixaEtaria` WRITE;
/*!40000 ALTER TABLE `tblFaixaEtaria` DISABLE KEYS */;
INSERT INTO `tblFaixaEtaria` VALUES (1,'Livre','2022-05-31 13:39:34','2022-05-31 13:39:34'),(2,'+10','2022-05-31 13:39:41','2022-05-31 13:39:41'),(3,'+12','2022-05-31 13:39:45','2022-05-31 13:39:45'),(4,'+14','2022-05-31 13:39:49','2022-05-31 13:39:49'),(5,'+16','2022-05-31 13:39:53','2022-05-31 13:39:53'),(6,'+18','2022-05-31 13:39:57','2022-05-31 13:39:57');
/*!40000 ALTER TABLE `tblFaixaEtaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblImagensEventos`
--

DROP TABLE IF EXISTS `tblImagensEventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblImagensEventos` (
  `idImagensEvento` int NOT NULL AUTO_INCREMENT,
  `imagem` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idImagensEvento`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblimagenseventos_ibfk_1` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblImagensEventos`
--

LOCK TABLES `tblImagensEventos` WRITE;
/*!40000 ALTER TABLE `tblImagensEventos` DISABLE KEYS */;
INSERT INTO `tblImagensEventos` VALUES (1,'uploads/1654080068519magica.png','2022-06-01 10:41:08','2022-06-01 10:41:08',2),(2,'uploads/1654083352636corridakart2.jpeg','2022-06-01 11:35:52','2022-06-01 11:35:52',3);
/*!40000 ALTER TABLE `tblImagensEventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblIngressos`
--

DROP TABLE IF EXISTS `tblIngressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblIngressos` (
  `idIngresso` int NOT NULL AUTO_INCREMENT,
  `qrCode` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblVariedadeIngressoLoteIdVariedadeIngressoLote` int DEFAULT NULL,
  `tblCompraIdCompra` int DEFAULT NULL,
  PRIMARY KEY (`idIngresso`),
  KEY `tblVariedadeIngressoLoteIdVariedadeIngressoLote` (`tblVariedadeIngressoLoteIdVariedadeIngressoLote`),
  KEY `tblCompraIdCompra` (`tblCompraIdCompra`),
  CONSTRAINT `tblingressos_ibfk_1` FOREIGN KEY (`tblVariedadeIngressoLoteIdVariedadeIngressoLote`) REFERENCES `tblVariedadeIngressoLotes` (`idVariedadeIngressoLote`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblingressos_ibfk_2` FOREIGN KEY (`tblCompraIdCompra`) REFERENCES `tblCompras` (`idCompra`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblIngressos`
--

LOCK TABLES `tblIngressos` WRITE;
/*!40000 ALTER TABLE `tblIngressos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblIngressos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblIntermEventoAssuntos`
--

DROP TABLE IF EXISTS `tblIntermEventoAssuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblIntermEventoAssuntos` (
  `idIntermEventoAssunto` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblAssuntoIdAssunto` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idIntermEventoAssunto`),
  KEY `tblAssuntoIdAssunto` (`tblAssuntoIdAssunto`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblintermeventoassuntos_ibfk_1` FOREIGN KEY (`tblAssuntoIdAssunto`) REFERENCES `tblAssuntos` (`idAssunto`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblintermeventoassuntos_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblIntermEventoAssuntos`
--

LOCK TABLES `tblIntermEventoAssuntos` WRITE;
/*!40000 ALTER TABLE `tblIntermEventoAssuntos` DISABLE KEYS */;
INSERT INTO `tblIntermEventoAssuntos` VALUES (1,'2022-05-31 14:17:56','2022-05-31 14:17:56',1,1),(2,'2022-06-01 10:41:08','2022-06-01 10:41:08',17,2),(3,'2022-06-01 11:35:52','2022-06-01 11:35:52',26,3);
/*!40000 ALTER TABLE `tblIntermEventoAssuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblIntermEventoCelebridades`
--

DROP TABLE IF EXISTS `tblIntermEventoCelebridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblIntermEventoCelebridades` (
  `idIntermEventoCelebridade` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblCelebridadeIdCelebridade` int DEFAULT NULL,
  `tblEventoIdEvento` int DEFAULT NULL,
  PRIMARY KEY (`idIntermEventoCelebridade`),
  KEY `tblCelebridadeIdCelebridade` (`tblCelebridadeIdCelebridade`),
  KEY `tblEventoIdEvento` (`tblEventoIdEvento`),
  CONSTRAINT `tblintermeventocelebridades_ibfk_1` FOREIGN KEY (`tblCelebridadeIdCelebridade`) REFERENCES `tblCelebridades` (`idCelebridade`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tblintermeventocelebridades_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblIntermEventoCelebridades`
--

LOCK TABLES `tblIntermEventoCelebridades` WRITE;
/*!40000 ALTER TABLE `tblIntermEventoCelebridades` DISABLE KEYS */;
INSERT INTO `tblIntermEventoCelebridades` VALUES (1,'2022-05-31 14:17:56','2022-05-31 14:17:56',NULL,1),(2,'2022-06-01 10:41:08','2022-06-01 10:41:08',NULL,2);
/*!40000 ALTER TABLE `tblIntermEventoCelebridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblLotes`
--

DROP TABLE IF EXISTS `tblLotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblLotes` (
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
  CONSTRAINT `tbllotes_ibfk_1` FOREIGN KEY (`tblTipoIngressoIdTipoIngresso`) REFERENCES `tblTipoIngressos` (`idTipoIngresso`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tbllotes_ibfk_2` FOREIGN KEY (`tblEventoIdEvento`) REFERENCES `tblEventos` (`idEvento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblLotes`
--

LOCK TABLES `tblLotes` WRITE;
/*!40000 ALTER TABLE `tblLotes` DISABLE KEYS */;
INSERT INTO `tblLotes` VALUES (2,150,2,'2022-04-02','2022-06-02','03:00:00','23:59:00',1,'2022-06-02 12:51:48','2022-06-02 12:51:48',1,2);
/*!40000 ALTER TABLE `tblLotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblPerfils`
--

DROP TABLE IF EXISTS `tblPerfils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblPerfils` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblPerfils`
--

LOCK TABLES `tblPerfils` WRITE;
/*!40000 ALTER TABLE `tblPerfils` DISABLE KEYS */;
INSERT INTO `tblPerfils` VALUES (1,'Ordinário','ordinario@email.com','1234','uploads/1653996959494camaleao.jpeg','uploads/1653996959507pavao.jpeg','Tudo em cima!','2022-05-31 11:35:59','2022-05-31 11:35:59'),(2,'Entidade','entidade@email.com','1234','uploads/1653997286821panda.png','uploads/1653997286829doninha.jpeg','Somos a Entidade, caso não tenha percebido.','2022-05-31 11:41:26','2022-05-31 11:41:26'),(3,'RodrAlen','rodrigo.alencor@gmail.com','123',NULL,NULL,'Eu festa, e voce tambem #seAme','2022-06-02 12:11:40','2022-06-02 12:11:40');
/*!40000 ALTER TABLE `tblPerfils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblTipoCelebridades`
--

DROP TABLE IF EXISTS `tblTipoCelebridades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblTipoCelebridades` (
  `idTipoCelebridade` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoCelebridade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblTipoCelebridades`
--

LOCK TABLES `tblTipoCelebridades` WRITE;
/*!40000 ALTER TABLE `tblTipoCelebridades` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblTipoCelebridades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblTipoConta`
--

DROP TABLE IF EXISTS `tblTipoConta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblTipoConta` (
  `idTipoConta` int NOT NULL AUTO_INCREMENT,
  `nomeTipo` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoConta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblTipoConta`
--

LOCK TABLES `tblTipoConta` WRITE;
/*!40000 ALTER TABLE `tblTipoConta` DISABLE KEYS */;
INSERT INTO `tblTipoConta` VALUES (1,'Conta poupança','2022-05-31 11:39:22','2022-05-31 11:39:22'),(2,'Conta corrente','2022-05-31 11:39:28','2022-05-31 11:39:28');
/*!40000 ALTER TABLE `tblTipoConta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblTipoEventos`
--

DROP TABLE IF EXISTS `tblTipoEventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblTipoEventos` (
  `idTipoEvento` int NOT NULL AUTO_INCREMENT,
  `tipo` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblTipoEventos`
--

LOCK TABLES `tblTipoEventos` WRITE;
/*!40000 ALTER TABLE `tblTipoEventos` DISABLE KEYS */;
INSERT INTO `tblTipoEventos` VALUES (1,'Evento beneficente','2022-05-31 13:36:46','2022-05-31 13:36:46'),(2,'Palestra','2022-05-31 13:36:56','2022-05-31 13:36:56'),(3,'Seminário','2022-05-31 13:37:04','2022-05-31 13:37:04'),(4,'Curso Workshop','2022-05-31 13:37:18','2022-05-31 13:37:18'),(5,'Congresso','2022-05-31 13:37:31','2022-05-31 13:37:31'),(6,'Festival','2022-05-31 13:37:41','2022-05-31 13:37:41'),(7,'Show','2022-05-31 13:37:50','2022-05-31 13:37:50'),(8,'Exposição','2022-05-31 13:37:59','2022-05-31 13:37:59'),(9,'Sarau','2022-05-31 13:38:08','2022-05-31 13:38:08'),(10,'Campeonato','2022-05-31 13:38:16','2022-05-31 13:38:16'),(11,'Corrida','2022-05-31 13:38:23','2022-05-31 13:38:23'),(12,'Reunião','2022-05-31 13:38:32','2022-05-31 13:38:32'),(13,'Conferência','2022-05-31 13:38:39','2022-05-31 13:38:39'),(14,'Feira','2022-05-31 13:38:46','2022-05-31 13:38:46'),(15,'Sociais','2022-05-31 13:38:55','2022-05-31 13:38:55');
/*!40000 ALTER TABLE `tblTipoEventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblTipoIngressos`
--

DROP TABLE IF EXISTS `tblTipoIngressos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblTipoIngressos` (
  `idTipoIngresso` int NOT NULL AUTO_INCREMENT,
  `tipoIngresso` varchar(15) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idTipoIngresso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblTipoIngressos`
--

LOCK TABLES `tblTipoIngressos` WRITE;
/*!40000 ALTER TABLE `tblTipoIngressos` DISABLE KEYS */;
INSERT INTO `tblTipoIngressos` VALUES (1,'Gratuito','2022-06-02 12:51:37','2022-06-02 12:51:37'),(2,'Pago','2022-06-02 12:51:45','2022-06-02 12:51:45');
/*!40000 ALTER TABLE `tblTipoIngressos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblUsuarioComums`
--

DROP TABLE IF EXISTS `tblUsuarioComums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblUsuarioComums` (
  `idUsuarioComum` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `dataNasc` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `tblPerfilIdPerfil` int DEFAULT NULL,
  PRIMARY KEY (`idUsuarioComum`),
  KEY `tblPerfilIdPerfil` (`tblPerfilIdPerfil`),
  CONSTRAINT `tblusuariocomums_ibfk_1` FOREIGN KEY (`tblPerfilIdPerfil`) REFERENCES `tblPerfils` (`idPerfil`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblUsuarioComums`
--

LOCK TABLES `tblUsuarioComums` WRITE;
/*!40000 ALTER TABLE `tblUsuarioComums` DISABLE KEYS */;
INSERT INTO `tblUsuarioComums` VALUES (1,'Luis Sergio','2001-10-18','2022-05-31 11:35:59','2022-05-31 11:35:59',1),(2,'Rodrigo Alencor','2022-06-15','2022-06-02 12:11:40','2022-06-02 12:11:40',3);
/*!40000 ALTER TABLE `tblUsuarioComums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblVariedadeIngressoLotes`
--

DROP TABLE IF EXISTS `tblVariedadeIngressoLotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblVariedadeIngressoLotes` (
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
  CONSTRAINT `tblvariedadeingressolotes_ibfk_1` FOREIGN KEY (`tblLoteIdLote`) REFERENCES `tblLotes` (`idLote`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblVariedadeIngressoLotes`
--

LOCK TABLES `tblVariedadeIngressoLotes` WRITE;
/*!40000 ALTER TABLE `tblVariedadeIngressoLotes` DISABLE KEYS */;
INSERT INTO `tblVariedadeIngressoLotes` VALUES (2,320,'Esse ingresso dá direito a um tapa na cara','InfraIngressos',759.99,'2022-06-02 12:52:29','2022-06-02 12:52:29',2);
/*!40000 ALTER TABLE `tblVariedadeIngressoLotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblVerificacaoUsuarios`
--

DROP TABLE IF EXISTS `tblVerificacaoUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblVerificacaoUsuarios` (
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
  CONSTRAINT `tblverificacaousuarios_ibfk_1` FOREIGN KEY (`tblUsuarioComumIdUsuarioComum`) REFERENCES `tblUsuarioComums` (`idUsuarioComum`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblVerificacaoUsuarios`
--

LOCK TABLES `tblVerificacaoUsuarios` WRITE;
/*!40000 ALTER TABLE `tblVerificacaoUsuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblVerificacaoUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02 11:27:14
