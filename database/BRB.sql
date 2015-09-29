-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2015 at 11:56 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `BRB`
--

-- --------------------------------------------------------

--
-- Table structure for table `AggregatedValues`
--

CREATE TABLE IF NOT EXISTS `AggregatedValues` (
  `ConsequentName` varchar(50) NOT NULL,
  `ConsequenceVal1` double NOT NULL,
  `ConsequenceVal2` double NOT NULL,
  `ConsequenceVal3` double NOT NULL,
  `ConsequenceVal4` double DEFAULT NULL,
  `ConsequenceVal5` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AggregatedValues`
--

INSERT INTO `AggregatedValues` (`ConsequentName`, `ConsequenceVal1`, `ConsequenceVal2`, `ConsequenceVal3`, `ConsequenceVal4`, `ConsequenceVal5`) VALUES
('X8', 0, 0.8084, 0.1916, 0, 0),
('X9', 0.4041, 0.5958, 0, NULL, NULL),
('X16', 0.9063, 0.0936, 0, NULL, NULL),
('X12', 0.2942, 0.705, 0.0007, NULL, NULL),
('X10', 0.984, 0.0159, 0, NULL, NULL),
('X11', 0.2852, 0.7149, 0, NULL, NULL),
('X7', 0.9563, 0.0436, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AntecedentInputs`
--

CREATE TABLE IF NOT EXISTS `AntecedentInputs` (
  `AntecedentName` varchar(50) NOT NULL,
  `AntecedentInput` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AntecedentInputs`
--

INSERT INTO `AntecedentInputs` (`AntecedentName`, `AntecedentInput`) VALUES
('X23', 5),
('X19', 0.5),
('X20', 10),
('X21', 0.5),
('X22', 45),
('X22', 45);

-- --------------------------------------------------------

--
-- Table structure for table `DefaulDisplay`
--

CREATE TABLE IF NOT EXISTS `DefaulDisplay` (
  `id` int(11) NOT NULL,
  `nodename` varchar(50) NOT NULL,
  `unitname` varchar(50) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DefaulDisplay`
--

INSERT INTO `DefaulDisplay` (`id`, `nodename`, `unitname`, `note`) VALUES
(1, 'X22', 'mm', 'High=> 50 mm <br> 50 mm > Medium >30 mm <br>Low <= 30mm'),
(2, 'X23', 'Days', 'High=> 7 Days<br>\r\n7 Days> Medium>3 Days<br>\r\nLow=<3 Days'),
(3, 'X19', 'Soil', 'Clayey=1<br>\r\nCoarse=0.5<br>\r\nRock=0<br>'),
(4, 'X20', '', 'Clayey=30<br>\r\nCoarse=20<br>\r\nRock=10'),
(5, 'X21', '', 'Highly Permeable=1<br>\r\nAverage Permeable=0.5<br>\r\nLow Permeable=0'),
(6, 'X17', 'Degree', 'Steep=> 25 Degree <br>\r\n25 Degree > Medium > 15 Degree<br>\r\nLow < 15 Degree'),
(7, 'X18', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(8, 'X14', 'Meter', 'High => 1000 Meter <br>\r\n1000 Meter > Medium >500 Meter <br>\r\n500 Meter >= Low\r\n'),
(9, 'X15', 'Meter', 'High>= 30 Meter  <br>\r\n30 Meter > Average > 15 Meter<br>\r\n15Meter >=Shallow'),
(10, 'X16', '', 'High = 10 <br>\r\nMedium = 7.5 <br>\r\nLow =5'),
(11, 'X25', 'Degree', 'Steep>= 40 Degree <br>\r\n40 Degree> Medium > 25 Degree<br>\r\n25 Degree >=Low'),
(12, 'X26', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(13, 'X27', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(14, 'X28', '', 'Yes=1<br>\r\nNo=0'),
(15, 'X29', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(16, 'X30', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(17, 'X31', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(18, 'X8', '', 'Severe = 1 <br>\r\nAverage = 0.5 <br>\r\nLow =0'),
(19, 'X9', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0'),
(20, 'X10', '', 'High Overflow= 100 <br>\r\nMedium Overflow=75 <br>\r\nLow Overflow =50'),
(21, 'X11', '', 'Terrain = 1 <br>\r\nAverage = 0.5 <br>\r\nFlat =0'),
(22, 'X12', '', 'High = 1 <br>\r\nMedium = 0.5 <br>\r\nLow =0');

-- --------------------------------------------------------

--
-- Table structure for table `DefaultRefVal`
--

CREATE TABLE IF NOT EXISTS `DefaultRefVal` (
  `RefTitle` varchar(50) DEFAULT NULL,
  `RefVal` double DEFAULT NULL,
  `AntecedentName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DefaultRefVal`
--

INSERT INTO `DefaultRefVal` (`RefTitle`, `RefVal`, `AntecedentName`) VALUES
('High', 1, 'X7'),
('Medium', 0.5, 'X7'),
('Low', 0, 'X7'),
('High', 1, 'All'),
('Medium', 0.5, 'All'),
('Low', 0, 'All'),
('High Overflow ', 100, 'x10'),
('Steep', 40, 'x25'),
('Low', 25, 'x25'),
('Medium', 0.5, 'x26'),
('Terrain', 1, 'x11'),
('Flat', 0, 'x11'),
('Severe', 1, 'x8'),
('Low', 0, 'x8'),
('Steep', 25, 'x17'),
('Low', 15, 'x17'),
('Medium', 0.5, 'x18'),
('High', 10, 'x16'),
('Low', 5, 'x16'),
('Clayey', 1, 'x19'),
('Rock', 0, 'x19'),
('Medium', 20, 'x20'),
('Highly Permeable', 1, 'x21'),
('Low Permeable', 0, 'x21'),
('Low Overflow ', 50, 'x10'),
('Medium', 750, 'x14'),
('Medium', 0.5, 'x9'),
('High', 1, 'x12'),
('Average', 22.5, 'x15'),
('Yes', 1, 'x28'),
('High', 7, 'x23'),
('Low', 3, 'x23'),
('Low', 0, 'x12'),
('Medium Overflow', 75, 'x10'),
('High', 1000, 'x14'),
('High', 50, 'x22'),
('Medium', 40, 'x22'),
('Low', 30, 'x22'),
('Medium', 32.5, 'x25'),
('High', 1, 'x26'),
('Low', 0, 'x26'),
('Average', 0.5, 'x11'),
('Average', 0.5, 'x8'),
('Medium', 20, 'x17'),
('High', 1, 'x18'),
('Low', 0, 'x18'),
('Medium', 7.5, 'x16'),
('Coarse', 0.5, 'x19'),
('High', 30, 'x20'),
('Low', 10, 'x20'),
('Average Permeable', 0.5, 'x21'),
('Low', 500, 'x14'),
('High', 1, 'x9'),
('High', 30, 'x15'),
('Low', 15, 'x15'),
('No', 0, 'x28'),
('Medium', 5, 'x23'),
('Low', 0, 'x9'),
('Medium', 0.5, 'x12'),
('High', 1, '29'),
('Medium', 0.5, '29'),
('Low', 0, '29'),
('High', 1, 'X29'),
('Medium', 0.5, 'X29'),
('Low', 0, 'X29'),
('High', 1, 'X30'),
('Medium', 0.5, 'X30'),
('Low', 0, 'X30'),
('High', 1, 'X31'),
('Medium', 0.5, 'X31'),
('Low', 0, 'X31'),
('High', 1, 'X27'),
('Medium', 0.5, 'X27'),
('Low', 0, 'X27');

-- --------------------------------------------------------

--
-- Table structure for table `DefaultRefValDisplay`
--

CREATE TABLE IF NOT EXISTS `DefaultRefValDisplay` (
  `RefTitle` varchar(50) DEFAULT NULL,
  `RefVal` double DEFAULT NULL,
  `AntecedentName` varchar(50) DEFAULT NULL,
  `UnitName` varchar(50) DEFAULT NULL,
  `RangeType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DefaultRefValDisplay`
--

INSERT INTO `DefaultRefValDisplay` (`RefTitle`, `RefVal`, `AntecedentName`, `UnitName`, `RangeType`) VALUES
('High', 1, 'X7', '', 'notrange'),
('Medium', 0.5, 'X7', '', 'notrange'),
('Low', 0, 'X7', '', 'notrange'),
('High', 1, 'All', '', 'notrange'),
('Medium', 0.5, 'All', '', 'notrange'),
('Low', 0, 'All', '', 'notrange'),
('High Overflow ', 100, 'x10', '', 'notrange'),
('Steep', 40, 'x25', 'Degree', 'range'),
('Low', 25, 'x25', 'Degree', 'range'),
('Medium', 0.5, 'x26', '', 'notrange'),
('Terrain', 1, 'x11', '', 'notrange'),
('Flat', 0, 'x11', '', 'notrange'),
('Severe', 1, 'x8', '', 'notrange'),
('Low', 0, 'x8', '', 'notrange'),
('Steep', 25, 'x17', 'Degree', 'range'),
('Low', 15, 'x17', 'Degree', 'range'),
('Medium', 0.5, 'x18', '', 'notrange'),
('High', 10, 'x16', '', 'notrange'),
('Low', 5, 'x16', '', 'notrange'),
('Clayey', 1, 'x19', 'Soil', 'notrange'),
('Rock', 0, 'x19', 'Soil', 'notrange'),
('Medium', 20, 'x20', '', 'notrange'),
('Highly Permeable', 1, 'x21', '', 'notrange'),
('Low Permeable', 0, 'x21', '', 'notrange'),
('Low Overflow ', 50, 'x10', '', 'notrange'),
('Medium', 750, 'x14', 'Meter', 'range'),
('Medium', 0.5, 'x9', '', 'notrange'),
('High', 1, 'x12', '', 'notrange'),
('Average', 22.5, 'x15', 'Meter', 'range'),
('Yes', 1, 'x28', '', 'notrange'),
('High', 7, 'x23', 'days', 'range'),
('Low', 3, 'x23', 'days', 'range'),
('Low', 0, 'x12', '', 'notrange'),
('Medium Overflow', 75, 'x10', '', 'notrange'),
('High', 1000, 'x14', 'Meter', 'range'),
('High', 50, 'x22', 'mm', 'range'),
('Medium', 40, 'x22', 'mm', 'range'),
('Low', 30, 'x22', 'mm', 'range'),
('Medium', 32.5, 'x25', 'Degree', 'range'),
('High', 1, 'x26', '', 'notrange'),
('Low', 0, 'x26', '', 'notrange'),
('Average', 0.5, 'x11', '', 'notrange'),
('Average', 0.5, 'x8', '', 'notrange'),
('Medium', 20, 'x17', 'Degree', 'range'),
('High', 1, 'x18', '', 'notrange'),
('Low', 0, 'x18', '', 'notrange'),
('Medium', 7.5, 'x16', '', 'notrange'),
('Coarse', 0.5, 'x19', 'Soil', 'notrange'),
('High', 30, 'x20', '', 'notrange'),
('Low', 10, 'x20', '', 'notrange'),
('Average Permeable', 0.5, 'x21', '', 'notrange'),
('Low', 500, 'x14', 'Meter', 'range'),
('High', 1, 'x9', '', 'notrange'),
('High', 30, 'x15', 'Meter', 'range'),
('Low', 15, 'x15', 'Meter', 'range'),
('No', 0, 'x28', '', 'notrange'),
('Medium', 5, 'x23', 'days', 'range'),
('Low', 0, 'x9', '', 'notrange'),
('Medium', 0.5, 'x12', '', 'notrange'),
('High', 1, '29', '', 'notrange'),
('Medium', 0.5, '29', '', 'notrange'),
('Low', 0, '29', '', 'notrange'),
('High', 1, 'X29', '', 'notrange'),
('Medium', 0.5, 'X29', '', 'notrange'),
('Low', 0, 'X29', '', 'notrange'),
('High', 1, 'X30', '', 'notrange'),
('Medium', 0.5, 'X30', '', 'notrange'),
('Low', 0, 'X30', '', 'notrange'),
('High', 1, 'X31', '', 'notrange'),
('Medium', 0.5, 'X31', '', 'notrange'),
('Low', 0, 'X31', '', 'notrange'),
('High', 1, 'X27', '', 'notrange'),
('Medium', 0.5, 'X27', '', 'notrange'),
('Low', 0, 'X27', '', 'notrange');

-- --------------------------------------------------------

--
-- Table structure for table `DefaultRuleBaseForOne`
--

CREATE TABLE IF NOT EXISTS `DefaultRuleBaseForOne` (
  `Serial` int(10) DEFAULT NULL,
  `ConsequenceVal1` double DEFAULT NULL,
  `ConsequenceVal2` double DEFAULT NULL,
  `ConsequenceVal3` double DEFAULT NULL,
  `ConsequenceVal4` double DEFAULT NULL,
  `ConsequenceVal5` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `DefaultRuleBaseForTwo`
--

CREATE TABLE IF NOT EXISTS `DefaultRuleBaseForTwo` (
  `Serial` int(11) DEFAULT NULL,
  `ConsequenceVal1` double DEFAULT NULL,
  `ConsequenceVal2` double DEFAULT NULL,
  `ConsequenceVal3` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RuleBaseForFive`
--

CREATE TABLE IF NOT EXISTS `RuleBaseForFive` (
  `Serial` int(11) NOT NULL,
  `RuleWeight` float NOT NULL,
  `Antecedent1` varchar(50) NOT NULL,
  `Antecedent1RefTitle` varchar(50) NOT NULL,
  `Antecedent2` varchar(50) NOT NULL,
  `Antecedent2RefTitle` varchar(50) NOT NULL,
  `Antecedent3` varchar(50) NOT NULL,
  `Antecedent3RefTitle` varchar(50) NOT NULL,
  `Antecedent4` varchar(50) NOT NULL,
  `Antecedent4RefTitle` varchar(50) NOT NULL,
  `Antecedent5` varchar(50) NOT NULL,
  `Antecedent5RefTitle` varchar(50) NOT NULL,
  `Consequence` varchar(50) NOT NULL,
  `ConsequenceVal1` float NOT NULL,
  `ConsequenceVal2` float NOT NULL,
  `ConsequenceVal3` float NOT NULL,
  `MatchingDegree` double DEFAULT NULL,
  `ActivationWeight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RuleBaseForFive`
--

INSERT INTO `RuleBaseForFive` (`Serial`, `RuleWeight`, `Antecedent1`, `Antecedent1RefTitle`, `Antecedent2`, `Antecedent2RefTitle`, `Antecedent3`, `Antecedent3RefTitle`, `Antecedent4`, `Antecedent4RefTitle`, `Antecedent5`, `Antecedent5RefTitle`, `Consequence`, `ConsequenceVal1`, `ConsequenceVal2`, `ConsequenceVal3`, `MatchingDegree`, `ActivationWeight`) VALUES
(0, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 1, 0, 0, 0.0073053033311724, 0.0073053033311724),
(1, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9815, 0.0185185, 0, 0.017593481028652, 0.017593481028652),
(2, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.963, 0.037037, 0, 0, 0),
(3, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9815, 0.0185185, 0, 0.0183003865783, 0.0183003865783),
(4, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.963, 0.037037, 0, 0.044073119141876, 0.044073119141876),
(5, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(6, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.963, 0.037037, 0, 0, 0),
(7, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(8, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(9, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.0741, 0.925926, 0, 0.00012104955199564, 0.00012104955199564),
(10, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.0556, 0.944444, 0, 0.00029152560818036, 0.00029152560818036),
(11, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.037, 0.962963, 0, 0, 0),
(12, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.0556, 0.944444, 0, 0.00030323909853236, 0.00030323909853236),
(13, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.037, 0.962963, 0, 0.00073029566129164, 0.00073029566129164),
(14, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(15, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.037, 0.962963, 0, 0, 0),
(16, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(17, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 1, 0, 0, 0),
(18, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.1481, 0.851852, 0, 0),
(19, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.1296, 0.87037, 0, 0),
(20, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(21, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.1296, 0.87037, 0, 0),
(22, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(23, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(24, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(25, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(26, 1, 'X8', 'Severe', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(27, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.9815, 0.0185185, 0, 0.010777130656878, 0.010777130656878),
(28, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.963, 0.037037, 0, 0.025954739339298, 0.025954739339298),
(29, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(30, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.963, 0.037037, 0, 0.02699760000165, 0.02699760000165),
(31, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9444, 0.0555556, 0, 0.065018759922174, 0.065018759922174),
(32, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(33, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(34, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(35, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(36, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.0556, 0.944444, 0, 0.00017857805195396, 0.00017857805195396),
(37, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.037, 0.962963, 0, 0.00043007243187004, 0.00043007243187004),
(38, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(39, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.037, 0.962963, 0, 0.00044735272951804, 0.00044735272951804),
(40, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.0185, 0.981481, 0, 0.001077366866658, 0.001077366866658),
(41, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 1, 0, 0, 0),
(42, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(43, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0, 0),
(44, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(45, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.1296, 0.87037, 0, 0),
(46, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(47, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(48, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(49, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(50, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(51, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(52, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(53, 1, 'X8', 'Severe', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(54, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.963, 0.037037, 0, 0, 0),
(55, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(56, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(57, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(58, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(59, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(60, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(61, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(62, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(63, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.037, 0.962963, 0, 0, 0),
(64, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(65, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 1, 0, 0, 0),
(66, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(67, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0, 0),
(68, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(69, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 1, 0, 0, 0),
(70, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(71, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(72, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(73, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(74, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(75, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(76, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(77, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(78, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(79, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(80, 1, 'X8', 'Severe', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(81, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.9815, 0.0185185, 0, 0.025961105280724, 0.025961105280724),
(82, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.963, 0.037037, 0, 0.062522552799452, 0.062522552799452),
(83, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(84, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.963, 0.037037, 0, 0.065034707129804, 0.065034707129804),
(85, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9444, 0.0555556, 0, 0.15662414471002, 0.15662414471002),
(86, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(87, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(88, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(89, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(90, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.0556, 0.944444, 0, 0.00043017791610836, 0.00043017791610836),
(91, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.037, 0.962963, 0, 0.0010360044837156, 0.0010360044837156),
(92, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(93, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.037, 0.962963, 0, 0.0010776311133636, 0.0010776311133636),
(94, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.0185, 0.981481, 0, 0.0025952765668124, 0.0025952765668124),
(95, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 1, 0, 0, 0),
(96, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(97, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0, 0),
(98, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(99, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.1296, 0.87037, 0, 0),
(100, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(101, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(102, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(103, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(104, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(105, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(106, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(107, 1, 'X8', 'Average', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(108, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.963, 0.037037, 0, 0.038299056305226, 0.038299056305226),
(109, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9444, 0.0555556, 0, 0.092236241258598, 0.092236241258598),
(110, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(111, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0.095942290716246, 0.095942290716246),
(112, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0.23105938179993, 0.23105938179993),
(113, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(114, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(115, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(116, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(117, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.037, 0.962963, 0, 0.00063461890594204, 0.00063461890594204),
(118, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.0185, 0.981481, 0, 0.001528363050234, 0.001528363050234),
(119, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 1, 0, 0, 0),
(120, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0.001589772632586, 0.001589772632586),
(121, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0.003828675331238, 0.003828675331238),
(122, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(123, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 1, 0, 0, 0),
(124, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(125, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(126, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(127, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(128, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(129, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(130, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(131, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(132, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(133, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(134, 1, 'X8', 'Average', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(135, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(136, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(137, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(138, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(139, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(140, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(141, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(142, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(143, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.8704, 0.12963, 0, 0, 0),
(144, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(145, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0, 0),
(146, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(147, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 1, 0, 0, 0),
(148, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(149, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(150, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(151, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(152, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.9444, 0.0555556, 0, 0),
(153, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(154, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(155, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(156, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(157, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(158, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(159, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(160, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(161, 1, 'X8', 'Average', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.0185, 0.981481, 0, 0),
(162, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.963, 0.037037, 0, 0, 0),
(163, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(164, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(165, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(166, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(167, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(168, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(169, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(170, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(171, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.037, 0.962963, 0, 0, 0),
(172, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(173, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 1, 0, 0, 0),
(174, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(175, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0, 0),
(176, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(177, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 1, 0, 0, 0),
(178, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(179, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(180, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.1111, 0.888889, 0, 0),
(181, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(182, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(183, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(184, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(185, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(186, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(187, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(188, 1, 'X8', 'Low', 'X9', 'High', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(189, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.9444, 0.0555556, 0, 0, 0),
(190, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(191, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(192, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(193, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(194, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(195, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(196, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(197, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.8704, 0.12963, 0, 0, 0),
(198, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.0185, 0.981481, 0, 0, 0),
(199, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 1, 0, 0, 0),
(200, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(201, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 1, 0, 0, 0),
(202, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(203, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(204, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(205, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(206, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.9444, 0.0555556, 0, 0),
(207, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.0926, 0.907407, 0, 0),
(208, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(209, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(210, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(211, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(212, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(213, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(214, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(215, 1, 'X8', 'Low', 'X9', 'Medium', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.0185, 0.981481, 0, 0),
(216, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0.9259, 0.0740741, 0, 0, 0),
(217, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(218, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(219, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0.9074, 0.0925926, 0, 0, 0),
(220, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(221, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0.8704, 0.12963, 0, 0, 0),
(222, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0.8889, 0.111111, 0, 0, 0),
(223, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0.8704, 0.12963, 0, 0, 0),
(224, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'High Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0.8519, 0.148148, 0, 0, 0),
(225, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 1, 0, 0, 0),
(226, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(227, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(228, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.9815, 0.0185185, 0, 0),
(229, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(230, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.9444, 0.0555556, 0, 0),
(231, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.963, 0.037037, 0, 0),
(232, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.9444, 0.0555556, 0, 0),
(233, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Medium Overflow', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0.9259, 0.0740741, 0, 0),
(234, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'High', '\n	X7', 0, 0.0741, 0.925926, 0, 0),
(235, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Medium', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(236, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Terrain', 'X12', 'Low', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(237, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'High', '\n	X7', 0, 0.0556, 0.944444, 0, 0),
(238, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Medium', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(239, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Average', 'X12', 'Low', '\n	X7', 0, 0.0185, 0.981481, 0, 0),
(240, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'High', '\n	X7', 0, 0.037, 0.962963, 0, 0),
(241, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Medium', '\n	X7', 0, 0.0185, 0.981481, 0, 0),
(242, 1, 'X8', 'Low', 'X9', 'Low', 'X10', 'Low Overflow ', 'X11', 'Flat', 'X12', 'Low', '\n	X7', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RuleBaseForFour`
--

CREATE TABLE IF NOT EXISTS `RuleBaseForFour` (
  `Serial` int(11) NOT NULL,
  `RuleWeight` float NOT NULL,
  `Antecedent1` varchar(50) NOT NULL,
  `Antecedent1RefTitle` varchar(50) NOT NULL,
  `Antecedent2` varchar(50) NOT NULL,
  `Antecedent2RefTitle` varchar(50) NOT NULL,
  `Antecedent3` varchar(50) NOT NULL,
  `Antecedent3RefTitle` varchar(50) NOT NULL,
  `Antecedent4` varchar(50) NOT NULL,
  `Antecedent4RefTitle` varchar(50) NOT NULL,
  `Consequence` varchar(50) NOT NULL,
  `ConsequenceVal1` float NOT NULL,
  `ConsequenceVal2` float NOT NULL,
  `ConsequenceVal3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RuleBaseForOne`
--

CREATE TABLE IF NOT EXISTS `RuleBaseForOne` (
  `Serial` int(11) NOT NULL,
  `RuleWeight` float NOT NULL,
  `AttributeWeight` float NOT NULL,
  `Antecedent` varchar(50) NOT NULL,
  `AntecedentRefTitle` varchar(50) NOT NULL,
  `Consequence` varchar(50) NOT NULL,
  `ConsequenceVal1` float NOT NULL,
  `ConsequenceVal2` float NOT NULL,
  `ConsequenceVal3` float NOT NULL,
  `ConsequenceVal4` float DEFAULT NULL,
  `ConsequenceVal5` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `RuleBaseForThree`
--

CREATE TABLE IF NOT EXISTS `RuleBaseForThree` (
  `Serial` int(11) NOT NULL,
  `RuleWeight` float NOT NULL,
  `Antecedent1` varchar(50) NOT NULL,
  `Antecedent1RefTitle` varchar(50) NOT NULL,
  `Antecedent2` varchar(50) NOT NULL,
  `Antecedent2RefTitle` varchar(50) NOT NULL,
  `Antecedent3` varchar(50) NOT NULL,
  `Antecedent3RefTitle` varchar(50) NOT NULL,
  `Consequence` varchar(50) NOT NULL,
  `ConsequenceVal1` float NOT NULL,
  `ConsequenceVal2` float NOT NULL,
  `ConsequenceVal3` float NOT NULL,
  `MatchingDegree` double DEFAULT NULL,
  `ActivationWeight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RuleBaseForThree`
--

INSERT INTO `RuleBaseForThree` (`Serial`, `RuleWeight`, `Antecedent1`, `Antecedent1RefTitle`, `Antecedent2`, `Antecedent2RefTitle`, `Antecedent3`, `Antecedent3RefTitle`, `Consequence`, `ConsequenceVal1`, `ConsequenceVal2`, `ConsequenceVal3`, `MatchingDegree`, `ActivationWeight`) VALUES
(0, 1, 'X14', 'High', 'X15', 'High', 'X16', 'High', '\n	X10', 1, 0, 0, 0.3019698, 0.3019698),
(1, 1, 'X14', 'High', 'X15', 'High', 'X16', 'Medium', '\n	X10', 0.9904, 0.00961538, 0, 0.0313302, 0.0313302),
(2, 1, 'X14', 'High', 'X15', 'High', 'X16', 'Low', '\n	X10', 0.9808, 0.0192308, 0, 0, 0),
(3, 1, 'X14', 'High', 'X15', 'Average', 'X16', 'High', '\n	X10', 0.9712, 0.0288462, 0, 0.6040302, 0.6040302),
(4, 1, 'X14', 'High', 'X15', 'Average', 'X16', 'Medium', '\n	X10', 0.9615, 0.0384615, 0, 0.0626698, 0.0626698),
(5, 1, 'X14', 'High', 'X15', 'Average', 'X16', 'Low', '\n	X10', 0.9519, 0.0480769, 0, 0, 0),
(6, 1, 'X14', 'High', 'X15', 'Low', 'X16', 'High', '\n	X10', 0.9423, 0.0576923, 0, 0, 0),
(7, 1, 'X14', 'High', 'X15', 'Low', 'X16', 'Medium', '\n	X10', 0.9327, 0.0673077, 0, 0, 0),
(8, 1, 'X14', 'High', 'X15', 'Low', 'X16', 'Low', '\n	X10', 0.9231, 0.0769231, 0, 0, 0),
(9, 1, 'X14', 'Medium', 'X15', 'High', 'X16', 'High', '\n	X10', 0.0385, 0.961538, 0, 0, 0),
(10, 1, 'X14', 'Medium', 'X15', 'High', 'X16', 'Medium', '\n	X10', 0.0288, 0.971154, 0, 0, 0),
(11, 1, 'X14', 'Medium', 'X15', 'High', 'X16', 'Low', '\n	X10', 0.0192, 0.980769, 0, 0, 0),
(12, 1, 'X14', 'Medium', 'X15', 'Average', 'X16', 'High', '\n	X10', 0.0096, 0.990385, 0, 0, 0),
(13, 1, 'X14', 'Medium', 'X15', 'Average', 'X16', 'Medium', '\n	X10', 0, 1, 0, 0, 0),
(14, 1, 'X14', 'Medium', 'X15', 'Average', 'X16', 'Low', '\n	X10', 0, 0.9904, 0.00961538, 0, 0),
(15, 1, 'X14', 'Medium', 'X15', 'Low', 'X16', 'High', '\n	X10', 0, 0.9808, 0.0192308, 0, 0),
(16, 1, 'X14', 'Medium', 'X15', 'Low', 'X16', 'Medium', '\n	X10', 0, 0.9712, 0.0288462, 0, 0),
(17, 1, 'X14', 'Medium', 'X15', 'Low', 'X16', 'Low', '\n	X10', 0, 0.9615, 0.0384615, 0, 0),
(18, 1, 'X14', 'Low', 'X15', 'High', 'X16', 'High', '\n	X10', 0, 0.0769, 0.923077, 0, 0),
(19, 1, 'X14', 'Low', 'X15', 'High', 'X16', 'Medium', '\n	X10', 0, 0.0673, 0.932692, 0, 0),
(20, 1, 'X14', 'Low', 'X15', 'High', 'X16', 'Low', '\n	X10', 0, 0.0577, 0.942308, 0, 0),
(21, 1, 'X14', 'Low', 'X15', 'Average', 'X16', 'High', '\n	X10', 0, 0.0481, 0.951923, 0, 0),
(22, 1, 'X14', 'Low', 'X15', 'Average', 'X16', 'Medium', '\n	X10', 0, 0.0385, 0.961538, 0, 0),
(23, 1, 'X14', 'Low', 'X15', 'Average', 'X16', 'Low', '\n	X10', 0, 0.0288, 0.971154, 0, 0),
(24, 1, 'X14', 'Low', 'X15', 'Low', 'X16', 'High', '\n	X10', 0, 0.0192, 0.980769, 0, 0),
(25, 1, 'X14', 'Low', 'X15', 'Low', 'X16', 'Medium', '\n	X10', 0, 0.0096, 0.990385, 0, 0),
(26, 1, 'X14', 'Low', 'X15', 'Low', 'X16', 'Low', '\n	X10', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `RuleBaseForTwo`
--

CREATE TABLE IF NOT EXISTS `RuleBaseForTwo` (
  `Serial` int(11) NOT NULL,
  `RuleWeight` float NOT NULL,
  `Antecedent1` varchar(50) NOT NULL,
  `Antecedent1RefTitle` varchar(50) NOT NULL,
  `Antecedent2` varchar(50) NOT NULL,
  `Antecedent2RefTitle` varchar(50) NOT NULL,
  `Consequence` varchar(50) NOT NULL,
  `ConsequenceVal1` float NOT NULL,
  `ConsequenceVal2` float NOT NULL,
  `ConsequenceVal3` float NOT NULL,
  `MatchingDegree` double DEFAULT NULL,
  `ActivationWeight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RuleBaseForTwo`
--

INSERT INTO `RuleBaseForTwo` (`Serial`, `RuleWeight`, `Antecedent1`, `Antecedent1RefTitle`, `Antecedent2`, `Antecedent2RefTitle`, `Consequence`, `ConsequenceVal1`, `ConsequenceVal2`, `ConsequenceVal3`, `MatchingDegree`, `ActivationWeight`) VALUES
(0, 1, 'X22', 'High', 'X23', 'High', '\n				 X8', 1, 0, 0, 0, 0),
(1, 1, 'X22', 'High', 'X23', 'Medium', '\n				 X8', 0.8333, 0.166667, 0, 0, 0),
(2, 1, 'X22', 'High', 'X23', 'Low', '\n				 X8', 0.6667, 0.333333, 0, 0, 0),
(3, 1, 'X22', 'Medium', 'X23', 'High', '\n				 X8', 0.1667, 0.833333, 0, 0, 0),
(4, 1, 'X22', 'Medium', 'X23', 'Medium', '\n				 X8', 0, 1, 0, 0, 0),
(5, 1, 'X22', 'Medium', 'X23', 'Low', '\n				 X8', 0, 0.8333, 0.166667, 0.9, 0.9),
(6, 1, 'X22', 'Low', 'X23', 'High', '\n				 X8', 0, 0.3333, 0.666667, 0, 0),
(7, 1, 'X22', 'Low', 'X23', 'Medium', '\n				 X8', 0, 0.1667, 0.833333, 0, 0),
(8, 1, 'X22', 'Low', 'X23', 'Low', '\n				 X8', 0, 0, 1, 0.1, 0.1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DefaulDisplay`
--
ALTER TABLE `DefaulDisplay`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DefaulDisplay`
--
ALTER TABLE `DefaulDisplay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
