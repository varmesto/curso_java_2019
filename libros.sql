-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema libros
--

CREATE DATABASE IF NOT EXISTS libros;
USE libros;

--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `idCliente` int(10) unsigned NOT NULL auto_increment,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`idCliente`,`usuario`,`password`,`email`,`telefono`) VALUES 
 (1,'test1','test1','test1@gmail.com',22222),
 (2,'test2','test2','test2@gmail.com',3333),
 (3,'test3','test3','afas',444),
 (4,'profe','profe','sadasd',234),
 (5,'ere','ff','aseea',23),
 (6,'fulano','mipassword','dfsfs@.es',343434),
 (7,'fulano','mipassword','dfsfs@.es',343434),
 (8,'usuario_ejemplo','password_ejemplo','email@email.com',33333),
 (9,'miuser','mipass1','faddfs',3434),
 (10,'','','SADASD',0),
 (11,'DSF','DSF','SDFDF',0),
 (12,'','','ghhgf@',0),
 (13,'pepito','grillo','jajajaj',777777),
 (14,'persiste','persiste','ddd',34),
 (15,'pepito','grillo','jajajaj',777777),
 (16,'pepito','grillo','jajajaj',777777),
 (17,'mvc1','mvc1','sadas',1111),
 (18,'p1','p1','wwww',1111),
 (19,'jsfxx','jsfxx','eeeeee',44444),
 (20,'ewr','fdgdfgdf','ewrwe',666666),
 (21,'usuariotest','passwordtest','emailtest',111111),
 (22,'user_rest','pwd_rest','rest@gmail.com',2222),
 (23,'sa','sa','sa',22),
 (24,'usuario rest','pwdrest','email@rest.com',22222),
 (25,'usuario rest','pwdrest','email@rest.com',22222),
 (27,'ivan','ivan','iv',7678),
 (28,'lucas','grijander','pato',1234),
 (29,'cjava','cjava','eeee',4444),
 (30,'as1','as1','sss',2222),
 (31,'','','',0),
 (32,'fg','ss','gggg.jj@',7),
 (33,'js2','jsf2','ddd',4444),
 (34,'ciclo','ciclo','ciclo',333),
 (35,'spjpa','spjpa','spjpa',2),
 (36,'spjpa','spjpa','spjpa',56),
 (37,'spjpa2','spjpa2','spjpa2',6),
 (38,'springfly','springfly','springfly',111);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `libros`
--

DROP TABLE IF EXISTS `libros`;
CREATE TABLE `libros` (
  `isbn` int(10) unsigned NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `autor` varchar(45) default NULL,
  `precio` double NOT NULL,
  `paginas` int(10) unsigned default NULL,
  `idTema` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `libros`
--

/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` (`isbn`,`titulo`,`autor`,`precio`,`paginas`,`idTema`) VALUES 
 (888,'Java 8','Gomez',22,300,1),
 (900,'Java 11','hilton',34,300,1),
 (6723,'Windows 20103','pears',19,170,2),
 (8767,'word','roberts',14,123,4),
 (9999,'administración linux','angel lopez',30,370,2),
 (11123,'java2','antonio martin',30,400,1),
 (13667,'Machine Learning','Nelson',31,370,3),
 (27883,'Hadoop','Bryan',30,260,3),
 (43944,'programación python','engels',28,240,1),
 (232323244,'java','yo',10,0,1);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;


--
-- Definition of table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE `ofertas` (
  `idOferta` int(10) unsigned NOT NULL auto_increment,
  `texto` varchar(45) NOT NULL,
  PRIMARY KEY  (`idOferta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofertas`
--

/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
INSERT INTO `ofertas` (`idOferta`,`texto`) VALUES 
 (1,'5% en todos los libros de informática'),
 (2,'Gastos de envío gratis a partir de 50 eur.'),
 (3,'Los lunes dos libros al precio de uno');
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;


--
-- Definition of table `temas`
--

DROP TABLE IF EXISTS `temas`;
CREATE TABLE `temas` (
  `idTema` int(10) unsigned NOT NULL auto_increment,
  `tema` varchar(45) NOT NULL,
  PRIMARY KEY  (`idTema`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temas`
--

/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
INSERT INTO `temas` (`idTema`,`tema`) VALUES 
 (1,'programación'),
 (2,'sistemas operativos'),
 (3,'big data'),
 (4,'ofimatica');
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;


--
-- Definition of table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `idVEnta` int(10) unsigned NOT NULL auto_increment,
  `idCliente` int(10) unsigned NOT NULL,
  `idLibro` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  (`idVEnta`),
  KEY `FK_ventas_1` (`idLibro`),
  KEY `FK_ventas_2` (`idCliente`),
  CONSTRAINT `FK_ventas_1` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`isbn`),
  CONSTRAINT `FK_ventas_2` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ventas`
--

/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` (`idVEnta`,`idCliente`,`idLibro`,`fecha`) VALUES 
 (1,1,9999,'2010-09-01 11:49:21'),
 (2,1,11123,'2011-09-01 11:49:21'),
 (3,1,11123,'2012-09-01 11:49:21'),
 (4,1,11123,'2012-09-02 12:38:23'),
 (5,1,9999,'2012-09-02 12:38:23'),
 (6,1,8767,'2013-02-16 00:00:00'),
 (7,1,11123,'2015-02-16 00:00:00'),
 (8,1,9999,'2015-02-16 00:00:00'),
 (10,1,9999,'2016-06-05 00:00:00'),
 (11,1,900,'2018-08-13 11:29:10'),
 (12,1,43944,'2018-08-13 11:29:10');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;


--
-- Definition of procedure `librostema`
--

DROP PROCEDURE IF EXISTS `librostema`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `librostema`(IN t integer)
BEGIN
    select titulo from libros where idTema=t;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
