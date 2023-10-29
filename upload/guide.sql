/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - guide
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guide` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `guide`;

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`email`,`msg`) values ('fkmjcdm','nc@gmail.com','djcdcnj');

/*Table structure for table `guide` */

DROP TABLE IF EXISTS `guide`;

CREATE TABLE `guide` (
  `uname` varchar(30) DEFAULT NULL,
  `fn` varchar(30) DEFAULT NULL,
  `mn` varchar(30) DEFAULT NULL,
  `lm` varchar(30) DEFAULT NULL,
  `adhar` varchar(20) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `pswd` varchar(15) DEFAULT NULL,
  `cpswd` varchar(15) DEFAULT NULL,
  `mob` varchar(10) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `ctype` varchar(50) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `cvv` varchar(5) DEFAULT NULL,
  `pack` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guide` */

insert  into `guide`(`uname`,`fn`,`mn`,`lm`,`adhar`,`email`,`pswd`,`cpswd`,`mob`,`addr`,`city`,`pin`,`photo`,`ctype`,`cno`,`cvv`,`pack`,`status`) values ('anandi','anand','k','gupta','922384789','anand@gmail.com','321','321','345678909','khadra','lucknow','226020','anand.jpg','Credit Card','2897654321','432','Diamont Pack 1500â‚¹ 20 Tourist','paid'),('dulles','duleshwar','das','vaishnav','9293939839','dulara9044@gmail.com','123','123','345455565','adilnagar','lucknow','4456787','IMG_20170206_181933.jpg','Credit Card','23456788','123','Golden Pack 800â‚¹ 10 Tourist','paid');

/*Table structure for table `guide_msg` */

DROP TABLE IF EXISTS `guide_msg`;

CREATE TABLE `guide_msg` (
  `email` varchar(40) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL,
  `gemail` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guide_msg` */

insert  into `guide_msg`(`email`,`msg`,`gemail`) values ('hen@gmail.com','hello','anand@gmail.com'),('hen@gmail.com','yeah sure','anand@gmail.com');

/*Table structure for table `tourist` */

DROP TABLE IF EXISTS `tourist`;

CREATE TABLE `tourist` (
  `uname` varchar(30) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `pswd` varchar(15) DEFAULT NULL,
  `cpswd` varchar(15) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` varchar(8) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tourist` */

insert  into `tourist`(`uname`,`country`,`fname`,`mname`,`lname`,`passport`,`email`,`pswd`,`cpswd`,`mobile`,`address`,`city`,`pin`,`photo`) values ('herry','England','henry','herald','well','2930089339','hen@gmail.com','54321','54321','544434333','201,plaza','london','93833','arjun.jpg'),('johny','America','john','jony','hit','923998348','john@gmail.com','1234','1234','98765432','15,street','new york','12349','dul ph.jpg');

/*Table structure for table `tourist_msg` */

DROP TABLE IF EXISTS `tourist_msg`;

CREATE TABLE `tourist_msg` (
  `email` varchar(40) DEFAULT NULL,
  `msg` varchar(100) DEFAULT NULL,
  `temail` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tourist_msg` */

insert  into `tourist_msg`(`email`,`msg`,`temail`) values ('anand@gmail.com','hello','hen@gmail.com'),('anand@gmail.com','want to visit imambada','hen@gmail.com'),('anand@gmail.com','somebody help me','john@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
