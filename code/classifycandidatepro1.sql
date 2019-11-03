-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               4.1.22-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for classifycandidatepro1
DROP DATABASE IF EXISTS `classifycandidatepro1`;
CREATE DATABASE IF NOT EXISTS `classifycandidatepro1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `classifycandidatepro1;


-- Dumping structure for table classifycandidatepro1.activities
DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `id` bigint(20) NOT NULL auto_increment,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `activity_desc` varchar(255) default NULL,
  `activity_name` varchar(255) default NULL,
  `user_name` varchar(255) default NULL,
  `app_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKqm29lm70hnb1uju6bn109genk` (`user_name`,`app_name`),
  CONSTRAINT `FKqm29lm70hnb1uju6bn109genk` FOREIGN KEY (`user_name`, `app_name`) REFERENCES `usermaintain` (`app_name`, `user_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.activities: ~0 rows (approximately)
DELETE FROM `activities`;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.classifyusercompute
DROP TABLE IF EXISTS `classifyusercompute`;
CREATE TABLE IF NOT EXISTS `classifyusercompute` (
  `USERID` varchar(250) default NULL,
  `FEATURETYPE` varchar(50) default NULL,
  `SCORE` double default NULL,
  `SESSIONID` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.classifyusercompute: ~30 rows (approximately)
DELETE FROM `classifyusercompute`;
/*!40000 ALTER TABLE `classifyusercompute` DISABLE KEYS */;
INSERT INTO `classifyusercompute` (`USERID`, `FEATURETYPE`, `SCORE`, `SESSIONID`) VALUES
	('customer99', 'APTITUDE', 2, '663A52F4277B18541E87C45669BD1FFB'),
	('customer99', 'GENERAL', 6, '663A52F4277B18541E87C45669BD1FFB'),
	('customer99', 'TECHNICAL', 5, '663A52F4277B18541E87C45669BD1FFB'),
	('customer99', 'APTITUDE', 7, '7749D5FF00BBBA98AA817895B5D665BD'),
	('customer99', 'GENERAL', 5, '7749D5FF00BBBA98AA817895B5D665BD'),
	('customer99', 'TECHNICAL', 5, '7749D5FF00BBBA98AA817895B5D665BD'),
	('customer99', 'APTITUDE', 5, '8F5ED997C56481A2BC8ED95445FD34AC'),
	('customer99', 'GENERAL', 5, '8F5ED997C56481A2BC8ED95445FD34AC'),
	('customer99', 'TECHNICAL', 5, '8F5ED997C56481A2BC8ED95445FD34AC'),
	('prajwal123', 'APTITUDE', 8, '4C86789F0FF24BC1EBD30F426FB4DE34'),
	('prajwal123', 'GENERAL', 5, '4C86789F0FF24BC1EBD30F426FB4DE34'),
	('prajwal123', 'TECHNICAL', 6, '4C86789F0FF24BC1EBD30F426FB4DE34'),
	('customer99', 'APTITUDE', 14, 'B1238B35C9C1C12A2D2AE12CA91B339F'),
	('customer99', 'GENERAL', 5, 'B1238B35C9C1C12A2D2AE12CA91B339F'),
	('customer99', 'TECHNICAL', 4, 'B1238B35C9C1C12A2D2AE12CA91B339F'),
	('customer99', 'APTITUDE', 9, '398BB378C4F67A36DB1D74A5D3118551'),
	('customer99', 'GENERAL', 7, '398BB378C4F67A36DB1D74A5D3118551'),
	('customer99', 'TECHNICAL', 7, '398BB378C4F67A36DB1D74A5D3118551'),
	('customer99', 'APTITUDE', 14, '40D19E472F05A3944BDB53C844D1C1B9'),
	('customer99', 'GENERAL', 7, '40D19E472F05A3944BDB53C844D1C1B9'),
	('customer99', 'TECHNICAL', 3, '40D19E472F05A3944BDB53C844D1C1B9'),
	('customer99', 'APTITUDE', 11, '70AE7EB0994E251FA6C6E28BAF9B2B9E'),
	('customer99', 'GENERAL', 5, '70AE7EB0994E251FA6C6E28BAF9B2B9E'),
	('customer99', 'TECHNICAL', 4, '70AE7EB0994E251FA6C6E28BAF9B2B9E'),
	('customer99', 'APTITUDE', 4, '9702A1638A18F3E23EA880CEAC09B0F7'),
	('customer99', 'GENERAL', 2, '9702A1638A18F3E23EA880CEAC09B0F7'),
	('customer99', 'TECHNICAL', 2, '9702A1638A18F3E23EA880CEAC09B0F7'),
	('prajwal123', 'APTITUDE', 12, 'EF33CC728C43C1C08DC5AFF11EF0638E'),
	('prajwal123', 'GENERAL', 7, 'EF33CC728C43C1C08DC5AFF11EF0638E'),
	('prajwal123', 'TECHNICAL', 2, 'EF33CC728C43C1C08DC5AFF11EF0638E');
/*!40000 ALTER TABLE `classifyusercompute` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.clustertypes
DROP TABLE IF EXISTS `clustertypes`;
CREATE TABLE IF NOT EXISTS `clustertypes` (
  `cluster` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.clustertypes: ~3 rows (approximately)
DELETE FROM `clustertypes`;
/*!40000 ALTER TABLE `clustertypes` DISABLE KEYS */;
INSERT INTO `clustertypes` (`cluster`) VALUES
	('LOWPACK'),
	('MEDIUMPACK'),
	('HIGHPACK');
/*!40000 ALTER TABLE `clustertypes` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.companyinformation
DROP TABLE IF EXISTS `companyinformation`;
CREATE TABLE IF NOT EXISTS `companyinformation` (
  `company_name` varchar(255) NOT NULL default '',
  `cluster` varchar(255) default NULL,
  `company_imageurl` varchar(255) default NULL,
  `companyurl` varchar(255) default NULL,
  PRIMARY KEY  (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.companyinformation: ~3 rows (approximately)
DELETE FROM `companyinformation`;
/*!40000 ALTER TABLE `companyinformation` DISABLE KEYS */;
INSERT INTO `companyinformation` (`company_name`, `cluster`, `company_imageurl`, `companyurl`) VALUES
	('Google', 'HIGHPACK', 'google.jpg', 'https://www.google.com/'),
	('Infosys', 'LOWPACK', 'infosys.jpg', 'https://www.infosys.com/'),
	('Wipro', 'MEDIUMPACK', 'wipro.jpg', 'https://www.wipro.com/en-IN/');
/*!40000 ALTER TABLE `companyinformation` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.datasets
DROP TABLE IF EXISTS `datasets`;
CREATE TABLE IF NOT EXISTS `datasets` (
  `CLUSTERNO` int(11) default NULL,
  `APTITUDE` double default NULL,
  `GENERAL` double default NULL,
  `TECHNICAL` double default NULL,
  `TOTALMARKS` double default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.datasets: ~38 rows (approximately)
DELETE FROM `datasets`;
/*!40000 ALTER TABLE `datasets` DISABLE KEYS */;
INSERT INTO `datasets` (`CLUSTERNO`, `APTITUDE`, `GENERAL`, `TECHNICAL`, `TOTALMARKS`) VALUES
	(1, 3, 2, 4, 12),
	(1, 8, 8, 8, 24),
	(1, 4, 3, 4, 12),
	(1, 3, 3, 4, 12),
	(1, 4, 4, 3, 12),
	(1, 4, 3, 4, 12),
	(2, 2, 3, 2, 12),
	(2, 2, 2, 2, 12),
	(3, 1, 1, 1, 12),
	(3, 1, 2, 1, 12),
	(3, 1, 3, 1, 12),
	(2, 2, 4, 2, 12),
	(2, 2, 2, 2, 12),
	(3, 2, 1, 1, 12),
	(3, 1, 4, 1, 12),
	(1, 4, 2, 4, 12),
	(1, 4, 4, 4, 12),
	(1, 8, 7, 8, 24),
	(1, 8, 6, 8, 24),
	(1, 8, 5, 8, 24),
	(1, 8, 4, 8, 24),
	(1, 7, 7, 7, 24),
	(1, 6, 6, 6, 24),
	(1, 7, 6, 7, 24),
	(2, 5, 6, 5, 24),
	(2, 4, 8, 5, 24),
	(2, 4, 5, 5, 24),
	(2, 4, 6, 5, 24),
	(2, 4, 7, 5, 24),
	(3, 3, 7, 5, 24),
	(3, 3, 6, 5, 24),
	(3, 3, 5, 5, 24),
	(3, 3, 4, 5, 24),
	(3, 2, 4, 5, 24),
	(3, 2, 5, 5, 24),
	(3, 2, 5, 4, 24),
	(3, 2, 5, 3, 24),
	(3, 2, 5, 2, 24);
/*!40000 ALTER TABLE `datasets` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.historyprofileusersession
DROP TABLE IF EXISTS `historyprofileusersession`;
CREATE TABLE IF NOT EXISTS `historyprofileusersession` (
  `id` bigint(20) NOT NULL default '0',
  `cluster_name` varchar(255) default NULL,
  `cluster_no` int(11) default NULL,
  `session_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.historyprofileusersession: ~7 rows (approximately)
DELETE FROM `historyprofileusersession`;
/*!40000 ALTER TABLE `historyprofileusersession` DISABLE KEYS */;
INSERT INTO `historyprofileusersession` (`id`, `cluster_name`, `cluster_no`, `session_id`, `user_id`) VALUES
	(1, 'HIGHPACK', 1, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(2, 'HIGHPACK', 1, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(3, 'HIGHPACK', 1, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(52, 'HIGHPACK', 1, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(102, 'HIGHPACK', 1, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(152, 'LOWPACK', 3, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(202, 'HIGHPACK', 1, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123');
/*!40000 ALTER TABLE `historyprofileusersession` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.historyprofileusersession_sequence
DROP TABLE IF EXISTS `historyprofileusersession_sequence`;
CREATE TABLE IF NOT EXISTS `historyprofileusersession_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.historyprofileusersession_sequence: ~1 rows (approximately)
DELETE FROM `historyprofileusersession_sequence`;
/*!40000 ALTER TABLE `historyprofileusersession_sequence` DISABLE KEYS */;
INSERT INTO `historyprofileusersession_sequence` (`next_val`) VALUES
	(301);
/*!40000 ALTER TABLE `historyprofileusersession_sequence` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.knndistancecomputevector
DROP TABLE IF EXISTS `knndistancecomputevector`;
CREATE TABLE IF NOT EXISTS `knndistancecomputevector` (
  `id` bigint(20) NOT NULL default '0',
  `cluster_no` int(11) default NULL,
  `distance` double default NULL,
  `session_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.knndistancecomputevector: ~132 rows (approximately)
DELETE FROM `knndistancecomputevector`;
/*!40000 ALTER TABLE `knndistancecomputevector` DISABLE KEYS */;
INSERT INTO `knndistancecomputevector` (`id`, `cluster_no`, `distance`, `session_id`, `user_id`) VALUES
	(45, 1, 7.81024967590665, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(46, 1, 7.48331477354788, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(47, 1, 7.28010988928052, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(48, 1, 7.21110255092798, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(49, 1, 7.28010988928052, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(50, 1, 7.87400787401181, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(51, 1, 8.30662386291807, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(52, 1, 7.68114574786861, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(53, 2, 9.1104335791443, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(54, 2, 10.4880884817015, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(55, 2, 10.0498756211209, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(56, 2, 10.0995049383621, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(57, 2, 10.2469507659596, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(58, 3, 11.2249721603218, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(59, 3, 11.0905365064094, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(60, 3, 11.0453610171873, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(61, 3, 11.0905365064094, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(62, 3, 12.0830459735946, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(63, 3, 12.0415945787923, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(64, 3, 12, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(65, 3, 12.0415945787923, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(66, 3, 12.1655250605964, 'B1238B35C9C1C12A2D2AE12CA91B339F', 'customer99'),
	(146, 1, 1.73205080756888, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(147, 1, 1.4142135623731, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(148, 1, 1.73205080756888, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(149, 1, 2.44948974278318, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(150, 1, 3.3166247903554, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(151, 1, 2, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(152, 1, 3.3166247903554, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(153, 1, 2.23606797749979, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(154, 2, 4.58257569495584, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(155, 2, 5.47722557505166, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(156, 2, 5.74456264653803, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(157, 2, 5.47722557505166, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(158, 2, 5.3851648071345, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(159, 3, 6.32455532033676, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(160, 3, 6.40312423743285, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(161, 3, 6.6332495807108, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(162, 3, 7, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(163, 3, 7.87400787401181, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(164, 3, 7.54983443527075, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(165, 3, 7.87400787401181, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(166, 3, 8.30662386291807, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(167, 3, 8.83176086632785, '398BB378C4F67A36DB1D74A5D3118551', 'customer99'),
	(202, 1, 7.87400787401181, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(203, 1, 7.81024967590665, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(204, 1, 7.87400787401181, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(205, 1, 8.06225774829855, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(206, 1, 8.36660026534076, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(207, 1, 8.06225774829855, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(208, 1, 8.60232526704263, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(209, 1, 8.12403840463596, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(210, 2, 9.2736184954957, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(211, 2, 10.2469507659596, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(212, 2, 10.3923048454133, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(213, 2, 10.2469507659596, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(214, 2, 10.1980390271856, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(215, 3, 11.1803398874989, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(216, 3, 11.2249721603218, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(217, 3, 11.3578166916005, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(218, 3, 11.5758369027902, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(219, 3, 12.5299640861417, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(220, 3, 12.328828005938, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(221, 3, 12.2065556157337, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(222, 3, 12.1655250605964, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(223, 3, 12.2065556157337, '40D19E472F05A3944BDB53C844D1C1B9', 'customer99'),
	(252, 1, 5.8309518948453, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(253, 1, 5.3851648071345, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(254, 1, 5.09901951359278, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(255, 1, 5, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(256, 1, 5.09901951359278, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(257, 1, 5.3851648071345, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(258, 1, 5.47722557505166, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(259, 1, 5.09901951359278, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(260, 2, 6.16441400296898, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(261, 2, 7.68114574786861, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(262, 2, 7.07106781186548, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(263, 2, 7.14142842854285, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(264, 2, 7.34846922834953, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(265, 3, 8.30662386291807, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(266, 3, 8.12403840463596, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(267, 3, 8.06225774829855, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(268, 3, 8.12403840463596, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(269, 3, 9.1104335791443, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(270, 3, 9.05538513813742, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(271, 3, 9, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(272, 3, 9.05538513813742, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(273, 3, 9.21954445729289, '70AE7EB0994E251FA6C6E28BAF9B2B9E', 'customer99'),
	(302, 1, 9.38083151964686, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(303, 1, 8.77496438739212, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(304, 1, 8.24621125123532, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(305, 1, 7.81024967590665, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(306, 1, 7.48331477354788, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(307, 1, 7.68114574786861, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(308, 1, 6, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(309, 1, 7.07106781186548, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(310, 2, 5.09901951359278, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(311, 2, 6.70820393249937, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(312, 2, 4.24264068711928, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(313, 2, 5, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(314, 2, 5.8309518948453, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(315, 3, 5.91607978309962, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(316, 3, 5.09901951359278, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(317, 3, 4.35889894354067, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(318, 3, 3.74165738677394, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(319, 3, 4.12310562561766, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(320, 3, 4.69041575982343, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(321, 3, 4.12310562561766, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(322, 3, 3.74165738677394, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(323, 3, 3.60555127546399, '9702A1638A18F3E23EA880CEAC09B0F7', 'customer99'),
	(352, 1, 7.28010988928052, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(353, 1, 7.21110255092798, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(354, 1, 7.28010988928052, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(355, 1, 7.48331477354788, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(356, 1, 7.81024967590665, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(357, 1, 7.07106781186548, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(358, 1, 7.28010988928052, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(359, 1, 7.14142842854285, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(360, 2, 7.68114574786861, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(361, 2, 8.60232526704263, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(362, 2, 8.77496438739212, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(363, 2, 8.60232526704263, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(364, 2, 8.54400374531753, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(365, 3, 9.48683298050514, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(366, 3, 9.53939201416946, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(367, 3, 9.69535971483266, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(368, 3, 9.9498743710662, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(369, 3, 10.8627804912002, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(370, 3, 10.6301458127347, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(371, 3, 10.3923048454133, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(372, 3, 10.2469507659596, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123'),
	(373, 3, 10.1980390271856, 'EF33CC728C43C1C08DC5AFF11EF0638E', 'prajwal123');
/*!40000 ALTER TABLE `knndistancecomputevector` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.knndistancecomputevector_sequence
DROP TABLE IF EXISTS `knndistancecomputevector_sequence`;
CREATE TABLE IF NOT EXISTS `knndistancecomputevector_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.knndistancecomputevector_sequence: ~1 rows (approximately)
DELETE FROM `knndistancecomputevector_sequence`;
/*!40000 ALTER TABLE `knndistancecomputevector_sequence` DISABLE KEYS */;
INSERT INTO `knndistancecomputevector_sequence` (`next_val`) VALUES
	(451);
/*!40000 ALTER TABLE `knndistancecomputevector_sequence` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.license
DROP TABLE IF EXISTS `license`;
CREATE TABLE IF NOT EXISTS `license` (
  `app_name` varchar(20) NOT NULL default '',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `expiry_date` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`app_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.license: ~1 rows (approximately)
DELETE FROM `license`;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` (`app_name`, `created_at`, `updated_at`, `expiry_date`) VALUES
	('APP+91-9739419677', '2019-02-28 16:23:44', '2019-02-28 16:23:44', '10/10/2020');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.preparelink
DROP TABLE IF EXISTS `preparelink`;
CREATE TABLE IF NOT EXISTS `preparelink` (
  `prepare_name` varchar(255) NOT NULL default '',
  `prepare_url` varchar(255) default NULL,
  `question_type` varchar(255) default NULL,
  PRIMARY KEY  (`prepare_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.preparelink: ~2 rows (approximately)
DELETE FROM `preparelink`;
/*!40000 ALTER TABLE `preparelink` DISABLE KEYS */;
INSERT INTO `preparelink` (`prepare_name`, `prepare_url`, `question_type`) VALUES
	('AptituteLinkName', 'https://www.indiabix.com/aptitude/questions-and-answers/', 'APTITUDE'),
	('DineshOnJava', 'https://www.dineshonjava.com/', 'TECHNICAL');
/*!40000 ALTER TABLE `preparelink` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.questions
DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_desc` varchar(50) NOT NULL default '',
  `answer1` varchar(255) default NULL,
  `answer2` varchar(255) default NULL,
  `answer3` varchar(255) default NULL,
  `answer4` varchar(255) default NULL,
  `questiontype` varchar(255) default NULL,
  `rating1` int(11) default NULL,
  `rating2` int(11) default NULL,
  `rating3` int(11) default NULL,
  `rating4` int(11) default NULL,
  PRIMARY KEY  (`question_desc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.questions: ~8 rows (approximately)
DELETE FROM `questions`;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`question_desc`, `answer1`, `answer2`, `answer3`, `answer4`, `questiontype`, `rating1`, `rating2`, `rating3`, `rating4`) VALUES
	('A sum of money at simple interest amounts to Rs. 8', 'Rs. 650', 'Rs. 690', 'Rs. 698', 'Rs. 700', 'APTITUDE', 1, 2, 4, 3),
	('A train 125 m long passes a man, running at 5 km/h', '45 km/hr', '50 km/hr', '54 km/hr', '55 km/hr', 'APTITUDE', 2, 4, 1, 3),
	('How many States are there in India', '29 states', '27 states', '28 states', '7 states', 'GENERAL', 4, 2, 3, 1),
	('Mr. Thomas invested an amount of Rs. 13,900 divide', 'Rs. 6400', 'Rs. 690', 'Rs. 698', 'Rs. 700', 'APTITUDE', 4, 2, 1, 3),
	('Please select which one of these is a complete set', 'Method Overloading and Method Overriding', 'Method Overriding', 'Method Overloading', 'Class with multiple methods with different names', 'TECHNICAL', 4, 3, 2, 1),
	('The length of the bridge, which a train 130 metres', '200 m', '225 m', '245 m', '250 m', 'APTITUDE', 2, 1, 4, 3),
	('What is the capital of India', 'Bangalore', 'Mumbai', 'Chennai', 'Dehli', 'GENERAL', 1, 3, 2, 4),
	('What is the meaning of Data Hiding', 'Make variables private and methods public', 'Make variables public and methods public', 'Make variables public and methods private', 'Make variables private and methods private', 'TECHNICAL', 4, 3, 2, 1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.questiontypes
DROP TABLE IF EXISTS `questiontypes`;
CREATE TABLE IF NOT EXISTS `questiontypes` (
  `questiontype` varchar(250) default NULL,
  `questiondesc` varchar(250) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.questiontypes: ~3 rows (approximately)
DELETE FROM `questiontypes`;
/*!40000 ALTER TABLE `questiontypes` DISABLE KEYS */;
INSERT INTO `questiontypes` (`questiontype`, `questiondesc`) VALUES
	('APTITUDE', 'Aptitude Kind of Questions'),
	('TECHNICAL', 'Technical Kind of Questions'),
	('GENERAL', 'General Kind of Questions');
/*!40000 ALTER TABLE `questiontypes` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.services
DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) NOT NULL auto_increment,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `company_name_service` varchar(255) default NULL,
  `cost` double default NULL,
  `service_name` varchar(255) default NULL,
  `user_name` varchar(255) default NULL,
  `app_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6g0vb9b9q7svks7v0hxpjpep3` (`user_name`,`app_name`),
  CONSTRAINT `FK6g0vb9b9q7svks7v0hxpjpep3` FOREIGN KEY (`user_name`, `app_name`) REFERENCES `usermaintain` (`app_name`, `user_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.services: ~0 rows (approximately)
DELETE FROM `services`;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.servicetype
DROP TABLE IF EXISTS `servicetype`;
CREATE TABLE IF NOT EXISTS `servicetype` (
  `id` bigint(20) NOT NULL auto_increment,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `app_name` varchar(255) default NULL,
  `service_type_desc` varchar(255) default NULL,
  `service_type_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.servicetype: ~0 rows (approximately)
DELETE FROM `servicetype`;
/*!40000 ALTER TABLE `servicetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicetype` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.skills
DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` bigint(20) NOT NULL auto_increment,
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `skill_name` varchar(255) default NULL,
  `user_name` varchar(255) default NULL,
  `app_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK5sicnep6rv28ep1878nl2kinl` (`user_name`,`app_name`),
  CONSTRAINT `FK5sicnep6rv28ep1878nl2kinl` FOREIGN KEY (`user_name`, `app_name`) REFERENCES `usermaintain` (`app_name`, `user_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.skills: ~0 rows (approximately)
DELETE FROM `skills`;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.subjects
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) NOT NULL auto_increment,
  `subject_desc` varchar(255) default NULL,
  `subject_name` varchar(255) default NULL,
  `user_name` varchar(255) default NULL,
  `app_name` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK4t6p336hfduph707n6886oq40` (`user_name`,`app_name`),
  CONSTRAINT `FK4t6p336hfduph707n6886oq40` FOREIGN KEY (`user_name`, `app_name`) REFERENCES `usermaintain` (`app_name`, `user_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.subjects: ~0 rows (approximately)
DELETE FROM `subjects`;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;


-- Dumping structure for table classifycandidatepro1.usermaintain
DROP TABLE IF EXISTS `usermaintain`;
CREATE TABLE IF NOT EXISTS `usermaintain` (
  `app_name` varchar(255) NOT NULL default '',
  `user_name` varchar(255) NOT NULL default '',
  `created_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL default '0000-00-00 00:00:00',
  `address` text,
  `admission_type` varchar(255) default NULL,
  `age` int(11) default NULL,
  `branch` varchar(255) default NULL,
  `challan_number` varchar(100) default NULL,
  `city` varchar(255) default NULL,
  `college_name` varchar(255) default NULL,
  `company_name` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `degree` varchar(30) default NULL,
  `department` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `email` varchar(60) NOT NULL default '',
  `father_email` varchar(100) default NULL,
  `father_name` varchar(30) default NULL,
  `father_number` varchar(15) default NULL,
  `fee_paid` double default NULL,
  `gender` varchar(255) default NULL,
  `is_account_locked` varchar(255) default NULL,
  `local_guard_email` varchar(100) default NULL,
  `local_guard_name` varchar(30) default NULL,
  `local_guard_number` varchar(15) default NULL,
  `login_type` int(11) NOT NULL default '0',
  `mother_email` varchar(100) default NULL,
  `mother_name` varchar(30) default NULL,
  `mother_number` varchar(30) default NULL,
  `no_of_wrong_passwords` int(11) default NULL,
  `password` varchar(40) NOT NULL default '',
  `phone_no` varchar(15) NOT NULL default '',
  `pin_code` varchar(255) default NULL,
  `project_title` varchar(255) default NULL,
  `residence_status` varchar(10) default NULL,
  `residential_address` text,
  `secret_answer1` varchar(255) default NULL,
  `secret_answer2` varchar(255) default NULL,
  `secret_question1` varchar(255) default NULL,
  `secret_question2` varchar(255) default NULL,
  `semester_marks` double default NULL,
  `service_type` varchar(255) default NULL,
  `specification` text,
  `state` varchar(255) default NULL,
  `street_address_line1` varchar(255) default NULL,
  `street_address_line2` varchar(255) default NULL,
  `total_cost_all_services` double default NULL,
  `total_rating` double default NULL,
  `university` varchar(255) default NULL,
  `usn_number` varchar(255) default NULL,
  `year_of_project` int(11) default NULL,
  PRIMARY KEY  (`app_name`,`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table classifycandidatepro1.usermaintain: ~5 rows (approximately)
DELETE FROM `usermaintain`;
/*!40000 ALTER TABLE `usermaintain` DISABLE KEYS */;
INSERT INTO `usermaintain` (`app_name`, `user_name`, `created_at`, `updated_at`, `address`, `admission_type`, `age`, `branch`, `challan_number`, `city`, `college_name`, `company_name`, `country`, `degree`, `department`, `description`, `dob`, `email`, `father_email`, `father_name`, `father_number`, `fee_paid`, `gender`, `is_account_locked`, `local_guard_email`, `local_guard_name`, `local_guard_number`, `login_type`, `mother_email`, `mother_name`, `mother_number`, `no_of_wrong_passwords`, `password`, `phone_no`, `pin_code`, `project_title`, `residence_status`, `residential_address`, `secret_answer1`, `secret_answer2`, `secret_question1`, `secret_question2`, `semester_marks`, `service_type`, `specification`, `state`, `street_address_line1`, `street_address_line2`, `total_cost_all_services`, `total_rating`, `university`, `usn_number`, `year_of_project`) VALUES
	('APP+91-9739419677', 'admin123', '2019-02-28 16:24:27', '2019-02-28 16:24:27', NULL, NULL, 0, NULL, NULL, 'Bangalore', NULL, 'INFOMETIZ', 'India', NULL, NULL, 'Company Started at the Year', NULL, 'test89012@gmail.com', NULL, NULL, NULL, 0, 'MALE', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 'pass12345678', '+91-7259268908', '560022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Karnataka', 'This is Street Address Line1', 'This is Street Address Line2', 0, 0, NULL, NULL, 0),
	('APP+91-9739419677', 'customer0987', '2019-02-28 22:19:50', '2019-02-28 22:19:50', NULL, NULL, 22, NULL, NULL, 'Bengalooru', NULL, NULL, 'India', NULL, NULL, NULL, NULL, 'aahil@gmail.com', NULL, NULL, NULL, 0, 'MALE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 'pass@23378132', '7259268908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Karnataka', NULL, NULL, 0, 0, NULL, NULL, 0),
	('APP+91-9739419677', 'customer99', '2019-02-28 16:30:17', '2019-02-28 16:30:17', NULL, NULL, 22, NULL, NULL, 'Bengalooru', NULL, NULL, 'India', NULL, NULL, NULL, NULL, 'hello12@gmail.com', NULL, NULL, NULL, 0, 'MALE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 'pass@23378132', '7259268908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Karnataka', NULL, NULL, 0, 0, NULL, NULL, 0),
	('APP+91-9739419677', 'customernew908', '2019-03-01 15:19:47', '2019-03-01 15:19:47', NULL, NULL, 22, NULL, NULL, 'Bengalooru', NULL, NULL, 'India', NULL, NULL, NULL, NULL, 'test890@gmail.com', NULL, NULL, NULL, 0, 'MALE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 'customer@23378132', '7259268908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Karnataka', NULL, NULL, 0, 0, NULL, NULL, 0),
	('APP+91-9739419677', 'prajwal123', '2019-03-02 15:45:29', '2019-03-02 15:45:29', NULL, NULL, 22, NULL, NULL, 'Bengalooru', NULL, NULL, 'India', NULL, NULL, NULL, NULL, 'prajwal@gmail.com', NULL, NULL, NULL, 0, 'MALE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 0, 'prajwal@234567', '7259268908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Karnataka', NULL, NULL, 0, 0, NULL, NULL, 0);
/*!40000 ALTER TABLE `usermaintain` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
