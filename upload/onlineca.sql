-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2014 at 07:37 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlineca`
--

-- --------------------------------------------------------

--
-- Table structure for table `acount_mstr`
--

CREATE TABLE IF NOT EXISTS `acount_mstr` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `afname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `login` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pswd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `acount_mstr`
--

INSERT INTO `acount_mstr` (`aid`, `aname`, `afname`, `dob`, `address`, `phone`, `email`, `doj`, `login`, `pswd`) VALUES
(1, 'david', 'bush', '1980-09-09', 'lucknow', '89799', 'david@bush.com', '2011-09-09', 'david', '123456'),
(2, 'dara', 'gurpreet', '1988-03-10', 'delhi', '23456', 'dara@dara.lk', '2013-03-13', 'dara', '123456'),
(3, 'Manohar', 'abc', '0000-00-00', 'lko', '9898989898', 'abc@gmail.com', '0000-00-00', 'maddy', '123'),
(4, 'Ajay', 'abc', '0000-00-00', 'lko', '9898989898', 'abc@gmail.com', '0000-00-00', 'ajay', '123'),
(5, 'Shalabh', 'abc', '2014-05-06', 'Lko', '989898889', 'abc@gmail.com', '2014-05-27', 'shalabh', '123');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `login` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pswd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`login`, `pswd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cust_dwnld`
--

CREATE TABLE IF NOT EXISTS `cust_dwnld` (
  `cid` int(11) DEFAULT NULL,
  `sub` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dwnld` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `FK_cust_dwnld` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cust_dwnld`
--

INSERT INTO `cust_dwnld` (`cid`, `sub`, `dwnld`) VALUES
(1, 'MRI Report', './test.doc'),
(2, 'Tom & Jerry', './test.doc'),
(2, 'Tom & Jerry', './test.doc');

-- --------------------------------------------------------

--
-- Table structure for table `cust_mstr`
--

CREATE TABLE IF NOT EXISTS `cust_mstr` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cfname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pswd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cust_mstr`
--

INSERT INTO `cust_mstr` (`cid`, `cname`, `cfname`, `address`, `dob`, `phone`, `email`, `login`, `pswd`) VALUES
(1, 'ajendra', 'hhjg', 'sitapur', '1998-03-18', '984657738', 'chandan.tripathi41@in.com', 'ajendra', '123456'),
(2, 'rakesh', 'mahesh', 'kanpur', '1920-03-10', '989898989', 'asa@13.lk', 'rakesh', '123456'),
(3, 'sharba', 'ddf', 'gdfgd', '2013-04-17', '4353', 'asa@13.lk', 'sharba', '123456'),
(4, 'Aman Verma', 'R K Verma', 'Lko', '1994-01-04', '9898989898', 'aman@gmail.com', 'aman123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cust_query`
--

CREATE TABLE IF NOT EXISTS `cust_query` (
  `cqid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `qury_sub` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `replied` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`cqid`),
  KEY `FK_cust_query` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=105 ;

--
-- Dumping data for table `cust_query`
--

INSERT INTO `cust_query` (`cqid`, `cid`, `qury_sub`, `detail`, `replied`) VALUES
(100, 1, 'income tax', 'dsadasdadsad asdadda', '0'),
(101, 3, 'apologize  and mone back letter', 'sfsvc cdgdf gfd cd fdbvfd', '0'),
(103, 2, 'test', 'testing', '0'),
(104, 2, 'test', 'testing', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cust_upld`
--

CREATE TABLE IF NOT EXISTS `cust_upld` (
  `upld_no` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `sub` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filepath` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewed` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`upld_no`),
  KEY `FK_cust_upld` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=104 ;

--
-- Dumping data for table `cust_upld`
--

INSERT INTO `cust_upld` (`upld_no`, `cid`, `sub`, `filepath`, `viewed`) VALUES
(100, 1, 'MRI Report', 'F:\\pankaj\\OnlineCA\\build\\web\\df.txt', '0'),
(101, 1, 'FTP Details', './test.doc', '0'),
(102, 2, 'MRI Report', './test.doc', '0'),
(103, 3, 'FTP Details', './test.doc', '0');

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave`
--

CREATE TABLE IF NOT EXISTS `emp_leave` (
  `empid` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `total_days` tinyint(4) DEFAULT NULL,
  `allowed` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  KEY `FK_emp_leave` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emp_leave`
--

INSERT INTO `emp_leave` (`empid`, `from_date`, `to_date`, `total_days`, `allowed`) VALUES
(1, '2013-03-13', '2013-03-15', 3, '0'),
(1, '2014-05-06', '2014-05-08', 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `emp_mstr`
--

CREATE TABLE IF NOT EXISTS `emp_mstr` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `efname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `designation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pswd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `emp_mstr`
--

INSERT INTO `emp_mstr` (`empid`, `ename`, `efname`, `dob`, `address`, `phone`, `email`, `doj`, `designation`, `login`, `pswd`) VALUES
(1, 'Faizal', 'hdhd', '1985-08-27', 'adsa', '2342', 'aS@KL.IN', '2010-08-27', 'manager', 'faizal', '123456'),
(2, 'suresh', 'mahesh', '1985-08-27', 'kanpur', '34', 'suresh@mahesh.com', '2010-08-27', 'HR', 'suresh', '123456'),
(3, 'rohan', 'sohan', '1988-03-10', 'delhi', '23456', 'rohan@sohan.com', '2013-03-13', 'executive', 'rohan', '123456'),
(4, 'Ajju', 'abc', '0000-00-00', 'lko', '9898989898', 'abc@gmail.com', '0000-00-00', 'HR', 'ajju', '123'),
(5, 'Ankaj Sharma', 'Amit Sharma', '2014-05-01', 'Lko', '989898889', 'ankaj@gmail.com', '2014-05-30', 'Technician', 'ankaj123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `emp_sal`
--

CREATE TABLE IF NOT EXISTS `emp_sal` (
  `empid` int(11) DEFAULT NULL,
  `basic` decimal(8,2) DEFAULT NULL,
  `ta` decimal(8,2) DEFAULT NULL,
  `da` decimal(8,2) DEFAULT NULL,
  `other` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `smonth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  KEY `FK_emp_sal` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emp_sal`
--

INSERT INTO `emp_sal` (`empid`, `basic`, `ta`, `da`, `other`, `total`, `smonth`, `issue_date`) VALUES
(1, '500.30', '30.00', '20.00', '10.35', '560.65', 'January', '2013-01-10'),
(1, '500.30', '30.00', '20.00', '10.35', '560.65', 'February', '2013-02-11'),
(2, '4000.00', '2000.00', '2000.00', '5000.00', '13000.00', 'January', '2014-01-03'),
(2, '4000.00', '2000.00', '2000.00', '5000.00', '13000.00', 'February', '2014-02-06'),
(3, '6000.00', '2000.00', '2000.00', '5000.00', '15000.00', 'January', '2014-01-08'),
(3, '5000.00', '2000.00', '2000.00', '5000.00', '14000.00', 'February', '2014-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_dwnld`
--

CREATE TABLE IF NOT EXISTS `schedule_dwnld` (
  `sub` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `download` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schedule_dwnld`
--

INSERT INTO `schedule_dwnld` (`sub`, `detail`, `download`) VALUES
('Test', 'Test', 'to/download/ba1r2013.pdf'),
('BA Regular Student', 'Scheme', 'to/download/ba1_30april2013.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `stu_fee`
--

CREATE TABLE IF NOT EXISTS `stu_fee` (
  `sid` int(11) DEFAULT NULL,
  `fee` decimal(8,2) DEFAULT NULL,
  `paid` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  `paid_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  KEY `FK_stu_fee` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stu_fee`
--

INSERT INTO `stu_fee` (`sid`, `fee`, `paid`, `paid_date`, `due_date`) VALUES
(1, '1500.00', '0', NULL, '2013-03-26'),
(2, '3500.00', '1', '2013-03-19', NULL),
(3, '5000.00', '1', '2014-05-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stu_mstr`
--

CREATE TABLE IF NOT EXISTS `stu_mstr` (
  `sid` int(4) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pswd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stu_mstr`
--

INSERT INTO `stu_mstr` (`sid`, `sname`, `sfname`, `address`, `dob`, `phone`, `email`, `login`, `pswd`) VALUES
(1, 'chandan', 'sm', 'lucknow', '1985-07-25', '8687974335', 'chandan.tripathi41@gmail.com', 'chandan', '123456'),
(2, 'pankaj', NULL, 'lucknow', '1984-02-14', '9839434821', 'pankaj.misra009@gmail.com', 'pankaj', '123456'),
(3, 'Himanshu', 'Ajeet Singh', 'Lko', '1992-05-07', '9898989898', 'aman@gmail.com', 'himanshu123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `stu_query`
--

CREATE TABLE IF NOT EXISTS `stu_query` (
  `sqid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `qury_sub` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `replied` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`sqid`),
  KEY `FK_stu_query` (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=108 ;

--
-- Dumping data for table `stu_query`
--

INSERT INTO `stu_query` (`sqid`, `sid`, `qury_sub`, `detail`, `replied`) VALUES
(100, 2, 'ddfsf', 'XZ', '0'),
(101, 1, 'MRI Report', 'jfdkfdkfnk dafn n sdf sdjf h', '1'),
(102, 1, 'MRI Report', 'jfdkfdkfnk dafn n sdf sdjf h', '1'),
(103, 2, 'ddfsf', 'XZ', '0'),
(104, 2, 'ddfsf', 'XZ', '0'),
(105, 2, 'ddfsf', 'XZ', '0'),
(106, 1, 'FTP Details', 'fdgffhff', '0'),
(107, 1, 'Test', 'Testing this page..........', '0');

-- --------------------------------------------------------

--
-- Table structure for table `to_mstr`
--

CREATE TABLE IF NOT EXISTS `to_mstr` (
  `toid` int(11) NOT NULL AUTO_INCREMENT,
  `toname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tofname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `addres` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pswd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`toid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `to_mstr`
--

INSERT INTO `to_mstr` (`toid`, `toname`, `tofname`, `dob`, `addres`, `phone`, `doj`, `email`, `login`, `pswd`) VALUES
(1, 'salman', 'rahman', '1990-09-09', 'kanpur', NULL, '2010-09-09', 'to@to.in', 'salman', '123456'),
(2, 'meena', 'zubair', '2013-02-27', 'delhi', '23456', '1994-03-02', 'meena@zubair.com', 'meena', '123456'),
(3, 'Shiv', 'abc', '0000-00-00', 'lko', '9898989898', '0000-00-00', 'abc@gmail.com', 'shiv', '123'),
(4, 'Amit Singh', 'Ankaj Singh', '2014-05-06', 'Lko', '989898889', '2014-05-30', 'abc@gmail.com', 'amit123', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cust_dwnld`
--
ALTER TABLE `cust_dwnld`
  ADD CONSTRAINT `FK_cust_dwnld` FOREIGN KEY (`cid`) REFERENCES `cust_mstr` (`cid`);

--
-- Constraints for table `cust_query`
--
ALTER TABLE `cust_query`
  ADD CONSTRAINT `FK_cust_query` FOREIGN KEY (`cid`) REFERENCES `cust_mstr` (`cid`);

--
-- Constraints for table `cust_upld`
--
ALTER TABLE `cust_upld`
  ADD CONSTRAINT `FK_cust_upld` FOREIGN KEY (`cid`) REFERENCES `cust_mstr` (`cid`);

--
-- Constraints for table `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD CONSTRAINT `FK_emp_leave` FOREIGN KEY (`empid`) REFERENCES `emp_mstr` (`empid`);

--
-- Constraints for table `emp_sal`
--
ALTER TABLE `emp_sal`
  ADD CONSTRAINT `FK_emp_sal` FOREIGN KEY (`empid`) REFERENCES `emp_mstr` (`empid`);

--
-- Constraints for table `stu_fee`
--
ALTER TABLE `stu_fee`
  ADD CONSTRAINT `FK_stu_fee` FOREIGN KEY (`sid`) REFERENCES `stu_mstr` (`sid`);

--
-- Constraints for table `stu_query`
--
ALTER TABLE `stu_query`
  ADD CONSTRAINT `FK_stu_query` FOREIGN KEY (`sid`) REFERENCES `stu_mstr` (`sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
