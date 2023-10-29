-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2019 at 10:30 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shivam_123`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$FkCz5m0lmGpq$dcnO6qoYTPJSLa9Canq4Adm2kSCLqM4CB/5zMGLvf2Y=', '2019-05-08 09:18:14', 1, 'test', '', '', 'test@gmail.com', 1, 1, '2019-04-22 08:31:05'),
(2, 'pbkdf2_sha256$120000$HBmGaGqpFOqh$a5lEIFtaMW57Czb3a72REAJPldAkKWhc+5kcoe3qaXg=', NULL, 0, 'shivam', '', '', '', 0, 1, '2019-04-22 08:34:09'),
(3, 'pbkdf2_sha256$120000$qLg4yt1IDWXM$FTtcDZ8Nyj02IFD2IqCCUglNexZ4H/+ERxSeCQt6SdM=', '2019-04-22 16:19:48', 0, 'dulara', '', '', '', 0, 1, '2019-04-22 14:41:45'),
(4, 'pbkdf2_sha256$120000$RpiP1D0ZWOlF$U/VxgVwDuLDKEzD0zJFfp/U24i7vS3GdpUgqIFBVmbs=', '2019-04-24 09:21:10', 0, 'amitshah', '', '', '', 0, 1, '2019-04-24 09:13:30'),
(5, 'pbkdf2_sha256$120000$8lMlLSzMLmHo$ZtCYCnhqfCy/roOzum9DDpGzokRTgaEg2ypg1geLW68=', '2019-04-24 09:24:16', 1, 'anil', '', '', '', 1, 1, '2019-04-24 09:23:06'),
(6, 'pbkdf2_sha256$120000$95fSDriHUhE1$e0oWi5lrQbUBaNeacSC61gCnk/kL+5o26adiSs93/Ek=', '2019-05-06 08:42:12', 0, 'abcd', '', '', '', 0, 1, '2019-05-05 13:30:15'),
(7, 'pbkdf2_sha256$120000$LeW1ytR84NIL$jj6N/IqD4EDDT/mDvt2KMEcbzQ4ZiyUIqiBFx1hXNSU=', '2019-05-08 09:14:00', 0, 'neetesh', '', '', '', 0, 1, '2019-05-08 09:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `creditcard_details`
--

CREATE TABLE IF NOT EXISTS `creditcard_details` (
  `ticket_no` varchar(30) NOT NULL,
  `card_name` varchar(30) NOT NULL,
  `card_number` varchar(30) NOT NULL,
  `holder_name` varchar(30) NOT NULL,
  `expire_date` varchar(30) NOT NULL,
  `ccv_no` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditcard_details`
--

INSERT INTO `creditcard_details` (`ticket_no`, `card_name`, `card_number`, `holder_name`, `expire_date`, `ccv_no`) VALUES
('4972065898', 'canara', '1212121212121212', 'inshaal', '2019-04-09', '223'),
('4972065898', 'canara', '12121212121212', 'inshaal', '2019-04-25', '232'),
('4972065898', 'canara', '12121212121212', 'inshaal', '2019-04-25', '232'),
('1794477202', 'canara', '832792', 'dflvndfnv', '2019-04-10', '666'),
('4107342227', 'canara', '111111111111111111', 'dflvndfnv', '2019-04-03', '233'),
('4347770156', 'Dunai', '121212121212', 'inshaal', '2019-04-03', '111'),
('7587361147', 'Canara', '201910091201992', 'Shivam', '2019-04-03', '112'),
('7062870285', 'Canara', '398439843483948', 'Inshaal', '2019-05-14', '221'),
('7983928184', 'Canara', '123409897474', 'inshaal nazmi', '2019-05-05', '334'),
('7386485030', 'Canara', '123454322736', 'Inshaal', '2019-05-01', '111'),
('3112815799', 'Canara', '867676757576576', 'Inshaal', '2019-05-07', '121');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-04-22 08:34:09', '2', 'shivam', 1, '[{"added": {}}]', 1, 1),
(2, '2019-04-24 09:23:07', '5', 'anil', 1, '[{"added": {}}]', 1, 1),
(3, '2019-04-24 09:23:42', '5', 'anil', 2, '[{"changed": {"fields": ["is_staff", "is_superuser"]}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'auth', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2051hg807lok4dsasgqujy6nskkveorg', 'MmNhZTE2YzJmYTVhNGY4NDliM2M3OTk3YzRkMzVkNmE5OWEyYTNlYjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMzc0YmQ2YTExNjIxMWVkMDYxOTQzZDM3OTQzOWU3NzU4ZThkOTc4In0=', '2019-05-19 15:02:32'),
('bpc0txif5u587tur0ywg3oc0v4vzoow0', 'MWU4MjliNjEwMmRjZjIwMDk3YTkzZTdlOTU5MThlZWVlYmVhMmEzYjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmODM4MjAxYmU3NWQyOGY5Yjk3NmVkOWEwZTg2ZDk1ZDVlZWRkYmM4In0=', '2019-05-08 09:24:16'),
('ce0dbh2z1x9xx1i3f94fnvux5jv49f92', 'NWY4M2M3NjBjMWFjOWZjYTA3YTcwNGViYmQxZDk2N2JjYjUxZDQzMjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzVlMGE5MGYzYzg3ZDU0YmJhOGJhZWU5MzcwZTE3ZTc3OTBiMjEzIn0=', '2019-05-06 16:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE IF NOT EXISTS `flight_details` (
  `flight_id` varchar(30) NOT NULL,
  `flight_name` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `flight_class` varchar(30) NOT NULL,
  `flight_charge` varchar(30) NOT NULL,
  `seats` varchar(30) NOT NULL,
  `arrival_time` varchar(30) NOT NULL,
  `departure_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`flight_id`, `flight_name`, `source`, `destination`, `flight_class`, `flight_charge`, `seats`, `arrival_time`, `departure_time`) VALUES
('loser123', 'huawei', 'lucknow', 'newyork', 'A', '4000', '3', '2019-04-03T00:59', '2019-04-04T01:59'),
('bueai111', 'boeing', 'delhi', 'faizabad', 'A', '7000', '3', '2019-04-03T00:59', '2019-04-04T01:59'),
('fghfg344', 'qwer', 'sdfgh', 'werfg', 'e', '54545', '2', '', ''),
('qwe223', 'snvlkm', 'kanpur', 'lko', 'Q', '3000', '1', '', ''),
('qwqpp09', 'wwwww', 'sdfgh', 'lko', 'Q', '78787', '1', '', ''),
('lkiu123', 'Jetking', 'NewYork', 'Chicago', 'sfvsfv', '3000', '180', '2019-04-02T00:00', '2019-04-04T01:59');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `customer_ID` varchar(30) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`customer_ID`, `customer_name`, `father_name`, `email`, `gender`, `phone_number`, `address`) VALUES
('1223', 'ertyy', 'fgfg', 'dfg', 'male', '21223434', 'efgghgh'),
('customer_ID', 'customer_name', 'father_name', 'email', 'gender', 'phone_number', 'address'),
('12332', 'inshaal', 'javed', 'a@gmail.com', 'Male', '8840863827', 'Indrapuri'),
('897', 'ksjdvnkd', 'kjsjdvnkdvn', 'kjsjvnkdv', 'skjd', '9789789789', 'lsknvlv');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `user_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_cancellation`
--

CREATE TABLE IF NOT EXISTS `ticket_cancellation` (
  `ticket_number` varchar(30) NOT NULL,
  `flight_id` varchar(30) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `seat_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reservation`
--

CREATE TABLE IF NOT EXISTS `ticket_reservation` (
  `ticket_number` varchar(30) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `flight_name` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `seat_no` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_reservation`
--

INSERT INTO `ticket_reservation` (`ticket_number`, `customer_name`, `father_name`, `gender`, `phone_number`, `date_of_birth`, `address`, `flight_name`, `source`, `destination`, `seat_no`, `status`, `user`) VALUES
('4347770156', 'ksjdvk', 'slkdnvkl', 'Male', '9893489384', '2019-04-15', 'Indrapuri', 'boeing', 'lucknow', 'werfg', '7', 1, ''),
('7062870285', 'Inshaal', 'Javed Nazmi', 'Male', '876876868', '2019-05-02', 'sdjcskjd c s,c jsd c', 'huawei', 'lucknow', 'newyork', '2', 1, 'abcd'),
('3112815799', 'neetesh', 'ksjdncksnd', 'Male', '8989898989', '2019-05-02', ',sjnvjsv dkv kj v,wsfv', 'huawei', 'lucknow', 'newyork', '4', 1, 'neetesh');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
