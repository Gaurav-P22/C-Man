/*
SQLyog Ultimate v8.82 
MySQL - 5.1.50-community : Database - vehicle_managment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vehicle_managment` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehicle_managment`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `o_id` int(4) NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  `r_id` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `r_date` date DEFAULT NULL,
  UNIQUE KEY `o_id` (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`o_id`,`company`,`r_id`,`model`,`r_date`) values (2,'hyundai','ajay@gmail.com','aa kas','2016-03-08');

/*Table structure for table `c_reg` */

DROP TABLE IF EXISTS `c_reg`;

CREATE TABLE `c_reg` (
  `s_n` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `r_date` date DEFAULT NULL,
  UNIQUE KEY `s_n` (`s_n`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `c_reg` */

insert  into `c_reg`(`s_n`,`name`,`email`,`address`,`pin`,`city`,`state`,`phone`,`r_date`) values (3,'ajay yadav','ajay@gmail.com','jsk asa akska asa','1255','lucknow','up','21541','2016-03-08');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `typ` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`pass`,`typ`) values ('abc@gmail.com','ajay','D'),('ajay','ajay','A'),('srm@gmail.com','srm','D');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `r_id` int(4) NOT NULL AUTO_INCREMENT,
  `d_c` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `r_date` date DEFAULT NULL,
  UNIQUE KEY `r_id` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`r_id`,`d_c`,`name`,`email`,`address`,`pin`,`city`,`state`,`phone`,`r_date`) values (1,'honda','ajay','abc@gmail.com','asja ajsja qjsqj','12121','lucknow','up','121212','2016-03-08'),(2,'hyundai','srm','srm@gmail.com','jas asa aja jasja ','121112','lucknow','up','214452','2016-03-08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
