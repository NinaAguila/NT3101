-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2023 at 01:23 AM
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
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_department`
--

DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE IF NOT EXISTS `tb_department` (
  `Department ID` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Department` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Department ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_department`
--

INSERT INTO `tb_department` (`Department ID`, `Department`) VALUES
('1', 'CICS'),
('2', 'CAS'),
('3', 'CABE'),
('4', 'CIT'),
('5', 'STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `tb_main`
--

DROP TABLE IF EXISTS `tb_main`;
CREATE TABLE IF NOT EXISTS `tb_main` (
  `Reserve number` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Department ID` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Venue ID` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Teacher's Sr-Code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Student's Sr-Code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Date and Time` datetime(6) NOT NULL,
  PRIMARY KEY (`Department ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_main`
--

INSERT INTO `tb_main` (`Reserve number`, `Department ID`, `Venue ID`, `Teacher's Sr-Code`, `Student's Sr-Code`, `Date and Time`) VALUES
('1', '1', '1', 'null', '21-30079', '2023-10-12 08:50:02.000000'),
('2', '2', '2', '21-13131', 'null', '2023-10-16 08:50:19.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_student`
--

DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE IF NOT EXISTS `tb_student` (
  `Student's Sr-Code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Department` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_student`
--

INSERT INTO `tb_student` (`Student's Sr-Code`, `Name`, `Department`) VALUES
('21-30079', 'Prince', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_teacher`
--

DROP TABLE IF EXISTS `tb_teacher`;
CREATE TABLE IF NOT EXISTS `tb_teacher` (
  `Teacher's Sr-code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Department` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_teacher`
--

INSERT INTO `tb_teacher` (`Teacher's Sr-code`, `Name`, `Department`) VALUES
('21-13131', 'Ryndel', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_venue`
--

DROP TABLE IF EXISTS `tb_venue`;
CREATE TABLE IF NOT EXISTS `tb_venue` (
  `Venue ID` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `Venue` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_venue`
--

INSERT INTO `tb_venue` (`Venue ID`, `Venue`) VALUES
('1', 'Field'),
('2', 'Multi Media Room'),
('3', 'BSU Gym'),
('3', 'HEB 5th Floor Room');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
