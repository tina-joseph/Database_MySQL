-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2022 at 09:49 PM
-- Server version: 10.3.37-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tijoseph_db`
--
CREATE DATABASE IF NOT EXISTS `tijoseph_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tijoseph_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ARRANGE`
--

DROP TABLE IF EXISTS `ARRANGE`;
CREATE TABLE `ARRANGE` (
  `B_ID` char(3) NOT NULL,
  `MAT_ID` char(4) NOT NULL,
  `A_LASTING_TIME` varchar(7) DEFAULT NULL,
  `A_NO_OF_MAT` varchar(3) DEFAULT NULL,
  `A_DESCRIPTION` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ARRANGE`
--

INSERT INTO `ARRANGE` (`B_ID`, `MAT_ID`, `A_LASTING_TIME`, `A_NO_OF_MAT`, `A_DESCRIPTION`) VALUES
('B02', 'A104', '1 week', '18', 'Style: Pleasing for her'),
('B02', 'B101', '2 week', '19', 'Style: Pleasing for her'),
('B02', 'M201', NULL, NULL, NULL),
('B04', 'A103', '1 week', '22', 'Symmetric arrangements, dews '),
('B04', 'B102', '2 week', '15', 'Symmetric arrangement');

-- --------------------------------------------------------

--
-- Table structure for table `BOUQUET`
--

DROP TABLE IF EXISTS `BOUQUET`;
CREATE TABLE `BOUQUET` (
  `B_ID` char(3) NOT NULL,
  `B_NAME` varchar(35) NOT NULL,
  `B_COLOR` varchar(15) DEFAULT NULL,
  `B_THEME` varchar(15) DEFAULT NULL,
  `B_SIZE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BOUQUET`
--

INSERT INTO `BOUQUET` (`B_ID`, `B_NAME`, `B_COLOR`, `B_THEME`, `B_SIZE`) VALUES
('B01', 'Twilight Bouquet', 'Lavender', 'Spring', 'Standard'),
('B02', 'Citrus Smiles Bouquet', 'Orange', 'Friendship', 'Deluxe'),
('B03', 'Cotton Candy', 'Pink ', 'Celebration', 'Standard'),
('B04', 'Heart and Soul', 'Red', 'Anniversary', 'Premium'),
('B05', 'Blue Horizon', 'Blue', 'Birthday', 'Deluxe');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
CREATE TABLE `CUSTOMER` (
  `CUS_ID` int(5) NOT NULL,
  `CUS_FNAME` varchar(20) NOT NULL,
  `CUS_LNAME` varchar(20) NOT NULL,
  `CUS_INITIAL` char(1) DEFAULT NULL,
  `CUS_AREACODE` char(3) DEFAULT NULL,
  `CUS_PHONE` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`CUS_ID`, `CUS_FNAME`, `CUS_LNAME`, `CUS_INITIAL`, `CUS_AREACODE`, `CUS_PHONE`) VALUES
(10001, 'Anna', 'George', 'M', '463', '297-1235'),
(10002, 'Leona ', 'David', 'S', '463', '879-9845'),
(10003, 'James', 'Lawrence', '', '713', '894-9138'),
(10004, 'Emma', 'Paul', 'T', '615', '645-2285'),
(10005, 'Ivy', 'Perry', 'A', '713', '894-2180'),
(10006, 'Mike', 'Brown', 'G', '615', '390-2559');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
CREATE TABLE `EMPLOYEE` (
  `EMP_ID` int(3) NOT NULL,
  `EMP_FNAME` varchar(20) NOT NULL,
  `EMP_LNAME` varchar(20) NOT NULL,
  `EMP_INITIAL` char(1) DEFAULT NULL,
  `EMP_AREACODE` char(3) NOT NULL,
  `EMP_PHONE` char(8) NOT NULL,
  `EMP_DOJ` date NOT NULL,
  `EMP_SALARY` float(7,2) NOT NULL,
  `EMP_ROLECAT` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_INITIAL`, `EMP_AREACODE`, `EMP_PHONE`, `EMP_DOJ`, `EMP_SALARY`, `EMP_ROLECAT`) VALUES
(101, 'Vanessa', 'George', 'D', '615', '324-4472', '2000-03-19', 4100.00, 'Florist'),
(102, 'Maria', 'Rhett', '', '901', '675-8993', '2000-09-14', 3750.00, 'Florist'),
(103, 'Rob', 'Jones', 'M', '615', '898-3456', '2000-10-03', 3500.00, 'Cashier'),
(104, 'Eva', 'John', '', '463', '504-4430', '2003-11-08', 4200.00, 'Sales'),
(105, 'Rina', 'Williams', 'D', '615', '890-3220', '2005-07-14', 3500.00, 'Sales'),
(106, 'Jenny', 'Smith', '', '615', '324-7883', '2004-02-12', 3200.00, 'Florist'),
(107, 'Shawn', 'Jose', 'B', '479', '890-4567', '2005-08-21', 3500.00, 'Sales'),
(108, 'Joe', 'Paul', '', '615', '897-4358', '2008-02-07', 3700.00, 'Florist'),
(109, 'Caleb', 'George', 'K', '463', '504-3339', '2010-06-18', 2500.00, 'Florist'),
(110, 'Steve', 'Dane', 'W', '901', '569-0093', '2013-05-19', 1700.00, 'Delivery Incharge'),
(111, 'Edward', 'Rupert', '', '615', '890-4925', '2013-06-21', 1950.00, 'Delivery Incharge'),
(112, 'Brian', 'Johnson', 'E', '615', '898-4387', '2017-05-14', 2050.00, 'Sales'),
(113, 'Sara', 'Morris', 'P', '615', '324-9006', '2017-09-15', 3250.00, 'Cashier'),
(114, 'Gia', 'Marie', '', '901', '882-0845', '2020-11-02', 1900.00, 'Sales'),
(115, 'Sandra', 'Rhode', 'R', '615', '324-5505', '2022-07-25', 3700.00, 'Florist');

-- --------------------------------------------------------

--
-- Table structure for table `FLORIST`
--

DROP TABLE IF EXISTS `FLORIST`;
CREATE TABLE `FLORIST` (
  `EMP_ID` int(3) NOT NULL,
  `FL_TITLE` varchar(25) NOT NULL,
  `FL_CERTIFICATION` varchar(60) DEFAULT NULL,
  `FL_CERT_DATE` date DEFAULT NULL,
  `FL_RATING` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FLORIST`
--

INSERT INTO `FLORIST` (`EMP_ID`, `FL_TITLE`, `FL_CERTIFICATION`, `FL_CERT_DATE`, `FL_RATING`) VALUES
(101, 'Head Florist', 'Level 5 Master Diploma', '2000-01-10', '4.9'),
(102, 'Floral Lead Clerk', 'Level 4 Higher Diploma', '2000-06-15', '4.7'),
(106, 'Floral Clerk', 'BTEC Level 3 Diploma', '2003-10-10', '4.1'),
(108, 'Floral Designer', 'Level 5 Master Diploma', '2005-01-12', '4.6'),
(109, 'Floral Clerk', 'BTEC Level 3 Subsidiary Diploma', '2007-10-01', '3.9'),
(115, 'Floral Designer', 'BA (Hons) Professional Floristry and Floral Design', '2020-12-10', '4.6');

-- --------------------------------------------------------

--
-- Table structure for table `MATERIAL`
--

DROP TABLE IF EXISTS `MATERIAL`;
CREATE TABLE `MATERIAL` (
  `MAT_ID` char(4) NOT NULL,
  `MAT_NAME` varchar(25) NOT NULL,
  `MAT_TYPE` varchar(15) NOT NULL,
  `MAT_COLOR` varchar(15) DEFAULT NULL,
  `MAT_QTY_HAND` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MATERIAL`
--

INSERT INTO `MATERIAL` (`MAT_ID`, `MAT_NAME`, `MAT_TYPE`, `MAT_COLOR`, `MAT_QTY_HAND`) VALUES
('A101', 'Tulips', 'Flower', 'White', 44),
('A102', 'Chrysanthemums', 'Flower', 'Pink', 20),
('A103', 'Rose', 'Flower', 'Red', 78),
('A104', 'Carnation', 'Flower', 'Orange', 74),
('B101', 'Myrtle', 'Leaves', 'Green', 68),
('B102', 'Tree Fern', 'Leaves', 'Green', 39),
('M201', 'Thick wrapping paper', 'Accessory', 'Clear', 52),
('M202', 'Wrapping Mesh', 'Accessory', 'White', 17);

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
CREATE TABLE `PAYMENT` (
  `P_ID` int(9) NOT NULL,
  `P_TYPE` varchar(8) NOT NULL,
  `P_STATUS` varchar(10) NOT NULL,
  `P_AMOUNT` float(9,2) NOT NULL,
  `P_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`P_ID`, `P_TYPE`, `P_STATUS`, `P_AMOUNT`, `P_DATE`) VALUES
(210000001, 'Card', 'Completed', 1050.00, '2005-04-08'),
(210000002, 'Cash', 'Completed', 80.00, '2004-08-03'),
(210000003, 'Check', 'Pending', 5590.00, '2005-11-18'),
(210000004, 'Card', 'Completed', 150.00, '2021-04-30'),
(210000005, 'Cash', 'Pending', 290.00, '2022-02-11'),
(210000006, 'Card', 'Completed', 55.00, '2021-12-03'),
(210000007, 'Cash', 'Completed', 60.00, '2022-01-03'),
(210000008, 'Card', 'Completed', 120.00, '2022-02-15'),
(210000009, 'Check', 'Completed', 2210.00, '2021-08-13'),
(210000010, 'Card', 'Completed', 790.00, '2022-04-29'),
(210000011, 'Card', 'Cancelled', 119.99, '2020-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `PURCHASE_LINE`
--

DROP TABLE IF EXISTS `PURCHASE_LINE`;
CREATE TABLE `PURCHASE_LINE` (
  `MAT_ID` char(4) NOT NULL,
  `PORDER_ID` int(7) NOT NULL,
  `PLINE_DATE` date DEFAULT NULL,
  `PLINE_QUANTITY` int(11) NOT NULL,
  `PLINE_RATE` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PURCHASE_LINE`
--

INSERT INTO `PURCHASE_LINE` (`MAT_ID`, `PORDER_ID`, `PLINE_DATE`, `PLINE_QUANTITY`, `PLINE_RATE`) VALUES
('A102', 9000105, '2022-04-29', 175, 1.59),
('A103', 9000105, '2022-04-29', 250, 1.99),
('A104', 9000101, '2005-04-08', 425, 2.28),
('M201', 9000104, '2021-08-13', 500, 2.59),
('M202', 9000104, '2021-08-13', 350, 1.79);

-- --------------------------------------------------------

--
-- Table structure for table `PURCHASE_ORDER`
--

DROP TABLE IF EXISTS `PURCHASE_ORDER`;
CREATE TABLE `PURCHASE_ORDER` (
  `PORDER_ID` int(7) NOT NULL,
  `PORDER_DATE` date NOT NULL,
  `PORDER_STATUS` varchar(10) NOT NULL,
  `V_ID` int(4) NOT NULL,
  `EMP_ID` int(3) NOT NULL,
  `P_ID` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PURCHASE_ORDER`
--

INSERT INTO `PURCHASE_ORDER` (`PORDER_ID`, `PORDER_DATE`, `PORDER_STATUS`, `V_ID`, `EMP_ID`, `P_ID`) VALUES
(9000101, '2005-04-08', 'Received', 2102, 104, 210000001),
(9000102, '2005-11-18', 'Cancelled', 2101, 104, 210000003),
(9000103, '2022-02-11', 'Received', 2104, 105, 210000005),
(9000104, '2021-08-13', 'Received', 2101, 107, 210000009),
(9000105, '2022-04-29', 'Received', 2103, 105, 210000010);

-- --------------------------------------------------------

--
-- Table structure for table `SALES_ASSOCIATE`
--

DROP TABLE IF EXISTS `SALES_ASSOCIATE`;
CREATE TABLE `SALES_ASSOCIATE` (
  `EMP_ID` int(3) NOT NULL,
  `SL_JOB_TITLE` varchar(25) NOT NULL,
  `SL_QUALIFICATION` varchar(40) DEFAULT NULL,
  `SL_YEARS_EXP` varchar(20) DEFAULT NULL,
  `SL_EMPTYPE` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SALES_ASSOCIATE`
--

INSERT INTO `SALES_ASSOCIATE` (`EMP_ID`, `SL_JOB_TITLE`, `SL_QUALIFICATION`, `SL_YEARS_EXP`, `SL_EMPTYPE`) VALUES
(104, 'Sales Manager', 'MBA in Marketing', '21 Years', 'Permanent'),
(105, 'Sales Associate', 'BS in Finance', '16 Years', 'Permanent'),
(107, 'Sales Associate', 'BA in Business Administration ', '14 Years', 'Permanent'),
(112, 'Sales Assistant', 'BA in Communication', '2 Years', 'Part-Time'),
(114, 'Sales Assistant', 'BS in Marketing', '4 Months', 'Part-Time');

-- --------------------------------------------------------

--
-- Table structure for table `SALES_LINE`
--

DROP TABLE IF EXISTS `SALES_LINE`;
CREATE TABLE `SALES_LINE` (
  `B_ID` char(3) NOT NULL,
  `SORDER_ID` int(6) NOT NULL,
  `SLINE_DATE` date DEFAULT NULL,
  `SLINE_NOB` int(11) NOT NULL,
  `SLINE_RATE` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SALES_LINE`
--

INSERT INTO `SALES_LINE` (`B_ID`, `SORDER_ID`, `SLINE_DATE`, `SLINE_NOB`, `SLINE_RATE`) VALUES
('B01', 31003, '2020-03-27', 2, 52.50),
('B02', 31001, '2021-11-12', 1, 58.99),
('B03', 31004, '2022-02-15', 1, 42.75),
('B04', 31001, '2021-11-12', 1, 85.99),
('B05', 31004, '2022-02-15', 2, 35.65);

-- --------------------------------------------------------

--
-- Table structure for table `SALES_ORDER`
--

DROP TABLE IF EXISTS `SALES_ORDER`;
CREATE TABLE `SALES_ORDER` (
  `SORDER_ID` int(6) NOT NULL,
  `CUS_ID` int(5) NOT NULL,
  `EMP_ID` int(3) NOT NULL,
  `SORDER_DATE` date NOT NULL,
  `SORDER_STATUS` varchar(10) NOT NULL,
  `P_ID` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SALES_ORDER`
--

INSERT INTO `SALES_ORDER` (`SORDER_ID`, `CUS_ID`, `EMP_ID`, `SORDER_DATE`, `SORDER_STATUS`, `P_ID`) VALUES
(31001, 10003, 112, '2021-11-12', 'Delivered', 210000004),
(31002, 10004, 112, '2004-08-02', 'Delivered', 210000002),
(31003, 10005, 107, '2020-03-27', 'Cancelled', 210000011),
(31004, 10002, 107, '2022-02-15', 'Delivered', 210000008),
(31005, 10003, 113, '2022-01-03', 'Delivered', 210000007);

-- --------------------------------------------------------

--
-- Table structure for table `VENDOR`
--

DROP TABLE IF EXISTS `VENDOR`;
CREATE TABLE `VENDOR` (
  `V_ID` int(4) NOT NULL,
  `V_NAME` varchar(30) NOT NULL,
  `V_STREET` varchar(30) DEFAULT NULL,
  `V_CITY` varchar(30) DEFAULT NULL,
  `V_STATE` char(2) DEFAULT NULL,
  `V_ZIP` char(5) NOT NULL,
  `V_AREACODE` char(3) NOT NULL,
  `V_PHONE` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VENDOR`
--

INSERT INTO `VENDOR` (`V_ID`, `V_NAME`, `V_STREET`, `V_CITY`, `V_STATE`, `V_ZIP`, `V_AREACODE`, `V_PHONE`) VALUES
(2101, 'Brian, Inc.', 'Capitol Ave', 'Austin', 'TX', '75056', '512', '882-0869'),
(2102, 'Lilacs, Inc.', 'Blake St', 'San Francisco', 'CA', '94105', '984', '215-8995'),
(2103, 'Violets Sup', 'Strake Blvd', 'Nashville', 'TN', '37011', '615', '228-3245'),
(2104, 'Grade Flowers.', 'Maple str', 'Seattle', 'WA', '98105', '674', '889-2546'),
(2105, 'Dome Supply', 'Lofty way', 'Phoenix', 'AZ', '85004', '901', '678-1419'),
(2106, 'Billy Dist.', '34th St', 'San Diego', 'CA', '92014', '765', '905-7395');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ARRANGE`
--
ALTER TABLE `ARRANGE`
  ADD PRIMARY KEY (`B_ID`,`MAT_ID`),
  ADD KEY `MAT_ID` (`MAT_ID`);

--
-- Indexes for table `BOUQUET`
--
ALTER TABLE `BOUQUET`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`CUS_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `FLORIST`
--
ALTER TABLE `FLORIST`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `MATERIAL`
--
ALTER TABLE `MATERIAL`
  ADD PRIMARY KEY (`MAT_ID`);

--
-- Indexes for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `PURCHASE_LINE`
--
ALTER TABLE `PURCHASE_LINE`
  ADD PRIMARY KEY (`MAT_ID`,`PORDER_ID`),
  ADD KEY `PORDER_ID` (`PORDER_ID`);

--
-- Indexes for table `PURCHASE_ORDER`
--
ALTER TABLE `PURCHASE_ORDER`
  ADD PRIMARY KEY (`PORDER_ID`),
  ADD KEY `V_ID` (`V_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `SALES_ASSOCIATE`
--
ALTER TABLE `SALES_ASSOCIATE`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `SALES_LINE`
--
ALTER TABLE `SALES_LINE`
  ADD PRIMARY KEY (`B_ID`,`SORDER_ID`),
  ADD KEY `SORDER_ID` (`SORDER_ID`);

--
-- Indexes for table `SALES_ORDER`
--
ALTER TABLE `SALES_ORDER`
  ADD PRIMARY KEY (`SORDER_ID`),
  ADD KEY `CUS_ID` (`CUS_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`),
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `VENDOR`
--
ALTER TABLE `VENDOR`
  ADD PRIMARY KEY (`V_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ARRANGE`
--
ALTER TABLE `ARRANGE`
  ADD CONSTRAINT `ARRANGE_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `BOUQUET` (`B_ID`),
  ADD CONSTRAINT `ARRANGE_ibfk_2` FOREIGN KEY (`MAT_ID`) REFERENCES `MATERIAL` (`MAT_ID`);

--
-- Constraints for table `FLORIST`
--
ALTER TABLE `FLORIST`
  ADD CONSTRAINT `FLORIST_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `PURCHASE_LINE`
--
ALTER TABLE `PURCHASE_LINE`
  ADD CONSTRAINT `PURCHASE_LINE_ibfk_1` FOREIGN KEY (`MAT_ID`) REFERENCES `MATERIAL` (`MAT_ID`),
  ADD CONSTRAINT `PURCHASE_LINE_ibfk_2` FOREIGN KEY (`PORDER_ID`) REFERENCES `PURCHASE_ORDER` (`PORDER_ID`);

--
-- Constraints for table `PURCHASE_ORDER`
--
ALTER TABLE `PURCHASE_ORDER`
  ADD CONSTRAINT `PURCHASE_ORDER_ibfk_1` FOREIGN KEY (`V_ID`) REFERENCES `VENDOR` (`V_ID`),
  ADD CONSTRAINT `PURCHASE_ORDER_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `PURCHASE_ORDER_ibfk_3` FOREIGN KEY (`P_ID`) REFERENCES `PAYMENT` (`P_ID`);

--
-- Constraints for table `SALES_ASSOCIATE`
--
ALTER TABLE `SALES_ASSOCIATE`
  ADD CONSTRAINT `SALES_ASSOCIATE_ibfk_1` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `SALES_LINE`
--
ALTER TABLE `SALES_LINE`
  ADD CONSTRAINT `SALES_LINE_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `BOUQUET` (`B_ID`),
  ADD CONSTRAINT `SALES_LINE_ibfk_2` FOREIGN KEY (`SORDER_ID`) REFERENCES `SALES_ORDER` (`SORDER_ID`);

--
-- Constraints for table `SALES_ORDER`
--
ALTER TABLE `SALES_ORDER`
  ADD CONSTRAINT `SALES_ORDER_ibfk_1` FOREIGN KEY (`CUS_ID`) REFERENCES `CUSTOMER` (`CUS_ID`),
  ADD CONSTRAINT `SALES_ORDER_ibfk_2` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `SALES_ORDER_ibfk_3` FOREIGN KEY (`P_ID`) REFERENCES `PAYMENT` (`P_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
