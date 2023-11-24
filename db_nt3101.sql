-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2023 at 03:49 AM
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
-- Database: `db_nt3101`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

DROP TABLE IF EXISTS `booktable`;
CREATE TABLE IF NOT EXISTS `booktable` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) NOT NULL,
  `BookNames` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`BookID`, `Author`, `BookNames`, `Description`, `Category`, `ISBN`) VALUES
(10, 'William Adams', 'Fantasy Realm', 'Immerse yourself in a world of fantasy', 'Fantasy', '5544332211'),
(9, 'Olivia Davis', 'Business Strategies', 'Navigating the corporate world', 'Business', '1122334455'),
(7, 'Sophia Taylor', 'Travel Chronicles', 'Journeying through diverse landscapes', 'Travel', '9012345678'),
(8, 'Daniel Miller', 'Poetry Collection', 'Verses that touch the soul', 'Poetry', '4567890123'),
(6, 'Michael Lee', 'Science Wonders', 'Unraveling the secrets of the universe', 'Science', '2345678901'),
(5, 'Emily White', 'Artistic Expressions', 'Discovering the world of art', 'Art', '7890123456'),
(4, 'Bob Brown', 'History Uncovered', 'Exploring the mysteries of the past', 'History', '3456789012'),
(3, 'Alice Johnson', 'Cooking Delights', 'Recipes for delicious meals', 'Cooking', '5678901234'),
(1, 'John Doe', 'The Great Novel', 'An exciting novel about adventure', 'Fiction', '1234567890'),
(2, 'Jane Smith', 'Programming Basics', 'A guide to programming for beginners', 'Non-Fiction', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `emplogin`
--

DROP TABLE IF EXISTS `emplogin`;
CREATE TABLE IF NOT EXISTS `emplogin` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `empid` int NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

DROP TABLE IF EXISTS `logintable`;
CREATE TABLE IF NOT EXISTS `logintable` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `studid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservehistorytable`
--

DROP TABLE IF EXISTS `reservehistorytable`;
CREATE TABLE IF NOT EXISTS `reservehistorytable` (
  `HistoryID` int NOT NULL,
  `ReserveID` int NOT NULL,
  `StudentID` int NOT NULL,
  `BookID` int NOT NULL,
  `DateReserve` varchar(255) NOT NULL,
  `DateReturn` varchar(255) NOT NULL,
  `Status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`HistoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservetable`
--

DROP TABLE IF EXISTS `reservetable`;
CREATE TABLE IF NOT EXISTS `reservetable` (
  `ReserveID` int NOT NULL AUTO_INCREMENT,
  `studid` int NOT NULL,
  `BookID` int NOT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY (`ReserveID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returntable`
--

DROP TABLE IF EXISTS `returntable`;
CREATE TABLE IF NOT EXISTS `returntable` (
  `ReturnID` int NOT NULL AUTO_INCREMENT,
  `ReserveID` int DEFAULT NULL,
  `DateReserve` date DEFAULT NULL,
  `DateReturn` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReturnID`),
  KEY `ReserveID` (`ReserveID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student table`
--

DROP TABLE IF EXISTS `student table`;
CREATE TABLE IF NOT EXISTS `student table` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `studid` int NOT NULL,
  `SR-Code` varchar(255) NOT NULL,
  `Year & Section` varchar(255) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
