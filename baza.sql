/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.26 : Database - klubovi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`klubovi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `klubovi`;

/*Table structure for table `klub` */

DROP TABLE IF EXISTS `klub`;

CREATE TABLE `klub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) DEFAULT NULL,
  `adresa` varchar(100) NOT NULL,
  `radno_vreme` varchar(20) NOT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `klub` */

insert  into `klub`(`id`,`naziv`,`adresa`,`radno_vreme`,`rating`) values 
(1,'gotikrg','beton halafsg','esrg',3.00),
(4,'neka pesma','neka','23:00 - 05:00',4.00);



/*Table structure for table `zanr` */

DROP TABLE IF EXISTS `zanr`;

CREATE TABLE `zanr` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `zanr` */

insert  into `zanr`(`id`,`naziv`) values 
(1,'pop'),
(3,'house'),
(9,'qeqrw');

/*Table structure for table `klub_zanr` */

DROP TABLE IF EXISTS `klub_zanr`;

CREATE TABLE `klub_zanr` (
  `klub_id` bigint NOT NULL,
  `zanr_id` bigint NOT NULL,
  PRIMARY KEY (`klub_id`,`zanr_id`),
  KEY `zanr_id` (`zanr_id`),
  CONSTRAINT `klub_zanr_ibfk_1` FOREIGN KEY (`klub_id`) REFERENCES `klub` (`id`) ON DELETE CASCADE,
  CONSTRAINT `klub_zanr_ibfk_2` FOREIGN KEY (`zanr_id`) REFERENCES `zanr` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `klub_zanr` */

insert  into `klub_zanr`(`klub_id`,`zanr_id`) values 
(1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
