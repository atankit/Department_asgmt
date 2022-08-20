/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.36-log : Database - epdepart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`epdepart` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `epdepart`;

/*Table structure for table `tbldepart` */

DROP TABLE IF EXISTS `tbldepart`;

CREATE TABLE `tbldepart` (
  `did` varchar(50) NOT NULL,
  `dabout` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbldepart` */

insert  into `tbldepart`(`did`,`dabout`) values 
('Android ','Android developer'),
('Java','jsp'),
('PHP','sql'),
('Python','Python developer'),
('Sql ','Database Admin');

/*Table structure for table `tblemployee` */

DROP TABLE IF EXISTS `tblemployee`;

CREATE TABLE `tblemployee` (
  `eid` int(12) NOT NULL AUTO_INCREMENT,
  `ename` varchar(50) DEFAULT NULL,
  `edob` varchar(50) DEFAULT NULL,
  `ecity` varchar(50) DEFAULT NULL,
  `esalary` int(12) DEFAULT NULL,
  `did` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `tblemployee` */

insert  into `tblemployee`(`eid`,`ename`,`edob`,`ecity`,`esalary`,`did`) values 
(24,'ankit','26-jan-1999','Dehradun',0,'Java');

/*Table structure for table `tblprofessor` */

DROP TABLE IF EXISTS `tblprofessor`;

CREATE TABLE `tblprofessor` (
  `pid` int(12) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `pdob` varchar(50) DEFAULT NULL,
  `pcity` varchar(50) DEFAULT NULL,
  `psalary` int(12) DEFAULT NULL,
  `did` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

/*Data for the table `tblprofessor` */

insert  into `tblprofessor`(`pid`,`pname`,`pdob`,`pcity`,`psalary`,`did`) values 
(77,'Prof. Xyz','26-jan-1991','Dehradun',80000,'Java');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
