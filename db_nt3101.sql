-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 04:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `user` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cabe candidate`
--

CREATE TABLE `cabe candidate` (
  `SRCode` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `YearLevel` varchar(25) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `Image` blob NOT NULL,
  `numofVote` varchar(255) NOT NULL,
  `Information` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabe candidate`
--

INSERT INTO `cabe candidate` (`SRCode`, `FirstName`, `LastName`, `YearLevel`, `Position`, `Image`, `numofVote`, `Information`) VALUES
('asdfasdf', '123', 'sadf', '3', 'president', 0x322e706e67, '2', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `cas candidate`
--

CREATE TABLE `cas candidate` (
  `SRCode` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `YearLevel` varchar(25) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `Image` blob NOT NULL,
  `numofVote` varchar(255) NOT NULL,
  `Information` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cete candidate`
--

CREATE TABLE `cete candidate` (
  `SRCode` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `YearLevel` varchar(25) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `Image` blob NOT NULL,
  `numofVote` varchar(255) NOT NULL,
  `Information` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cics candidate`
--

CREATE TABLE `cics candidate` (
  `SRCode` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `YearLevel` int(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Image` blob NOT NULL,
  `numofVote` varchar(255) NOT NULL,
  `Information` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cics candidate`
--

INSERT INTO `cics candidate` (`SRCode`, `FirstName`, `LastName`, `YearLevel`, `Position`, `Image`, `numofVote`, `Information`) VALUES
('asd', 'sdf', 'sadf', 0, 'president', '', '1', '1'),
('sadf', '123', '123', 4, 'president', '', '2', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `cit candidate`
--

CREATE TABLE `cit candidate` (
  `SRCode` varchar(25) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `YearLevel` varchar(25) NOT NULL,
  `Position` varchar(25) NOT NULL,
  `Image` blob NOT NULL,
  `numofVote` varchar(255) NOT NULL,
  `Information` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabe candidate`
--
ALTER TABLE `cabe candidate`
  ADD PRIMARY KEY (`SRCode`);

--
-- Indexes for table `cics candidate`
--
ALTER TABLE `cics candidate`
  ADD PRIMARY KEY (`SRCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
