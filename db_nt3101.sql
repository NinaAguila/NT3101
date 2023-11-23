-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 11:29 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nt3101(1)`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminuserandpass`
--

DROP TABLE IF EXISTS `adminuserandpass`;
CREATE TABLE IF NOT EXISTS `adminuserandpass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adminuserandpass`
--

INSERT INTO `adminuserandpass` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

DROP TABLE IF EXISTS `tbempinfo`;
CREATE TABLE IF NOT EXISTS `tbempinfo` (
  `empid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics');

-- --------------------------------------------------------

--
-- Table structure for table `tbproductinfo`
--

DROP TABLE IF EXISTS `tbproductinfo`;
CREATE TABLE IF NOT EXISTS `tbproductinfo` (
  `itemid` int NOT NULL AUTO_INCREMENT,
  `itemname` varchar(100) NOT NULL,
  `item_img` mediumblob NOT NULL,
  `sizes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `stocks` int NOT NULL,
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbreservedetails`
--

DROP TABLE IF EXISTS `tbreservedetails`;
CREATE TABLE IF NOT EXISTS `tbreservedetails` (
  `reservationid` int NOT NULL AUTO_INCREMENT,
  `itemid` int DEFAULT NULL,
  `itemSize` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `SRcode` varchar(10) NOT NULL,
  `reservation_date` date NOT NULL,
  `status` varchar(255) DEFAULT 'pending',
  PRIMARY KEY (`reservationid`),
  UNIQUE KEY `reservationid` (`reservationid`),
  UNIQUE KEY `reservationid_2` (`reservationid`),
  KEY `itemid` (`itemid`),
  KEY `studid` (`SRcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbstatus`
--

DROP TABLE IF EXISTS `tbstatus`;
CREATE TABLE IF NOT EXISTS `tbstatus` (
  `reservationid` int DEFAULT NULL,
  `resStatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `statusNote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  KEY `reservationid` (`reservationid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbstudacc`
--

DROP TABLE IF EXISTS `tbstudacc`;
CREATE TABLE IF NOT EXISTS `tbstudacc` (
  `accountid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `SRcode` varchar(50) NOT NULL,
  PRIMARY KEY (`accountid`),
  KEY `studid` (`SRcode`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudacc`
--

INSERT INTO `tbstudacc` (`accountid`, `username`, `password`, `SRcode`) VALUES
(3, 'Jerome', 'student123', '21-30452'),
(4, 'Max', 'student101', '21-35348'),
(5, 'Neil', 'nt3101', '21-37635'),
(6, 'Dom', 'kumarecakes01', '21-33878');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

DROP TABLE IF EXISTS `tbstudinfo`;
CREATE TABLE IF NOT EXISTS `tbstudinfo` (
  `SRcode` varchar(50) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  PRIMARY KEY (`SRcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`SRcode`, `lastname`, `firstname`, `course`) VALUES
('21-30452', 'Panganiban', 'Jerome', 'BSIT-NT'),
('21-35348', 'De Silva', 'Max Daniel', 'BSIT-NT'),
('21-37635', 'Pamintuan', 'Neil Daniel', 'BSIT-NT'),
('21-33878', 'Cabangisan', 'Dominic', 'BSIT');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
