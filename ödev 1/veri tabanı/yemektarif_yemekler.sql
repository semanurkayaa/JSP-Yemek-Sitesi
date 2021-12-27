-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: yemektarif
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `yemekler`
--

DROP TABLE IF EXISTS `yemekler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yemekler` (
  `idyemekler` int(11) NOT NULL AUTO_INCREMENT,
  `kategoriId` int(11) DEFAULT NULL,
  `resim` varchar(100) DEFAULT NULL,
  `yemekad` varchar(1000) DEFAULT NULL,
  `yemekmalzeme` varchar(1000) DEFAULT NULL,
  `yemekyapilis` varchar(1000) DEFAULT NULL,
  `video` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idyemekler`),
  UNIQUE KEY `idyemekler_UNIQUE` (`idyemekler`),
  KEY `fk_yemekler_kategori1_idx` (`kategoriId`),
  CONSTRAINT `fk_yemekler_kategori1` FOREIGN KEY (`kategoriId`) REFERENCES `kategori` (`idkategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yemekler`
--

LOCK TABLES `yemekler` WRITE;
/*!40000 ALTER TABLE `yemekler` DISABLE KEYS */;
INSERT INTO `yemekler` VALUES (1,1,'images\\about.png','MEYVELİ PASTA','4 yumurta,1 paket krem şanti, muz, çilek, 200 ml süt, 1 çay bardağı şeker,meyve jölesi, 1 paket kabartma tozu,1 paket vanilya ,3 su bardağı un','Önce yumurtaları çırpın daha sonrasında yumurtları çırpma işleminiz bittikten sonra şeker ekleyin, şekeri güzelce eritene kadar  çırpın. Bu çırpma işleminiz bittikten sonra süt , kabartma tozu, vanilya ve son olarak un ekleyin. 180 derece fırında 30 dakika pişrin. AFİYET OLSUN..','https://www.youtube.com/embed/ID3852oJ3VU'),(8,2,'images\\about.png','patates salatası','yujkl','jköl','https://www.youtube.com/embed/ID3852oJ3VU');
/*!40000 ALTER TABLE `yemekler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27 15:12:55
