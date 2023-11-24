-- phpMyAdmin SQL Dump

-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 02:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 26, 2023 at 11:34 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

-- Table structure for table `admindb`
--

CREATE TABLE `admindb` (
  `adminID` varchar(100) NOT NULL,
  `empid` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table structure for table `tbempinfo`
--

DROP TABLE IF EXISTS `tbempinfo`;
CREATE TABLE IF NOT EXISTS `tbempinfo` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
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

-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `ID` int(11) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdb`
--

CREATE TABLE `orderdb` (
  `OrderID` int(100) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `Orderdate` date NOT NULL,
  `Status` varchar(255) NOT NULL,
  `OrderCost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(100) NOT NULL,
  `ProductID` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `TotalPrice` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productdb`
--

CREATE TABLE `productdb` (
  `ProductID` int(100) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `AvailStocks` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productdb`
--

INSERT INTO `productdb` (`ProductID`, `ProductName`, `Price`, `image`, `AvailStocks`) VALUES
(34, 'Pin', '50', 'pin.png', 10),
(35, 'Department Shirt', '250', 'deptshirt.png', 10),
(36, 'Polo Shirt', '500', 'poloshirt.png', 10),
(37, 'Sticker', '5', 'sticker.png', 5),
(38, 'Jersey Sando', '250', 'jerseysando.jpg', 9),
(39, 'Jersey Shirt', '270', 'jerseyshirt.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `shopcart`
--

CREATE TABLE `shopcart` (
  `CartID` int(11) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `ProductID` int(100) NOT NULL,
  `Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `studid` int(11) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `cnum` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindb`
--
ALTER TABLE `admindb`
  ADD PRIMARY KEY (`adminID`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderdb`
--
ALTER TABLE `orderdb`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `SR-Code` (`SR_Code`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `productdb`
--
ALTER TABLE `productdb`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`CartID`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`SR_Code`),
  ADD KEY `studid` (`studid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderdb`
--
ALTER TABLE `orderdb`
  MODIFY `OrderID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `productdb`
--
ALTER TABLE `productdb`
  MODIFY `ProductID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdb`
--
ALTER TABLE `orderdb`
  ADD CONSTRAINT `SR-Code` FOREIGN KEY (`SR_Code`) REFERENCES `student_record` (`SR_Code`);

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `orderdb` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `productdb` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

-- Table structure for table `tbstudinfo`
--

DROP TABLE IF EXISTS `tbstudinfo`;
CREATE TABLE IF NOT EXISTS `tbstudinfo` (
  `studid` int(11) NOT NULL AUTO_INCREMENT,
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
