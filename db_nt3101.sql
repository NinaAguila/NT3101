-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 06:00 AM
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
CREATE TABLE `tbstudinfo` (
  `studid` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  `yearlevel` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `hasVotedPresident` tinyint(1) DEFAULT 0,
  `hasVotedVicePresident` tinyint(1) DEFAULT 0,
  `hasVotedSecretary` tinyint(1) DEFAULT 0,
  `hasVotedPeaceOfficer` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`, `yearlevel`, `Password`, `hasVotedPresident`, `hasVotedVicePresident`, `hasVotedSecretary`, `hasVotedPeaceOfficer`) VALUES
('1', 'parker', 'peter', 'bsit', '4', 'user', 1, 0, 0, 0),
('2', 'kent', 'clark', 'bscs', '3', 'user', 0, 0, 0, 0),
('21-001', 'man', 'spider', 'cabe', '3', 'user', 0, 1, 0, 0),
('21-002', 'stacy', 'gwen', 'cabe', '2', 'user', 0, 0, 0, 0),
('21-003', 'carandang', 'lander gray', 'cabe', '3', 'user', 0, 0, 0, 0),
('21-004', 'tatakbo', 'tatalon', 'cabe', '1', 'user', 0, 0, 0, 0),
('21-005', 'para sa ', 'bayan', 'cabe', '3', 'user', 0, 0, 0, 0),
('21-006', 'ako din para', 'sa bayan', 'cabe', '3', 'user', 0, 0, 0, 0),
('21-007', 'para sa ', 'bayan', 'cabe', '3', 'user', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  ADD PRIMARY KEY (`studid`);
COMMIT;
CREATE TABLE `tbempinfo` (
  `empid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`, `password`) VALUES
(1, 'aguila', 'nina', 'cics', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

CREATE TABLE `candidates` (
  `studid` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `yearlevel` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` blob NOT NULL,
  `numofVote` varchar(255) NOT NULL,
  `information` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`studid`, `lastname`, `firstname`, `course`, `yearlevel`, `position`, `image`, `numofVote`, `information`) VALUES
('1', 'parkers', 'peters', 'CAS', '1', 'President', 0x75706c6f6164732f312e706e67, '1', 'asdasd1asdasd1asdasd1asdasd1asdasd1asdasd1asdasd1fds'),
('2', 'kents', 'clarks', 'CICS', '33', 'Vice President', 0x75706c6f6164732f70726f66696c65322e6a666966, '0', 'asdfasdf'),
('21-001', 'man', 'spider', 'CABE', '3', 'President', '', '1', 'asdfsadf'),
('21-002', 'stacy', 'gwen', 'CABE', '2', 'Vice President', '', '0', 'asdf'),
('21-003', 'carandang', 'lander gray', 'CICS', '3', 'Vice President', '', '0', 'asdf'),
('21-004', 'tatakbo', 'tatalon', 'CABE', '1', 'Secretary', '', '0', 'asdf'),
('21-005', 'para sa ', 'bayan', 'CABE', '3', 'Peace Officer', '', '0', 'sadf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`studid`);
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
