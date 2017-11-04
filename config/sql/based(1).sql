-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2017 at 05:53 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `based`
--

-- --------------------------------------------------------

--
-- Table structure for table `hms_hall`
--

CREATE TABLE `hms_hall` (
  `id` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `provost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `start`, `dest`, `via`) VALUES
(7, 'Hadi Cottor(2:00 PM)', 'Khalishpur(3:30 PM)', 'Gollamari(2:10 PM) - Sonadanga(2:15 PM) - Notun Rasta(3:00 PM)'),
(4, 'Hadi Cottor(5:00 PM)', 'Rupsa(6:00 PM)', 'Moyla Pota(5:30 PM)'),
(5, 'Khulna (5:00 AM)', 'Dhaka (2:00 PM)', 'Jessore(6:30 PM) - Faridpur(9:00 AM) - Jahangirnagar(12:00 PM)'),
(6, 'Khulna University', 'Khalishpur', 'Gollamari - Sonadanga - Boyra');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `id` int(11) NOT NULL,
  `at_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `isRented` varchar(5) NOT NULL DEFAULT 'false',
  `rent_cost` int(11) DEFAULT NULL,
  `liscence_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_assets`
--

INSERT INTO `tbl_assets` (`id`, `at_id`, `company_name`, `isRented`, `rent_cost`, `liscence_no`) VALUES
(5, 3, 'AK Travels', 'true', 20000, '25X9BNM76G '),
(6, 3, 'KU', 'false', 0, '25X9BNM76G1 '),
(7, 3, 'AR Rent-a-car', 'true', 8000, '24X9B2676G'),
(8, 2, 'KU', 'false', 0, '25X9BNM76 '),
(9, 2, 'AR Rent-a-car', 'true', 1500, '25X9BNM7 '),
(10, 3, 'Aj Group', 'true', 20005, '25X9BNM89'),
(11, 3, 'KU', 'false', 0, '25X9BNM45'),
(12, 2, 'Green Line', 'true', 15000, '25X9BNM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_asset_type`
--

CREATE TABLE `tbl_asset_type` (
  `at_id` int(10) NOT NULL,
  `type_name` varchar(150) NOT NULL,
  `specs` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_asset_type`
--

INSERT INTO `tbl_asset_type` (`at_id`, `type_name`, `specs`) VALUES
(2, 'NAC-Bus-Scania-50', 'Non-AC Scania Bus with 45 seats and one tv'),
(3, 'AC-Bus-Hino-45', 'Hino Ac bus, 45 seats (UPDATED)'),
(4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_combination`
--

CREATE TABLE `tbl_combination` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `driver_id` varchar(50) DEFAULT NULL,
  `helper_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_combination`
--

INSERT INTO `tbl_combination` (`id`, `asset_id`, `route_id`, `driver_id`, `helper_id`) VALUES
(1, 5, 4, 'driver_1701@test.com', 'helper1701@test.com'),
(2, 12, 7, 'driver_1702@test.com', 'helper1702@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discipline`
--

INSERT INTO `tbl_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion`
--

CREATE TABLE `tbl_discussion` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Tag` varchar(200) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `CreatorID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discussion`
--

INSERT INTO `tbl_discussion` (`ID`, `Title`, `CategoryID`, `Description`, `Tag`, `CreationDate`, `CreatorID`) VALUES
('{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'what is oop', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 'describe oop', 'oop', '2017-04-29 00:00:00', 'mkazi078@uottawa.ca'),
('{DA408BD0-9C9E-46F6-8CF2-00A631B06A26}', 'what is c#', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'this is c#', 'oop', '2017-04-29 00:00:00', 'mkazi078@uottawa.ca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_category`
--

CREATE TABLE `tbl_discussion_category` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discussion_category`
--

INSERT INTO `tbl_discussion_category` (`ID`, `Name`) VALUES
('{3D212234-2F34-4AB0-83EF-1A772068403B}', 'java'),
('{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'c#'),
('{974DE90C-BCAC-4FA3-8B9B-518A3CE6834A}', 'programming contest');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion_comment`
--

CREATE TABLE `tbl_discussion_comment` (
  `CommentID` varchar(50) NOT NULL,
  `DiscussionID` varchar(40) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `CommentTime` datetime NOT NULL,
  `CommentIDTop` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_discussion_comment`
--

INSERT INTO `tbl_discussion_comment` (`CommentID`, `DiscussionID`, `Comment`, `CreatorID`, `CommentTime`, `CommentIDTop`) VALUES
('{00AADED4-6799-4F2C-BECB-ED50F7B03DDE}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'new comment', 'mkazi078@uottawa.ca', '2017-06-26 19:18:08', NULL),
('{1634B01B-5F82-43EF-96F8-E6149F488424}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'it is PIE', 'mkazi078@uottawa.ca', '0000-00-00 00:00:00', NULL),
('{550A15FC-06B8-43DF-83EE-097E35920170}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'little difficult', 'mohidul@gmail.com', '0000-00-00 00:00:00', NULL),
('{A15517C2-883F-4E5E-B0AC-9A1DB556741F}', '{C9FB74F8-8341-4706-BE40-93BFDC3444D0}', 'Polymorphism, inheritence, encapsulation', 'mkazi078@uottawa.ca', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_geo_locations`
--

CREATE TABLE `tbl_geo_locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `latitude` text,
  `longitude` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_geo_locations`
--

INSERT INTO `tbl_geo_locations` (`id`, `location_name`, `latitude`, `longitude`) VALUES
(2, 'Gollamari', NULL, NULL),
(3, 'Hadi Cottor', NULL, NULL),
(4, 'Khalishpur', NULL, NULL),
(5, 'Khulna', NULL, NULL),
(6, 'Khulna University', NULL, NULL),
(7, 'Moyla Pota', NULL, NULL),
(8, 'Notun Rasta', NULL, NULL),
(9, 'Rupsa', NULL, NULL),
(10, 'Sonadanga', '22.8167', '89.55'),
(301, 'Dhaka', NULL, NULL),
(302, 'Faridpur', NULL, NULL),
(305, 'Jahangirnagar', NULL, NULL),
(306, 'Jessore', '21.8167', '91.10');

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
('HALL_C', 'HALL_C', 'HALL'),
('HALL_D', 'HALL_D', 'HALL'),
('HALL_R', 'HALL_R', 'HALL'),
('HALL_U', 'HALL_U', 'HALL'),
('MAP_C', 'MAP_C', 'MAP CATEGORY'),
('MAP_D', 'MAP_D', 'MAP CATEGORY'),
('MAP_R', 'MAP_R', 'MAP CATEGORY'),
('MAP_U', 'MAP_U', 'MAP CATEGORY'),
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
('ROUTES_C', 'ROUTES_C', 'ROUTES CATEGORY'),
('ROUTES_D', 'ROUTES_D', 'ROUTES CATEGORY'),
('ROUTES_R', 'ROUTES_R', 'ROUTES CATEGORY'),
('ROUTES_U', 'ROUTES_U', 'ROUTES CATEGORY'),
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
-- Table structure for table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_position`
--

INSERT INTO `tbl_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

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
('hall assign', 'Hall Assign'),
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
(1809, 'hall assign', 'TERM_C'),
(1810, 'hall assign', 'TERM_D'),
(1811, 'hall assign', 'TERM_R'),
(1812, 'hall assign', 'TERM_U'),
(1813, 'hall assign', 'USER_C'),
(1814, 'hall assign', 'USER_D'),
(1815, 'hall assign', 'USER_R'),
(1816, 'hall assign', 'USER_U'),
(1817, 'hall assign', 'YEAR_C'),
(1818, 'hall assign', 'YEAR_D'),
(1819, 'hall assign', 'YEAR_R'),
(1820, 'hall assign', 'YEAR_U'),
(1881, '', 'MAP_C'),
(1882, '', 'MAP_D'),
(1883, '', 'MAP_R'),
(1884, '', 'MAP_U'),
(1898, 'administrator', 'ASSETS_C'),
(1899, 'administrator', 'ASSETS_D'),
(1900, 'administrator', 'ASSETS_R'),
(1901, 'administrator', 'ASSETS_U'),
(1902, 'administrator', 'DISCIPLINE_C'),
(1903, 'administrator', 'DISCIPLINE_D'),
(1904, 'administrator', 'DISCIPLINE_R'),
(1905, 'administrator', 'DISCIPLINE_U'),
(1906, 'administrator', 'DISCUSSION_C'),
(1907, 'administrator', 'DISCUSSION_D'),
(1908, 'administrator', 'DISCUSSION_R'),
(1909, 'administrator', 'DISCUSSION_U'),
(1910, 'administrator', 'DISCUSSION_CAT_C'),
(1911, 'administrator', 'DISCUSSION_CAT_D'),
(1912, 'administrator', 'DISCUSSION_CAT_R'),
(1913, 'administrator', 'DISCUSSION_CAT_U'),
(1914, 'administrator', 'DISCUSSION_COMMENT_C'),
(1915, 'administrator', 'DISCUSSION_COMMENT_D'),
(1916, 'administrator', 'DISCUSSION_COMMENT_R'),
(1917, 'administrator', 'DISCUSSION_COMMENT_U'),
(1918, 'administrator', 'HALL_C'),
(1919, 'administrator', 'HALL_D'),
(1920, 'administrator', 'HALL_R'),
(1921, 'administrator', 'HALL_U'),
(1922, 'administrator', 'MAP_C'),
(1923, 'administrator', 'MAP_D'),
(1924, 'administrator', 'MAP_R'),
(1925, 'administrator', 'MAP_U'),
(1926, 'administrator', 'PERMISSION_C'),
(1927, 'administrator', 'PERMISSION_D'),
(1928, 'administrator', 'PERMISSION_R'),
(1929, 'administrator', 'PERMISSION_U'),
(1930, 'administrator', 'POSITION_C'),
(1931, 'administrator', 'POSITION_D'),
(1932, 'administrator', 'POSITION_R'),
(1933, 'administrator', 'POSITION_U'),
(1934, 'administrator', 'ROLE_C'),
(1935, 'administrator', 'ROLE_D'),
(1936, 'administrator', 'ROLE_R'),
(1937, 'administrator', 'ROLE_U'),
(1938, 'administrator', 'ROUTES_C'),
(1939, 'administrator', 'ROUTES_D'),
(1940, 'administrator', 'ROUTES_R'),
(1941, 'administrator', 'ROUTES_U'),
(1942, 'administrator', 'SCHOOL_C'),
(1943, 'administrator', 'SCHOOL_D'),
(1944, 'administrator', 'SCHOOL_R'),
(1945, 'administrator', 'SCHOOL_U'),
(1946, 'administrator', 'TERM_C'),
(1947, 'administrator', 'TERM_D'),
(1948, 'administrator', 'TERM_R'),
(1949, 'administrator', 'TERM_U'),
(1950, 'administrator', 'USER_C'),
(1951, 'administrator', 'USER_D'),
(1952, 'administrator', 'USER_R'),
(1953, 'administrator', 'USER_U'),
(1954, 'administrator', 'YEAR_C'),
(1955, 'administrator', 'YEAR_D'),
(1956, 'administrator', 'YEAR_R'),
(1957, 'administrator', 'YEAR_U'),
(1985, 'driver', 'ASSETS_D'),
(1986, 'driver', 'DISCIPLINE_D'),
(1987, 'driver', 'DISCUSSION_D'),
(1988, 'driver', 'DISCUSSION_CAT_D'),
(1989, 'driver', 'DISCUSSION_COMMENT_D'),
(1990, 'driver', 'MAP_D'),
(1991, 'driver', 'PERMISSION_D'),
(1992, 'driver', 'POSITION_D'),
(1993, 'driver', 'ROLE_D'),
(1994, 'driver', 'ROUTES_D'),
(1995, 'driver', 'USER_C'),
(1996, 'driver', 'USER_D'),
(1997, 'driver', 'USER_R'),
(1998, 'driver', 'USER_U'),
(1999, 'helper', 'ASSETS_D'),
(2000, 'helper', 'DISCIPLINE_D'),
(2001, 'helper', 'DISCUSSION_D'),
(2002, 'helper', 'DISCUSSION_CAT_D'),
(2003, 'helper', 'DISCUSSION_COMMENT_D'),
(2004, 'helper', 'HALL_D'),
(2005, 'helper', 'MAP_D'),
(2006, 'helper', 'PERMISSION_D'),
(2007, 'helper', 'POSITION_D'),
(2008, 'helper', 'ROLE_D'),
(2009, 'helper', 'ROUTES_D'),
(2010, 'helper', 'SCHOOL_D'),
(2011, 'helper', 'TERM_D'),
(2012, 'helper', 'USER_D'),
(2013, 'helper', 'YEAR_D'),
(2014, 'student', 'ASSETS_D'),
(2015, 'student', 'DISCUSSION_C'),
(2016, 'student', 'DISCUSSION_D'),
(2017, 'student', 'DISCUSSION_R'),
(2018, 'student', 'DISCUSSION_U'),
(2019, 'student', 'DISCUSSION_CAT_C'),
(2020, 'student', 'DISCUSSION_CAT_D'),
(2021, 'student', 'DISCUSSION_CAT_R'),
(2022, 'student', 'DISCUSSION_CAT_U'),
(2023, 'student', 'DISCUSSION_COMMENT_C'),
(2024, 'student', 'DISCUSSION_COMMENT_D'),
(2025, 'student', 'DISCUSSION_COMMENT_R'),
(2026, 'student', 'DISCUSSION_COMMENT_U'),
(2027, 'student', 'MAP_D'),
(2028, 'student', 'ROUTES_D'),
(2029, 'student', 'USER_D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term`
--

CREATE TABLE `tbl_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_term`
--

INSERT INTO `tbl_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

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
('another1@test.com', '020205', 'another1@test.com', '123', 'Another1', 'Test ', 'approved', NULL, NULL, NULL),
('another@test.com', '020202', 'another@test.com', '123', 'Another', 'Test      ', 'approved', NULL, NULL, NULL),
('driver_1701@test.com', 'driver_1701', 'driver_1701@test.com', '123', 'Abdur', 'Rahman', '', NULL, 0, 0),
('driver_1702@test.com', 'driver_1702', 'driver_1702@test.com', '123', 'Emran', 'Khan', 'approved', NULL, NULL, NULL),
('helper1701@test.com', 'helper_1701', 'helper1701@test.com', '123', 'Akram', 'Khan', 'approved', NULL, NULL, NULL),
('helper1702@test.com', 'helper_1702', 'helper1702@test.com', '123', 'HadiUzzaman', 'Mia', 'approved', NULL, NULL, NULL),
('sidratul.parvez@gmail.com', '150109', 'sidratul.parvez@gmail.com', '123', 'Sidratul', 'Muntaha', 'approved', NULL, NULL, NULL),
('super@test.com', '020203', 'super@test.com', '123', 'Super', 'Test', 'approved', NULL, NULL, NULL),
('tab1701@test.com', 'tab1701', 'tab1701@test.com', '123', 'No', 'One', '', NULL, 0, 0),
('test1@test.com', 'test1', 'test1@test.com', '123', 'Abu', 'Sayed ', 'approved', NULL, NULL, NULL),
('test@test.com', '020201', 'test@test.com', '123', 'I AM', 'ADMIN ', 'approved', NULL, NULL, NULL),
('working@test.com', '020204', 'working@test.com', '123', 'Working', 'Test', 'pending', NULL, NULL, NULL);

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
('another1@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('another@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('driver_1701@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('driver_1702@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('helper1701@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('helper1702@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('sidratul.parvez@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('super@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('tab1701@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('test1@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
('test@test.com', 'My father', 'My mother', 'My address', '04100000', 'Same', '0171100000 '),
('working@test.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_discipline`
--

CREATE TABLE `tbl_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_position`
--

CREATE TABLE `tbl_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_position`
--

INSERT INTO `tbl_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(4, '{693F944F-328D-433A-9F94-459D92841645}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(14, '{E0F0AE1A-AECF-46C1-A148-4485036F3CCF}', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(16, '{A4F96981-F014-46F6-BB93-87500C3CBB03}', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(17, '{0B2F4F89-2048-4504-AB17-0412CC624A05}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(19, '{8104FB4F-8E63-489D-8D90-DB45A9A2327B}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(21, '{8B24B76D-9969-4F71-ABC4-6EE59355C686}', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(24, '{9E2E6363-A0FF-4C0F-B58F-D162725FB702}', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(30, 'mohidul@gmail.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(37, 'mkazi078@uottawa.ca', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(57, 'another1@test.com', '{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}'),
(58, 'test@test.com', '{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}'),
(59, 'test@test.com', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(60, 'helper1701@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}'),
(61, 'another@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}'),
(62, 'sidratul.parvez@gmail.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}'),
(63, 'helper1702@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}'),
(64, 'driver_1702@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}');

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
(102, 'driver_1701@test.com', 'driver'),
(110, 'super@test.com', 'student'),
(111, 'working@test.com', 'student'),
(113, 'another1@test.com', 'hall assign'),
(115, 'test@test.com', 'driver'),
(116, 'test@test.com', 'hall assign'),
(117, 'helper1701@test.com', 'helper'),
(118, 'another@test.com', 'helper'),
(119, 'sidratul.parvez@gmail.com', 'helper'),
(120, 'sidratul.parvez@gmail.com', 'student'),
(121, 'helper1702@test.com', 'helper'),
(122, 'driver_1702@test.com', 'driver'),
(123, 'test1@test.com', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_year`
--

CREATE TABLE `tbl_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_year`
--

INSERT INTO `tbl_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hms_hall`
--
ALTER TABLE `hms_hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`start`,`dest`,`via`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `at_id` (`at_id`);

--
-- Indexes for table `tbl_asset_type`
--
ALTER TABLE `tbl_asset_type`
  ADD PRIMARY KEY (`at_id`);

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
-- Indexes for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion`
--
ALTER TABLE `tbl_discussion`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_category`
--
ALTER TABLE `tbl_discussion_category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discussion_comment`
--
ALTER TABLE `tbl_discussion_comment`
  ADD PRIMARY KEY (`CommentID`);

--
-- Indexes for table `tbl_geo_locations`
--
ALTER TABLE `tbl_geo_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_position`
--
ALTER TABLE `tbl_position`
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
-- Indexes for table `tbl_term`
--
ALTER TABLE `tbl_term`
  ADD PRIMARY KEY (`ID`);

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
-- Indexes for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_year`
--
ALTER TABLE `tbl_year`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_asset_type`
--
ALTER TABLE `tbl_asset_type`
  MODIFY `at_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_combination`
--
ALTER TABLE `tbl_combination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_geo_locations`
--
ALTER TABLE `tbl_geo_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;
--
-- AUTO_INCREMENT for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2030;
--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
