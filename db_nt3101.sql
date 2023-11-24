-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 01:17 AM
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

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `user`, `password`) VALUES
(1, 'admin', 'user', 'user');

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
('21-0000', 'Lander Gray', 'Gonzales Carandang', '3', 'Peace Officer', 0x70726f66696c65322e6a666966, '8', 'asdfsadfsdfqwe'),
('21-0001', 'LALABAN NG ', 'PEACE OFFICER', '3', 'Peace Officer', 0x70726f66696c65312e6a7067, '8', 'asdfasdf'),
('21-1111', 'John', 'Doeeeee', '3', 'President', 0x70726f66696c65322e6a666966, '4', 'asdfasdf'),
('21-2222', 'G', 'Bey', '1', 'President', '', '4', 'a'),
('21-4444', 'Lander', 'Carandang', '3', 'Vice President', '', '8', 'a'),
('21-5555', 'Sino', 'Ako', '3', 'Secretary', '', '3', 'a'),
('21-6666', 'Laban', 'Tayo', '3', 'Secretary', '', '2', 'a');

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

--
-- Dumping data for table `cas candidate`
--

INSERT INTO `cas candidate` (`SRCode`, `FirstName`, `LastName`, `YearLevel`, `Position`, `Image`, `numofVote`, `Information`) VALUES
('21-1111', 'John', 'Doe', '3', 'President', '', '3', 'a'),
('21-2222', 'G', 'Bey', '1', 'President', '', '2', 'a'),
('21-3333', 'Gray', 'Be', '4', 'Vice President', '', '2', 'a'),
('21-4444', 'Lander', 'Carandang', '3', 'Vice President', '', '2', 'a'),
('21-5555', 'Sino', 'Ako', '3', 'Secretary', '', '2', 'a'),
('21-6666', 'Laban', 'Tayo', '3', 'Secretary', '', '2', 'a');

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

--
-- Dumping data for table `cete candidate`
--

INSERT INTO `cete candidate` (`SRCode`, `FirstName`, `LastName`, `YearLevel`, `Position`, `Image`, `numofVote`, `Information`) VALUES
('21-1111', 'John', 'Doe', '3', 'President', 0x70726f66696c65312e6a7067, '1', 'a'),
('21-2222', 'G', 'Bey', '1', 'President', 0x70726f66696c65312e6a7067, '3', 'a'),
('21-3333', 'Gray', 'Be', '4', 'Vice President', 0x70726f66696c65312e6a7067, '1', 'a'),
('21-4444', 'Lander', 'Carandang', '3', 'Vice President', 0x70726f66696c65322e6a666966, '2', 'a'),
('21-5555', 'Sino', 'Ako', '3', 'Secretary', 0x70726f66696c65322e6a666966, '2', 'a'),
('21-6666', 'Laban', 'Tayo', '3', 'Secretary', 0x70726f66696c65312e6a7067, '1', 'a');

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
('21-0000', 'Lander Gray', 'Gonzales Carandang', 3, 'Vice President', '', '0', 'asdasdasdasd'),
('21-2222', 'G', 'Bey', 1, 'President', '', '1', 'a'),
('21-3333', 'Gray', 'Be', 4, 'Vice President', '', '1', 'a'),
('21-4444', 'Lander', 'Carandang', 3, 'Vice President', '', '2', 'a'),
('21-5555', 'Sino', 'Ako', 3, 'President', '', '0', 'asdfsadf'),
('21-6666', 'Laban', 'Tayo', 3, 'Secretary', '', '2', 'a');

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
-- Dumping data for table `cit candidate`
--

INSERT INTO `cit candidate` (`SRCode`, `FirstName`, `LastName`, `YearLevel`, `Position`, `Image`, `numofVote`, `Information`) VALUES
('21-1111', 'John', 'Doe', '3', 'President', '', '1', 'a'),
('21-2222', 'G', 'Bey', '1', 'President', '', '1', 'a'),
('21-3333', 'Gray', 'Be', '4', 'Vice President', '', '1', 'a'),
('21-4444', 'Lander', 'Carandang', '3', 'Vice President', '', '1', 'a'),
('21-6666', 'Laban', 'Tayo', '3', 'President', '', '1', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `SRCode` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `YearLevel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`SRCode`, `FirstName`, `LastName`, `YearLevel`) VALUES
('21-3971', 'John', 'Doe', 'Senior'),
('21-1111', 'John', 'Doe', '3'),
('21-2222', 'G', 'Bey', '1'),
('21-3333', 'Gray', 'Be', '4'),
('21-4444', 'Lander', 'Carandang', '3'),
('21-5555', 'Sino', 'Ako', '3'),
('21-6666', 'Laban', 'Tayo', '3'),
('21-0000', 'Lander Gray', 'Gonzales Carandang', '3'),
('21-0001', 'LALABAN NG ', 'PEACE OFFICER', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `hasVotedPresident` tinyint(1) NOT NULL DEFAULT 0,
  `hasVotedVicePresident` tinyint(4) NOT NULL,
  `hasVotedSecretary` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `hasVotedPresident`, `hasVotedVicePresident`, `hasVotedSecretary`) VALUES
(1, 'user', 'user', 1, 1, 0),
(2, '21-0001', 'ee11cbb19052e40b07aac0ca060c23ee', 0, 0, 0),
(3, '21-002', 'user', 0, 0, 0),
(4, '21-0002', 'user', 1, 0, 0),
(5, '21-0003', 'user', 0, 0, 0);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
