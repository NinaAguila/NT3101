-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 01:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `db_nt3101`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbempinfo`
--
CREATE TABLE `tbempinfo` (
  `empid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `tbempinfo`
--
INSERT INTO
  `tbempinfo` (`empid`, `lastname`, `firstname`, `department`)
VALUES
  (1, 'tizon', 'johnMatthew', 'AICSS'),
  (2, 'carurucan', 'kyle', 'cics');

-- --------------------------------------------------------
--
-- Table structure for table `tbstudinfo`
--
CREATE TABLE `tbstudinfo` (
  `studid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `tbstudinfo`
--
INSERT INTO
  `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`)
VALUES
  (1, 'parker', 'peter', 'bsit'),
  (2, 'kent', 'clark', 'bscs');

-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `emp` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `users`
--
INSERT INTO
  `users` (
    `id`,
    `first_name`,
    `last_name`,
    `email`,
    `password`,
    `created_at`,
    `updated_at`,
    `emp`
  )
VALUES
  (
    1,
    'johnMatthew',
    'Tizon',
    'johnmatthew@gmail.com',
    'johnmatthew',
    '2023-11-15 11:00:22',
    '2023-11-15 11:00:22',
    1
  ),
  (
    37,
    'kyle',
    'carurucan',
    'kyle@gmail.com',
    'kyle123',
    '2023-11-24 00:25:33',
    '2023-11-24 00:25:33',
    2
  );

--
-- Table structure for table `productdb`
--
CREATE TABLE `productdb` (
  `ProductID` int(100) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `AvailStocks` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `productdb`
--
INSERT INTO
  `productdb` (
    `ProductID`,
    `ProductName`,
    `Price`,
    `image`,
    `AvailStocks`
  )
VALUES
  (
    64,
    'Organizational Shrit',
    '550',
    'product-1700743519.png',
    '200'
  ),
  (
    65,
    'Department shirt',
    '550',
    'product-1700751825.png',
    '100'
  );

-- --------------------------------------------------------
--
-- Table structure for table `productsuppliers`
--
CREATE TABLE `productsuppliers` (
  `id` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `productsuppliers`
--
INSERT INTO
  `productsuppliers` (
    `id`,
    `supplier`,
    `product`,
    `updated_at`,
    `created_at`
  )
VALUES
  (
    16,
    6,
    64,
    '2023-11-23 13:45:19',
    '2023-11-23 13:45:19'
  ),
  (
    17,
    9,
    65,
    '2023-11-23 16:03:45',
    '2023-11-23 16:03:45'
  );

-- --------------------------------------------------------
--
-- Table structure for table `suppliers`
--
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(191) NOT NULL,
  `supplier_location` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--
INSERT INTO
  `suppliers` (
    `id`,
    `supplier_name`,
    `supplier_location`,
    `email`,
    `created_by`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    'test_supplier',
    'lipa',
    'testsupplier@gmail.com',
    1,
    '2023-11-23 13:38:05',
    '2023-11-23 13:38:05'
  ),
  (
    9,
    'test_supplier2',
    'lipa2',
    'testsupplier2@gmail.com',
    1,
    '2023-11-23 16:03:28',
    '2023-11-23 16:03:28'
  );

-- --------------------------------------------------------
--
-- Indexes for dumped tables
--
--
-- Indexes for table `productdb`
--
ALTER TABLE
  `productdb`
ADD
  PRIMARY KEY (`ProductID`);

--
-- Indexes for table `productsuppliers`
--
ALTER TABLE
  `productsuppliers`
ADD
  PRIMARY KEY (`id`),
ADD
  KEY `product` (`product`),
ADD
  KEY `supplier` (`supplier`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE
  `suppliers`
ADD
  PRIMARY KEY (`id`),
ADD
  KEY `created_by` (`created_by`);

--
-- Indexes for table `tbempinfo`
--
ALTER TABLE
  `tbempinfo`
ADD
  PRIMARY KEY (`empid`);

--
-- Indexes for table `tbstudinfo`
--
ALTER TABLE
  `tbstudinfo`
ADD
  PRIMARY KEY (`studid`);

--
-- Indexes for table `users`
--
ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`id`),
ADD
  KEY `emp` (`emp`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `productdb`
--
ALTER TABLE
  `productdb`
MODIFY
  `ProductID` int(100) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 66;

--
-- AUTO_INCREMENT for table `productsuppliers`
--
ALTER TABLE
  `productsuppliers`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 18;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE
  `suppliers`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 10;

--
-- AUTO_INCREMENT for table `tbempinfo`
--
ALTER TABLE
  `tbempinfo`
MODIFY
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT for table `tbstudinfo`
--
ALTER TABLE
  `tbstudinfo`
MODIFY
  `studid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE
  `users`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 38;

--
-- Constraints for dumped tables
--
--
-- Constraints for table `users`
--
ALTER TABLE
  `users`
ADD
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`emp`) REFERENCES `tbempinfo` (`empid`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;