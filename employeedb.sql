-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 11:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admincredential`
--

CREATE TABLE `admincredential` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admincredential`
--

INSERT INTO `admincredential` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customerfile`
--

CREATE TABLE `customerfile` (
  `cuscde` varchar(255) DEFAULT NULL,
  `tercde` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerfile`
--

INSERT INTO `customerfile` (`cuscde`, `tercde`) VALUES
('CUSTOMER 1', 'CALOOCAN'),
('CUSTOMER 2', 'CALOOCAN'),
('CUSTOMER 3', 'MALABON'),
('CUSTOMER 4', 'NAVOTAS'),
('CUSTOMER 5', 'MALABON');

-- --------------------------------------------------------

--
-- Table structure for table `customerfile2`
--

CREATE TABLE `customerfile2` (
  `cuscde` varchar(255) NOT NULL,
  `cusdsc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerfile2`
--

INSERT INTO `customerfile2` (`cuscde`, `cusdsc`) VALUES
('CUS1', 'CUSTOMER 1'),
('CUS2', 'CUSTOMER 2'),
('CUS3', 'CUSTOMER 3'),
('CUS4', 'CUSTOMER 4'),
('CUS5', 'CUSTOMER 5');

-- --------------------------------------------------------

--
-- Table structure for table `employeefile`
--

CREATE TABLE `employeefile` (
  `recid` bigint(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `civilstat` varchar(255) DEFAULT NULL,
  `contactnum` varchar(255) DEFAULT NULL,
  `salary` decimal(65,2) DEFAULT NULL,
  `isactive` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeefile`
--

INSERT INTO `employeefile` (`recid`, `fullname`, `address`, `birthdate`, `age`, `gender`, `civilstat`, `contactnum`, `salary`, `isactive`) VALUES
(23, 'Ramon Cruz', '', '1985-01-05', 0, 'Male', 'Married', '', '20000.00', 0),
(24, 'Jason Lopez', '', '1999-02-09', 0, 'Male', 'Single', '', '16000.00', 0),
(25, 'Ayessa dela Cruz', '', '1995-03-27', 0, 'Female', 'Single', '', '15700.00', 0),
(26, 'Nancy Sta. Rita', '', '1986-12-15', 0, 'Female', 'Married', '', '20000.00', 0),
(27, 'Arman Sanchez', '', '1999-09-20', 0, 'Male', 'Single', '', '18000.00', 0),
(28, 'Peter Domingo', '', '1990-08-28', 0, 'Male', 'Married', '', '19300.00', 0),
(29, 'Lawrence Yabut', '', '1999-04-11', 0, 'Male', 'Single', '', '16200.00', 0),
(30, 'Monica Reyes', '', '2000-03-28', 0, 'Female', 'Single', '', '17600.00', 0),
(31, 'Gabriel Tolentino', '', '1989-06-03', 0, 'Male', 'Married', '', '22000.00', 0),
(32, 'James Lapuz', '', '1999-11-26', 0, 'Male', 'Single', '', '16500.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesfile1`
--

CREATE TABLE `salesfile1` (
  `docnum` int(255) NOT NULL,
  `trndte` date DEFAULT NULL,
  `cuscde` varchar(255) DEFAULT NULL,
  `trntot` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesfile1`
--

INSERT INTO `salesfile1` (`docnum`, `trndte`, `cuscde`, `trntot`) VALUES
(1, '2020-01-01', 'CUSTOMER 1', 1500),
(2, '2020-01-02', 'CUSTOMER 2', 1800),
(3, '2020-01-03', 'CUSTOMER 3', 2000),
(4, '2020-01-04', 'CUSTOMER 4', 2100),
(5, '2020-01-05', 'CUSTOMER 5', 950),
(6, '2020-01-06', 'CUSTOMER 1', 800),
(7, '2020-01-07', 'CUSTOMER 2', 2600),
(8, '2020-01-08', 'CUSTOMER 3', 1500),
(9, '2020-01-09', 'CUSTOMER 4', 1800),
(10, '2020-01-10', 'CUSTOMER 5', 2000),
(11, '2020-01-11', 'CUSTOMER 1', 2100),
(12, '2020-01-12', 'CUSTOMER 2', 950),
(13, '2020-01-13', 'CUSTOMER 3', 800),
(14, '2020-01-14', 'CUSTOMER 4', 2600),
(15, '2020-01-15', 'CUSTOMER 5', 1500),
(16, '2020-01-16', 'CUSTOMER 1', 1800),
(17, '2020-01-17', 'CUSTOMER 2', 2000),
(18, '2020-01-18', 'CUSTOMER 3', 2100),
(19, '2020-01-19', 'CUSTOMER 4', 950),
(20, '2020-01-20', 'CUSTOMER 5', 800),
(21, '2020-01-21', 'CUSTOMER 1', 2600),
(22, '2020-01-22', 'CUSTOMER 2', 1500),
(23, '2020-01-23', 'CUSTOMER 3', 1800),
(24, '2020-01-24', 'CUSTOMER 4', 2000),
(25, '2020-01-25', 'CUSTOMER 5', 2100);

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `recid` int(11) NOT NULL,
  `trndte` date DEFAULT NULL,
  `cremon` int(255) NOT NULL,
  `creyer` int(255) NOT NULL,
  `datetyp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`recid`, `trndte`, `cremon`, `creyer`, `datetyp`) VALUES
(1, NULL, 1, 2020, 'F'),
(2, NULL, 2, 2020, 'L'),
(3, NULL, 3, 2020, 'L'),
(4, NULL, 4, 2020, 'L'),
(5, NULL, 5, 2020, 'F'),
(6, NULL, 6, 2020, 'L'),
(7, NULL, 7, 2020, 'F'),
(8, NULL, 8, 2020, 'F'),
(9, NULL, 9, 2020, 'L'),
(10, NULL, 10, 2020, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `recid` int(255) NOT NULL,
  `field1` varchar(255) NOT NULL,
  `field2` varchar(255) NOT NULL,
  `field3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`recid`, `field1`, `field2`, `field3`) VALUES
(1, 'f1-001', 'f2-001', 'f3-001'),
(2, 'f1-001', 'f2-001x', 'f3-001'),
(3, 'f1-001', 'f2-001', 'f3-001'),
(4, 'f1-002', 'f2-002', 'f3-002x'),
(5, 'f1-002', 'f2-002', 'f3-002'),
(6, 'f1-002', 'f2-002', 'f3-002'),
(7, 'f1-003', 'f2-003', 'f3-003'),
(8, 'f1-003', 'f2-003', 'f3-003'),
(9, 'f1-003', 'f2-003', 'f3-003'),
(10, 'f1-003', 'f2-003x', 'f3-003');

-- --------------------------------------------------------

--
-- Table structure for table `territoryfile`
--

CREATE TABLE `territoryfile` (
  `tercde` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `territoryfile`
--

INSERT INTO `territoryfile` (`tercde`) VALUES
('CALOOCAN'),
('MALABON'),
('NAVOTAS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeefile`
--
ALTER TABLE `employeefile`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `salesfile1`
--
ALTER TABLE `salesfile1`
  ADD PRIMARY KEY (`docnum`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`recid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeefile`
--
ALTER TABLE `employeefile`
  MODIFY `recid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `salesfile1`
--
ALTER TABLE `salesfile1`
  MODIFY `docnum` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `table1`
--
ALTER TABLE `table1`
  MODIFY `recid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table2`
--
ALTER TABLE `table2`
  MODIFY `recid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
