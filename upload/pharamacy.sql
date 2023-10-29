/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - pharmacy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pharmacy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pharmacy`;

/*Table structure for table `adm_login` */

DROP TABLE IF EXISTS `adm_login`;

CREATE TABLE `adm_login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adm_login` */

insert  into `adm_login`(`email`,`password`) values ('anand@gmail.com ','admin');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(30) DEFAULT NULL,
  `contact` decimal(10,0) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`contact`,`email`,`message`) values ('anandgupta','8529637415','aaa@gmail.com','awtertfghuoipk'),('anand','234567','aqadfq@gmail.com','drfgthujol'),('anandgupta','1234568888','aaayhgf@gmail.com','fgthjul');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `name` varchar(30) DEFAULT NULL,
  `contact` decimal(10,0) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`name`,`contact`,`email`,`message`) values ('p','9451159998','p@gmail.com','serdfgh'),('wsdrfcg','1234565671','rajajajacfgvhbj@gmail.com','dfgvhjnlm;'),('sumit','1234567789','s@gmail.com','esdrtfybhujopl'),('shpra','9451159995','s@gmal.com','ertfyguhj'),('anand','7418529638','sass@gmail.com','sdfgthuj'),('shalu','7894622122','sha@gmail.com','dfgyhuj');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`name`,`email`,`password`) values ('rtfghbjnml','aa123a@gmail.com','123'),('andi','aaa@gmail.com','1234'),('cfgvhbjnm','aaaqqrddftgqq@gmail.com','123'),('anandgupta','aaarghj@gmail.com','123'),('qwe','aaauuu@gmail.com','123'),('sumit','aaga@gmail.com','123'),('sumittyu','aarsfgha@gmail.com','123'),('anand','anandg@gmail.com','1234'),('sumit','ashedfg@gmail.com','123'),('raj','ass@gmail.com','123'),('judcujnwed','auygdcyaa@gmail.com','123'),(' jhgfd','brgvfcs@gmail.com','123'),('cncndncd','ds@gmail.com','1234'),('dullu','dullu@gmail.com','123'),('ghjuml','ghj@gmail.com','123'),('p','p@gmail.com','123'),('sumit','qwertyfgh@gmail.com','123'),('raja','raj@gmail.com','1234'),('AWSEDRFG','s567@gmail.com','123'),('sumit','s@gmail.com','1236'),('shpra','s@gmal.com','123'),('fghjnm','sfghj@gmail.com','12'),('shalu','sha@gmail.com','123'),('sumittefvdc','sjnhbgvf@gmail.com','123'),('ugbjh','stnhrbgv@gmail.com','123'),('edrtfgyhuj','stntfghrbgv@gmail.com','111'),('fvgbhjn','xdcfgvhb@gmail.com','123'),('gyuhjnum','yuhjuol@gmail.com','123');

/*Table structure for table `medicine` */

DROP TABLE IF EXISTS `medicine`;

CREATE TABLE `medicine` (
  `mname` varchar(30) DEFAULT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `mg` varchar(10) DEFAULT NULL,
  `stock` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `medicine` */

insert  into `medicine`(`mname`,`cname`,`price`,`mg`,`stock`) values ('pcm','erdtfygu','10','200','109'),('multvitami','fgyhu','15','200','490'),('liv 52','tfg','20','200','490'),('combiflame','ygh','25','200','486'),('bicasul','dtrfgyu','30','200','490'),('corex','coco','15','75','168'),('decold total','qwer','15','200','0'),('','','','',''),('','','','','');

/*Table structure for table `order1` */

DROP TABLE IF EXISTS `order1`;

CREATE TABLE `order1` (
  `name2` varchar(30) DEFAULT NULL,
  `medname` varchar(50) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `pincode` decimal(6,0) DEFAULT NULL,
  `quantity` decimal(5,0) DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order1` */

insert  into `order1`(`name2`,`medname`,`address`,`pincode`,`quantity`,`image`) values ('polk,jm','ctfgjnm','v bhknm','23456','2','./IMG-20170521-WA0047.jpg'),('','',NULL,NULL,NULL,'./null'),('','',NULL,NULL,NULL,'./null'),('','',NULL,NULL,NULL,'./null'),(NULL,NULL,NULL,NULL,NULL,'./null');

/*Table structure for table `order2` */

DROP TABLE IF EXISTS `order2`;

CREATE TABLE `order2` (
  `date` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order2` */

insert  into `order2`(`date`,`email`,`mname`,`qty`,`total`) values ('2018-04-14','s@gmail.com','pcm','15','150'),('','aaa@gmail.com','pcm','3','30'),('2018-02-14','aaa@gmail.com','corex','2','30'),(NULL,'aaa@gmail.com','corex','30','450'),(NULL,'aaa@gmail.com','decold total','10','150'),(NULL,'aaga@gmail.com','corex','30','450'),(NULL,'aaga@gmail.com','corex','20','300'),(NULL,'aaga@gmail.com','corex','20','300'),(NULL,'aaga@gmail.com','corex','2','30'),(NULL,'aaga@gmail.com','corex','1','15'),('2018-04-14','o','u','0','0'),('Sat Apr 14 13:52:53 GET 2018','aaga@gmail.com','pcm','2','20'),('Sat Apr 14 14:22:03 GET 2018','aaga@gmail.com','decold total','3','45'),('Sat Apr 14 19:47:23 GET 2018','aaga@gmail.com','pcm','500','5000'),('Sat Apr 14 19:52:11 GET 2018','aaga@gmail.com','pcm','500','5000'),('Sat Apr 14 19:52:11 GET 2018','aaga@gmail.com','pcm','20','200'),('Sat Apr 14 19:52:11 GET 2018','aaga@gmail.com','pcm','600','6000'),('Sat Apr 14 19:52:11 GET 2018','aaga@gmail.com','decold total','500','7500'),('Sat Apr 14 19:59:26 GET 2018','aaga@gmail.com','pcm','10','100'),('Sat Apr 14 19:59:26 GET 2018','aaga@gmail.com','pcm','20','200'),('Sat Apr 14 19:59:26 GET 2018','aaga@gmail.com','pcm','15','150'),('Sat Apr 14 19:59:26 GET 2018','aaga@gmail.com','decold total','15','225'),('Sat Apr 14 20:04:14 GET 2018','aaga@gmail.com','decold total','10','150'),('Sat Apr 14 20:04:14 GET 2018','aaga@gmail.com','pcm','400','4000'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','250','2500'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','decold total','174','2610'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','10','100'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','3','30'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','30','300'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','10','100'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 00:33:52 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 00:39:25 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 01:02:16 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 01:02:16 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 01:02:16 GET 2018','aaga@gmail.com','pcm','20','200'),('Sun Apr 15 01:02:16 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 01:02:39 GET 2018','aaga@gmail.com','pcm','2','20'),('Sun Apr 15 08:50:53 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 08:50:53 GET 2018','aaga@gmail.com','pcm','10','100'),('Sun Apr 15 08:50:53 GET 2018','aaga@gmail.com','pcm','20','200'),('Sun Apr 15 09:09:36 GET 2018','aaga@gmail.com','pcm','20','200'),('Sun Apr 15 16:37:25 GET 2018','aaga@gmail.com','corex','200','3000'),('Sun Apr 15 18:14:15 GET 2018','aaga@gmail.com','pcm','30','300'),('Sun Apr 15 22:43:18 GET 2018','aaga@gmail.com','pcm','10','100'),('Sun Apr 15 22:43:18 GET 2018','aaga@gmail.com','combiflame','1','25'),('Sun Apr 15 22:43:18 GET 2018','aaga@gmail.com','combiflame','1','25'),('Sun Apr 15 22:51:58 GET 2018','aaga@gmail.com','pcm','10','100'),('Sun Apr 15 22:51:58 GET 2018','aaga@gmail.com','corex','15','225'),('Sun Apr 15 22:51:58 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 22:51:58 GET 2018','aaga@gmail.com','combiflame','2','50'),('Sun Apr 15 23:31:57 GET 2018','aaga@gmail.com','pcm','1','10'),('Sun Apr 15 23:31:57 GET 2018','aaga@gmail.com','pcm','20','200'),('Mon Apr 23 17:39:02 GET 2018','aa123a@gmail.com','pcm','15','150'),('Tue Apr 02 19:04:46 GET 2019','dullu@gmail.com','pcm','20','200');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `email` varchar(30) DEFAULT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `qty` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`email`,`mname`,`qty`,`total`) values ('anandg@gmail.com','pcm','5','50'),('anandg@gmail.com','pcm','2','20'),('aaa@gmail.com','decold total','10','150'),('aaga@gmail.com','corex','2','30');

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `id` varchar(50) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reply` */

insert  into `reply`(`id`,`message`) values ('1235','ll'),('s@gmail.com',' serdtfgyhuj'),('s@gmail.com',' nshaal'),('p@gmail.com',' aweesrdtygh');

/*Table structure for table `showorder` */

DROP TABLE IF EXISTS `showorder`;

CREATE TABLE `showorder` (
  `email` varchar(30) DEFAULT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `qty` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `showorder` */

/*Table structure for table `sign_up` */

DROP TABLE IF EXISTS `sign_up`;

CREATE TABLE `sign_up` (
  `u_name` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `contact` decimal(10,0) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sign_up` */

insert  into `sign_up`(`u_name`,`name`,`email`,`contact`,`address`,`password`) values ('anand','rtfghbjnml','aa123a@gmail.com','1234561232','dfgvhbjn','123'),('andi','anandgupta','aaa@gmail.com','7418528524','asdfghjkl;','1234'),('sumit','cfgvhbjnm','aaaqqrddftgqq@gmail.com','7897897898','dftgyhuj','123'),('sumit','anandgupta','aaarghj@gmail.com','7894561235','serdtfhujml','123'),('anandghj','qwe','aaauuu@gmail.com','1234567900','asdfghjkl;fghjbnlm','123'),('dullu','sumit','aaga@gmail.com','7418524565','drtfgyhujo','123'),('p12','p','p@gmail.com','9451159989','4drtfygyuh','123'),('raj','raja','raj@gmail.com','123456','erdtfghbjnm','1234'),('12','shpra','s@gmal.com','9451159995','eertfygh','123'),('dullu','fghjnm','sfghj@gmail.com','7418527414','dfgvhbjn','12'),('Shalu','shalu','sha@gmail.com','7412512345','gomit nagar','123'),('sumit','sumittefvdc','sjnhbgvf@gmail.com','1473695825','tbrgvfecd','123'),('sumit','ugbjh','stnhrbgv@gmail.com','7474747474','setrfghujol','123'),('anandgupta','edrtfgyhuj','stntfghrbgv@gmail.com','1231231595','dfghjl','111'),('dulluaaa','fvgbhjn','xdcfgvhb@gmail.com','1234567897','edrtfyghuj','123'),('duleshwar','gyuhjnum','yuhjuol@gmail.com','1472583697','rftgyhujml','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
