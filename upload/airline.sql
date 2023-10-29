/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - airline
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`airline` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `airline`;

/*Table structure for table `addemp` */

DROP TABLE IF EXISTS `addemp`;

CREATE TABLE `addemp` (
  `id` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `mobile` varbinary(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `aadhar` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addemp` */

insert  into `addemp`(`id`,`name`,`mail`,`mobile`,`address`,`aadhar`,`password`) values ('11111','','','','','',''),('11112','Anand','aa@gmail.com','7788996633','agk,pookm','123123123123','123');

/*Table structure for table `addflight` */

DROP TABLE IF EXISTS `addflight`;

CREATE TABLE `addflight` (
  `fid` varchar(30) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `charge` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `departtime` varchar(30) DEFAULT NULL,
  `arrivaltime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addflight` */

insert  into `addflight`(`fid`,`fname`,`source`,`destination`,`charge`,`date`,`departtime`,`arrivaltime`) values ('123','air123','lucknow','chandigrah','6000','2019-01-31','18:55','19:55'),('159','Airindia786','dd','kk','9000','2019-02-06','15:55','17:58');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `fid` varchar(30) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `source` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `charge` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `dtime` varchar(30) DEFAULT NULL,
  `ttime` varchar(30) DEFAULT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `adhar` varchar(30) DEFAULT NULL,
  `passport` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `type` varchar(10) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log` */

insert  into `log`(`type`,`uid`,`password`) values ('admin','55556','159'),('employee','55557','111'),('customer','55558','112'),('customer','55559','123'),('employee','11112','147'),('employee','11112','123');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `uid` decimal(10,0) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `mail` varchar(30) NOT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uid`,`mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`uid`,`name`,`mail`,`mobile`,`address`,`password`) values ('55558',NULL,'a@gmail.com',NULL,NULL,NULL),('55559','dullu','dddd@gmail.com','7788996633',';zdioffhgusafhg','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
