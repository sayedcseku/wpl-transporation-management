-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2017 at 05:55 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms1`
--

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) NOT NULL,
  `start` varchar(50) NOT NULL,
  `dest` varchar(50) NOT NULL,
  `via` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `id` int(11) NOT NULL,
  `asset_type` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `isRented` varchar(5) NOT NULL DEFAULT '0',
  `rent_cost` int(11) DEFAULT NULL,
  `liscence_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `tbl_assets` CHANGE `isRented` `isRented` VARCHAR(5) NOT NULL DEFAULT 'false';
-- --------------------------------------------------------

--
-- Table structure for table `tbl_combination`
--

CREATE TABLE `tbl_combination` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `driver_id` varchar(50) NOT NULL,
  `helper_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`ID`, `Name`, `Category`) VALUES
('ASSETS_C', 'ASSETS_C', 'ASSET CATEGORY'),
('ASSETS_D', 'ASSETS_D', 'ASSET CATEGORY'),
('ASSETS_R', 'ASSETS_R', 'ASSET CATEGORY'),
('ASSETS_U', 'ASSETS_U', 'ASSET CATEGORY'),
('DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
('DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
('DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
('DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
('DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
('DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
('DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
('DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
('DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
('DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
('DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
('DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
('DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
('DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
('PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
('PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
('PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
('PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
('POSITION_C', 'POSITION_C', 'POSITION'),
('POSITION_D', 'POSITION_D', 'POSITION'),
('POSITION_R', 'POSITION_R', 'POSITION'),
('POSITION_U', 'POSITION_U', 'POSITION'),
('ROLE_C', 'ROLE_C', 'ROLE'),
('ROLE_D', 'ROLE_D', 'ROLE'),
('ROLE_R', 'ROLE_R', 'ROLE'),
('ROLE_U', 'ROLE_U', 'ROLE'),
('SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
('SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
('SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
('SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
('TERM_C', 'TERM_C', 'TERM'),
('TERM_D', 'TERM_D', 'TERM'),
('TERM_R', 'TERM_R', 'TERM'),
('TERM_U', 'TERM_U', 'TERM'),
('USER_C', 'USER_C', 'USER'),
('USER_D', 'USER_D', 'USER'),
('USER_R', 'USER_R', 'USER'),
('USER_U', 'USER_U', 'USER'),
('YEAR_C', 'YEAR_C', 'YEAR'),
('YEAR_D', 'YEAR_D', 'YEAR'),
('YEAR_R', 'YEAR_R', 'YEAR'),
('YEAR_U', 'YEAR_U', 'YEAR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('driver', 'Driver'),
('helper', 'Helper'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role_permission`
--

CREATE TABLE `tbl_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role_permission`
--

INSERT INTO `tbl_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1558, 'administrator', 'ASSETS_C'),
(1559, 'administrator', 'ASSETS_D'),
(1560, 'administrator', 'ASSETS_R'),
(1561, 'administrator', 'ASSETS_U'),
(1562, 'administrator', 'DISCIPLINE_C'),
(1563, 'administrator', 'DISCIPLINE_D'),
(1564, 'administrator', 'DISCIPLINE_R'),
(1565, 'administrator', 'DISCIPLINE_U'),
(1566, 'administrator', 'DISCUSSION_C'),
(1567, 'administrator', 'DISCUSSION_D'),
(1568, 'administrator', 'DISCUSSION_R'),
(1569, 'administrator', 'DISCUSSION_U'),
(1570, 'administrator', 'DISCUSSION_CAT_C'),
(1571, 'administrator', 'DISCUSSION_CAT_D'),
(1572, 'administrator', 'DISCUSSION_CAT_R'),
(1573, 'administrator', 'DISCUSSION_CAT_U'),
(1574, 'administrator', 'DISCUSSION_COMMENT_C'),
(1575, 'administrator', 'DISCUSSION_COMMENT_D'),
(1576, 'administrator', 'DISCUSSION_COMMENT_R'),
(1577, 'administrator', 'DISCUSSION_COMMENT_U'),
(1578, 'administrator', 'PERMISSION_C'),
(1579, 'administrator', 'PERMISSION_D'),
(1580, 'administrator', 'PERMISSION_R'),
(1581, 'administrator', 'PERMISSION_U'),
(1582, 'administrator', 'POSITION_C'),
(1583, 'administrator', 'POSITION_D'),
(1584, 'administrator', 'POSITION_R'),
(1585, 'administrator', 'POSITION_U'),
(1586, 'administrator', 'ROLE_C'),
(1587, 'administrator', 'ROLE_D'),
(1588, 'administrator', 'ROLE_R'),
(1589, 'administrator', 'ROLE_U'),
(1590, 'administrator', 'SCHOOL_C'),
(1591, 'administrator', 'SCHOOL_D'),
(1592, 'administrator', 'SCHOOL_R'),
(1593, 'administrator', 'SCHOOL_U'),
(1594, 'administrator', 'TERM_C'),
(1595, 'administrator', 'TERM_D'),
(1596, 'administrator', 'TERM_R'),
(1597, 'administrator', 'TERM_U'),
(1598, 'administrator', 'USER_C'),
(1599, 'administrator', 'USER_D'),
(1600, 'administrator', 'USER_R'),
(1601, 'administrator', 'USER_U'),
(1602, 'administrator', 'YEAR_C'),
(1603, 'administrator', 'YEAR_D'),
(1604, 'administrator', 'YEAR_R'),
(1605, 'administrator', 'YEAR_U'),
(1628, 'driver', 'ASSETS_C'),
(1629, 'driver', 'ASSETS_D'),
(1630, 'driver', 'ASSETS_R'),
(1631, 'driver', 'ASSETS_U'),
(1632, 'driver', 'DISCIPLINE_D'),
(1633, 'driver', 'DISCUSSION_D'),
(1634, 'driver', 'DISCUSSION_CAT_D'),
(1635, 'driver', 'DISCUSSION_COMMENT_D'),
(1636, 'driver', 'PERMISSION_D'),
(1637, 'driver', 'POSITION_D'),
(1638, 'driver', 'ROLE_C'),
(1639, 'driver', 'ROLE_D'),
(1640, 'driver', 'ROLE_R'),
(1641, 'driver', 'ROLE_U'),
(1642, 'driver', 'USER_C'),
(1643, 'driver', 'USER_D'),
(1644, 'driver', 'USER_R'),
(1645, 'driver', 'USER_U');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` smallint(1) DEFAULT NULL,
  `IsArchived` smallint(1) DEFAULT NULL,
  `IsDeleted` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `LastName`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('driver_1701@test.com', 'driver_1701', 'driver_1701@test.com', '123', 'Abdur', 'Rahman', '', NULL, 0, 0),
('tab1701@test.com', 'tab1701', 'tab1701@test.com', '123', 'No', 'One', '', NULL, 0, 0),
('test1@test.com', 'test1', 'test1@test.com', '123', 'Abu', 'Sayed', 'approved', NULL, NULL, NULL),
('test@test.com', '020201', 'test@test.com', '123', 'I AM', 'ADMIN', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_details`
--

CREATE TABLE `tbl_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_details`
--

INSERT INTO `tbl_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('driver_1701@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('tab1701@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('test1@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('test@test.com', 'My father', 'My mother', 'My address', '04100000', 'Same', '0171100000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(98, 'test@test.com', 'administrator'),
(99, 'test@test.com', 'teacher'),
(102, 'driver_1701@test.com', 'driver'),
(103, 'test1@test.com', 'student'),
(104, 'tab1701@test.com', 'tabulator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_combination`
--
ALTER TABLE `tbl_combination`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_id` (`asset_id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `helper_id` (`helper_id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `tbl_user_details`
--
ALTER TABLE `tbl_user_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_combination`
--
ALTER TABLE `tbl_combination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1646;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_combination` (`route_id`);

--
-- Constraints for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD CONSTRAINT `tbl_assets_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_combination` (`asset_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
