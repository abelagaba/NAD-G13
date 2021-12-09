-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vaccine_administration_tracker
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bookings` (
  `BookingID` int(11) NOT NULL,
  `PatientID` int(11) DEFAULT NULL,
  `FName` varchar(25) DEFAULT NULL,
  `LName` varchar(25) DEFAULT NULL,
  `Time` time NOT NULL,
  `Date` date DEFAULT NULL,
  `HealthCentre` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,7,'mike','opio','05:00:00','2021-12-20','kibuli health centre'),(222,2222,'222','2222','02:00:00','2021-12-03','222222');
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recieved_Vaccines`
--

DROP TABLE IF EXISTS `Recieved_Vaccines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recieved_Vaccines` (
  `NIN` varchar(23) DEFAULT NULL,
  `FName` varchar(23) DEFAULT NULL,
  `LName` varchar(23) DEFAULT NULL,
  `HealthCentre` varchar(23) DEFAULT NULL,
  `Vaccine` varchar(23) DEFAULT NULL,
  `Batch_Number` varchar(23) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Vaccine_Amount` varchar(25) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111112 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recieved_Vaccines`
--

LOCK TABLES `Recieved_Vaccines` WRITE;
/*!40000 ALTER TABLE `Recieved_Vaccines` DISABLE KEYS */;
INSERT INTO `Recieved_Vaccines` VALUES (NULL,'111111','11111','1111','1111','1111','2011-11-11','2021-12-10',111111);
/*!40000 ALTER TABLE `Recieved_Vaccines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vaccinated_Patients`
--

DROP TABLE IF EXISTS `Vaccinated_Patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vaccinated_Patients` (
  `PatientID` varchar(25) NOT NULL,
  `NIN` varchar(25) NOT NULL,
  `FName` varchar(25) NOT NULL,
  `LName` varchar(25) NOT NULL,
  `HealthCentre` varchar(25) NOT NULL,
  `VaccineAdministered` varchar(25) NOT NULL,
  `VaccineBatchNumber` varchar(25) NOT NULL,
  `DateAdministered` varchar(25) DEFAULT NULL,
  `DosesAdministered` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `NIN` (`NIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vaccinated_Patients`
--

LOCK TABLES `Vaccinated_Patients` WRITE;
/*!40000 ALTER TABLE `Vaccinated_Patients` DISABLE KEYS */;
INSERT INTO `Vaccinated_Patients` VALUES ('1','123456789','John','Pombe','Mulago Hospital','Pfizer','ef23rvf3t3ghg45y5trfg','2021-12-03','1'),('10','NIN10NIN','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1'),('11','22323edsfydfd','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1'),('12','111212','121212','1212121212','12121','12121','12112','2021-12-09','1'),('13','qwqwqwqwqqsqsqs','qwqwqw','qwqwqw','qwqwq','Pfizer','asqasasqwdswdwd','2021-12-04','1'),('14','ewwdwdw','dwd','wdwd','wdwd','wdwdw','wdwdwd','2021-12-04','1'),('15','ewwdwdsdw','dwd','wdwd','wdwd','wdwdw','wdwdwd','2021-12-04','1'),('16','ewwdwddsdw','dwd','wdwd','wdwd','wdwdw','wdwdwd','2021-12-04','1'),('17','wewewewew','ewew','ewewe','wewewe','wewewe','ewewe','2021-12-07','1'),('18','wewewewewd','ewew','ewewe','wewewe','wewewe','ewewe','2021-12-07','1'),('19','ffffffff','ewew','ewewe','wewewe','wewewe','ewewe','2021-12-07','1'),('2','1212212','1212121212','121212','12121','21212','QWEQW','2021-12-09','1'),('3','1212212s','1212121212','121212','12121','21212','QWEQW','2021-12-09','1'),('33','1212212sd','1212121212','121212','12121','21212','QWEQW','2021-12-09','1'),('4','1212212sdr','1212121212','121212','12121','21212','QWEQW','2021-12-09','1'),('45','wwwdewe','wewew','we','ewe','wewewe','ewe','2021-12-22','1'),('48','1212212sdrd','1212121212','121212','12121','21212','QWEQW','2021-12-09','1'),('5','22323e','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1'),('6','22323ed','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1'),('7','22323edf','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1'),('767','NIN','John','Mande','Zirobba','Pfizer','BatchNo','2021-12-05','2'),('769','NIN9','John','Mande','Zirobwe','Pfizer','BatchNo','2021-12-05','2'),('8','22323edfy','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1'),('9','22323edfydf','2322e','edefrfe','efrfrtrt','ewewe','23e33rr','2021-12-16','1');
/*!40000 ALTER TABLE `Vaccinated_Patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `fullname` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('wsdwdwd','wdwd','dwdwwwwwwwwwwd','wdwdw@dfd.fgf',1),('jose','jose','joseph','jose@jose.jose',2),('jose','jose','joseph','jose@jose.jose',3),('wsdwdwd','wdwd','dwdwwwwwwwwwwd','wdwdw@dfd.fgf',4);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `fullname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `Health_Centres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Health_Centres` (
  `centre` varchar(23) DEFAULT NULL,
  `loc` varchar(23) DEFAULT NULL,
  `vaccinated` varchar(23) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111112 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Health_Centres`
--

LOCK TABLES `Health_Centres` WRITE;
/*!40000 ALTER TABLE `Health_Centres` DISABLE KEYS */;
INSERT INTO `Health_Centres` VALUES ('revef','tvcx','yes',1),('bhfdc','bdcx','rwvx',2),('vsdxz','ewdac','bgr',3),('bvxh','bcxxx','hgvdd',4),('hgdvs','gdvs','yes',5);
/*!40000 ALTER TABLE `Health_Centres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vaccine_Needs`
--

DROP TABLE IF EXISTS `Vaccine_Needs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vaccine_Needs` (
  `centre` varchar(23) DEFAULT NULL,
  `nop` varchar(23) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111112 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vaccine_Needs`
--

LOCK TABLES `Vaccine_Needs` WRITE;
/*!40000 ALTER TABLE `Vaccine_Needs` DISABLE KEYS */;
INSERT INTO `Vaccine_Needs` VALUES ('weggr','3000',1),('rege','3998',2),('bdsb','3256',3),('dsbg','2456',4),('vasd','2464',5);
/*!40000 ALTER TABLE `Vaccine_Needs` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 22:14:34
