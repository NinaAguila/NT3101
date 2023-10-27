-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2023 at 01:00 AM
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
-- Database: `ndb_nt3101`
--

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `reservationid` int DEFAULT NULL,
  `reservationstatus` varchar(50) NOT NULL,
  KEY `reservationid` (`reservationid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`reservationid`, `reservationstatus`) VALUES
(1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbadminacc`
--

DROP TABLE IF EXISTS `tbadminacc`;
CREATE TABLE IF NOT EXISTS `tbadminacc` (
  `adminid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`adminid`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbadminacc`
--

INSERT INTO `tbadminacc` (`adminid`, `username`, `password`, `empid`) VALUES
(1, 'nina', 'nina123', 1);

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
  `description` varchar(15) NOT NULL,
  `size` varchar(50) NOT NULL,
  `stocks` int NOT NULL,
  UNIQUE KEY `itemid` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbproductinfo`
--

INSERT INTO `tbproductinfo` (`itemid`, `itemname`, `description`, `size`, `stocks`) VALUES
(1, 'Polo', 'Polo', 'Medium', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbreservedetails`
--

DROP TABLE IF EXISTS `tbreservedetails`;
CREATE TABLE IF NOT EXISTS `tbreservedetails` (
  `reservationid` int NOT NULL AUTO_INCREMENT,
  `itemid` int DEFAULT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `studid` int DEFAULT NULL,
  UNIQUE KEY `reservationid` (`reservationid`),
  KEY `itemid` (`itemid`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbreservedetails`
--

INSERT INTO `tbreservedetails` (`reservationid`, `itemid`, `size`, `quantity`, `studid`) VALUES
(1, 1, 'Meduim', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudacc`
--

DROP TABLE IF EXISTS `tbstudacc`;
CREATE TABLE IF NOT EXISTS `tbstudacc` (
  `accountid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudacc`
--

INSERT INTO `tbstudacc` (`accountid`, `username`, `password`, `studid`) VALUES
(1, 'peter', 'peter123', 1),
(2, 'clark', 'clark123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

DROP TABLE IF EXISTS `tbstudinfo`;
CREATE TABLE IF NOT EXISTS `tbstudinfo` (
  `studid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
