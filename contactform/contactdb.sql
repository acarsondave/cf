-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2020 at 12:07 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(150) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `UserName`, `Password`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$WgybxgedwOfUDo65ap5yfODNp/pWe1rnUxjbuciPZYbYW6am9KAzS', '2020-07-04 22:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbladminremarks`
--

CREATE TABLE `tbladminremarks` (
  `id` int(11) NOT NULL,
  `contactFormId` int(11) DEFAULT NULL,
  `adminRemark` mediumtext,
  `remarkDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladminremarks`
--

INSERT INTO `tbladminremarks` (`id`, `contactFormId`, `adminRemark`, `remarkDate`) VALUES
(4, 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2020-08-19 07:06:45'),
(5, 1, 'vvsdvsd sg sgd s', '2020-08-22 04:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactdata`
--

CREATE TABLE `tblcontactdata` (
  `id` int(11) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PhoneNumber` char(12) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `UserIp` varbinary(16) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Is_Read` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactdata`
--

INSERT INTO `tblcontactdata` (`id`, `FullName`, `PhoneNumber`, `EmailId`, `Subject`, `Message`, `UserIp`, `PostingDate`, `Is_Read`) VALUES
(1, 'test', '2374288888', 'test@gmail.com', 'Test Subject', 'This is sample text for testing', 0x3a3a31, '2020-07-28 07:39:10', 1),
(2, 'test', '2374288888', 'test@gmail.com', 'Test Subject', 'This is sample text for testing', 0x3a3a31, '2020-07-28 07:42:21', 1),
(3, 'test user', '9872131232', 'test@gmail.com', 'Test', 'Sample text fro testing', 0x3a3a31, '2020-07-28 07:51:19', 1),
(4, 'John Doe', '8978978978', 'test@gmail.com', 'Test', 'asdkhadhkasd asdbasbdka', 0x3a3a31, '2020-08-16 17:30:18', 1),
(5, 'Mr Test', '435345345', 'test@gmail.com', 'hfdh dh', ' h hdfh', 0x3a3a31, '2020-08-18 12:27:37', 1),
(6, 'Mr Test', '435345345', 'test@gmail.com', 'Test Subject', 'Lorem ipsum dolor sit amet, vim no primis saperet. Ea sea dolorum nominavi delectus, ad est sint corpora intellegat, erant tritani id vel. Id sonet altera prodesset mei, sit an soleat facete. Cu timeam eruditi deserunt sea, posidonium conclusionemque quo in. Pri an labitur accusam conclusionemque, suavitate posidonium interesset an vis, ius possim voluptaria eloquentiam ut.', 0x3a3a31, '2020-08-19 12:27:44', 1),
(7, 'Test Manchi', '12345678', 'test@gmail.com', 'Hello World', 'This is a test from test:)', 0x3a3a31, '2020-07-04 22:44:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblemail`
--

CREATE TABLE `tblemail` (
  `id` int(11) NOT NULL,
  `emailId` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemail`
--

INSERT INTO `tblemail` (`id`, `emailId`, `UpdationDate`) VALUES
(1, 'acarsondave7@gmail.com', '2020-08-22 18:51:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladminremarks`
--
ALTER TABLE `tbladminremarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactdata`
--
ALTER TABLE `tblcontactdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemail`
--
ALTER TABLE `tblemail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbladminremarks`
--
ALTER TABLE `tbladminremarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcontactdata`
--
ALTER TABLE `tblcontactdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblemail`
--
ALTER TABLE `tblemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
