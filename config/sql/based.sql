-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2017 at 10:50 AM
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
CREATE DATABASE IF NOT EXISTS `based` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `based`;

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
(4, 'Hadi Cottor', 'Rupsa', 'Moyla Pota'),
(5, 'Khulna', 'Dhaka', 'Jessore - Faridpur - Jahangirnagar');

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
(3, 'AC-Bus-Hino-45', 'Hino Ac bus, 45 seats (UPDATED)');

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
(12, 2, 'Green Line', 'true', 15000, '25X9BNM'),
(13, 2, 'Hanif', 'true', 15000, 'k14j69l96');

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
(2, 6, 4, 'driver_1701@test.com', 'helper1701@test.com');

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
(1645, 'driver', 'USER_U'),
(1646, 'student', 'DISCUSSION_C'),
(1647, 'student', 'DISCUSSION_D'),
(1648, 'student', 'DISCUSSION_R'),
(1649, 'student', 'DISCUSSION_U'),
(1650, 'student', 'DISCUSSION_CAT_C'),
(1651, 'student', 'DISCUSSION_CAT_D'),
(1652, 'student', 'DISCUSSION_CAT_R'),
(1653, 'student', 'DISCUSSION_CAT_U'),
(1654, 'student', 'DISCUSSION_COMMENT_C'),
(1655, 'student', 'DISCUSSION_COMMENT_D'),
(1656, 'student', 'DISCUSSION_COMMENT_R'),
(1657, 'student', 'DISCUSSION_COMMENT_U'),
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
(1821, '', 'ROUTES_C'),
(1822, '', 'ROUTES_D'),
(1823, '', 'ROUTES_R'),
(1824, '', 'ROUTES_U'),
(1825, 'administrator', 'ASSETS_C'),
(1826, 'administrator', 'ASSETS_D'),
(1827, 'administrator', 'ASSETS_R'),
(1828, 'administrator', 'ASSETS_U'),
(1829, 'administrator', 'DISCIPLINE_C'),
(1830, 'administrator', 'DISCIPLINE_D'),
(1831, 'administrator', 'DISCIPLINE_R'),
(1832, 'administrator', 'DISCIPLINE_U'),
(1833, 'administrator', 'DISCUSSION_C'),
(1834, 'administrator', 'DISCUSSION_D'),
(1835, 'administrator', 'DISCUSSION_R'),
(1836, 'administrator', 'DISCUSSION_U'),
(1837, 'administrator', 'DISCUSSION_CAT_C'),
(1838, 'administrator', 'DISCUSSION_CAT_D'),
(1839, 'administrator', 'DISCUSSION_CAT_R'),
(1840, 'administrator', 'DISCUSSION_CAT_U'),
(1841, 'administrator', 'DISCUSSION_COMMENT_C'),
(1842, 'administrator', 'DISCUSSION_COMMENT_D'),
(1843, 'administrator', 'DISCUSSION_COMMENT_R'),
(1844, 'administrator', 'DISCUSSION_COMMENT_U'),
(1845, 'administrator', 'HALL_C'),
(1846, 'administrator', 'HALL_D'),
(1847, 'administrator', 'HALL_R'),
(1848, 'administrator', 'HALL_U'),
(1849, 'administrator', 'PERMISSION_C'),
(1850, 'administrator', 'PERMISSION_D'),
(1851, 'administrator', 'PERMISSION_R'),
(1852, 'administrator', 'PERMISSION_U'),
(1853, 'administrator', 'POSITION_C'),
(1854, 'administrator', 'POSITION_D'),
(1855, 'administrator', 'POSITION_R'),
(1856, 'administrator', 'POSITION_U'),
(1857, 'administrator', 'ROLE_C'),
(1858, 'administrator', 'ROLE_D'),
(1859, 'administrator', 'ROLE_R'),
(1860, 'administrator', 'ROLE_U'),
(1861, 'administrator', 'ROUTES_C'),
(1862, 'administrator', 'ROUTES_D'),
(1863, 'administrator', 'ROUTES_R'),
(1864, 'administrator', 'ROUTES_U'),
(1865, 'administrator', 'SCHOOL_C'),
(1866, 'administrator', 'SCHOOL_D'),
(1867, 'administrator', 'SCHOOL_R'),
(1868, 'administrator', 'SCHOOL_U'),
(1869, 'administrator', 'TERM_C'),
(1870, 'administrator', 'TERM_D'),
(1871, 'administrator', 'TERM_R'),
(1872, 'administrator', 'TERM_U'),
(1873, 'administrator', 'USER_C'),
(1874, 'administrator', 'USER_D'),
(1875, 'administrator', 'USER_R'),
(1876, 'administrator', 'USER_U'),
(1877, 'administrator', 'YEAR_C'),
(1878, 'administrator', 'YEAR_D'),
(1879, 'administrator', 'YEAR_R'),
(1880, 'administrator', 'YEAR_U');

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
('another@test.com', '020202', 'another@test.com', '123', 'Another', 'Test     ', 'approved', NULL, NULL, NULL),
('driver_1701@test.com', 'driver_1701', 'driver_1701@test.com', '123', 'Abdur', 'Rahman', '', NULL, 0, 0),
('helper1701@test.com', 'helper_1701', 'helper1701@test.com', '123', 'Akram', 'Khan', 'approved', NULL, NULL, NULL),
('super@test.com', '020203', 'super@test.com', '123', 'Super', 'Test', 'approved', NULL, NULL, NULL),
('tab1701@test.com', 'tab1701', 'tab1701@test.com', '123', 'No', 'One', '', NULL, 0, 0),
('test1@test.com', 'test1', 'test1@test.com', '123', 'Abu', 'Sayed', 'approved', NULL, NULL, NULL),
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
('helper1701@test.com', NULL, NULL, NULL, NULL, NULL, NULL),
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
(44, 'another@test.com', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}'),
(45, 'another@test.com', '{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}'),
(46, 'another@test.com', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(47, 'another@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}'),
(48, 'another@test.com', '{818DE12F-60CC-42E4-BAEC-48EAAED65179}'),
(49, 'another@test.com', '{B78C7A7B-4D38-4025-8170-7B8C9F291946}'),
(50, 'another@test.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'another@test.com', '{B76EB035-EA26-4CEB-B029-1C6129574D98}'),
(52, 'another@test.com', '{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}'),
(53, 'another@test.com', '{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}'),
(54, 'another@test.com', '{932CB0EE-76C2-448E-A40E-2D167EECC479}'),
(55, 'another@test.com', '{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}'),
(56, 'another@test.com', '{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}'),
(57, 'another1@test.com', '{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}'),
(58, 'test@test.com', '{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}'),
(59, 'test@test.com', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}'),
(60, 'helper1701@test.com', '{92FDDA3F-1E91-4AA3-918F-EB595F85790C}');

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
(103, 'test1@test.com', 'student'),
(109, 'another@test.com', 'student'),
(110, 'super@test.com', 'student'),
(111, 'working@test.com', 'student'),
(113, 'another1@test.com', 'hall assign'),
(114, 'test1@test.com', 'hall assign'),
(115, 'test@test.com', 'driver'),
(116, 'test@test.com', 'hall assign'),
(117, 'helper1701@test.com', 'helper');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_asset_type`
--
ALTER TABLE `tbl_asset_type`
  ADD PRIMARY KEY (`at_id`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `at_id` (`at_id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_asset_type`
--
ALTER TABLE `tbl_asset_type`
  MODIFY `at_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_combination`
--
ALTER TABLE `tbl_combination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_role_permission`
--
ALTER TABLE `tbl_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1881;
--
-- AUTO_INCREMENT for table `tbl_user_position`
--
ALTER TABLE `tbl_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;--
-- Database: `cart`
--
CREATE DATABASE IF NOT EXISTS `cart` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cart`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `name`, `description`, `price`) VALUES
(1, 'Product 1', 'Some random description', '15.00'),
(2, 'Product 2', 'Some random description', '20.00'),
(3, 'Product 3', 'Some random description', '50.00'),
(4, 'Product 4', 'Some random description', '55.00'),
(5, 'Product 5', 'Some random description', '54.00'),
(6, 'Product 6', 'Some random description', '34.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `db`
--
CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db`;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `inst_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`inst_id`, `first_name`, `last_name`, `salary`) VALUES
(1, 'Md. Anisur', 'Rahman', 80000),
(2, 'Rafizul', 'Haque', 70000),
(3, 'Rafiqul', 'Islam', 120000),
(4, 'Kamrul hasan', 'Talukder', 110000),
(5, 'Sarfaraz', 'Newaz', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `instructs`
--

CREATE TABLE `instructs` (
  `std_id` int(11) NOT NULL,
  `inst_id` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructs`
--

INSERT INTO `instructs` (`std_id`, `inst_id`, `subject`) VALUES
(1, 1, ''),
(1, 1, 'Database'),
(2, 1, 'Java'),
(1, 2, 'Numeric Method'),
(1, 5, 'CA'),
(4, 1, 'Database'),
(1, 4, 'DLD'),
(3, 1, 'Database'),
(3, 2, 'Numeric Method'),
(4, 3, 'Data Structure');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Abu', 'Sayed', 'sayed4931@gmail.com'),
(2, 'Siamul', 'Haque', 'siamul@haq.com'),
(3, 'Imran', 'Hossain', 'imran@gmail.com'),
(4, 'Rajib', 'Khan', 'rajib@khan.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `instructs`
--
ALTER TABLE `instructs`
  ADD KEY `student id` (`std_id`),
  ADD KEY `instructor` (`inst_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `instructs`
--
ALTER TABLE `instructs`
  ADD CONSTRAINT `instructs_ibfk_1` FOREIGN KEY (`inst_id`) REFERENCES `instructor` (`inst_id`),
  ADD CONSTRAINT `instructs_ibfk_2` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`);
--
-- Database: `dbms`
--
CREATE DATABASE IF NOT EXISTS `dbms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbms`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `employee_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `branch_city` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`employee_name`, `company_name`, `branch_city`, `salary`) VALUES
('Assfickur R Anik', 'Foul Students', 'Khulna', 150213),
('Guru', 'Fair Students', 'Bogra', 2147483647),
('Mahfuzul A Antu', 'Foul Students', 'Jessor', 150230),
('Naz Z Oishie', 'Fair Students', 'Khulna', -2147483647),
('Nazmus Sakeef', 'Fair Students', 'Dhaka', 2147483647),
('Parvez M Robin', 'Foul Students', 'Dhaka', -2147483647),
('Sadia M Dim', 'Foul Students', 'Khagrachori', 0),
('Wahid Z Shuvo', 'Fair Students', 'Melbourne City', 2397429);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`name`) VALUES
('Fair Students'),
('Foul Students');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `street`, `city`) VALUES
('Abu Sayed', 'klsfdj', 'Chandpur'),
('Al Amin', 'Tungipara', 'Gopalgonj'),
('Assfickur R Anik', 'Maheshpur', 'Jhinaidah'),
('Dr Md Anisur Rahman', 'Nirala', 'Khulna'),
('Guru', 'Khepu Para', 'Potuakhali'),
('Mahfuzul A Antu', 'Jani na', 'Jessor'),
('Naz Z Oishie', 'East Baniakhamar', 'Khulna'),
('Nazmus Sakeef', 'Mirpur', 'Dhaka'),
('Parvez M Robin', 'North Basabo', 'Dhaka'),
('Rafia S Alice', 'Prantika', 'Khulna'),
('Sadia M Dim', 'Ma Hall', 'Khulna'),
('Sarfaraz Newaz Raz', 'Prantika', 'Khulna'),
('Swajan Goldest', 'Dumuria', 'Khulna'),
('Wahid Z Shuvo', 'KB Hall', 'Khulna');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `company_name` varchar(255) NOT NULL,
  `manager_name` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`company_name`, `manager_name`, `salary`) VALUES
('Fair Students', 'Dr Md Anisur Rahman', 110000),
('Foul Students', 'Sarfaraz Newaz Raz', 80000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD UNIQUE KEY `employee_name_2` (`employee_name`,`company_name`),
  ADD KEY `company_name` (`company_name`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD UNIQUE KEY `company_name` (`company_name`,`manager_name`),
  ADD KEY `manager_name` (`manager_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`employee_name`) REFERENCES `employee` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `branch_ibfk_2` FOREIGN KEY (`company_name`) REFERENCES `company` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manages`
--
ALTER TABLE `manages`
  ADD CONSTRAINT `manages_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manages_ibfk_2` FOREIGN KEY (`manager_name`) REFERENCES `employee` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `hospitastore`
--
CREATE DATABASE IF NOT EXISTS `hospitastore` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hospitastore`;

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `a_date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufecturer`
--

CREATE TABLE `manufecturer` (
  `id` int(11) NOT NULL,
  `man_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(11) NOT NULL,
  `o_date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `user_id` int(11) NOT NULL,
  `g_date` date DEFAULT NULL,
  `g_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_for_store`
--

CREATE TABLE `product_for_store` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `o_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(150) NOT NULL,
  `p_amount` int(11) NOT NULL DEFAULT '0',
  `specs` varchar(300) NOT NULL,
  `man_id` int(11) NOT NULL,
  `ptype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reciepts`
--

CREATE TABLE `reciepts` (
  `id` int(11) NOT NULL,
  `cmemo_no` varchar(150) NOT NULL,
  `r_date` date NOT NULL,
  `brought_form` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `r_name` varchar(64) NOT NULL,
  `r_desc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `pasword` varchar(64) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`u_id`);

--
-- Indexes for table `manufecturer`
--
ALTER TABLE `manufecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_for_store`
--
ALTER TABLE `product_for_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_no` (`order_no`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `man_id` (`man_id`),
  ADD KEY `ptype_id` (`ptype_id`);

--
-- Indexes for table `reciepts`
--
ALTER TABLE `reciepts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufecturer`
--
ALTER TABLE `manufecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_for_store`
--
ALTER TABLE `product_for_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reciepts`
--
ALTER TABLE `reciepts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_no`) REFERENCES `product_order` (`order_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product_order` (`p_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`role_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `orders` (`user_id`);
--
-- Database: `hstore`
--
CREATE DATABASE IF NOT EXISTS `hstore` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hstore`;

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `a_date` date NOT NULL,
  `u_id` int(11) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufecturer`
--

CREATE TABLE `manufecturer` (
  `id` int(11) NOT NULL,
  `man_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufecturer`
--

INSERT INTO `manufecturer` (`id`, `man_name`) VALUES
(1, 'A4tech'),
(2, 'A.tech'),
(3, 'Intel'),
(4, 'Square'),
(5, 'Basundhara'),
(6, 'Naturas');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(11) NOT NULL,
  `o_date` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `user_id` int(11) NOT NULL,
  `g_date` date DEFAULT NULL,
  `g_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `o_date`, `status`, `user_id`, `g_date`, `g_amount`) VALUES
(1, '2017-08-14', 'pending', 2, NULL, NULL),
(2, '2017-08-15', 'pending', 4, NULL, NULL),
(3, '2017-08-15', 'pending', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_for_store`
--

CREATE TABLE `product_for_store` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_for_store`
--

INSERT INTO `product_for_store` (`id`, `p_id`, `r_id`, `amount`) VALUES
(1, 1, 1, 10),
(2, 5, 2, 5),
(3, 3, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `o_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `order_no`, `p_id`, `o_amount`) VALUES
(1, 1, 1, 5),
(2, 2, 3, 2),
(3, 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `type_name`) VALUES
(1, 'Computer Related Excessories'),
(2, 'Stationary and others'),
(3, 'Furniture'),
(4, 'Electronics'),
(5, 'Sports'),
(6, 'Chemical and Reagents'),
(7, 'Instruments');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(150) NOT NULL,
  `p_amount` int(11) NOT NULL DEFAULT '0',
  `specs` varchar(300) NOT NULL,
  `man_id` int(11) NOT NULL,
  `ptype_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_name`, `p_amount`, `specs`, `man_id`, `ptype_id`) VALUES
(1, 'Mouse-Usb', 10, 'USB 3.0', 1, 1),
(2, 'Mouse-Ps2', 0, 'PS2 mouse for computer', 1, 1),
(3, 'Mithanol-10', 0, '10% mithanol,500mL', 4, 6),
(4, 'Exercise Book-150', 0, 'margined 150 page exercise book', 5, 2),
(5, 'Pencil -2B', 0, '2B pencil with back erager', 6, 2),
(7, 'Laptop', 10, 'Core i5, 8gb Ram, 2Gb graphix card', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reciepts`
--

CREATE TABLE `reciepts` (
  `id` int(11) NOT NULL,
  `cmemo_no` varchar(150) NOT NULL,
  `r_date` date NOT NULL,
  `brought_form` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reciepts`
--

INSERT INTO `reciepts` (`id`, `cmemo_no`, `r_date`, `brought_form`) VALUES
(1, 'B12-C45-7PO', '2017-08-14', 'AK IT Solution, Jalil Tower, Dakbangla, Khulna'),
(2, 'B12-N26-36L', '2017-08-15', 'Sohag Book depo, New Market, Khulna'),
(3, 'B12-N26-31P', '2017-08-15', 'Square Pharmaceutical Co, Narayongonj, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `r_name` varchar(64) NOT NULL,
  `r_desc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `r_name`, `r_desc`) VALUES
(4, 'Admin', 'Controls the whole system'),
(5, 'Manager', 'Input most of the data and manages the store '),
(6, 'Customer', 'Customer of the store');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `email`, `username`, `password`, `role_id`) VALUES
(2, 'Abu', 'Sayed', 'KBAH, KU', 'sayed4931@gmail.com', 'admin', 'admin123', 4),
(3, 'Mr.', 'X', 'Boyra, Khulna', 'mrx@test.com', 'manager', 'manager123', 5),
(4, 'Radiology', 'Department', 'Radiology Department, Khulna Medical', 'rd.kmed@test.com', 'user_radiology', 'radio123', 6),
(5, 'Abu', 'Sayed', 'KU', 'sayed@test.com', 'abu_sayed', '123', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`u_id`);

--
-- Indexes for table `manufecturer`
--
ALTER TABLE `manufecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_for_store`
--
ALTER TABLE `product_for_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_no` (`order_no`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `man_id` (`man_id`),
  ADD KEY `ptype_id` (`ptype_id`);

--
-- Indexes for table `reciepts`
--
ALTER TABLE `reciepts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufecturer`
--
ALTER TABLE `manufecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_for_store`
--
ALTER TABLE `product_for_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `reciepts`
--
ALTER TABLE `reciepts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit`
--
ALTER TABLE `audit`
  ADD CONSTRAINT `audit_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_for_store`
--
ALTER TABLE `product_for_store`
  ADD CONSTRAINT `product_for_store_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `reciepts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_for_store_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`order_no`) REFERENCES `orders` (`order_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ptype_id`) REFERENCES `product_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`man_id`) REFERENCES `manufecturer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `lab`
--
CREATE DATABASE IF NOT EXISTS `lab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_street` varchar(100) NOT NULL,
  `customer_city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_street`, `customer_city`) VALUES
(1, 'Abu Sayed', 'Khan Bahadur Ahsan Ullah Street', 'Khulna'),
(2, 'Nazmus Skeef', 'KU', 'khulna'),
(3, 'Siamul Haq', 'khan jahan ali', 'Khulna'),
(4, 'Parvez  Robin', 'Kalabagan', 'Dhaka'),
(5, 'Imran Hossain', 'JU', 'Madaripur');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_number`, `amount`, `customer_id`) VALUES
(2, 60000, 1),
(4, 100000, 5),
(5, 30000, 3),
(6, 1200000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_number`),
  ADD KEY `customer id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
--
-- Database: `lara53`
--
CREATE DATABASE IF NOT EXISTS `lara53` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lara53`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'naz zarren oishie', 'nazzarreen@oishie.com', 'password', NULL, '2017-03-21 13:56:34', '2017-03-21 13:56:34'),
(2, 'naz zarren oishie', 'nazzarreen@oishie.com', 'password', NULL, '2017-03-21 13:56:43', '2017-03-21 13:56:43'),
(3, 'abu sayed', 'sayed4931@gmail.com', '$2y$10$9aL5UXK0wASF12fhKqGhEODLdsoL8AJPnUy97CD1dt4fjj7s2XAgS', 'J5Sgsl2XfFIJ6ByjKgOvkki6bxoW76mBekBFcjEwpbZu6sM4v6pIbelSCjM7', '2017-03-26 05:38:07', '2017-03-26 05:38:07'),
(4, 'Naz zarren oishie', 'naz@oishie.com', '$2y$10$os8MeRDIKOCrxQgBeN3a8.2TZOZ7MCpW9AXPzMHIwagHahcTpGii.', 'GJw1jFW0INBAIndLAvJjxbJc5H46jYRofOqjeYNRsSUIACegrSoFQV1xmcCQ', '2017-04-02 13:23:57', '2017-04-02 13:23:57'),
(5, 'Mahfuzul Alam', 'antu@oj.com', '$2y$10$aMl2FArbMWyoxirF8aa3Z.U/cFdRlnoHyQK09CmFlIDL9AInrOlza', 'vINMkHls6rHz1RntxFlUj6zEOFhn9ItMeue3bX30dWzrz2S81gkZiZgFepIE', '2017-04-02 13:30:01', '2017-04-02 13:30:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `lasthope`
--
CREATE DATABASE IF NOT EXISTS `lasthope` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lasthope`;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `inst_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`inst_id`, `first_name`, `last_name`, `salary`, `std_id`, `subject`) VALUES
(1, 'Sarfaraz', 'Newaz', 60000, 5, 'Computer Architecture'),
(3, 'Md. Anisur', 'Rahman', 80000, 6, 'Database'),
(5, 'Kamrul hasan', 'Talukder', 100000, 7, 'DLD'),
(6, 'Rafizul', 'Haque', 120000, 8, 'Numeric Method'),
(7, 'Rafiqul', 'Islam', 130000, 9, 'Data Structure');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `first_name`, `last_name`, `email`) VALUES
(5, 'suraia', 'islam', 'suraiya@gmail.com'),
(6, 'Abu', 'Sayed', 'sayed4931@gmail.com'),
(7, 'Imran', 'Hussain', 'imran@gmail.com'),
(8, 'rupa', 'ghosh', 'rupa@gmail.com'),
(9, 'Parvez', 'Mahbub', 'parvez@mahbub.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`inst_id`),
  ADD UNIQUE KEY `bgfgbf` (`std_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`);
--
-- Database: `mock`
--
CREATE DATABASE IF NOT EXISTS `mock` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mock`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getavgsalaryofins` (IN `sal` INT(11))  NO SQL
SELECT student.first_name,student.last_name FROM student JOIN insructs on insructs.std_id = student.std_id JOIN instructor on insructs.inst_id = instructor.inst_id GROUP BY student.first_name,student.last_name HAVING avg(instructor.salary) > sal$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getInstructmorethantwo` (IN `num` INT(6))  NO SQL
SELECT instructor.first_name,instructor.last_name,count(student.std_id) as countstudent FROM instructor JOIN insructs on insructs.inst_id = instructor.inst_id JOIN student on student.std_id = insructs.inst_id GROUP BY instructor.first_name,instructor.last_name HAVING countstudent > num$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getInstructorByNum` (IN `n` INT(5))  NO SQL
SELECT DISTINCT(instructor.first_name) FROM instructor JOIN insructs on instructor.inst_id = insructs.inst_id WHERE(SELECT COUNT(insructs.std_id) FROM insructs WHERE insructs.inst_id=instructor.inst_id)>n$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getInstructorBySalary` (IN `n` FLOAT)  NO SQL
SELECT DISTINCT student.first_name,student.last_name FROM student JOIN insructs on student.std_id =insructs.std_id JOIN instructor on instructor.inst_id = insructs.inst_id WHERE instructor.salary > n$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentByTwoInst` (IN `n` INT(6))  NO SQL
SELECT student.first_name,student.last_name,count(instructor.inst_id) as insddd FROM student JOIN insructs on student.std_id = insructs.std_id JOIN instructor on insructs.inst_id = instructor.inst_id GROUP BY student.first_name,student.last_name HAVING insddd < n$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getSTudentInstBYSubject` (IN `nam` VARCHAR(128))  NO SQL
SELECT student.first_name as sfname,student.last_name as slname,instructor.first_name as ifname,instructor.last_name as ilname FROM student JOIN insructs on insructs.std_id = student.std_id JOIN instructor on instructor.inst_id = insructs.inst_id WHERE insructs.subject = nam$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `insructs`
--

CREATE TABLE `insructs` (
  `std_id` int(11) NOT NULL,
  `inst_id` int(11) NOT NULL,
  `subject` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insructs`
--

INSERT INTO `insructs` (`std_id`, `inst_id`, `subject`) VALUES
(1, 1, 'h'),
(2, 1, 'j'),
(1, 2, 'k'),
(2, 3, 'DB');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `inst_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`inst_id`, `first_name`, `last_name`, `salary`) VALUES
(1, 'p', 'q', 10),
(2, 'r', 's', 30),
(3, 'Anisur', 'Rahman', 100000),
(4, 'rafizul', 'haque', 80000),
(5, 'rafizul', 'haque', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `first_name`, `last_name`, `email`) VALUES
(1, 'a', 'b', 'c'),
(2, 'b', 'c', 'd'),
(15, 'anisujjaman', 'Haque', 'ddsdsdd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insructs`
--
ALTER TABLE `insructs`
  ADD KEY `std_id` (`std_id`),
  ADD KEY `inst_id` (`inst_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`inst_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `inst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `insructs`
--
ALTER TABLE `insructs`
  ADD CONSTRAINT `insructs_ibfk_1` FOREIGN KEY (`inst_id`) REFERENCES `instructor` (`inst_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insructs_ibfk_2` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `oj`
--
CREATE DATABASE IF NOT EXISTS `oj` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `oj`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_no`
--

CREATE TABLE `contact_no` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contest_problems`
--

CREATE TABLE `contest_problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `contest_id` int(10) UNSIGNED NOT NULL,
  `problem_id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contest_solutions`
--

CREATE TABLE `contest_solutions` (
  `solution_id` int(10) UNSIGNED NOT NULL,
  `solved_at` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_27_151737_create_roles_table', 1),
(4, '2017_02_27_151852_create_problems_table', 1),
(5, '2017_02_27_152053_create_solutions_table', 1),
(6, '2017_02_27_152357_create_contests_table', 1),
(7, '2017_02_27_152553_create_contest_solutions_table', 1),
(8, '2017_02_27_152734_create_contest_problems_table', 1),
(9, '2017_02_27_154115_create_role_user_table', 1),
(10, '2017_02_27_154531_create_contact_no_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `time_limit` int(11) NOT NULL,
  `level` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `problem_id` int(10) UNSIGNED NOT NULL,
  `execution_time` double NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `institute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `country`, `institute`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Naz Zarreen', 'Oishie', 'nazzarreen@oishie.com', '$2y$10$LWjXVGt5RyMSC73PvyZo8O/6i0gRyUjhhPJcCNMbx1yncG/TP.aPW', 'Female', 'Bangladesh', 'Khulna Universtiy', 'GcHhVAPyprM3XH1sd4EkPNS2Pnbf0MA60vVjvpS5RPDtP7kqynP4wHZoGzF5', NULL, NULL),
(2, 'Naz Zarreen', 'Oishie', 'nazzarreen@oishie.com', '$2y$10$1jD0HtS9Be53gSo15lhgrunL9LTUzmbllw8HKP9VaVh7Z9TZCCneC', 'Female', 'Bangladesh', 'Khulna Universtiy', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_no`
--
ALTER TABLE `contact_no`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_no_user_id_foreign` (`user_id`);

--
-- Indexes for table `contest_problems`
--
ALTER TABLE `contest_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contest_problems_contest_id_problem_id_unique` (`contest_id`,`problem_id`),
  ADD KEY `contest_problems_problem_id_foreign` (`problem_id`);

--
-- Indexes for table `contest_solutions`
--
ALTER TABLE `contest_solutions`
  ADD PRIMARY KEY (`solution_id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problems_user_id_foreign` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solutions_problem_id_foreign` (`problem_id`),
  ADD KEY `solutions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_no`
--
ALTER TABLE `contact_no`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contest_problems`
--
ALTER TABLE `contest_problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_no`
--
ALTER TABLE `contact_no`
  ADD CONSTRAINT `contact_no_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contest_problems`
--
ALTER TABLE `contest_problems`
  ADD CONSTRAINT `contest_problems_contest_id_foreign` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contest_problems_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contest_solutions`
--
ALTER TABLE `contest_solutions`
  ADD CONSTRAINT `contest_solutions_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `problems_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solutions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `onlinejudge`
--
CREATE DATABASE IF NOT EXISTS `onlinejudge` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onlinejudge`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_no`
--

CREATE TABLE `contact_no` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contest_problems`
--

CREATE TABLE `contest_problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `contest_id` int(10) UNSIGNED NOT NULL,
  `problem_id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contest_solutions`
--

CREATE TABLE `contest_solutions` (
  `solution_id` int(10) UNSIGNED NOT NULL,
  `solved_at` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_27_151737_create_roles_table', 2),
(4, '2017_02_27_151852_create_problems_table', 2),
(5, '2017_02_27_152053_create_solutions_table', 2),
(6, '2017_02_27_152357_create_contests_table', 2),
(7, '2017_02_27_152553_create_contest_solutions_table', 2),
(8, '2017_02_27_152734_create_contest_problems_table', 2),
(9, '2017_02_27_154115_create_role_user_table', 2),
(10, '2017_02_27_154531_create_contact_no_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `time_limit` int(11) NOT NULL,
  `level` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `user_id`, `title`, `body`, `time_limit`, `level`, `created_at`, `updated_at`) VALUES
(1, 1, 'title', 'bdoy', 3, 'Medium', '2017-02-27 10:33:05', '2017-02-27 10:33:05'),
(2, 1, 'P1', 'welcome to the jungle', 2, 'Easy', '2017-02-28 22:44:39', '2017-02-28 22:44:39'),
(3, 1, 'p2', 'antu', 2, 'Easy', '2017-02-28 23:48:58', '2017-02-28 23:48:58'),
(4, 1, 'df', 'df', 4, 'Easy', '2017-03-19 06:55:33', '2017-03-19 06:55:33'),
(5, 1, 'we', 'we', 3, 'Easy', '2017-03-19 06:59:31', '2017-03-19 06:59:31'),
(6, 1, 'ওর', 'সদ', 3, 'Easy', '2017-03-19 07:03:19', '2017-03-19 07:03:19'),
(7, 1, 'df', 'df', 2, 'Easy', '2017-03-19 07:05:21', '2017-03-19 07:05:21'),
(8, 1, 'স্ফ', 'সদ', 2, 'Easy', '2017-03-19 07:10:06', '2017-03-19 07:10:06'),
(9, 1, 'সদ', 'সদ', 2, 'Easy', '2017-03-19 07:19:25', '2017-03-19 07:19:25'),
(10, 1, 'sdf', 'df', 4, 'Easy', '2017-03-19 07:21:12', '2017-03-19 07:21:12'),
(11, 1, 'এত', 'েdf', 3, 'Easy', '2017-03-19 07:35:29', '2017-03-19 07:35:29'),
(12, 1, 'bgg', 'hgvhk', 2, 'Easy', '2017-03-19 07:45:14', '2017-03-19 07:45:14'),
(13, 1, 'gh', 'gh', 45, 'Easy', '2017-03-19 07:59:14', '2017-03-19 07:59:14'),
(14, 1, 'xcb', 'sdfg', 45, 'Easy', '2017-03-19 08:00:15', '2017-03-19 08:00:15'),
(15, 1, 'দস্ফ', 'দস্ফদস', 3, 'Easy', '2017-03-19 08:07:42', '2017-03-19 08:07:42'),
(16, 1, 'sdf', 'dsfsdf', 4, 'Easy', '2017-03-19 08:08:50', '2017-03-19 08:08:50'),
(17, 1, 'dv', 'xvdxx', 45, 'Easy', '2017-03-19 08:09:49', '2017-03-19 08:09:49'),
(18, 1, 'দফ', 'াস্ফ', 1, 'Easy', '2017-03-19 08:12:53', '2017-03-19 08:12:53'),
(19, 1, 'চক্সভ', 'চগবভক্সচ', 2, 'Easy', '2017-03-19 08:13:20', '2017-03-19 08:13:20'),
(20, 1, 'df', 'dfsd', 7, 'Easy', '2017-03-19 08:17:51', '2017-03-19 08:17:51'),
(21, 1, 'fgf', 'dfg', 5, 'Easy', '2017-03-19 08:19:40', '2017-03-19 08:19:40'),
(22, 1, 'we', 'we', 2, 'Easy', '2017-03-21 10:00:34', '2017-03-21 10:00:34'),
(23, 1, 'Created Problem', 'Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem', 2, 'Easy', '2017-03-26 04:00:48', '2017-03-26 04:00:48'),
(24, 1, 'Created Problem', 'Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem', 2, 'Easy', '2017-03-26 04:01:28', '2017-03-26 04:01:28'),
(25, 1, 'Created Problem', 'Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem Created Problem', 2, 'Easy', '2017-03-26 04:02:31', '2017-03-26 04:02:31'),
(26, 1, 'Addition', 'Add two integers', 1, 'Easy', '2017-03-26 05:15:42', '2017-03-26 05:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Problem Creator', NULL, NULL),
(2, 'Solver', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `problem_id` int(10) UNSIGNED NOT NULL,
  `execution_time` double NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `user_id`, `problem_id`, `execution_time`, `language`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 'C', 'Wrong Answer', '2017-03-21 09:52:02', '2017-03-21 09:52:02'),
(2, 1, 26, 0.00000004033207893371582, 'C++', 'WA', '2017-03-26 05:20:52', '2017-03-26 05:20:53'),
(3, 1, 26, 0.000000036548852920532224, 'C', 'WA', '2017-03-26 05:40:58', '2017-03-26 05:40:59'),
(4, 1, 26, 0, 'C++', '', '2017-03-26 05:44:59', '2017-03-26 05:44:59'),
(5, 1, 26, 0.00000003577113151550293, 'C++', 'WA', '2017-03-26 05:45:20', '2017-03-26 05:45:20'),
(6, 1, 26, 0, 'C++', '', '2017-03-26 05:57:39', '2017-03-26 05:57:39'),
(7, 1, 26, 0.00000003761100769042969, 'C++', 'WA', '2017-03-26 05:58:19', '2017-03-26 05:58:19'),
(8, 1, 26, 0.00000003466391563415527, 'C++', 'ACC', '2017-03-26 05:59:49', '2017-03-26 05:59:49'),
(9, 1, 26, 0.000000000959949493408203, 'C++', 'ACC', '2017-03-28 22:17:11', '2017-03-28 22:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `institute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `country`, `institute`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Naz Zarreen', 'Oishie', 'nazzarreen@oishie.com', '$2y$10$PgAMxMI8xD7LjjAxt45NqOjhd.4T5gVzwuuz.8kENvOoRj3MGBqBu', 'Female', 'Bangladesh', 'Khulna Universtiy', 'Nojs46Iq668Ewg6Q4wUS4SAZIFsicKALY470wX2p3kxwPNXix8HaHomHCZKb', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_no`
--
ALTER TABLE `contact_no`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_no_user_id_foreign` (`user_id`);

--
-- Indexes for table `contest_problems`
--
ALTER TABLE `contest_problems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contest_problems_contest_id_problem_id_unique` (`contest_id`,`problem_id`),
  ADD KEY `contest_problems_problem_id_foreign` (`problem_id`);

--
-- Indexes for table `contest_solutions`
--
ALTER TABLE `contest_solutions`
  ADD PRIMARY KEY (`solution_id`);

--
-- Indexes for table `contests`
--
ALTER TABLE `contests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problems_user_id_foreign` (`user_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solutions_problem_id_foreign` (`problem_id`),
  ADD KEY `solutions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_no`
--
ALTER TABLE `contact_no`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contest_problems`
--
ALTER TABLE `contest_problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contests`
--
ALTER TABLE `contests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_no`
--
ALTER TABLE `contact_no`
  ADD CONSTRAINT `contact_no_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contest_problems`
--
ALTER TABLE `contest_problems`
  ADD CONSTRAINT `contest_problems_contest_id_foreign` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contest_problems_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contest_solutions`
--
ALTER TABLE `contest_solutions`
  ADD CONSTRAINT `contest_solutions_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `problems_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solutions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phppra`
--
CREATE DATABASE IF NOT EXISTS `phppra` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phppra`;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(1, 1, 'Our Mission', 1, 1, 'Our mission has always been...'),
(2, 1, 'Our History', 2, 1, 'Founded in 1898 by two enterprising engineers...'),
(3, 2, 'Large Widgets', 1, 1, 'Our large widgets have to be seen to be believed...'),
(4, 2, 'Small Widgets', 2, 1, 'They say big things come in small packages...'),
(5, 3, 'Retrofitting', 1, 1, 'We love to replace widgets...'),
(6, 3, 'Certification', 2, 1, 'We can certify any widget, not just our own...');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `birth_date` varchar(30) DEFAULT NULL,
  `sex` varchar(5) NOT NULL,
  `date_entered` date NOT NULL,
  `lunch_cost` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `email`, `street`, `city`, `state`, `zip`, `phone`, `birth_date`, `sex`, `date_entered`, `lunch_cost`) VALUES
(1, 'abu', 'sayed', 'sayed4931@gmail.com', 'KU', 'khulna', 'BD', '7025', '01684577131', '1996-04-01', 'M', '2017-04-10', '20');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'About Widget Corp', 1, 1),
(2, 'Products', 2, 1),
(3, 'Services', 3, 1),
(6, 'Today\'s Widget Trivia', 4, 1),
(7, 'menu', 4, 1),
(8, '', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `tms`
--
CREATE DATABASE IF NOT EXISTS `tms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tms`;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) NOT NULL,
  `asset_type_id` int(5) NOT NULL,
  `identical_name` varchar(50) NOT NULL,
  `liscence_plate` varchar(50) NOT NULL,
  `company_id` int(10) NOT NULL,
  `driver_id` int(10) NOT NULL,
  `helper_id` int(10) NOT NULL,
  `route_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) NOT NULL,
  `c_name` varchar(150) NOT NULL,
  `adress` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `trade_liscence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `driver_liscence` varchar(30) NOT NULL,
  `experience` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='experience in year(s)';

-- --------------------------------------------------------

--
-- Table structure for table `helper`
--

CREATE TABLE `helper` (
  `id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `salary` int(7) NOT NULL,
  `experience` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `person_id` int(10) NOT NULL,
  `number` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `liscence_plate` (`liscence_plate`),
  ADD KEY `asset_type_id` (`asset_type_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `helper_id` (`helper_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `c_name` (`c_name`),
  ADD UNIQUE KEY `trade_liscence` (`trade_liscence`),
  ADD KEY `location_id` (`adress`),
  ADD KEY `phone_id` (`email`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_liscence` (`driver_liscence`),
  ADD KEY `id` (`person_id`);

--
-- Indexes for table `helper`
--
ALTER TABLE `helper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone_id` (`address`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `helper`
--
ALTER TABLE `helper`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `assets_ibfk_2` FOREIGN KEY (`helper_id`) REFERENCES `helper` (`id`),
  ADD CONSTRAINT `assets_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `assets_ibfk_4` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

--
-- Constraints for table `helper`
--
ALTER TABLE `helper`
  ADD CONSTRAINT `helper_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);
--
-- Database: `tms1`
--
CREATE DATABASE IF NOT EXISTS `tms1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tms1`;

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
  `isRented` varchar(5) NOT NULL DEFAULT 'false',
  `rent_cost` int(11) DEFAULT NULL,
  `liscence_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_assets`
--

INSERT INTO `tbl_assets` (`id`, `asset_type`, `company_name`, `isRented`, `rent_cost`, `liscence_no`) VALUES
(5, 'Bus', 'Hanif', 'true', 20000, '25X9BNM76G'),
(6, 'Micro', 'KU', 'false', 0, '25X9BNM76G1'),
(7, 'Jeep', 'AR Rent-a-car', 'true', 8000, '24X9B2676G');

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
('test@test.com', '020201', 'test@test.com', '123', 'I AM', 'ADMIN', 'approved', NULL, NULL, NULL),
('this@test.com', 'dasd', 'this@test.com', '123', 'sdasd', 'sdasd', 'approved', NULL, NULL, NULL);

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
('test@test.com', 'My father', 'My mother', 'My address', '04100000', 'Same', '0171100000'),
('this@test.com', NULL, NULL, NULL, NULL, NULL, NULL);

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
(104, 'tab1701@test.com', 'tabulator'),
(105, 'this@test.com', 'teacher');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_combination` (`route_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
