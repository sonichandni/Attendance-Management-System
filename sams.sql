-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 07:16 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sams`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `ac_year_id` int(2) NOT NULL,
  `ac_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`ac_year_id`, `ac_year`) VALUES
(11, '2019-20');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem1`
--

CREATE TABLE `attendance_mba_sem1` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_mba_sem1`
--

INSERT INTO `attendance_mba_sem1` (`att_id`, `date`, `s_enrl`, `usub_id`, `present`) VALUES
(169, '2019-03-16', 2057, 75, 0),
(170, '2019-03-16', 2058, 75, 1),
(171, '2019-03-16', 2059, 75, 0),
(172, '2019-03-16', 2060, 75, 1),
(173, '2019-03-16', 2061, 75, 1),
(174, '2019-03-16', 2062, 75, 1),
(175, '2019-03-16', 2063, 75, 1),
(176, '2019-03-16', 2064, 75, 1),
(177, '2019-03-16', 2065, 75, 1),
(178, '2019-03-16', 2066, 75, 1),
(179, '2019-03-16', 2067, 75, 1),
(180, '2019-03-16', 2068, 75, 1),
(181, '2019-03-16', 2069, 75, 1),
(182, '2019-03-16', 2070, 75, 1),
(183, '2019-03-16', 2071, 75, 1),
(184, '2019-03-16', 2072, 75, 1),
(185, '2019-03-16', 2073, 75, 1),
(186, '2019-03-16', 2074, 75, 1),
(187, '2019-03-16', 2075, 75, 1),
(188, '2019-03-16', 2076, 75, 1),
(189, '2019-03-16', 2077, 75, 1),
(190, '2019-03-16', 2078, 75, 1),
(191, '2019-03-16', 2079, 75, 1),
(192, '2019-03-16', 2080, 75, 1),
(193, '2019-03-16', 2081, 75, 1),
(194, '2019-03-16', 2082, 75, 1),
(195, '2019-03-16', 2083, 75, 1),
(196, '2019-03-16', 2084, 75, 1),
(197, '2019-03-16', 2085, 75, 1),
(198, '2019-03-16', 2086, 75, 1),
(199, '2019-03-16', 2087, 75, 1),
(200, '2019-03-16', 2088, 75, 1),
(201, '2019-03-16', 2089, 75, 1),
(202, '2019-03-16', 2090, 75, 1),
(203, '2019-03-16', 2091, 75, 1),
(204, '2019-03-16', 2092, 75, 1),
(205, '2019-03-16', 2093, 75, 1),
(206, '2019-03-16', 2094, 75, 1),
(207, '2019-03-16', 2095, 75, 1),
(208, '2019-03-16', 2096, 75, 1),
(209, '2019-03-16', 2097, 75, 1),
(210, '2019-03-16', 2098, 75, 1),
(211, '2019-03-16', 2099, 75, 1),
(212, '2019-03-16', 2100, 75, 1),
(213, '2019-03-16', 2101, 75, 1),
(214, '2019-03-16', 2102, 75, 1),
(215, '2019-03-16', 2103, 75, 1),
(216, '2019-03-16', 2104, 75, 1),
(217, '2019-03-16', 2105, 75, 1),
(218, '2019-03-16', 2106, 75, 1),
(219, '2019-03-16', 2107, 75, 1),
(220, '2019-03-16', 2108, 75, 1),
(221, '2019-03-16', 2109, 75, 1),
(222, '2019-03-16', 2110, 75, 1),
(223, '2019-03-16', 2111, 75, 1),
(224, '2019-03-16', 2112, 75, 1),
(225, '2019-03-16', 2113, 75, 1),
(226, '2019-03-16', 2114, 75, 1),
(227, '2019-03-16', 2115, 75, 1),
(228, '2019-03-16', 2116, 75, 1),
(229, '2019-03-16', 2117, 75, 1),
(230, '2019-03-16', 2118, 75, 1),
(231, '2019-03-16', 2119, 75, 1),
(232, '2019-03-16', 2120, 75, 1),
(233, '2019-03-16', 2121, 75, 1),
(234, '2019-03-16', 2122, 75, 1),
(235, '2019-03-16', 2123, 75, 1),
(236, '2019-03-16', 2124, 75, 1),
(237, '2019-03-16', 2125, 75, 1),
(238, '2019-03-16', 2126, 75, 1),
(239, '2019-03-16', 2127, 75, 1),
(240, '2019-03-16', 2128, 75, 1),
(241, '2019-03-16', 2129, 75, 1),
(242, '2019-03-16', 2130, 75, 1),
(243, '2019-03-16', 2131, 75, 1),
(244, '2019-03-16', 2132, 75, 1),
(245, '2019-03-16', 2133, 75, 1),
(246, '2019-03-16', 2134, 75, 1),
(247, '2019-03-16', 2135, 75, 1),
(248, '2019-03-16', 2136, 75, 1),
(249, '2019-03-16', 2137, 75, 1),
(250, '2019-03-16', 2138, 75, 1),
(251, '2019-03-16', 2139, 75, 1),
(252, '2019-03-16', 2140, 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem2`
--

CREATE TABLE `attendance_mba_sem2` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem3`
--

CREATE TABLE `attendance_mba_sem3` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem4`
--

CREATE TABLE `attendance_mba_sem4` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem5`
--

CREATE TABLE `attendance_mba_sem5` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem6`
--

CREATE TABLE `attendance_mba_sem6` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem7`
--

CREATE TABLE `attendance_mba_sem7` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem8`
--

CREATE TABLE `attendance_mba_sem8` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem9`
--

CREATE TABLE `attendance_mba_sem9` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem9_ele`
--

CREATE TABLE `attendance_mba_sem9_ele` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `uesub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem10`
--

CREATE TABLE `attendance_mba_sem10` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_mba_sem10_ele`
--

CREATE TABLE `attendance_mba_sem10_ele` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `uesub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem1`
--

CREATE TABLE `attendance_msc_sem1` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_msc_sem1`
--

INSERT INTO `attendance_msc_sem1` (`att_id`, `date`, `s_enrl`, `usub_id`, `present`) VALUES
(1, '2019-03-18', 1777, 1, 0),
(2, '2019-03-18', 1778, 1, 1),
(3, '2019-03-18', 1779, 1, 0),
(4, '2019-03-18', 1780, 1, 1),
(5, '2019-03-18', 1781, 1, 0),
(6, '2019-03-18', 1782, 1, 1),
(7, '2019-03-18', 1783, 1, 1),
(8, '2019-03-18', 1784, 1, 1),
(9, '2019-03-18', 1785, 1, 1),
(10, '2019-03-18', 1786, 1, 1),
(11, '2019-03-18', 1787, 1, 1),
(12, '2019-03-18', 1788, 1, 1),
(13, '2019-03-18', 1789, 1, 1),
(14, '2019-03-18', 1790, 1, 1),
(15, '2019-03-18', 1791, 1, 1),
(16, '2019-03-18', 1792, 1, 1),
(17, '2019-03-18', 1793, 1, 1),
(18, '2019-03-18', 1794, 1, 1),
(19, '2019-03-18', 1795, 1, 1),
(20, '2019-03-18', 1796, 1, 1),
(21, '2019-03-18', 1797, 1, 1),
(22, '2019-03-18', 1798, 1, 1),
(23, '2019-03-18', 1799, 1, 1),
(24, '2019-03-18', 1800, 1, 1),
(25, '2019-03-18', 1801, 1, 1),
(26, '2019-03-18', 1802, 1, 1),
(27, '2019-03-18', 1803, 1, 1),
(28, '2019-03-18', 1804, 1, 1),
(29, '2019-03-18', 1805, 1, 1),
(30, '2019-03-18', 1806, 1, 1),
(31, '2019-03-18', 1807, 1, 1),
(32, '2019-03-18', 1808, 1, 1),
(33, '2019-03-18', 1809, 1, 1),
(34, '2019-03-18', 1810, 1, 1),
(35, '2019-03-18', 1811, 1, 1),
(36, '2019-03-18', 1812, 1, 1),
(37, '2019-03-18', 1813, 1, 1),
(38, '2019-03-18', 1814, 1, 1),
(39, '2019-03-18', 1815, 1, 1),
(40, '2019-03-18', 1816, 1, 1),
(41, '2019-03-18', 1817, 1, 1),
(42, '2019-03-18', 1818, 1, 1),
(43, '2019-03-18', 1819, 1, 1),
(44, '2019-03-18', 1820, 1, 1),
(45, '2019-03-18', 1821, 1, 1),
(46, '2019-03-18', 1822, 1, 1),
(47, '2019-03-18', 1823, 1, 1),
(48, '2019-03-18', 1824, 1, 1),
(49, '2019-03-18', 1825, 1, 1),
(50, '2019-03-18', 1826, 1, 1),
(51, '2019-03-18', 1827, 1, 1),
(52, '2019-03-18', 1828, 1, 1),
(53, '2019-03-18', 1829, 1, 1),
(54, '2019-03-18', 1830, 1, 1),
(55, '2019-03-18', 1831, 1, 1),
(56, '2019-03-18', 1832, 1, 1),
(57, '2019-03-18', 1833, 1, 1),
(58, '2019-03-18', 1834, 1, 1),
(59, '2019-03-18', 1835, 1, 1),
(60, '2019-03-18', 1836, 1, 1),
(61, '2019-03-18', 1837, 1, 1),
(62, '2019-03-18', 1838, 1, 1),
(63, '2019-03-18', 1839, 1, 1),
(64, '2019-03-18', 1840, 1, 1),
(65, '2019-03-18', 1841, 1, 1),
(66, '2019-03-18', 1842, 1, 1),
(67, '2019-03-18', 1843, 1, 1),
(68, '2019-03-18', 1844, 1, 1),
(69, '2019-03-18', 1845, 1, 1),
(70, '2019-03-18', 1846, 1, 1),
(71, '2019-03-18', 1847, 1, 1),
(72, '2019-03-18', 1848, 1, 1),
(73, '2019-03-18', 1849, 1, 1),
(74, '2019-03-18', 1850, 1, 1),
(75, '2019-03-18', 1851, 1, 1),
(76, '2019-03-18', 1852, 1, 1),
(77, '2019-03-18', 1853, 1, 1),
(78, '2019-03-18', 1854, 1, 1),
(79, '2019-03-18', 1855, 1, 1),
(80, '2019-03-18', 1856, 1, 1),
(81, '2019-03-18', 1857, 1, 1),
(82, '2019-03-18', 1858, 1, 1),
(83, '2019-03-18', 1859, 1, 1),
(84, '2019-03-18', 1860, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem2`
--

CREATE TABLE `attendance_msc_sem2` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem3`
--

CREATE TABLE `attendance_msc_sem3` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_msc_sem3`
--

INSERT INTO `attendance_msc_sem3` (`att_id`, `date`, `s_enrl`, `usub_id`, `present`) VALUES
(1, '2019-03-18', 1, 23, 0),
(2, '2019-03-18', 2, 23, 1),
(3, '2019-03-18', 3, 23, 0),
(4, '2019-03-18', 4, 23, 1),
(5, '2019-03-18', 5, 23, 0),
(6, '2019-03-18', 6, 23, 1),
(7, '2019-03-18', 7, 23, 1),
(8, '2019-03-18', 8, 23, 1),
(9, '2019-03-18', 9, 23, 1),
(10, '2019-03-18', 10, 23, 1),
(11, '2019-03-18', 11, 23, 1),
(12, '2019-03-18', 12, 23, 1),
(13, '2019-03-18', 13, 23, 1),
(14, '2019-03-18', 14, 23, 1),
(15, '2019-03-18', 15, 23, 1),
(16, '2019-03-18', 16, 23, 1),
(17, '2019-03-18', 17, 23, 1),
(18, '2019-03-18', 18, 23, 1),
(19, '2019-03-18', 19, 23, 1),
(20, '2019-03-18', 20, 23, 1),
(21, '2019-03-18', 21, 23, 1),
(22, '2019-03-18', 22, 23, 1),
(23, '2019-03-18', 23, 23, 1),
(24, '2019-03-18', 24, 23, 1),
(25, '2019-03-18', 25, 23, 1),
(26, '2019-03-18', 26, 23, 1),
(27, '2019-03-18', 27, 23, 1),
(28, '2019-03-18', 28, 23, 1),
(29, '2019-03-18', 29, 23, 1),
(30, '2019-03-18', 30, 23, 1),
(31, '2019-03-18', 31, 23, 1),
(32, '2019-03-18', 32, 23, 1),
(33, '2019-03-18', 33, 23, 1),
(34, '2019-03-18', 34, 23, 1),
(35, '2019-03-18', 35, 23, 1),
(36, '2019-03-18', 36, 23, 1),
(37, '2019-03-18', 37, 23, 1),
(38, '2019-03-18', 38, 23, 1),
(39, '2019-03-18', 39, 23, 1),
(40, '2019-03-18', 40, 23, 1),
(41, '2019-03-18', 41, 23, 1),
(42, '2019-03-18', 42, 23, 1),
(43, '2019-03-18', 43, 23, 1),
(44, '2019-03-18', 44, 23, 1),
(45, '2019-03-18', 45, 23, 1),
(46, '2019-03-18', 46, 23, 1),
(47, '2019-03-18', 47, 23, 1),
(48, '2019-03-18', 48, 23, 1),
(49, '2019-03-18', 49, 23, 1),
(50, '2019-03-18', 50, 23, 1),
(51, '2019-03-18', 51, 23, 1),
(52, '2019-03-18', 52, 23, 1),
(53, '2019-03-18', 53, 23, 1),
(54, '2019-03-18', 54, 23, 1),
(55, '2019-03-18', 55, 23, 1),
(56, '2019-03-18', 56, 23, 1),
(57, '2019-03-18', 57, 23, 1),
(58, '2019-03-18', 58, 23, 1),
(59, '2019-03-18', 59, 23, 1),
(60, '2019-03-18', 60, 23, 1),
(61, '2019-03-18', 61, 23, 1),
(62, '2019-03-18', 62, 23, 1),
(63, '2019-03-18', 63, 23, 1),
(64, '2019-03-18', 64, 23, 1),
(65, '2019-03-18', 65, 23, 1),
(66, '2019-03-18', 66, 23, 1),
(67, '2019-03-18', 67, 23, 1),
(68, '2019-03-18', 69, 23, 1),
(69, '2019-03-18', 70, 23, 1),
(70, '2019-03-18', 219, 23, 1),
(71, '2019-03-18', 227, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem4`
--

CREATE TABLE `attendance_msc_sem4` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem5`
--

CREATE TABLE `attendance_msc_sem5` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_msc_sem5`
--

INSERT INTO `attendance_msc_sem5` (`att_id`, `date`, `s_enrl`, `usub_id`, `present`) VALUES
(1, '2018-09-20', 228, 40, 1),
(2, '2018-09-20', 229, 40, 1),
(3, '2018-09-20', 230, 40, 1),
(4, '2018-09-20', 231, 40, 1),
(5, '2018-09-20', 232, 40, 1),
(6, '2018-09-20', 233, 40, 1),
(7, '2018-09-20', 234, 40, 0),
(8, '2018-09-20', 235, 40, 1),
(9, '2018-09-20', 236, 40, 1),
(10, '2018-09-20', 237, 40, 1),
(11, '2018-09-20', 238, 40, 1),
(12, '2018-09-20', 239, 40, 1),
(13, '2018-09-20', 240, 40, 1),
(14, '2018-09-20', 241, 40, 1),
(15, '2018-09-20', 242, 40, 1),
(16, '2018-09-20', 243, 40, 1),
(17, '2018-09-20', 244, 40, 1),
(18, '2018-09-20', 245, 40, 1),
(19, '2018-09-20', 246, 40, 1),
(20, '2018-09-20', 247, 40, 1),
(21, '2018-09-20', 248, 40, 1),
(22, '2018-09-20', 249, 40, 1),
(23, '2018-09-20', 250, 40, 1),
(24, '2018-09-20', 251, 40, 1),
(25, '2018-09-20', 252, 40, 1),
(26, '2018-09-20', 253, 40, 1),
(27, '2018-09-20', 254, 40, 1),
(28, '2018-09-20', 255, 40, 1),
(29, '2018-09-20', 256, 40, 1),
(30, '2018-09-20', 257, 40, 1),
(31, '2018-09-20', 258, 40, 1),
(32, '2018-09-20', 259, 40, 1),
(33, '2018-09-20', 260, 40, 1),
(34, '2018-09-20', 261, 40, 1),
(35, '2018-09-20', 262, 40, 1),
(36, '2018-09-20', 263, 40, 1),
(37, '2018-09-20', 264, 40, 1),
(38, '2018-09-20', 265, 40, 1),
(39, '2018-09-20', 266, 40, 1),
(40, '2018-09-20', 267, 40, 1),
(41, '2018-09-20', 268, 40, 1),
(42, '2018-09-20', 269, 40, 1),
(43, '2018-09-20', 270, 40, 0),
(44, '2018-09-20', 271, 40, 1),
(45, '2018-09-20', 272, 40, 1),
(46, '2018-09-20', 273, 40, 1),
(47, '2018-09-20', 274, 40, 1),
(48, '2018-09-20', 275, 40, 1),
(49, '2018-09-20', 276, 40, 1),
(50, '2018-09-20', 277, 40, 1),
(51, '2018-09-20', 278, 40, 1),
(52, '2018-09-20', 279, 40, 1),
(53, '2018-09-20', 280, 40, 1),
(54, '2018-09-20', 281, 40, 1),
(55, '2018-09-20', 282, 40, 1),
(56, '2018-09-20', 283, 40, 1),
(57, '2018-09-20', 284, 40, 1),
(58, '2018-09-20', 285, 40, 1),
(59, '2018-09-20', 286, 40, 1),
(60, '2018-09-20', 287, 40, 1),
(61, '2018-09-20', 288, 40, 1),
(62, '2018-09-20', 289, 40, 1),
(63, '2018-09-20', 290, 40, 1),
(64, '2018-09-20', 291, 40, 1),
(65, '2018-09-20', 292, 40, 1),
(66, '2018-09-20', 293, 40, 1),
(67, '2018-09-20', 294, 40, 1),
(68, '2018-09-20', 295, 40, 1),
(69, '2018-09-20', 296, 40, 1),
(70, '2018-09-20', 297, 40, 1),
(71, '2018-09-20', 298, 40, 0),
(72, '2018-09-20', 299, 40, 1),
(73, '2018-09-20', 300, 40, 1),
(74, '2018-09-20', 301, 40, 1),
(75, '2018-09-20', 302, 40, 1),
(76, '2018-09-20', 303, 40, 1),
(77, '2018-09-20', 462, 40, 1),
(78, '2018-09-20', 463, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem6`
--

CREATE TABLE `attendance_msc_sem6` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem7`
--

CREATE TABLE `attendance_msc_sem7` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem8`
--

CREATE TABLE `attendance_msc_sem8` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_msc_sem9`
--

CREATE TABLE `attendance_msc_sem9` (
  `att_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `s_enrl` int(7) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `present` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `batch_name`) VALUES
(1, 'B1'),
(2, 'B2'),
(3, 'B3'),
(4, 'B4'),
(5, 'B5');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(2) NOT NULL,
  `cname` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `cname`) VALUES
(0, 'MSC'),
(1, 'MBA'),
(2, 'MBA & MSC');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `date` date NOT NULL,
  `holiday` tinyint(1) NOT NULL,
  `day` varchar(3) NOT NULL,
  `ac_year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`date`, `holiday`, `day`, `ac_year_id`) VALUES
('2019-01-01', 0, 'Tue', 11),
('2019-01-02', 0, 'Wed', 11),
('2019-01-03', 0, 'Thu', 11),
('2019-01-04', 0, 'Fri', 11),
('2019-01-05', 0, 'Sat', 11),
('2019-01-06', 1, 'Sun', 11),
('2019-01-07', 0, 'Mon', 11),
('2019-01-08', 0, 'Tue', 11),
('2019-01-09', 0, 'Wed', 11),
('2019-01-10', 0, 'Thu', 11),
('2019-01-11', 0, 'Fri', 11),
('2019-01-12', 0, 'Sat', 11),
('2019-01-13', 1, 'Sun', 11),
('2019-01-14', 1, 'Mon', 11),
('2019-01-15', 0, 'Tue', 11),
('2019-01-16', 0, 'Wed', 11),
('2019-01-17', 0, 'Thu', 11),
('2019-01-18', 0, 'Fri', 11),
('2019-01-19', 0, 'Sat', 11),
('2019-01-20', 1, 'Sun', 11),
('2019-01-21', 0, 'Mon', 11),
('2019-01-22', 0, 'Tue', 11),
('2019-01-23', 0, 'Wed', 11),
('2019-01-24', 0, 'Thu', 11),
('2019-01-25', 0, 'Fri', 11),
('2019-01-26', 1, 'Sat', 11),
('2019-01-27', 1, 'Sun', 11),
('2019-01-28', 0, 'Mon', 11),
('2019-01-29', 0, 'Tue', 11),
('2019-01-30', 0, 'Wed', 11),
('2019-01-31', 0, 'Thu', 11),
('2019-02-01', 0, 'Fri', 11),
('2019-02-02', 0, 'Sat', 11),
('2019-02-03', 1, 'Sun', 11),
('2019-02-04', 0, 'Mon', 11),
('2019-02-05', 0, 'Tue', 11),
('2019-02-06', 0, 'Wed', 11),
('2019-02-07', 0, 'Thu', 11),
('2019-02-08', 0, 'Fri', 11),
('2019-02-09', 0, 'Sat', 11),
('2019-02-10', 1, 'Sun', 11),
('2019-02-11', 0, 'Mon', 11),
('2019-02-12', 0, 'Tue', 11),
('2019-02-13', 0, 'Wed', 11),
('2019-02-14', 0, 'Thu', 11),
('2019-02-15', 0, 'Fri', 11),
('2019-02-16', 0, 'Sat', 11),
('2019-02-17', 1, 'Sun', 11),
('2019-02-18', 0, 'Mon', 11),
('2019-02-19', 0, 'Tue', 11),
('2019-02-20', 0, 'Wed', 11),
('2019-02-21', 0, 'Thu', 11),
('2019-02-22', 0, 'Fri', 11),
('2019-02-23', 0, 'Sat', 11),
('2019-02-24', 1, 'Sun', 11),
('2019-02-25', 0, 'Mon', 11),
('2019-02-26', 0, 'Tue', 11),
('2019-02-27', 0, 'Wed', 11),
('2019-02-28', 0, 'Thu', 11),
('2019-03-01', 0, 'Fri', 11),
('2019-03-02', 0, 'Sat', 11),
('2019-03-03', 1, 'Sun', 11),
('2019-03-04', 0, 'Mon', 11),
('2019-03-05', 0, 'Tue', 11),
('2019-03-06', 0, 'Wed', 11),
('2019-03-07', 0, 'Thu', 11),
('2019-03-08', 0, 'Fri', 11),
('2019-03-09', 0, 'Sat', 11),
('2019-03-10', 1, 'Sun', 11),
('2019-03-11', 0, 'Mon', 11),
('2019-03-12', 0, 'Tue', 11),
('2019-03-13', 0, 'Wed', 11),
('2019-03-14', 0, 'Thu', 11),
('2019-03-15', 0, 'Fri', 11),
('2019-03-16', 0, 'Sat', 11),
('2019-03-17', 1, 'Sun', 11),
('2019-03-18', 0, 'Mon', 11),
('2019-03-19', 1, 'Tue', 11),
('2019-03-20', 0, 'Wed', 11),
('2019-03-21', 0, 'Thu', 11),
('2019-03-22', 0, 'Fri', 11),
('2019-03-23', 0, 'Sat', 11),
('2019-03-24', 1, 'Sun', 11),
('2019-03-25', 0, 'Mon', 11),
('2019-03-26', 0, 'Tue', 11),
('2019-03-27', 0, 'Wed', 11),
('2019-03-28', 0, 'Thu', 11),
('2019-03-29', 0, 'Fri', 11),
('2019-03-30', 0, 'Sat', 11),
('2019-03-31', 1, 'Sun', 11),
('2019-04-01', 0, 'Mon', 11),
('2019-04-02', 0, 'Tue', 11),
('2019-04-03', 0, 'Wed', 11),
('2019-04-04', 0, 'Thu', 11),
('2019-04-05', 0, 'Fri', 11),
('2019-04-06', 0, 'Sat', 11),
('2019-04-07', 1, 'Sun', 11),
('2019-04-08', 0, 'Mon', 11),
('2019-04-09', 0, 'Tue', 11),
('2019-04-10', 0, 'Wed', 11),
('2019-04-11', 0, 'Thu', 11),
('2019-04-12', 0, 'Fri', 11),
('2019-04-13', 0, 'Sat', 11),
('2019-04-14', 1, 'Sun', 11),
('2019-04-15', 0, 'Mon', 11),
('2019-04-16', 0, 'Tue', 11),
('2019-04-17', 0, 'Wed', 11),
('2019-04-18', 0, 'Thu', 11),
('2019-04-19', 0, 'Fri', 11),
('2019-04-20', 0, 'Sat', 11),
('2019-04-21', 1, 'Sun', 11),
('2019-04-22', 0, 'Mon', 11),
('2019-04-23', 0, 'Tue', 11),
('2019-04-24', 0, 'Wed', 11),
('2019-04-25', 0, 'Thu', 11),
('2019-04-26', 0, 'Fri', 11),
('2019-04-27', 0, 'Sat', 11),
('2019-04-28', 1, 'Sun', 11),
('2019-04-29', 0, 'Mon', 11),
('2019-04-30', 0, 'Tue', 11),
('2019-05-01', 0, 'Wed', 11),
('2019-05-02', 0, 'Thu', 11),
('2019-05-03', 0, 'Fri', 11),
('2019-05-04', 0, 'Sat', 11),
('2019-05-05', 1, 'Sun', 11),
('2019-05-06', 0, 'Mon', 11),
('2019-05-07', 0, 'Tue', 11),
('2019-05-08', 0, 'Wed', 11),
('2019-05-09', 0, 'Thu', 11),
('2019-05-10', 0, 'Fri', 11),
('2019-05-11', 0, 'Sat', 11),
('2019-05-12', 1, 'Sun', 11),
('2019-05-13', 0, 'Mon', 11),
('2019-05-14', 0, 'Tue', 11),
('2019-05-15', 0, 'Wed', 11),
('2019-05-16', 0, 'Thu', 11),
('2019-05-17', 0, 'Fri', 11),
('2019-05-18', 0, 'Sat', 11),
('2019-05-19', 1, 'Sun', 11),
('2019-05-20', 0, 'Mon', 11),
('2019-05-21', 0, 'Tue', 11),
('2019-05-22', 0, 'Wed', 11),
('2019-05-23', 0, 'Thu', 11),
('2019-05-24', 0, 'Fri', 11),
('2019-05-25', 0, 'Sat', 11),
('2019-05-26', 1, 'Sun', 11),
('2019-05-27', 0, 'Mon', 11),
('2019-05-28', 0, 'Tue', 11),
('2019-05-29', 0, 'Wed', 11),
('2019-05-30', 0, 'Thu', 11),
('2019-05-31', 0, 'Fri', 11),
('2019-06-01', 0, 'Sat', 11),
('2019-06-02', 1, 'Sun', 11),
('2019-06-03', 0, 'Mon', 11),
('2019-06-04', 0, 'Tue', 11),
('2019-06-05', 0, 'Wed', 11),
('2019-06-06', 0, 'Thu', 11),
('2019-06-07', 0, 'Fri', 11),
('2019-06-08', 0, 'Sat', 11),
('2019-06-09', 1, 'Sun', 11),
('2019-06-10', 0, 'Mon', 11),
('2019-06-11', 0, 'Tue', 11),
('2019-06-12', 0, 'Wed', 11),
('2019-06-13', 0, 'Thu', 11),
('2019-06-14', 0, 'Fri', 11),
('2019-06-15', 0, 'Sat', 11),
('2019-06-16', 1, 'Sun', 11),
('2019-06-17', 0, 'Mon', 11),
('2019-06-18', 0, 'Tue', 11),
('2019-06-19', 0, 'Wed', 11),
('2019-06-20', 0, 'Thu', 11),
('2019-06-21', 0, 'Fri', 11),
('2019-06-22', 0, 'Sat', 11),
('2019-06-23', 1, 'Sun', 11),
('2019-06-24', 0, 'Mon', 11),
('2019-06-25', 0, 'Tue', 11),
('2019-06-26', 0, 'Wed', 11),
('2019-06-27', 0, 'Thu', 11),
('2019-06-28', 0, 'Fri', 11),
('2019-06-29', 0, 'Sat', 11),
('2019-06-30', 1, 'Sun', 11),
('2019-07-01', 0, 'Mon', 11),
('2019-07-02', 0, 'Tue', 11),
('2019-07-03', 0, 'Wed', 11),
('2019-07-04', 0, 'Thu', 11),
('2019-07-05', 0, 'Fri', 11),
('2019-07-06', 0, 'Sat', 11),
('2019-07-07', 1, 'Sun', 11),
('2019-07-08', 0, 'Mon', 11),
('2019-07-09', 0, 'Tue', 11),
('2019-07-10', 0, 'Wed', 11),
('2019-07-11', 0, 'Thu', 11),
('2019-07-12', 0, 'Fri', 11),
('2019-07-13', 0, 'Sat', 11),
('2019-07-14', 1, 'Sun', 11),
('2019-07-15', 0, 'Mon', 11),
('2019-07-16', 0, 'Tue', 11),
('2019-07-17', 0, 'Wed', 11),
('2019-07-18', 0, 'Thu', 11),
('2019-07-19', 0, 'Fri', 11),
('2019-07-20', 0, 'Sat', 11),
('2019-07-21', 1, 'Sun', 11),
('2019-07-22', 0, 'Mon', 11),
('2019-07-23', 0, 'Tue', 11),
('2019-07-24', 0, 'Wed', 11),
('2019-07-25', 0, 'Thu', 11),
('2019-07-26', 0, 'Fri', 11),
('2019-07-27', 0, 'Sat', 11),
('2019-07-28', 1, 'Sun', 11),
('2019-07-29', 0, 'Mon', 11),
('2019-07-30', 0, 'Tue', 11),
('2019-07-31', 0, 'Wed', 11),
('2019-08-01', 0, 'Thu', 11),
('2019-08-02', 0, 'Fri', 11),
('2019-08-03', 0, 'Sat', 11),
('2019-08-04', 1, 'Sun', 11),
('2019-08-05', 0, 'Mon', 11),
('2019-08-06', 0, 'Tue', 11),
('2019-08-07', 0, 'Wed', 11),
('2019-08-08', 0, 'Thu', 11),
('2019-08-09', 0, 'Fri', 11),
('2019-08-10', 0, 'Sat', 11),
('2019-08-11', 1, 'Sun', 11),
('2019-08-12', 0, 'Mon', 11),
('2019-08-13', 0, 'Tue', 11),
('2019-08-14', 0, 'Wed', 11),
('2019-08-15', 1, 'Thu', 11),
('2019-08-16', 0, 'Fri', 11),
('2019-08-17', 0, 'Sat', 11),
('2019-08-18', 1, 'Sun', 11),
('2019-08-19', 0, 'Mon', 11),
('2019-08-20', 0, 'Tue', 11),
('2019-08-21', 0, 'Wed', 11),
('2019-08-22', 0, 'Thu', 11),
('2019-08-23', 0, 'Fri', 11),
('2019-08-24', 0, 'Sat', 11),
('2019-08-25', 1, 'Sun', 11),
('2019-08-26', 0, 'Mon', 11),
('2019-08-27', 0, 'Tue', 11),
('2019-08-28', 0, 'Wed', 11),
('2019-08-29', 0, 'Thu', 11),
('2019-08-30', 0, 'Fri', 11),
('2019-08-31', 0, 'Sat', 11),
('2019-09-01', 1, 'Sun', 11),
('2019-09-02', 0, 'Mon', 11),
('2019-09-03', 0, 'Tue', 11),
('2019-09-04', 0, 'Wed', 11),
('2019-09-05', 0, 'Thu', 11),
('2019-09-06', 0, 'Fri', 11),
('2019-09-07', 0, 'Sat', 11),
('2019-09-08', 1, 'Sun', 11),
('2019-09-09', 0, 'Mon', 11),
('2019-09-10', 0, 'Tue', 11),
('2019-09-11', 0, 'Wed', 11),
('2019-09-12', 0, 'Thu', 11),
('2019-09-13', 0, 'Fri', 11),
('2019-09-14', 0, 'Sat', 11),
('2019-09-15', 1, 'Sun', 11),
('2019-09-16', 0, 'Mon', 11),
('2019-09-17', 0, 'Tue', 11),
('2019-09-18', 0, 'Wed', 11),
('2019-09-19', 0, 'Thu', 11),
('2019-09-20', 0, 'Fri', 11),
('2019-09-21', 0, 'Sat', 11),
('2019-09-22', 1, 'Sun', 11),
('2019-09-23', 0, 'Mon', 11),
('2019-09-24', 0, 'Tue', 11),
('2019-09-25', 0, 'Wed', 11),
('2019-09-26', 0, 'Thu', 11),
('2019-09-27', 0, 'Fri', 11),
('2019-09-28', 0, 'Sat', 11),
('2019-09-29', 1, 'Sun', 11),
('2019-09-30', 0, 'Mon', 11),
('2019-10-01', 0, 'Tue', 11),
('2019-10-02', 1, 'Wed', 11),
('2019-10-03', 0, 'Thu', 11),
('2019-10-04', 0, 'Fri', 11),
('2019-10-05', 0, 'Sat', 11),
('2019-10-06', 1, 'Sun', 11),
('2019-10-07', 0, 'Mon', 11),
('2019-10-08', 0, 'Tue', 11),
('2019-10-09', 0, 'Wed', 11),
('2019-10-10', 0, 'Thu', 11),
('2019-10-11', 0, 'Fri', 11),
('2019-10-12', 0, 'Sat', 11),
('2019-10-13', 1, 'Sun', 11),
('2019-10-14', 0, 'Mon', 11),
('2019-10-15', 0, 'Tue', 11),
('2019-10-16', 0, 'Wed', 11),
('2019-10-17', 0, 'Thu', 11),
('2019-10-18', 0, 'Fri', 11),
('2019-10-19', 0, 'Sat', 11),
('2019-10-20', 1, 'Sun', 11),
('2019-10-21', 0, 'Mon', 11),
('2019-10-22', 0, 'Tue', 11),
('2019-10-23', 0, 'Wed', 11),
('2019-10-24', 0, 'Thu', 11),
('2019-10-25', 0, 'Fri', 11),
('2019-10-26', 0, 'Sat', 11),
('2019-10-27', 1, 'Sun', 11),
('2019-10-28', 0, 'Mon', 11),
('2019-10-29', 0, 'Tue', 11),
('2019-10-30', 0, 'Wed', 11),
('2019-10-31', 0, 'Thu', 11),
('2019-11-01', 0, 'Fri', 11),
('2019-11-02', 0, 'Sat', 11),
('2019-11-03', 1, 'Sun', 11),
('2019-11-04', 0, 'Mon', 11),
('2019-11-05', 0, 'Tue', 11),
('2019-11-06', 0, 'Wed', 11),
('2019-11-07', 0, 'Thu', 11),
('2019-11-08', 0, 'Fri', 11),
('2019-11-09', 0, 'Sat', 11),
('2019-11-10', 1, 'Sun', 11),
('2019-11-11', 0, 'Mon', 11),
('2019-11-12', 0, 'Tue', 11),
('2019-11-13', 0, 'Wed', 11),
('2019-11-14', 0, 'Thu', 11),
('2019-11-15', 0, 'Fri', 11),
('2019-11-16', 0, 'Sat', 11),
('2019-11-17', 1, 'Sun', 11),
('2019-11-18', 0, 'Mon', 11),
('2019-11-19', 0, 'Tue', 11),
('2019-11-20', 0, 'Wed', 11),
('2019-11-21', 0, 'Thu', 11),
('2019-11-22', 0, 'Fri', 11),
('2019-11-23', 0, 'Sat', 11),
('2019-11-24', 1, 'Sun', 11),
('2019-11-25', 0, 'Mon', 11),
('2019-11-26', 0, 'Tue', 11),
('2019-11-27', 0, 'Wed', 11),
('2019-11-28', 0, 'Thu', 11),
('2019-11-29', 0, 'Fri', 11),
('2019-11-30', 0, 'Sat', 11),
('2019-12-01', 1, 'Sun', 11),
('2019-12-02', 0, 'Mon', 11),
('2019-12-03', 0, 'Tue', 11),
('2019-12-04', 0, 'Wed', 11),
('2019-12-05', 0, 'Thu', 11),
('2019-12-06', 0, 'Fri', 11),
('2019-12-07', 0, 'Sat', 11),
('2019-12-08', 1, 'Sun', 11),
('2019-12-09', 0, 'Mon', 11),
('2019-12-10', 0, 'Tue', 11),
('2019-12-11', 0, 'Wed', 11),
('2019-12-12', 0, 'Thu', 11),
('2019-12-13', 0, 'Fri', 11),
('2019-12-14', 0, 'Sat', 11),
('2019-12-15', 1, 'Sun', 11),
('2019-12-16', 0, 'Mon', 11),
('2019-12-17', 0, 'Tue', 11),
('2019-12-18', 0, 'Wed', 11),
('2019-12-19', 0, 'Thu', 11),
('2019-12-20', 0, 'Fri', 11),
('2019-12-21', 0, 'Sat', 11),
('2019-12-22', 1, 'Sun', 11),
('2019-12-23', 0, 'Mon', 11),
('2019-12-24', 0, 'Tue', 11),
('2019-12-25', 1, 'Wed', 11),
('2019-12-26', 0, 'Thu', 11),
('2019-12-27', 0, 'Fri', 11),
('2019-12-28', 0, 'Sat', 11),
('2019-12-29', 1, 'Sun', 11),
('2019-12-30', 0, 'Mon', 11),
('2019-12-31', 0, 'Tue', 11);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `ufac_id` int(2) NOT NULL,
  `fac_id` varchar(4) NOT NULL,
  `fac_name` varchar(70) NOT NULL,
  `c_id` int(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ufac_id`, `fac_id`, `fac_name`, `c_id`, `email`, `contact`, `password`, `role`) VALUES
(1, 'CR', 'Chintal raval', 0, 'chintalravalCR@gmail.com', 0, 'chintalravalCR', 2),
(2, 'HP', 'Hitesh Parmar', 0, 'hiteshparmarHP@gmail.com', 0, 'hiteshparmarHP', 2),
(3, 'PG', 'Pooja Gandhi', 0, 'poojagandhiPG@gmail.com', 0, 'poojagandhiPG', 2),
(4, 'PJ', 'Pooja Jain', 0, 'poojajainPJ@gmail.com', 0, 'poojajainPJ', 2),
(6, 'JP', 'Dr. Jayraj Pandya', 2, 'jayrajpandyaJP@gmail.com', 0, 'jayrajpandyaJP', 1),
(7, 'MD', 'Dr. Maulik Desai', 1, 'maulikdesaiMD@gmail.com', 0, 'maulikdesaiMD', 2),
(8, 'IB', 'Dr. Ismail Bootwala', 1, 'ismailbootwalaIb@gmail.com', 0, 'ismailbootwalaIb', 2),
(9, 'MU', 'Milan Undavia', 1, 'milanundaviaMU@gmail.com', 0, 'milanundaviaMU', 2),
(10, 'PK', 'Pooja Khatri', 2, 'poojakhatriPK@gmail.com', 0, 'poojakhatriPK', 2),
(11, 'AP', 'Akanksha Patel', 2, 'akanshapatelAP@gmail.com', 0, 'akanshapatelAP', 2),
(12, 'KC', 'Kinjal Choksi', 1, 'kinjalchoksiKC@gmail.com', 0, 'kinjalchoksiKC', 2),
(13, 'UB', 'Uday Bhatt', 2, 'udaybhattUB@gmail.com', 0, 'udaybhattUB', 2),
(14, 'AYB', 'Amrita Y. Bardiya', 1, 'amritaybardiyaAYB@gmail.com', 0, 'amritaybardiyaAYB', 2),
(15, 'RR', 'Dr. R. Radha', 2, 'rradhaRR@gmail.com', 0, 'rradhaRR', 1),
(16, 'AG', 'Dr. Anjali Gokhru', 1, 'anjaligokhruAG@gmail.com', 0, 'anjaligokhruAG', 2),
(17, 'IJ', 'Ingita Jain', 1, 'ingitajainIJ@gmail.com', 0, 'ingitajainIJ', 2),
(18, 'RG', 'Dr. Rachna Gandhi', 1, 'rachnagandhiRG@gmail.com', 0, 'rachnagandhiRG', 2),
(19, 'SF', 'Suman Fulwani', 1, 'sumanfulwaniSF@gmail.com', 0, 'sumanfulwaniSF', 2),
(20, 'VS', 'Vishva Shah', 1, 'vishvashahVS@gmail.com', 0, 'vishvashahVS', 2),
(21, 'VN', 'Vishali Nindroda', 2, 'vaishalinindrodaVN@gmail.com', 0, 'vaishalinindrodaVN', 2),
(22, 'AA', 'Anita Ahuja', 1, 'anitaahujaAA@gmail.com', 0, 'anitaahujaAA', 2),
(23, 'PM', 'Priyanka Mehta', 1, 'priyankamehtaPM@gmail.com', 0, 'priyankamehtaPM', 2),
(24, 'SA', 'DR. Shamina Ansari', 1, 'shaminaansariSA@gmail.com', 0, 'shaminaansariSA', 2),
(25, 'RS', 'Richa Seth', 1, 'richasethRS@gmail.com', 0, 'richasethRS', 2),
(26, 'HP', 'Dr. Hiral Parikh', 1, 'hiralparikhHP@gmail.com', 0, 'hiralparikhHP', 2),
(27, 'AMG', 'Akanxa M. Galande', 1, 'akanxamhgalandeAMG@gmail.com', 0, 'akanxamhgalandeAMG', 2),
(28, 'IS', 'Ishita Sakariya', 1, 'ishitasakariyaIS@gmail.com', 0, 'ishitasakariyaIS', 2),
(29, 'AV', 'Ankita Vaidya', 1, 'ankitavaidyaAV@gmail.com', 0, 'ankitavaidyaAV', 2),
(30, 'AB', 'Asha Brahmkshatriya', 2, 'ashabrahmkshatriyaAB@gmail.com', 0, 'ashabrahmkshatriyaAB', 2),
(31, 'NC', 'Nirul Chaudhary', 1, 'nirulchaudharyNC@gmail.com', 0, 'nirulchaudharyNC', 2),
(32, 'NG', 'Dr. Neelkamal Gogna', 1, 'neelkamalgognaNG@gmail.com', 0, 'neelkamalgognaNG', 2),
(33, 'KP', 'Kalyani Patel', 0, 'kalyanipatelKP@gmail.com', 0, 'kalyanipatelKP', 2),
(34, 'NG', 'Nandita Goswami', 2, 'nanditagoswamiNG@gmail.com', 0, 'nanditagoswamiNG', 2),
(35, 'SC', 'Sonali Chakraborty', 0, 'sonalichokrabortySC@gmail.com', 0, 'sonalichokrabortySC', 2),
(36, 'SS', 'Shailee Shah', 0, 'shaileeshahSS@gmail.com', 0, 'shaileeshahSS', 2),
(37, 'PD', 'Palak Dabhi', 0, 'palakdabhiPD@gmail.com', 0, 'palakdabhiPD', 2),
(38, 'VS', 'Vidhi Sutariya', 0, 'vidhisutariyaVS@gmail.com', 0, 'vidhisutariyaVS', 2),
(39, 'DB', 'Dipti Bhatt', 0, 'diptibhattDB@gmail.com', 0, 'diptibhattDB', 2),
(40, 'PA', 'Priyanka Arorra', 0, 'priyankaarorraPA@gmail.com', 0, 'priyankaarorraPA', 2),
(41, 'RS', 'Rujuta shah', 0, 'rujutashahRS@gmail.com', 0, 'rujutashahRS', 2),
(42, 'JP', 'Jaimini Patel', 0, 'jaiminipatelJP@gmail.com', 0, 'jaiminipatelJP', 2),
(43, 'ND', 'Namita Doshi', 0, 'namitadoshiND@gmail.com', 0, 'namitadoshiND', 2),
(44, 'AK', 'Amit Kalyani', 0, 'amitkalyaniAK@gmail.com', 0, 'amitkalyaniAK', 2),
(45, 'JR', 'Jigar Raval', 0, 'jigarravalJR@gmail.com', 0, 'jigarravalJR', 2),
(46, 'EK', 'Ekta Kikiani', 0, 'ektakikianiEK@gmail.com', 0, 'ektakikianiEK', 2),
(47, 'AG', 'Aishwari Goswami', 0, 'aishwarigoswamiAG@gmail.com', 0, 'aishwarigoswamiAG', 2),
(49, 'CK', 'CK', 1, 'ck@gmail.com', 0, 'ck', 2),
(50, 'jh', 'mn ', 1, 'bhb', 0, ',m,m, ', 2),
(51, 'dfv', 'j', 1, 'asx', 0, 'jay', 2),
(52, 'gv', 'jhb', 1, 'jn', 0, 'jjjjj', 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_msc_sem1_diva`
--

CREATE TABLE `schedule_msc_sem1_diva` (
  `day` varchar(5) NOT NULL,
  `12:15 to 1:10` varchar(50) NOT NULL,
  `1:10 to 2:05` varchar(50) NOT NULL,
  `2:20 to 3:15` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule_msc_sem1_diva`
--

INSERT INTO `schedule_msc_sem1_diva` (`day`, `12:15 to 1:10`, `1:10 to 2:05`, `2:20 to 3:15`) VALUES
('Fri', 'FM', 'FCO', 'SQL'),
('Mon', 'FCO', 'FM', 'FOP'),
('Thr', 'SQL', 'FCO', 'FM'),
('Tue', 'FM', 'FOP', 'SQL'),
('Wed', 'FOP', 'SQL', 'FCO');

-- --------------------------------------------------------

--
-- Table structure for table `sem_year`
--

CREATE TABLE `sem_year` (
  `sem_no` int(2) NOT NULL,
  `year` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sem_year`
--

INSERT INTO `sem_year` (`sem_no`, `year`) VALUES
(1, 'First'),
(2, 'First'),
(3, 'Second'),
(4, 'Second'),
(5, 'Third'),
(6, 'Third'),
(7, 'Fourth'),
(8, 'Fourth'),
(9, 'Fifth'),
(10, 'Fifth');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_enrl` int(11) NOT NULL,
  `s_rn` int(7) NOT NULL,
  `fnm` varchar(50) NOT NULL,
  `lnm` varchar(50) NOT NULL,
  `s_gen` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `c_id` int(2) NOT NULL,
  `sem` int(2) NOT NULL,
  `division` varchar(2) NOT NULL,
  `usub_id` int(4) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_enrl`, `s_rn`, `fnm`, `lnm`, `s_gen`, `email`, `contact`, `c_id`, `sem`, `division`, `usub_id`, `batch_id`) VALUES
(1, 2172001, 'ADIT S MEHTA', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(2, 2172002, 'AMIN AASTHA PRAVINBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(3, 2172003, 'ANSARI MUSADDIQA ABDULLAH', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(4, 2172007, 'BHARGAV SURESH RATILAL', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(5, 2172008, 'CHAUHAN DRASHTI JAGDISHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(6, 2172009, 'CHAUHAN SUNNY SHRAVANBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(7, 2172011, 'CHAVDA DISHA BHARATBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(8, 2172012, 'DARJI NISHITH NILESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(9, 2172013, 'DARJI RIYA DINESHKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(10, 2172015, 'DESAI RUTVI GITESH', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(11, 2172016, 'GABANI BRIJESHKUMAR NARANBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(12, 2172017, 'GOHEL RAHUL SUBHASHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(13, 2172018, 'GOHEL ROSHANI RAMESHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(14, 2172019, 'HARPANI DRASHTI MOHANBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(15, 2172020, 'JADAV SAGAR BHARATBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(16, 2172021, 'JAIN PREET NAVINCHANDRA', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(17, 2172022, 'KADIA ZEEL VIPULKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(18, 2172023, 'KATHIRIYA SHRUTIBEN GIRISHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(19, 2172024, 'LATHIWALA DARSHIL KAMLESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(20, 2172025, 'LUNAWAT PRIYANSI SANJAYKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(21, 2172026, 'MAKWANA KRISHNABEN RAGHUBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(22, 2172027, 'MANSURI FARHA MUKHTIYAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(23, 2172028, 'MEGHANI SHIVANIBEN SHANTIBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(24, 2172030, 'MODI NEEL BHARATKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(25, 2172031, 'MODI POOJA ATULKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(26, 2172032, 'NAGAR MUSKAN BHARATBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(27, 2172034, 'PANCHAL CHINTAN PARESHKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(28, 2172035, 'PANCHAL MITESHKUMAR DINESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(29, 2172036, 'PANCHAL RAHUL VIPULBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(30, 2172037, 'PANCHAL SANKET DINESHCHANDRA', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(31, 2172039, 'PARMAR ARPITA RATILAL', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(32, 2172040, 'PARMAR BHAVESHKUMAR KHEMAJI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(33, 2172042, 'PARMAR VIJAY TALSHIBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(34, 2172043, 'PATEL DHRUVI MANSUKHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(35, 2172044, 'PATEL DIPALIBEN MAHESHKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(36, 2172046, 'PATEL MESHWA VIPULBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(37, 2172047, 'PATEL RAJKUMAR DINESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(38, 2172048, 'PATEL RUTU SUBHASHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(39, 2172049, 'PATEL VIDHI BACHUBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(40, 2172050, 'PITRODA NAMRATABEN JAYESHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(41, 2172051, 'PRAJAPATI BHAVESHKUMAR DINESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(42, 2172052, 'PRAJAPATI JAYPAL PRAHLADBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(43, 2172053, 'PRAJAPATI KHUSHBOOBEN HARESHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(44, 2172054, 'PRIYARAJSINGH', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(45, 2172055, 'PUROHIT KULDEEP DEVARAMJI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(46, 2172056, 'RAJPUT DEVANSHI MAHESHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(47, 2172057, 'RANA VRAJ POONAMBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(48, 2172058, 'SANGHADIYA JEEL JITENDRAKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(49, 2172059, 'SANGHVI VRUDDHI PARESHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(50, 2172060, 'SATIA TWESHA NIXIT', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(51, 2172061, 'SHAH ARSHIL PARESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(52, 2172062, 'SHAH ASHKA SANJEEV', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(53, 2172064, 'SHAH JINAL HITESHBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(54, 2172065, 'SHAH JINAY BIKESHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(55, 2172066, 'SHAH KRUNAL DILIPKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(56, 2172067, 'SHAH KUSH VIJAYKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(57, 2172068, 'SHAH MANAV PRITESHKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(58, 2172069, 'SHAH PAKSHAL VIRENDRA KUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(59, 2172070, 'SHAH PRACHI ASHITBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(60, 2172071, 'SHAH RUJU KETANBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(61, 2172072, 'SHAH TIRTHAK KALPESHKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(62, 2172073, 'SHAH VANDIT MANISHKUMAR', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(63, 2172075, 'SHUKLA KHUSHI MADHUSUDAN', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(64, 2172076, 'SOLANKI SHIVANI RAMESHKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(65, 2172077, 'SOMANI KHUSHBU RAMPRASAD', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(66, 2172078, 'SORATHIYA DIPAKKUMAR MANSHUKHBHAI', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(67, 2172080, 'TALATI DEVANSHI DEEPAKKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(69, 2172082, 'VEKARIYA SHREYANSHI BHARATKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(70, 2172083, 'VORA RUHIBANU ISMAILBHAI', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(71, 2172084, 'ASNANI KAJOL VINODBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(72, 2172085, 'BANSHU DIVYANG CHANDRAKANTBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(73, 2172086, 'BAROT JALPABEN MANOJKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(74, 2172087, 'BHATT YESHA HIRENKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(75, 2172089, 'CHAUHAN KHUSHBU RAJESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(76, 2172090, 'CHAUHAN NANDINI KIRITBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(77, 2172091, 'CHAUHAN URMI ANILBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(78, 2172092, 'CHAVDA DARSHAN BAKULBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(79, 2172093, 'CHAVDA SIDDHI HIMMATBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(80, 2172094, 'CHAVDA TANYA DEEPAKKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(81, 2172095, 'DARJI ZEEL BIPINCHANDRA', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(82, 2172096, 'DEEP KALPESH VAKHARIA', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(83, 2172097, 'DESAI VISHVA MUKESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(84, 2172098, 'GAJERA KRISHNABEN MANUBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(85, 2172100, 'GOHEL SWETA DINESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(86, 2172101, 'GOHIL SEJALBEN HARESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(87, 2172102, 'JAIN SAUMIL DEVENDRABHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(88, 2172103, 'JOSHI BHARAT SURESHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(89, 2172104, 'KATHIRIYA PINAL ARVINDBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(90, 2172105, 'KOTHIYA KAUSHIKBHAI GOVINDBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(91, 2172106, 'KOYA SALONI DINESHKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(92, 2172108, 'MAKWANA DHRUVI KAMLESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(93, 2172109, 'MAKWANA NAINSHIBEN PRAVINBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(94, 2172111, 'MEVADA SWETA RAMESHKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(95, 2172112, 'MOKANI AKSHIT DINESHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(96, 2172113, 'NAI MIHIR MUKESHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(97, 2172114, 'NAVADIYA JENISH DAMJIBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(98, 2172116, 'PANCHAL JINAL KAUSHIKKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(99, 2172117, 'PANCHAL KAJAL ASHOKBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(100, 2172118, 'PANCHAL PRIYANK UMESHKUMAR', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(101, 2172119, 'PANCHAL VRUNDA PINKESHKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(102, 2172120, 'PANCHOLI MAITRI MANOJKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(103, 2172121, 'PARMAR FALGUNI DINESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(104, 2172123, 'PATALIYA MONTU MAFATBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(105, 2172125, 'PATEL FORAM NIMESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(106, 2172126, 'PATEL KISHAN SURESHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(107, 2172127, 'PATEL MANALI JAYESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(108, 2172129, 'PATEL RIYA VINAYBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(109, 2172130, 'PATEL TIRTHKUMAR BIPINKUMAR', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(110, 2172131, 'PATEL YASH SURESH KUMAR', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(111, 2172132, 'PRAJAPATI DHRUV ARVINDBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(112, 2172133, 'PRAJAPATI KEVAL BALDEVBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(113, 2172134, 'PRAJAPATI NIMA HASMUKHLAL', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(114, 2172135, 'PRAJAPATI NITESHKUMAR BHAVARLAL', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(115, 2172136, 'RABARI BIREN JAYRAMBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(116, 2172137, 'RAGHAV TANDON', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(117, 2172138, 'RAMI POOJABEN ANILBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(118, 2172139, 'RANA ROMIL ASHISHKUMAR', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(119, 2172140, 'RATHOD SHIKHA MANUBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(120, 2172141, 'SANKALIYA BHAVIKKUMAR MANHARBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(121, 2172142, 'SATHVARA VRUTANSHI BEN DINESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(122, 2172144, 'SHAH DHRUVIL VIJAYBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(123, 2172145, 'SHAH HARSH RAJNIKANT', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(124, 2172146, 'SHAH HET RONAK BHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(125, 2172147, 'SHAH KALASH BHARATBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(126, 2172148, 'SHAH KASHISH RAJESH', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(127, 2172149, 'SHAH MAURVI HIMANSHU', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(128, 2172150, 'SHAH MITVA KAMLESHBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(129, 2172151, 'SHAH MOKSH DHANESHKUMAR', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(130, 2172152, 'SHAH POOJA HASMUKH', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(131, 2172154, 'SHAH SAKSHI ASHISHKUMAR', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(132, 2172155, 'SHAIKH MO SAKIB A REHMAN', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(133, 2172156, 'SIDDHAPATHAKI GAURAV KALPESHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(134, 2172157, 'SOJEETRA DIPALEE ZAVERBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(135, 2172158, 'SONI ISHVA ASITBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(136, 2172159, 'SUKHADIA RUTVI KUMARPAL', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(137, 2172162, 'VAGHELA KUNAL PIYUSHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(138, 2172163, 'VAGHELA PRIYESHKUMAR MUKESHBHAI', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(139, 2172164, 'YADAV SHIV HARAKH SHIV BHUSHAN', '', 0, '', 0, 0, 3, 'B', NULL, NULL),
(140, 2172165, 'ZINZUVADIYA PRIYANSHI CHETANBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(141, 2172166, 'BAROT SMIT VIJAYBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(142, 2172167, 'BHARADVA KRISHNA PARESHBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(143, 2172168, 'BHATT PARTH KAUSHIKKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(144, 2172169, 'BHOJAK SHAIVAL DHIRENKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(145, 2172170, 'CHAUHAN BHARGAV HARISHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(146, 2172171, 'CHAVDA DHRUVA PARESHBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(147, 2172173, 'CHUDASAMA RUTUBA SHIVBHADRASINH', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(148, 2172174, 'CONTRACTOR AKSHAR UMESHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(149, 2172175, 'DARJI DEVANSHI BABUBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(150, 2172176, 'DARJI MANSI RAKESHKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(151, 2172177, 'DESAI JAY JAYSUKHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(152, 2172178, 'DOSHI PARSHVA VIJAYKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(153, 2172180, 'GANDHI PRAKRUTI CHUNANGBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(154, 2172181, 'GOTI ZARNA GUNVANTBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(155, 2172182, 'JOSHI YASH JAYESHKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(156, 2172183, 'JOTANIYA KISHAN ARVINDBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(157, 2172186, 'KHATRI DHWANI AMITBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(158, 2172187, 'KUMAVAT RANCHHODRAJ DINESHKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(159, 2172188, 'LALCHANDANI JAYESH JITUBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(160, 2172190, 'MANIAR PARTH BHARATKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(161, 2172191, 'MISHRA JYOTI SHIVSHANKAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(162, 2172192, 'MODI DHRUV ANILKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(163, 2172193, 'MOMIN SIDDIKABANU MAHAMMADSALIM', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(164, 2172194, 'MUCHHADIYA RAHULBHAI NARANBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(165, 2172195, 'NILESH SUKHWANI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(166, 2172196, 'NIMJE VARSHA DEVANANDBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(167, 2172197, 'PANCHAL LAV GHANSHYAMBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(168, 2172198, 'PANCHAL MRUNAL SHRIKANTBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(169, 2172199, 'PANCHAL PRIYANK KETAN', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(170, 2172200, 'PANSURIYA URVISHA NATAVARBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(171, 2172201, 'PAREKH PREMAL MAHESHKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(172, 2172206, 'PATEL KALPESHKUMAR KHUSHALBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(173, 2172207, 'PATEL PARTH HASMUKHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(174, 2172208, 'PATEL POOJABEN BALDEVBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(175, 2172209, 'PATEL RUTU DHARMENDRABHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(176, 2172211, 'PHALGUNI TRIBHUVAN PARMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(177, 2172212, 'PRAJAPATI AMIT BALDEVBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(178, 2172213, 'PRAJAPATI JANVI RAMESHBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(179, 2172214, 'PRAJAPATI RUSHIN RAVINDRAKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(180, 2172215, 'PRAJAPATI SIDDHI BHARATBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(181, 2172216, 'PUROHIT RAJ MAHESHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(182, 2172218, 'RAJGOR JANVI RAJENDRAPRASAD', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(183, 2172219, 'RANA BIREN ASHISHKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(184, 2172220, 'RATHOD VISHAL DHIRUBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(185, 2172221, 'SATHWARA VAIBHAVKUMAR JIGNESHKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(186, 2172222, 'SAURABH KUMAR SINGH', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(187, 2172223, 'SHAH DARSHAN ALKESHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(188, 2172224, 'SHAH DISHA BIJALBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(189, 2172225, 'SHAH HARSHKUMAR KAUSHIKBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(190, 2172227, 'SHAH JANU KAMLESHBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(191, 2172228, 'SHAH KIRTAN VIPULKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(192, 2172229, 'SHAH KRIMA PRAGNESHKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(193, 2172230, 'SHAH NUPUR JIGARBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(194, 2172231, 'SHAH PARIN JUGALKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(195, 2172232, 'SHAH RUCHITA PRAKASHBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(196, 2172233, 'SHAH SRUSHTI KETANKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(197, 2172234, 'SHAH SUJAL CHIRAGKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(198, 2172235, 'SHAH VIRAL PIYUSHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(199, 2172236, 'SHAMNANI CHANDRESH PRADEEPKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(200, 2172237, 'SOLANKI RAHULBHAI JAYSUKHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(201, 2172239, 'SOLANKI SMIT BIPINKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(202, 2172240, 'SONI PRIYANSHI TUSHARKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(203, 2172241, 'THAKKAR HARSH NILESHKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(204, 2172243, 'VEKARIYA AAKASH GHANSHYAMBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(205, 2172244, 'VORA MEHA DHIRENKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(206, 2172260, 'MAHETA POOJAN JIGAR BHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(207, 2172261, 'PATEL DAX SATISHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(208, 2172264, 'YADAV VISHAKHA VINODBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(209, 2172265, 'THAKKAR HARSH VIJAYBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(210, 2172266, 'SHAH RAHUL VIJAYKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(211, 2172267, 'PANCHAL VIDHI BHARATBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(212, 2162268, 'SOLANKI RACHANA DHARMESHBHAI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(213, 2162269, 'TIRKAR SHAHIL VASANT KUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(214, 2162270, 'SARVAIYA URVASHEE DIPAKBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(215, 2162271, 'PAREKH RAVI VIJAYKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(216, 2162272, 'KORA VISHAL LAXMINARAYAN', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(217, 2162273, 'SHASHANK CHATURVEDI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(218, 2162274, 'CHAUDHARY PRIYANKA RAHULKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(219, 2172006, 'BHADAURIYA GAJENDRA SINGH MAHIPAL SINGH', '', 0, '', 0, 0, 3, 'A', NULL, NULL),
(220, 2172153, 'SHAH RAJVI SHREYANSBHAI', '', 1, '', 0, 0, 3, 'B', NULL, NULL),
(221, 2162247, 'KAPADIYA SACHIN RAJANKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(222, 2152248, 'LEUVA NISHA PARESHKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(223, 2152249, 'NAYAK BHUMIKABEN BHUPENDRAKUMAR', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(224, 2162257, 'SONI BHAGYESH MANOJKUMAR', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(225, 2162275, 'RATHOD SRUSHTI DINESHBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(226, 2152276, 'MAKWANA URVASHI HIMANSHUBHAI', '', 1, '', 0, 0, 3, 'C', NULL, NULL),
(227, 2172029, 'MODI MANSI NARESHKUMAR', '', 1, '', 0, 0, 3, 'A', NULL, NULL),
(228, 2163001, 'AGARWAL ADITYA LALITKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(229, 2163002, 'BAROT CHIRAG GHANSHYAMBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(230, 2163003, 'BHATT ROHAN DIPAKKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(231, 2163004, 'BHAVSAR MESHWA KIRTIKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(232, 2163005, 'BUTOLA ANJALI MADANSINH', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(233, 2163006, 'CHAUHAN JAYRAJSINH ANOPSINH', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(234, 2163007, 'CHAVDA PRAVIN KHIMABHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(235, 2163008, 'CHOTALIYA JINAL KISHORBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(236, 2163009, 'CHUNARA VISHALKUMAR MUKESHBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(237, 2163010, 'DARJI HARSHIL GHANSHYAMBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(238, 2163011, 'DAVE KINJAL GITESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(239, 2163013, 'FADIA PANKTI NAINESH', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(240, 2163015, 'GONDALIYA KOMAL VINUBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(241, 2163017, 'JAIN SHUBHAM DEVENDRAKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(242, 2163018, 'JETHAVA DARSHITA BHARATBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(243, 2163019, 'JOSHI DIMPLE BIPINCHANDRA', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(244, 2163020, 'JOSHI SHAHIL MAHESHKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(245, 2163022, 'LIMBACHIYA DAMINEE MUKESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(246, 2163023, 'MAKWANA ABHISHEK BHARATKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(247, 2163025, 'MEHTA MAULI BHAVESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(248, 2163026, 'MER ASHUTOSH CHETANBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(249, 2163027, 'MISTRY PUSHTI DHARMENDRAKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(250, 2163028, 'MODI VIDHI GIRISHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(251, 2163029, 'NAGARBANDHARA RIDDHI BAKULKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(252, 2163030, 'Nikita R Gupta', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(253, 2163031, 'PADSALA MAULIK JAGDISHBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(254, 2163032, 'PANCHAL DIKSHA KAMLESHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(255, 2163033, 'PANCHAL KINJALBEN MAHENDRAKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(256, 2163034, 'PANCHAL SNEHAL DIPAKKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(257, 2163035, 'PANDYA UMANG HARSHADBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(258, 2163036, 'PAREKH ZEENAL VIJAYKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(259, 2163037, 'PARMAR BIJAL MAHENDRABHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(260, 2163038, 'PARMAR SIDHARAJSINH MANGALSINH', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(261, 2163039, 'PATEL AMIBEN SURESHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(262, 2163040, 'PATEL BHAKTI HITESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(263, 2163041, 'PATEL JAYDEEPKUMAR JAYSUKHBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(264, 2163042, 'PATEL MIRAL SHASHIKANT', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(265, 2163043, 'PATEL NIDHIBEN GOVINDBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(266, 2163044, 'PATEL POOJA JAYANTIBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(267, 2163045, 'PATEL SHIVANI ATUL BHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(268, 2163046, 'PATEL SHREYA KALPESHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(269, 2163047, 'PATEL SRUSHTI PRAKASHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(270, 2163048, 'PATIWALA MEGHA BIPINBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(271, 2163049, 'PRAJAPATI BHARGAVI MAHENDRABHAI', '', 1, '', 0, 0, 5, 'A', NULL, 1),
(272, 2163050, 'PRAJAPATI HARSHIL ALARAM', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(273, 2163051, 'PRAJAPATI LALIT LUMBAJIBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 1),
(274, 2163052, 'PRAJAPATI ROHAN YOGESHKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(275, 2163053, 'PRAJAPATI VIDHI ARVINDBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(276, 2163054, 'RAMI JINAL UMANGBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(277, 2163055, 'RATHOD AKSHITABEN RAKESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(278, 2163057, 'RUPAWALA IDRISH MURTUZA', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(279, 2163059, 'SAVANI DISHA BABUBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(280, 2163061, 'SHAH HETVEE VIMALKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(281, 2163062, 'SHAH KAIVAN MANISH', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(282, 2163063, 'SHAH KHUSHALI ASHISHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(283, 2163064, 'SHAH MAITRI YOGESHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(284, 2163065, 'SHAH MONIL PANKAJKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(285, 2163066, 'SHAH PRARTHIT CHIRAGKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(286, 2163069, 'SHAH SMIT RAJENDRAKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(287, 2163070, 'SHAH VIDHI PRAMESH', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(288, 2163071, 'SHARMA UMANG PRITESHKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(289, 2163072, 'SHUTHAR DHRUMIL HARISHKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(290, 2163073, 'SOLANKI JANVI RAJESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(291, 2163074, 'SOLANKI NIDHI HASMUKHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(292, 2163075, 'SOLANKI URMISHKUMAR BHARATKUMAR', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(293, 2163076, 'SONI MANSI HARSHADBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(294, 2163077, 'SONI SALONI PRITESHBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(295, 2163078, 'SUTHAR KETAN BHARATBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(296, 2163079, 'THAKKAR HELLY UMANGBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(297, 2163080, 'TIRKAR JEEL VIBHAKAR', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(298, 2163081, 'UKANI PRAKRUTIBEN GHANSYAMBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(299, 2163082, 'VADADORIYA DRASHTIBEN HIMMATBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(300, 2163083, 'VORA RUSHIK ATULBHAI', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(301, 2163084, 'ZALA RAJDIPSINH CHHATRAPALSINH', '', 0, '', 0, 0, 5, 'A', NULL, 2),
(302, 2163085, 'TRIVEDI MARGIBEN JIGNESHKUMAR', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(303, 2163086, 'VACHHETA DIVYA RANJITBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 2),
(304, 2163087, 'AGRAVAT KARTAVI BALKRISHNA', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(305, 2163088, 'BAROT HIMALI NIMESHKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(306, 2163089, 'BHAVSAR DEEP PRAKASHBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 2),
(307, 2163091, 'CHALODIYA RIDDHI JAGDISHBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(308, 2163092, 'CHAUHAN MIRALI BHARATBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(309, 2163093, 'CHAVDA SHRADDHAKUMARI MAHENDRASINH', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(310, 2163094, 'CHOTALIYA MEHUL RAMNIKBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 2),
(311, 2163095, 'DALAL SHRENIK UDAYKUMAR', '', 0, '', 0, 0, 5, 'B', NULL, 2),
(312, 2163096, 'DARJI PRIYA NILESHKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(313, 2163097, 'DHABALIYA DARSHITA CHETANKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(314, 2163098, 'DOSHI DHRUVI BIMISH', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(315, 2163099, 'FICHADIYA DARSHAN GUNAVANTLAL', '', 0, '', 0, 0, 5, 'B', NULL, 2),
(316, 2163100, 'GANGANI BHOOMIKA VALLABHBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(317, 2163101, 'GOPANI AAGAM AJAYBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 2),
(318, 2163102, 'JADAV MILAN CHANDRESHBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 2),
(319, 2163103, 'JANSARI DHIRAL ROHITKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 2),
(320, 2163104, 'JIYANI KULDEEP BHARATBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(321, 2163105, 'JOSHI MAULIK DEVENDRABHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(322, 2163108, 'MACWAN ANGEL SHAILESH', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(323, 2163109, 'MAKWANA NIRALI SHAILESH BHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(324, 2163110, 'MANSURI MASIRA MOHD FARUK', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(325, 2163111, 'MEHTA PRIYEN NILESHKUMAR', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(326, 2163112, 'MISTRY AKSHAY ALPESHBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(327, 2163113, 'MODI BHAVIK UMESHKUMAR', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(328, 2163114, 'MOVLIYA DHRUVIBEN RAMESHBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(329, 2163115, 'NAGORI ABHAY ARVINDBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(330, 2163116, 'OZA IKSHU ARJUNKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(331, 2163117, 'PANCHAL AMIT SHANKARBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(332, 2163118, 'PANCHAL JAY GANPATBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(333, 2163121, 'PANSANIYA KAUSHABEN PRADIPKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(334, 2163122, 'PARMAR ANJALI JAGDISHBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(335, 2163124, 'PARMAR VISHAL MAYURBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(336, 2163125, 'PATEL ANJALIBEN RATILAL', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(337, 2163126, 'PATEL DRASHTI PIYUSHKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(338, 2163127, 'PATEL JEEL MAHIRKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(339, 2163128, 'PATEL MOHIL MUKESHKUMAR', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(340, 2163129, 'PATEL PARTH RAMESHCHANDRA', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(341, 2163130, 'PATEL PRIYANSHI MINESH', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(342, 2163131, 'PATEL SHIVANIBEN HITENDRABHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(343, 2163132, 'PATEL SHREYABEN RAJESHKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(344, 2163133, 'PATEL YASVI GOPALBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(345, 2163134, 'PONKIYA MONIKA BHARATBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(346, 2163135, 'PRAJAPATI BHAVESH BABULAL', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(347, 2163137, 'PRAJAPATI POOJA INDRAVADANBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(348, 2163138, 'PRAJAPATI SAGAR VASANTBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(349, 2163140, 'RANA HARDIKKUMAR MANHARLAL', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(350, 2163141, 'RATHOD ASMEETA RAJESHBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(351, 2163142, 'RAVAL SHREYA PRAGNESHKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(352, 2163143, 'SALONI MAHESHWARI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(353, 2163144, 'SAPRA AKSHAYKUMAR JADAVBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(354, 2163145, 'SHAH ABHISHEK DEEPAKKUMAR', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(355, 2163146, 'SHAH ARCHI PARESHBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(356, 2163147, 'SHAH HONEY HARSHADBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(357, 2163148, 'SHAH KAJAL HITENDRABHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(358, 2163149, 'SHAH KRIMA BRIJESH', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(359, 2163150, 'SHAH MARMIK NIRAVBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(360, 2163152, 'SHAH PRATIK MUKESHBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(361, 2163153, 'SHAH PRIYAL DEEPAKBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(362, 2163154, 'SHAH RAJ NIKHILBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(363, 2163155, 'SHAH TOSHA CHAITANYA', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(364, 2163156, 'SHAH VIRALI SANJAYBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 3),
(365, 2163158, 'SOLANKI ANKIT MANUBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 3),
(366, 2163159, 'SOLANKI JIGAR KANTIBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 4),
(367, 2163162, 'SONI PRACHI JITENBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 4),
(368, 2163163, 'SURAJKAR LOPABEN MANUBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 4),
(369, 2163165, 'THAKOR SUNIL MAHESHBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 4),
(370, 2163167, 'UPADHYAY DINESHKUMAR RAMKARAN', '', 0, '', 0, 0, 5, 'B', NULL, 4),
(371, 2163168, 'VAGHELA KETANKUMAR BATUKBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 4),
(372, 2163169, 'VYAS AAYUSHI BIPINKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 4),
(373, 2163171, 'WADHWANA TANSI RAJENDRAKUMAR', '', 1, '', 0, 0, 5, 'B', NULL, 4),
(374, 2163172, 'THUMMAR RAVI VITHTHALBHAI', '', 0, '', 0, 0, 5, 'B', NULL, 4),
(375, 2163173, 'AYUSHI RAJESH PATEL', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(376, 2163174, 'BHARVAD VIKRAM NATHUBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(377, 2163176, 'BRAHMBHATT VISHAL RAMCHANDRA', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(378, 2163178, 'CHAVDA JAYRAJSINH VIJAYSINH', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(379, 2163179, 'CHAWDA YUVRAJ KIRIT KUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(380, 2163180, 'CHUNARA KINJAL MANISH KUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(381, 2163181, 'DALWADI PRIYANSHI VINAYKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(382, 2163182, 'DARJI SHIVANI LALJIBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(383, 2163183, 'DHANDHUKIYA NIDHI ALPESHKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(384, 2163184, 'DUDHIA JUHI NIKUNJKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(385, 2163186, 'GOHIL HARDIK SHAMJIBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(386, 2163187, 'GORANIA KARAN RAMDEVBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(387, 2163188, 'JAIN ANSHI AMRIT', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(388, 2163189, 'JAYSWAL BHAVIKA PRAKASHKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(389, 2163190, 'JOGANI RIMABAHEN RAJENDRAKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(390, 2163191, 'JOSHI SACHIN KUMARBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(391, 2163192, 'KARLIKER YUG SHAILESHBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(392, 2163193, 'KUTANA PAYALBEN SAVJIBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(393, 2163194, 'MACWAN ARPITA ALBERT', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(394, 2163195, 'MAKWANA PRAKASHKUMAR DHANJIBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(395, 2163196, 'MARU SHUBHAM RASHIKBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(396, 2163197, 'MEMON TASLIMBANU IQBALBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(397, 2163198, 'MISTRY BRIJESH MANSUKHBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(398, 2163199, 'MODI BINAL PRAKASHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(399, 2163200, 'NAGAR REMILA PARASMAL', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(400, 2163202, 'PADIA DARSHIL PRASHANTBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(401, 2163203, 'PANCHAL ANJALIBEN MAHENDRAKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(402, 2163204, 'PANCHAL KANISHKA JAYESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(403, 2163205, 'PANCHAL SHRUTI HEMENDRAKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(404, 2163206, 'PANCHAL VISMAY MAYANKKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(405, 2163208, 'PARMAR AYUSHI MANHARBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(406, 2163209, 'PARMAR RAJAT MANOJBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(407, 2163211, 'PATEL AYUSHI PIYUSHKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(408, 2163212, 'PATEL HENIL DIPAKKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(409, 2163213, 'PATEL MARGIBEN DILIPBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(410, 2163214, 'PATEL NEELKUMAR ASHOKBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 4),
(411, 2163215, 'PATEL PINKY ASHOKKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 4),
(412, 2163217, 'PATEL SHREY ASHWINKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(413, 2163219, 'PATEL ZINALBEN MAHENDRAKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(414, 2163220, 'PRAJAPATI AMISHA RAJUBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(415, 2163221, 'PRAJAPATI DARSHANKUMAR BALDEVBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(416, 2163222, 'PRAJAPATI JAY AMBALAL', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(417, 2163223, 'PRAJAPATI PRITI VITTHALBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(418, 2163224, 'PRAJAPATI SHIVANGI PARESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(419, 2163225, 'PUJARA ROSHNI HARISHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(420, 2163226, 'RANGWALA FATEMA MUSTAQBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(421, 2163228, 'RINGWALA JANKI YOGESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(422, 2163229, 'SANGHAVI PRACHI YOGESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(423, 2163231, 'SHAH AKSHAT PARESHBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(424, 2163232, 'SHAH GREHA NILESH', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(425, 2163233, 'SHAH JANVI HETALBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(426, 2163234, 'SHAH KAVISH PRAFULBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(427, 2163235, 'SHAH KRISHA ALPESH', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(428, 2163236, 'SHAH MEET JITENDRAKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(429, 2163237, 'SHAH POOJAN SHRENIKKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(430, 2163238, 'SHAH PRESHA DARSHANKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(431, 2163239, 'SHAH PURVANG BHADRESHKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(432, 2163240, 'SHAH SHIKHA KAUSHAL', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(433, 2163241, 'SHAH VARSHIL FALGUNBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(434, 2163242, 'SHAIKH AAMENABANU KAMRUDDIN', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(435, 2163243, 'SHUKLA KAVISHA SANKETBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(436, 2163244, 'SOLANKI FENIL HITESHKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(437, 2163245, 'SOLANKI MILIND MUKESHBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(438, 2163246, 'THAKOR RENUKABEN AMARSING', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(439, 2163247, 'SONI DARSHITA DILIPBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(440, 2163248, 'SONI RAJ MAHENDRABHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(441, 2163249, 'SUTHAR DHRUVKUMAR ARVINDBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(442, 2163250, 'TAKOLIYA MIHIR DHARMENDRAKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(443, 2163253, 'PANCHAL TIRTH RAJUBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(444, 2163255, 'CHAUHAN NITIN MAHENDRABHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(445, 2163256, 'DARJI RAJAN ASHOKBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(446, 2163258, 'RAMI KINALBEN VINODBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(447, 2163259, 'VALA TEJAL ARUNBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(448, 2163260, 'PRAJAPATI DISHA RAJIVKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(449, 2163263, 'BHARADAVA JANAKI PARESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(450, 2163265, 'PATEL RUTU ASHWINKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(451, 2163266, 'MAKVANA AARTIBEN JILAJI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(452, 2163267, 'CHAUHAN RUCHITA CHHAGANBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(453, 2163268, 'KAYASTH HEMALI SHAILESHKUMAR', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(454, 2163269, 'SANGEETA SHARMA', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(455, 2153270, 'KULDEEP CHAUHAN', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(456, 2153272, 'RONAK SINGH SALUJA', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(457, 2153274, 'CHAVDA DHARAM RAJESHBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(458, 2133279, 'GAJJAR PRAGNESH GHANSHYAMBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(459, 2153280, 'PARMAR SHRADHA MUKESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(460, 2133282, 'PANCHAL MONAL ATULKUMAR', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(461, 2143277, 'SOLANKI NIKITABEN NITINBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(462, 2163014, 'GALLOTH NANDNI MANOJBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 5),
(463, 2163021, 'KHARSANI HEENA KETANBHAI', '', 1, '', 0, 0, 5, 'A', NULL, 5),
(464, 2163107, 'KUMAVATH RUPESH SHRI GOKULCHANDRA', '', 0, '', 0, 0, 5, 'B', NULL, 5),
(465, 2163164, 'SUTHAR RIDDHIBEN UPENDRABHAI', '', 1, '', 0, 0, 5, 'B', NULL, 5),
(466, 2163170, 'VASANI PARTHBHAI SUDHIRBHAI', '', 1, '', 0, 0, 5, 'B', NULL, 5),
(467, 2163210, 'PATADIYA BIJAL NARENDRABHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(468, 2163218, 'PATEL SHRUTI SHAILESHBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(469, 2153271, 'RANA CHAITANYA CHANDRAKANT', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(470, 2153273, 'BHAVSAR NIRALI DABBUBHAI', '', 1, '', 0, 0, 5, 'C', NULL, 5),
(471, 2153275, 'KESHAV DHAMECHA', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(472, 2153276, 'THAKKAR NISARG CHETAN', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(473, 2133281, 'SHAH AAYUSH JIGNESHBHAI', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(474, 2143278, 'SAUMYA PATEL', '', 0, '', 0, 0, 5, 'C', NULL, 5),
(475, 2154066, 'SHAH MANSI MANISHKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(476, 2144249, 'PATEL ARMYBEN JETHABHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(477, 2144250, 'DOBARIYA ARCHITKUMAR RAMESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(478, 2144252, 'SAPARA MAHENDRAKUMAR VAJABHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(479, 2144255, 'KARTIK RAMANI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(480, 2144268, 'LIMBASIYA BIPIN GOVINDBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(481, 2144272, 'LISA', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(482, 2154001, 'ANSARI MOMINAKHATUN ASHRAFALI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(483, 2154002, 'BAGADIA KUSHAL PRATHMESHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(484, 2154003, 'BHANSALI VIRANGI MANISHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(485, 2154004, 'BHATT DRASHTI SNEHAL', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(486, 2154005, 'BHAVSAR JAISHIL PRAFULKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(487, 2154007, 'CHAUDHARI HITESH DINESHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(488, 2154009, 'CHAUHAN TRUPTIBAHEN SURESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(489, 2154010, 'CHAVDA JINALIBEN VIJAYBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(490, 2154011, 'DABHI BHARGAV PRAKASHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(491, 2154013, 'DESAI HINABEN LAXMANBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(492, 2154014, 'DHOBI RICHABEN SURESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(493, 2154015, 'FULMALI JAIMIN SUNILBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(494, 2154016, 'GANDHI ABHISHEK DIPAKBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(495, 2154017, 'GOHEL KUSHAL ANILKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(496, 2154018, 'GOHEL ZALAK RAMESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(497, 2154019, 'GUPTA SHREYANK KRISHNAKANT', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(498, 2154020, 'IPPAKAYAL ABHISHEK CHANDRASHEKHAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(499, 2154021, 'JAGTAP MANTHAN BALKRISHNA', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(500, 2154022, 'JAIN PRACHI KAPURBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(501, 2154023, 'JHALA VRAJPALSINGH KARANSINGH', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(502, 2154025, 'KAPADIA RITU MAHESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(503, 2154026, 'KEVADIYA KRISHNA SANJAYBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(504, 2154027, 'KHALAS MILIN NARANBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(505, 2154030, 'MAKAWANA BRIJEN MAGANLAL', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(506, 2154031, 'MAKWANA JOLLY PRAVINBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(507, 2154032, 'MANIYAR PRIMA HIMANSHUBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(508, 2154033, 'MEHTA SONALI PRIYESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(509, 2154034, 'MISTRY KRUSHITA HITESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(510, 2154035, 'MODI MAITRY HEMALBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(511, 2154036, 'MODI ZEEL JIGNESH', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(512, 2154037, 'NAGAR DIXIT MAHENDRABHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(513, 2154039, 'PANCHAL DISHA HASAMUKHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(514, 2154042, 'PANDYA DISHA NILESHKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(515, 2154044, 'PARMAR PRASIL SANJAYKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(516, 2154045, 'PATEL AAYUSHA DASHARATHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(517, 2154046, 'PATEL DHRUPAL ALPESHKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(518, 2154047, 'PATEL JENIS NAISHADH', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(519, 2154048, 'PATEL RAJ CHANDRAKANTBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(520, 2154050, 'PRAJAPATI GARGI CHINUBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(521, 2154051, 'PRAJAPATI JAGDISHKUMAR LAXMANBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(522, 2154052, 'PRAJAPATI MIHIR KAUSHIKBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(523, 2154053, 'PRAJAPATI RAJESH PRABHULAL', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(524, 2154054, 'RABARI AJAY MAFABHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(525, 2154055, 'RAJPUT HITESH HASMUKHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(526, 2154057, 'RATHOD BINDIYA BEN HEMRAJ BHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(527, 2154060, 'SHAH AAKASHI ATULKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(528, 2154061, 'SHAH DHRUVI NARESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(529, 2154062, 'SHAH DIVYA CHIRAGKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(530, 2154063, 'SHAH HETVI JITENDRAKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(531, 2154064, 'SHAH JAYSWEE NIRAJKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(532, 2154065, 'SHAH KRUSHA GAUTAMBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(533, 2154067, 'SHAH MEET RAJESHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(534, 2154068, 'SHAH NIGRANTH KALPESHKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(535, 2154069, 'SHAH PARTH VIJAYKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(536, 2154070, 'SHAH RUJU KALPESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(537, 2154071, 'SHAH SHIVANI JAYESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(538, 2154073, 'SHAH YASHVI BHARATKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(539, 2154074, 'SHAIKH JUVAIRIYAH RIYAZAHMED', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(540, 2154076, 'SOLANKI NIKETU POONAMBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(541, 2154077, 'SONERI NEHALBEN GOVINDBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(542, 2154078, 'SONI SAHIL BHAVINKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(543, 2154079, 'THAKKAR MISHA MUKESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(544, 2154080, 'THAKKAR POOJA GOPALBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(545, 2154081, 'THAKOR RAJ PRAKASH', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(546, 2154084, 'BARBHAYA JIGISHA KETANBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(547, 2154086, 'BHATT MAITRY SANJAYKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(548, 2154089, 'CHAUHAN DHWANI ASHOK KUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(549, 2154090, 'CHAUHAN PREKSHA KISANKUAMR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(550, 2154091, 'CHAUHAN URVIL SHAILESHSINH', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(551, 2154092, 'DABGAR BHAUTIK NAVINBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(552, 2154093, 'DABHI PIYUSH HAMIRABHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(553, 2154094, 'DARJI SALONI MUKESHKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(554, 2154095, 'DESAI RIDDHI YOGESH', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(555, 2154098, 'GANDHI PALAK DIPAKKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(556, 2154099, 'GOHEL NEEL HARSHADBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(557, 2154100, 'GOHIL RAHUL AMARSHIBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(558, 2154103, 'JAIN AAGAM MITESHKUMAR', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(559, 2154104, 'JANGID GAURAV DHARMENDRA', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(560, 2154105, 'JOSHI NIDHIBEN PRAVINBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(561, 2154106, 'KALAL KRUSHAL ROSHANBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(562, 2154109, 'KHARADI RASHMIKA RUPJIBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(563, 2154110, 'KOSHTI BHAVESH MUKESHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(564, 2154111, 'KUMAVAT JAYESH FULCHANDBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(565, 2154114, 'MANSURI SAHIL RAFIKAHEMAD', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(566, 2154116, 'MISTRY PRACHI BHARATBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(567, 2154119, 'NAGAR TAMANNA KANAIYALAL', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(568, 2154120, 'PADHIYAR VIPULKUMAR AMRATLAL', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(569, 2154122, 'PANCHAL NEHABEN JASHVANTBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(570, 2154123, 'PANCHAL UNNATI VINODBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(571, 2154124, 'PANDYA NIDHI HITENDRABHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(572, 2154125, 'PAREKH YASH SANJAYBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(573, 2154126, 'PARMAR SANDEEP SANJAYBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(574, 2154127, 'PATEL AYUSHIBEN BHARATBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(575, 2154129, 'PATEL KHUSHI JIGNESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(576, 2154131, 'PRAJAPATI BHAVIKA DINESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(577, 2154132, 'PRAJAPATI HIRAL PRAKASHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(578, 2154133, 'PRAJAPATI KINJALBEN NARESHKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(579, 2154134, 'PRAJAPATI NEEL DHIRAJBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(580, 2154135, 'PRAJAPATI RINKALBEN RAMESHBHAI', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(581, 2154136, 'RAGHWANI PARTH MANSUKHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(582, 2154137, 'RAJWANI KUMAR BHAGWANDAS', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(583, 2154138, 'RANPURA TWINKAL DILIPKUMAR', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(584, 2154139, 'RATHOD JIGNASHA DILIPSINH', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(585, 2154140, 'RATHOD SHIVANGIBEN VINODBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(586, 2154141, 'SAGAR DHWANI NIKHIL', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(587, 2154142, 'SHAH ANERI BAKULESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(588, 2154144, 'SHAH FENIL MANISHKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(589, 2154145, 'SHAH JAINAM BHAVIKKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(590, 2154146, 'SHAH JILAY SATISHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(591, 2154147, 'SHAH MALAV DEVANGBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(592, 2154148, 'SHAH MAULI RAKESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(593, 2154149, 'SHAH MOKSHIT PANKAJKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(594, 2154150, 'SHAH NISHI NITINKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(595, 2154151, 'SHAH ROMIL HEMENDRA', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(596, 2154152, 'SHAH RUTVI SWETALBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(597, 2154153, 'SHAH URVI ALPESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(598, 2154154, 'SHAH VRUSHTI MEHULBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(599, 2154155, 'SHAH YESHA ASHWINKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(600, 2154157, 'SOJITRA URVISHA ASHOKBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(601, 2154158, 'SOLANKI NIKITA BATUKBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(602, 2154159, 'SONI MISHA MITESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(603, 2154160, 'SONI YASH LALITKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(604, 2154161, 'THAKKAR NEEL JITESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(605, 2154162, 'THAKKAR POOJABEN YOGESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(606, 2154164, 'VALJIWALA HAFIZABIBI MOHMADUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(607, 2154166, 'BAROT JANKI MADHUSUDAN', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(608, 2154167, 'BHARATI PRIYANSHI DINESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(609, 2154169, 'BHAVSAR NIRALI UTTAMKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(610, 2154170, 'BRAHMBHATT HELI SURYAKANT', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(611, 2154171, 'CHAUHAN HETAL RAJESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(612, 2154174, 'DABHANE SHWETA PRABHUDAS', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(613, 2154175, 'DARJI HARSH ASHESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(614, 2154176, 'DAVE CHANDNI PURVI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(615, 2154177, 'DESAI SHIVANI MINESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(616, 2154178, 'DUDHANI PARITA GIRISHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(617, 2154179, 'GAJJAR SHREY NIPULKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(618, 2154180, 'GOHEL CHINTAN DHARMESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(619, 2154181, 'GOHEL UNNATI DINESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(620, 2154182, 'GOSAI VIDHI GIRISHGIRI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(621, 2154183, 'HALVADIYA HITIKSHA ARUNKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(622, 2154184, 'JADAV SHITAL BALVANT BHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(623, 2154185, 'JAIN MANALI MAHESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(624, 2154186, 'JANSARI BHARGAVI PIYUSHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(625, 2154187, 'KACHIYA RAVIKUMAR LABHUBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(626, 2154190, 'KHALAS DIPESH NARESHKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(627, 2154191, 'KHATRI BADAL HARSHVADAN', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(628, 2154192, 'KOTHARI DHEER JIGNESHKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(629, 2154195, 'MALAVIYA NILAM KISHORBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(630, 2154196, 'MEHTA RAJVI SHAILESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(631, 2154198, 'MODI DHRUMIL KALPESHKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(632, 2154199, 'MODI SHIVANI MEHUL', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(633, 2154200, 'MOTWANI HARDIK JAIPRAKASH', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(634, 2154202, 'PANCHAL BANSARI MANISHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(635, 2154203, 'PANCHAL MEGHANA NARESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(636, 2154204, 'PANCHAL POOJA JAYENDRABHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(637, 2154205, 'PANCHAMATIYA VRAJESH NILESH', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(638, 2154206, 'PAREKH KOSHA CHANDRESH', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(639, 2154207, 'PARMAR KARAN HARILAL', '', 0, '', 0, 0, 7, 'B', NULL, NULL);
INSERT INTO `student` (`s_enrl`, `s_rn`, `fnm`, `lnm`, `s_gen`, `email`, `contact`, `c_id`, `sem`, `division`, `usub_id`, `batch_id`) VALUES
(640, 2154209, 'PATEL DARSHIL JEEGISHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(641, 2154210, 'PATEL JAIMAN SANJAY', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(642, 2154211, 'PATEL NUPUR TARAK', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(643, 2154212, 'PATEL SAKSHI RUSHI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(644, 2154214, 'PRAJAPATI HIRAL RAJUBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(645, 2154216, 'PRAJAPATI RADHE JIGNESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(646, 2154217, 'PRAJAPATI SHRADDHA ASHOKBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(647, 2154218, 'RAGHWANI PRIYANK HEMARAJBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(648, 2154220, 'RATHOD AMISHABEN HARESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(649, 2154222, 'RINGWALA KRISHA BHAVINKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(650, 2154223, 'SAKATAVAT SWETA MAHENDRASINH', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(651, 2154224, 'SHAH DEVARSHI BHARATBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(652, 2154225, 'SHAH DISHA AMITKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(653, 2154227, 'SHAH JAY AMISHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(654, 2154228, 'SHAH KEVAL UTTAMKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(655, 2154229, 'SHAH MANA RAJIV', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(656, 2154230, 'SHAH MAULIK RAJESHKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(657, 2154231, 'SHAH NEMI JAYESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(658, 2154232, 'SHAH PALAK DAMODAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(659, 2154233, 'SHAH RUCHA JAGATKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(660, 2154234, 'SHAH SAHIL JAYESHKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(661, 2154235, 'SHAH VIDHI KALPESHBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(662, 2154236, 'SHAH YANSHI ALPESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(663, 2154237, 'SHAHPURA FENALI VIJAYKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(664, 2154238, 'SHREYA DAVE', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(665, 2154239, 'SOLANKI JINALI SUNILBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(666, 2154240, 'SOLANKI PARTH BIPINBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(667, 2154241, 'SONI PARTH JITENDRAKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(668, 2154242, 'THAKKAR MAITRY CHANDRAKANTBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(669, 2154244, 'THAKKAR YOGESHKUMAR JAGDISHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(670, 2154245, 'VAGHELA MAHIPATBHAI VINODBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(671, 2154247, 'KASHVALA BHARGAVI GHANSHYAMBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(672, 2154248, 'SATHWARA RAHIL DHARMESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(673, 2144273, 'BAROT URVESH GHANSHYAMBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(674, 2144275, 'VAGHELA NIKITA JAYANTIBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(675, 2144276, 'GOHEL MITESH MAHENDRAKUMAR', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(676, 2144277, 'SHAH DHWARKESH KAUSHIKBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(677, 2144281, 'PANDHI JAIMINA ASHOKBHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(678, 2144282, 'SOLANKI RUTVIKKUMAR NAVANEETBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(679, 2154038, 'OTWANI JAYMIN ARJAN', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(680, 2154049, 'PATEL VEDANT KIRANBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(681, 2154072, 'SHAH VISHAKHA RADHAMOHAN', '', 1, '', 0, 0, 7, 'A', NULL, NULL),
(682, 2154097, 'GAJJAR ANIKET VINODBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(683, 2154101, 'HALARI DHAVAL MUKESHBHAI', '', 0, '', 0, 0, 7, 'A', NULL, NULL),
(684, 2154168, 'BHAVSAR ABHISHEK GHANSHYAMBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(685, 2144251, 'RATHOD KEYUR HARISHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(686, 2144274, 'PARMAR RAJESHWARI JITENDRABHAI', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(687, 2134278, 'CHAVDA NIHARIKA SURESHSINH', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(688, 2134279, 'PATALIYA DEVANSHI SURESHKUMAR', '', 1, '', 0, 0, 7, 'B', NULL, NULL),
(689, 2153066, 'SHAH MANSI MANISHKUMAR', '', 1, '', 0, 0, 6, 'A', NULL, NULL),
(690, 2135251, 'SOLANKI NIKITABEN HARISHKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(691, 2135256, 'PATEL HARSH SANJAYBHAI', '', 0, '', 0, 0, 9, 'C', NULL, NULL),
(692, 2135262, 'GANDHI KINNARI PRAYESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(693, 2145005, 'BODIWALA DEVANSHI CHIRAGBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(694, 2145006, 'CHAUHAN HEENABEN MUKESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(695, 2145008, 'CHOKSI PRESHITA KAUMILBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(696, 2145009, 'DALAL JINAL NARENDRAKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(697, 2145010, 'DARJI PALAK GUNVANTBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(698, 2145012, 'DEDHIA CHARMI DHIREN', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(699, 2145013, 'DESAI KINJAL DHARAMSHIHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(700, 2145014, 'DHRISHTI DHARMENDRASINGH', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(701, 2145015, 'DOSHI DISHA BIPINBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(702, 2145017, 'GOSAI JAHNVI RAMESHGIRI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(703, 2145018, 'JADAV PURVI PRADIPBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(704, 2145020, 'JARIWALA KARAN DIPAKKUMAR', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(705, 2145021, 'JOSHI ASHRUTI YAGNIKKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(706, 2145022, 'KADAKIA HARDI TEJASKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(707, 2145024, 'KAPADIYA DIMPLEBAHEN DINESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(708, 2145026, 'KODGANTI GOPAL SATYANARAYAN', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(709, 2145028, 'MAKWANA MANSIBEN SOMABHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(710, 2145029, 'MISTRY HONNEY GHANSHYAMBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(711, 2145030, 'MODI KIMI VISHNUKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(712, 2145033, 'PADASALA DARSHAN MUKESHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(713, 2145034, 'PANCHAL MEET SHAILESHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(714, 2145036, 'PAREKH PRIYANKA MUKESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(715, 2145039, 'PATANI DARSHANKUMAR KAUSHIKBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(716, 2145040, 'PATEL ANUSHREE HEMANTKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(717, 2145041, 'PATEL HELIBEN DHARMENDRAKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(718, 2145042, 'PATEL JUEE BHADRESHKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(719, 2145043, 'PATEL NIDHI BHARATBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(720, 2145045, 'PATEL SHREENIL PARESH', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(721, 2145046, 'PATHAN NAURIN BANU NASIR KHAN', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(722, 2145047, 'PRAJAPATI BHUMIKABEN AMESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(723, 2145048, 'PRAJAPATI INDRAKUMAR NARSAJI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(724, 2145049, 'PRAJAPATI NISHANT PRAKASHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(725, 2145050, 'PRAJAPATI SALONI NITINKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(726, 2145052, 'RAMI DHRUVANSHI PRADEEPKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(727, 2145054, 'RATHOD VARSHABEN NAROTAMBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(728, 2145057, 'SATAWARA HARSH RAJESHKUMAR', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(729, 2145059, 'SHAH BRIJESH GHANSHYAMBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(730, 2145061, 'SHAH DIPALI HIMANSHU BHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(731, 2145062, 'SHAH HELLY CHETANKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(732, 2145063, 'SHAH HITANSHI DIPAKKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(733, 2145065, 'SHAH PRITBEN RUPESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(734, 2145066, 'SHAH RUCHI CHIRAG', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(735, 2145067, 'SHAH SHIVANI JITENDRABHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(736, 2145068, 'SHAH SNEHI SANDEEPKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(737, 2145069, 'SHAH VIRTI MAHENDRAKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(738, 2145070, 'SHELADIYA ASHISH RAMJIBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(739, 2145071, 'SHRIMALI JAHANVI CHANDRASHEKHAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(740, 2145072, 'SOLANKI HARDIK BHARATBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(741, 2145074, 'SONI ANKITA RAJENDRAKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(742, 2145077, 'SUTHAR PRUTHVIKA BHUPENDRABHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(743, 2145078, 'THAKKAR MAITREE HARISHKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(744, 2145079, 'THAKOR HIREN DASHRATHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(745, 2145083, 'VYAS UMA SHIVKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(746, 2145085, 'BAKRANIYA UMANG ASHOKBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(747, 2145087, 'BHATT NAMAN NIRAJBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(748, 2145088, 'CHAMAR PRAVINBHAI JAYNTIBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(749, 2145091, 'CHUDASAMA KISHAN DINESHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(750, 2145095, 'DERIA KRUPA JITENDRA', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(751, 2145097, 'DHRUV SETH', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(752, 2145098, 'GADARIYA JAYKUMAR BHARATKUMAR', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(753, 2145099, 'GANDHI MAITRI RUPESH', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(754, 2145101, 'JADAV SMIT NITINKUMAR', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(755, 2145102, 'JAISWAL SHEETAL SHIVSHANKAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(756, 2145103, 'JHAVERI POOJA PREYASHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(757, 2145104, 'JOSHI HINAL ARUNKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(758, 2145105, 'KADIYA KARAN YOGESHKUMAR', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(759, 2145106, 'KANAJARIYA ISHVAR HARJIBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(760, 2145109, 'KUKADIYA DHRUVIKA BHIKHUBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(761, 2145114, 'MORI MANISH BALDEVBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(762, 2145115, 'NIMJE KHUSHALIBEN SANJAYBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(763, 2145118, 'PANSANIYA TEJASHKUMAR HARESHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(764, 2145119, 'PARMAR ADITYA PANKAJKUMAR', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(765, 2145121, 'PARMAR TRUPTI DILIPBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(766, 2145122, 'PATEL ADITI NIKUNJBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(767, 2145124, 'PATEL JAHANVI PARESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(768, 2145125, 'PATEL KOSHA DINESHCHANDRA', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(769, 2145126, 'PATEL POOJAN MUKESHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(770, 2145127, 'PATEL RITUBEN RAKESHKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(771, 2145129, 'PATOLIYA RAHUL SURESHBHAI', '', 0, '', 0, 0, 9, 'A', NULL, NULL),
(772, 2145130, 'PRAJAPATI DHVANI PRAVINKUMAR', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(773, 2145131, 'PRAJAPATI KRUPALI JAGADISHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(774, 2145132, 'PRAJAPATI PRITIBEN MUKESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(775, 2145133, 'PRAJAPATI URVI NARESHBHAI', '', 1, '', 0, 0, 9, 'A', NULL, NULL),
(776, 2145134, 'RAJPURA BHAVI BHADRESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(777, 2145135, 'RANA RAJAN NAINESHKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(778, 2145136, 'Rathod Rashmi Purshottambhai', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(779, 2145137, 'RAVAL RIDDHI BHUPENDRABHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(780, 2145138, 'SAKERWAL DIVYA DINESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(781, 2145139, 'SANGHAVI KRIYA RAHULBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(782, 2145140, 'SATHWARA DIPALI DINESHKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(783, 2145142, 'SHAH DEEP ALKESHKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(784, 2145144, 'SHAH FENA BIPINKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(785, 2145145, 'SHAH HET ANKITKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(786, 2145146, 'SHAH JAINAM VIRENDRAKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(787, 2145147, 'SHAH KRISHA KAUSHALKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(788, 2145148, 'SHAH PURVESH NITINKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(789, 2145149, 'SHAH RUSHABH PRAKASHKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(790, 2145150, 'SHAH SHLOK DEVENDRA KUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(791, 2145154, 'SHUKLA MAYANK BHAGWANDIN', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(792, 2145156, 'SONEJI MAULIK HASMUKHBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(793, 2145157, 'SONI CHANDNI VIRENDRAKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(794, 2145161, 'THAKKAR RUTUL MAHESHBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(795, 2145162, 'THAKOR JAY CHANDUBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(796, 2145164, 'VAKHARIYA ALLENCE DIPAKBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(797, 2145168, 'BAROT PURVIBEN HIMANSUBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(798, 2145169, 'BHAVSAR UNNATIBEN MUKESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(799, 2145171, 'CHAUHAN RAKSHA AJITSINGH', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(800, 2145173, 'CONTRACTOR VAIDARBHI NAIMESHKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(801, 2145174, 'DARJI AESHA HASMUKHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(802, 2145175, 'DARJI SANJAY NATAVARLAL', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(803, 2145176, 'DAVE STUTI DEEPAK', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(804, 2145177, 'DESAI DHRUVI PRAFULBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(805, 2145182, 'HEENA PRAJAPATI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(806, 2145186, 'JOTANIYA HIRAL ARVINDBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(807, 2145187, 'KAJIWALA POOJAN DILIPKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(808, 2145188, 'KANSARA PALAK UDAYBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(809, 2145189, 'KHALAS MAULIK INDRAVADAN', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(810, 2145190, 'KHUNT AKASH ASHOKBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(811, 2145191, 'KULKARNI YASH DATTATRAY', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(812, 2145193, 'MISTRY DISHA FALGUNKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(813, 2145194, 'MODI KHUSHBOO DIPAKBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(814, 2145196, 'NANAVATI SHALVI MALAY', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(815, 2145198, 'PANCHAL AKRUTI DHARMENDRAKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(816, 2145199, 'PANCHAL SWETABEN DINESHCHANDRA', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(817, 2145200, 'PAREKH HEMALI NAINESHKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(818, 2145201, 'PARMAR AKASH BHUPATBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(819, 2145204, 'PATEL AMISHA CHANDRAKANT', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(820, 2145206, 'PATEL JAYKUMAR GHANSHYAMBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(821, 2145207, 'PATEL MEGHAL BHARATKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(822, 2145209, 'PATEL SARAV VIPULKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(823, 2145211, 'POONAWALA KHADIJA YUSUF', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(824, 2145214, 'PRAJAPATI RIMABAHEN SHANKARBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(825, 2145215, 'PRASHASTI MALYAJ', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(826, 2145216, 'RAJPUT KOMAL RAJESH', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(827, 2145219, 'ROHIT HIMANSHU DEVTANBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(828, 2145220, 'SAKHARELIYA PINAL JAGDISHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(829, 2145223, 'SHAH ANJALI JAYENDRABHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(830, 2145226, 'SHAH HARNISHA PRITESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(831, 2145227, 'SHAH HETA NITINKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(832, 2145228, 'SHAH JENI NITINBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(833, 2145229, 'SHAH MEET PRAKASHCHANDRA', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(834, 2145232, 'SHAH SHREEJA SAMIRBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(835, 2145233, 'SHAH TEJAS DILIPKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(836, 2145235, 'SHILPA JAIN', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(837, 2145238, 'SONI ANKIT VINODKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(838, 2145240, 'SONI URMI MUKESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(839, 2145243, 'THAKKAR SHRUTI RAMANLAL', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(840, 2145244, 'THAKOR NIRALI NATVARBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(841, 2145245, 'VAISHNAV RACHANA SUNILBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(842, 2145247, 'VORA HIMANI DHIRENKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(843, 2135263, 'CHAUDHARI JAYVINKUMAR HEMRAJBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(844, 2135264, 'SUTHAR KISHAN DHANJIBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(845, 2135265, 'PARMAR KIRTIBAHEN KAMLESHBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(846, 2135271, 'SHAH KRUSHANGI NIPUNKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(847, 2135272, 'DARJI SNEHABEN BALDEVBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(848, 2135274, 'DARJI SAUMIL HARESHBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(849, 2135275, 'GANDHI FENIL VIJAYBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(850, 2135276, 'PATEL KENA KIRITBHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(851, 1162247, 'PANCHAL PUNIT VIJAYKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(852, 1162258, 'VAGHELA ABHI NAVDEEPBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(853, 1162251, 'SHARMA JAYESHKUMAR NANDKISHOR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(854, 1172001, 'ADANI PAKSHAL MAHENDRAKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(855, 1172002, 'AKSHIT SHARMA', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(856, 1172003, 'BAMBHANIYA ANJALIBEN ASHOKBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(857, 1172004, 'BAMBHANIYA HARSH ARVINDBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(858, 1172005, 'BHALSOD DIPTIBEN VINODBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(859, 1172006, 'BHAVSAR PRIYAL BIJALKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(860, 1172007, 'BHAVSAR PRIYANSHI PARESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(861, 1172008, 'BHEDA RUTVIK JAGDISHKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(862, 1172010, 'CHAVDA AMISHA VIKRAMKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(863, 1172011, 'CHAVDA PRACHI HARESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(864, 1172012, 'DALVADI HETALBEN RAJESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(865, 1172013, 'DALWADI NILAM HARSHADBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(866, 1172014, 'DALWADI NIRZARI HARISHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(867, 1172016, 'DARJI VIKAS ASHOKBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(868, 1172017, 'DESAI UTSAV GEMARBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(869, 1172018, 'GOHIL DHARA SATISHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(870, 1172019, 'GOHIL JANAVI SUSHILBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(871, 1172020, 'HAMIRANI HARSH UMESHKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(872, 1172021, 'JAGATIYA PIYUSHKUMAR JITENDRA', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(873, 1172022, 'JAJORIYA MEHUL PARSOTTAMBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(874, 1172023, 'JANSARI SEJALBEN KALPESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(875, 1172024, 'KALANI REENKAL HITESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(876, 1172026, 'KARAN TALREJA', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(877, 1172027, 'KHATRI HARDI KAMLESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(878, 1172028, 'KHATRI MOHIT SURAJKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(879, 1172029, 'KIKANI SANKET ASHOKBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(880, 1172031, 'LOHAR MANISHAKUMARI MOHANLAL', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(881, 1172032, 'MAKWANA MAYURBHAI MANUBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(882, 1172033, 'MARU DEEPIKA RAMESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(883, 1172035, 'MISTRY PAVAN YOGESH', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(884, 1172036, 'MODI MAULI DHIREN', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(885, 1172037, 'NAI DHRUHILKUMAR SURESHBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(886, 1172038, 'NATHBAVA SAMIR GOPALNATH', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(887, 1172039, 'OZA DIVYAM NITINKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(888, 1172040, 'PANCHAL KEVANA BHARATBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(889, 1172041, 'PANCHAL KRUSHANGEE MANUBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(890, 1172042, 'PANCHAL NAYNA KISHORBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(891, 1172044, 'PARMAR CHIRAG MANUBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(892, 1172045, 'PARMAR MAITRIKA PARSOTTAMBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(893, 1172046, 'PATEL DEVANG MANOJKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(894, 1172047, 'PATEL DIV DIPAKBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(895, 1172048, 'PATEL HITARTH VIJAY', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(896, 1172050, 'PATEL SRUSHTI NARESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(897, 1172052, 'PRAJAPATI DHRUVIBEN ASHOKBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(898, 1172053, 'PRAJAPATI HETANSHI ALPESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(899, 1172054, 'PRAJAPATI KRISHA DILIPBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(900, 1172055, 'PRAJAPATI PATHIK ROHITBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(901, 1172056, 'PRATIBHA BHATIA', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(902, 1172057, 'QURESHI SAMINABANU RASHID HUSEN', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(903, 1172058, 'RAGHAVANI YASHKUMAR MANSUKHBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(904, 1172059, 'RATHOD DIVYA RAJESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(905, 1172060, 'RATHOD MITALI MUKESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(906, 1172061, 'RATHOD VAIBHAVI VITTHALBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(907, 1172063, 'SAGAR KRUTIK BHARATKUMAR', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(908, 1172064, 'SHAH ANOKHI ROSHANKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(909, 1172065, 'SHAH KHUSHBOO SURESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(910, 1172066, 'SHAH KUSHANG DIPAKBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(911, 1172067, 'SHAH NIRVA PARESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(912, 1172068, 'SHAH RAJVI AJAYKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(913, 1172069, 'SHAH RIYA NILESHBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(914, 1172070, 'SHAH SHREYA MANISHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(915, 1172071, 'SHARMA MANTHAN MANOJBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(916, 1172072, 'SHETH KRUTIK RAJENDRABHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(917, 1172074, 'SONAGRA MERUKUMAR GORADHANBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(918, 1172075, 'SONI DHRUVI PRADYUMANKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(919, 1172076, 'SONI YASHVI ROHITKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(920, 1172077, 'TRIVEDI DHRUTI KAVANKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(921, 1172078, 'VADHVANA MILAN RAMJIBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(922, 1172079, 'VAGHELA RITU RAJESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(923, 1172081, 'VEKARIYA MILAN MAHESHBHAI', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(924, 1172082, 'VERMA ROHIT SHYAMLAL', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(925, 1172083, 'AHIR HELI RAJESH', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(926, 1172084, 'AMIN KRISHNA PRAVINKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(927, 1172085, 'BATUKIYA ZANKHANA YOGESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(928, 1172086, 'BHADELIYA BINITA MOHANBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(929, 1172087, 'BHATT DHRUVISHA JIGNESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(930, 1172088, 'BHUVA RUSHIKESH SHAILESHBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(931, 1172089, 'BRAHMBHATT SHIVAM MAHESHBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(932, 1172090, 'CHAUHAN BHUMIKABEN SURENDRASINH', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(933, 1172091, 'CHAUHAN HIRAL KISHORBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(934, 1172092, 'CHAVDA HIRAL MUKESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(935, 1172093, 'CHAVDA SHREY MAHENDRABHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(936, 1172094, 'DANKHARA ASHISH SHAMBHUBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(937, 1172095, 'DARJI MANSI JATINBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(938, 1172097, 'DAVE MEGHNA ASHOKBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(939, 1172098, 'DESAI SHIVANGI SAGARBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(940, 1172101, 'HIRAPARA NIDHI ASHVINBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(941, 1172103, 'JANI PRANAMI JAYESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(942, 1172104, 'JETHAVA BHAVESH KANUBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(943, 1172105, 'JOSHI ISHITA JITEN', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(944, 1172106, 'KAPADIA VIDHI KUNDANBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(945, 1172107, 'KENCHGUNDI SHIVANI GAUTAMBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(946, 1172108, 'KHAN ARBAZ SALIM', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(947, 1172109, 'KHOJA RIZWANA SALIM', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(948, 1172110, 'KUKADIYA ZALAK PANKAJBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(949, 1172111, 'KUSVAH JYOTIBEN MALKHAN', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(950, 1172112, 'MAKWANA DISHABEN SURESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(951, 1172115, 'MEHUL NANUBHAI RAM', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(952, 1172116, 'MISTRI RAJVI HARESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(953, 1172117, 'MODI AAYUSHI AJAY', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(954, 1172118, 'MULCHANDANI KARAN GIRDHAR LAL', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(955, 1172119, 'PADHIYAR KHUSHALI CHANDRESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(956, 1172121, 'PANCHAL KHUSHALI KAMLESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(957, 1172122, 'PANCHAL MEERA AJAYKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(958, 1172123, 'PANCHAL NIYATI RAKESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(959, 1172124, 'PANCHAL RUSHIKUMAR PRAKASHKUMAR', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(960, 1172125, 'PARMAR GAURAVKUMAR AMRUTBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(961, 1172127, 'PARMAR PINAL CHANDRAKANTBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(962, 1172128, 'PATEL HEENA SHAILESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(963, 1172129, 'PATEL JANAVI PRAVINBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(964, 1172130, 'PATEL PARSHVA RAKESHBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(965, 1172131, 'PATIWALA HETA NIRAVKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(966, 1172132, 'PRAJAPATI DHRUV VASANTKUMAR', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(967, 1172133, 'PRAJAPATI DISHA VIJAYKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(968, 1172134, 'PRAJAPATI KHUSHBU PRAVINKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(969, 1172135, 'PRAJAPATI MANISHKUMAR BHARATBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(970, 1172136, 'PRAJAPATI RAJIVKUMAR BHARATBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(971, 1172137, 'PRAJAPATI RONAK JAYESHKUMAR', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(972, 1172138, 'RAJA VINIT ATULBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(973, 1172139, 'RAJGOR ANISHA MANSUKHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(974, 1172140, 'RATHOD DIVYA MAHESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(975, 1172141, 'RATHOD RIYA ASHWINBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(976, 1172142, 'ROY ANERI PARESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(977, 1172143, 'RUPAVATIYA POONAM KISHORBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(978, 1172144, 'SHAH CHELSI ALKESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(979, 1172145, 'SHAH DHRUVI MAYANKKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(980, 1172147, 'SHAH MANSI KANUBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(981, 1172148, 'SHAH MEET RAJESHBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(982, 1172149, 'SHAH RUCHI NILESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(983, 1172150, 'SHAH SHUBHAM SUMANBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(984, 1172152, 'SHARMA DHRUVIL HITESHKUMAR', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(985, 1172153, 'SHRIMALI RAHUL BHUPENDRAKUMAR', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(986, 1172154, 'SOLANKI URVASHIBEN MAHENDRABHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(987, 1172155, 'SONI JAINALI HITESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(988, 1172156, 'SORATHIYA HIRAL ASHVINBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(989, 1172157, 'TAHELRAMANI DIVYA NARESHKUMAR', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(990, 1172158, 'TATI JYOTI LAXMANBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(991, 1172159, 'VAGHELA DEVDATT MAGANBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(992, 1172160, 'VAGHELA DHANRAJSINH BACHUBHA', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(993, 1172161, 'VARIYA BHUMASHVI SHIRISHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(994, 1172162, 'VARYANI VANDANA GHANSHYAMBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(995, 1172163, 'VEKARIYA TRUSHABEN KAMALESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(996, 1172164, 'VORA LIZA BHAVESHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(997, 1172165, 'ANAND HIMANSHI NARESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(998, 1172166, 'ASHIRAV JAGRUTI PRAKASHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(999, 1172167, 'BHAGAT DRASHTI MAYANKBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1000, 1172168, 'BHATT KHUSHI KRISHNAKANT', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1001, 1172169, 'BHAVIN R CHAUHAN', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1002, 1172171, 'CHAUDHARY PRIYANKABEN JIVARAJBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1003, 1172172, 'CHAVADA RUTVIBEN ARVINDBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1004, 1172173, 'DABHI CHANDNI AMARATBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1005, 1172174, 'DABHI MANSI DHIRENBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1006, 1172175, 'DABHI RAHUL JAGDISHBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1007, 1172176, 'DARJI ANKIT HIRALAL', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1008, 1172177, 'DARJI NEHABEN SURESHKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1009, 1172178, 'DESAI MAULIK HALUBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1010, 1172179, 'DESAI SHUBHAM SHAMBHUBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1011, 1172180, 'DOMADA KIRANBEN VARSINGBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1012, 1172181, 'GUPTA VISHNU SHIVKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1013, 1172182, 'JADAV HARDIK JERAMBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1014, 1172184, 'JAIN VANDIT KETAN KUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1015, 1172185, 'JOSHI PARTHIV KETANBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1016, 1172188, 'KAPASI RAJAL PRIYESH', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1017, 1172189, 'KHAMBHATI PRIYA MUKESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1018, 1172190, 'KHANDVI VINAY NARESHBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1019, 1172191, 'KOSTI PINAL ARVINDBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1020, 1172192, 'LAMBA DISHA BRIJMOHAN', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1021, 1172194, 'MALI KASHISH SURESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1022, 1172195, 'MANGROLIYA RIYABEN SURESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1023, 1172197, 'MEWADA HITESH BABULAL', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1024, 1172198, 'MODI DEVI DINESHKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1025, 1172200, 'NAGAR AMEE RAJESHKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1026, 1172201, 'PADIA PANKTY RAKESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1027, 1172202, 'PANCHAL HET HITESHKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1028, 1172203, 'PANCHAL KRUPALI DEVANSH', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1029, 1172204, 'PANCHAL UTSAV MAHENDRAKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1030, 1172205, 'PANCHAL YASHVI AMRISHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1031, 1172206, 'PARMAR KARAN BIPINBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1032, 1172207, 'PARMAR SALONI HARSHADBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1033, 1172208, 'PARMAR ZANKHNABEN LAXMANBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1034, 1172209, 'PATEL AARATIBEN ASHOKBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1035, 1172210, 'PATEL KASHISH KETANKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1036, 1172211, 'PATEL RACHANA CHAMANBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1037, 1172212, 'PATEL RIDDHI JAGDISHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1038, 1172214, 'PRAJAPATI DHRUVI SHAILESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1039, 1172215, 'PRAJAPATI KEVALKUMAR JAGDISHBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1040, 1172216, 'PRAJAPATI MANSI GOVINDBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1041, 1172217, 'PRAJAPATI PARTH JITENDRAKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1042, 1172218, 'PRAJAPATI UMESH KAPURAJI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1043, 1172219, 'PRAJAPATI VAISHALI PRAKASHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1044, 1172220, 'RAMANI GOPI ASHVINBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1045, 1172221, 'RANGREJ SOHAIL ISRAILBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1046, 1172223, 'RATHVA TARUN HIMMATBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1047, 1172224, 'RUCHIT BHAI BHABHOR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1048, 1172225, 'SHAH ANJALI HITESHKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1049, 1172226, 'SHAH DRASHTI SANJAYKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1050, 1172227, 'SHAH HIRAL NIRAVBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1051, 1172229, 'SHAH MAYUR RAMESHBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1052, 1172230, 'SHAH PARTH CHETANKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1053, 1172231, 'SHAH SAKSHI PATHIKBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1054, 1172232, 'SHAIKH MOHAMMAD SAKIB MOHAMMAD SADIK', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1055, 1172234, 'SHRIMALI AASHKA NARENDRABHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1056, 1172236, 'SOMESHWAR RONHAN CHANDRAVADAN', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1057, 1172237, 'SONI JAINISHA HITESHKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1058, 1172238, 'THAKKAR DHRUVAL PANKAJBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1059, 1172239, 'THAKKAR SHIVAM CHANDRAKANTBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1060, 1172240, 'TOTIYA JIGNESHKUMAR RAMESHCHANDRA', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1061, 1172241, 'VAGHELA HITENKUMAR BHUPENDRABHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1062, 1172242, 'VALA RAHULKUMAR GANPATBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1063, 1172243, 'VASITA MAMTA KISHANBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1064, 1172244, 'VISHAKHA PARESHBHAI SONI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1065, 1172245, 'VORA PRINCE PRAKASHKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1066, 1172252, 'DOSHI SHAILI SATISHKUMAR', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1067, 1172253, 'DOSHI VISHWA RAJESHBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1068, 1172254, 'RAJANI NEEL PANKAJBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1069, 1172255, 'SHAH ANERI ASHOKBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1070, 1162257, 'SHAH YASH BHADRESHBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1071, 1162263, 'CHAUHAN HITESH MUKESHBHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1072, 1163001, 'ABBASI MARYAM NADEEM', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1073, 1163003, 'BAGADIA HITARTHI BHAVESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1074, 1163004, 'BHADANI RUSHIKA BHIMJIBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1075, 1163005, 'BHAVSAR AANAL DEVANGKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1076, 1163006, 'BHAVSAR AAYUSHI DEVANGKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1077, 1163007, 'BHAVSAR HARSH AMITBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1078, 1163010, 'CHAVDA SALONI NARENDRASINH', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1079, 1163011, 'DABHI MANTHAN HIRENBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1080, 1163013, 'DAVE SONALBEN KISHORBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1081, 1163014, 'DESAI VISHAKHABEN BHURABHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1082, 1163015, 'DHOLAKIYA DRASHTI BAKULKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1083, 1163017, 'GOHEL BHOOMI BHARATBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1084, 1163018, 'GOSWAMI KINJALBEN SHAILESHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1085, 1163019, 'JAIN POOJA PRAKASHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1086, 1163020, 'JAIN RANJAN NIRMAL', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1087, 1163022, 'KADIYA JANKI ALPESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1088, 1163023, 'KEVADIYA DRASHTI UMESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1089, 1163024, 'KOSHTI SHUBHAM JAGDISHBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1090, 1163025, 'LANIYA BHOOMIKABEN CHANDUBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1091, 1163026, 'MAHETA RIDDHIBEN DINESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1092, 1163027, 'MAHETA SIDDHIBEN DINESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1093, 1163029, 'MATAKEL MANTHAN UMAKANT', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1094, 1163030, 'MEHTA HARSHIL MUKESHBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1095, 1163031, 'MEHTA PRIYA RAJENDRA', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1096, 1163032, 'MODI BHOOMI KIRANBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1097, 1163033, 'MODI RUSHALI MANISHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1098, 1163034, 'MONANI VIDHI HIRENBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1099, 1163035, 'NAGAR ZALAK NATVARLAL', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1100, 1163036, 'NEEL PATEL', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1101, 1163037, 'PADHIYAR RONAK AMRUTBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1102, 1163038, 'PANCHAL DHARMISTHA MUKESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1103, 1163039, 'PANCHAL RICHA HARESHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1104, 1163040, 'PAREKH ZEEL VIGNESHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1105, 1163041, 'PARMAR KAJAL ANANDKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1106, 1163042, 'PARMAR MITESH NARSHIHBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1107, 1163043, 'PARMAR RAVIKUMAR JIVABHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1108, 1163044, 'PARMAR SUSMETA AMRUTBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1109, 1163045, 'PATEL DARSHANKUMAR KHODABHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1110, 1163046, 'PATEL DHRUVI JASMINKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1111, 1163047, 'PATEL MANTHAN DHARMENDRAKUMAR', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1112, 1163048, 'PATEL PRIYA NILESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1113, 1163049, 'PITHADIYA RIDDHI KANTIBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1114, 1163050, 'PRAJAPATI DIPAKKUMAR RAMESHLAL', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1115, 1163051, 'PRAJAPATI JANKI NARESHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1116, 1163052, 'PRAJAPATI NIKEETABEN MAHENDRABHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1117, 1163053, 'PRAJAPATI TUSHAR AMARATBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1118, 1163054, 'PRAJAPATI VISHWA SHAILESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1119, 1163055, 'PUJARI ABHISHEK DEEPAK', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1120, 1163056, 'RAKHOLIYA RADHIKABEN BHUPATBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1121, 1163058, 'RATHOD JUHI DILIPBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1122, 1163059, 'RATHOD KAUSHAL KISHORBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1123, 1163060, 'SAMARIYA KISHAN GANPATBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1124, 1163061, 'SHAH DARSHIL PARESH', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1125, 1163062, 'SHAH DHRUV JIGNESH', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1126, 1163063, 'SHAH GRIVA JAYESHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1127, 1163064, 'SHAH KAJALBEN ANILKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1128, 1163065, 'SHAH MALVI KIRITBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1129, 1163066, 'SHAH NETRABEN HARNESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1130, 1163067, 'SHAH NISARG SUVARNBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1131, 1163068, 'SHAH PALAK VIPULBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1132, 1163069, 'SHAH RAJKUMAR ASHVINKUMAR', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1133, 1163070, 'SHAH RIYA AMARKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1134, 1163072, 'SHAH SNEHI BHAVESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1135, 1163074, 'SHAHPURA SALONI RAJANIKANT', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1136, 1163076, 'SHARMA MANSIBEN RAKESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1137, 1163077, 'SOLANKI DINESH PREMJIBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1138, 1163078, 'SONI MANALI MANISHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1139, 1163079, 'SUTHAR ARTIBEN RAJESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1140, 1163080, 'SUTHAR REENESH VIJAYKUMAR', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1141, 1163081, 'THAKKAR JAIMIN RAJESHKUMAR', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1142, 1163082, 'TRIVEDI ROSHANI VINAYKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1143, 1163083, 'VADHER SMITA SURESHBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1144, 1163084, 'VAGHELA MAYUR DEVJIBHAI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1145, 1163085, 'VORA RIYABEN RAJESHKUMAR', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1146, 1163086, 'AJMERI FARHIN SHAHIRBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1147, 1163087, 'BAROT KAMAXI GHANSHYAMBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1148, 1163089, 'BHANDARI BHUMIKA KAMLESH', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1149, 1163090, 'CHAUDHARY GRISHMA RAJENDRA', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1150, 1163091, 'CHAUHAN NIKUNJ GUNVANTLAL', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1151, 1163092, 'CHAVDA NEHALBEN BALDEVBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1152, 1163093, 'DABHI DARSHAN HAMIRABHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1153, 1163094, 'DAGAR VAISHALI BHARATBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1154, 1163095, 'DARJI MEGHA VIRENDRAKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1155, 1163096, 'DESAI JIGNASHA RAMESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1156, 1163097, 'DESHANI BHAVISHABEN HARSUKHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1157, 1163098, 'DORIYA RITUBEN GOVINDBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1158, 1163099, 'GANDHI SHREYANS BHAVESHKUMAR', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1159, 1163100, 'GOHEL NEEDHI KALPESHKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1160, 1163101, 'GUNDARIYA BHUMIKA ASHVINKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1161, 1163102, 'JANI MEHA RAKESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1162, 1163103, 'JOSHI SACHIN RAJENDRAKUMAR', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1163, 1163105, 'KESWANI BHAVIKA OMPRAKASH', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1164, 1163106, 'KHARADI DHARABEN RAMESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1165, 1163107, 'LAKHATARIYA PRITIBEN NARESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1166, 1163108, 'LUHAR DHARABEN HARSHADBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1167, 1163109, 'MAKASANA RAJVI BHAGAVANBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1168, 1163110, 'MAVANI KHYATI KALYAN', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1169, 1163111, 'MEHTA HET SHAILESH', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1170, 1163112, 'MEWADA SHUCHI ASHVINKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1171, 1163113, 'MODI HEMA BHARATKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1172, 1163114, 'MODI SHAILVI NITINKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1173, 1163116, 'MORI NIKITABEN RAMNIKBHAI', '', 1, '', 0, 1, 5, ' B', NULL, NULL),
(1174, 1163117, 'NAYAK PANKIL RAJESHKUMAR', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1175, 1163118, 'NIKUNJ DARSHANBHAI JOGI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1176, 1163119, 'PANCHAL ASMITA RAMESHLAL', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1177, 1163120, 'PANCHAL KHUSHBU KALPESHKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1178, 1163121, 'PANSAR TWINKLE MAHESHKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1179, 1163122, 'PARMAR ANKITA MAHESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1180, 1163127, 'PATEL NEHAL VINUBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1181, 1163128, 'PATEL PRIYABEN MUKESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1182, 1163129, 'PATEL SHIVANI MINESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1183, 1163131, 'Pooja shah', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1184, 1163132, 'Prachi Shah', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1185, 1163133, 'PRAJAPATI ANKITA CHANDRESH', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1186, 1163134, 'PRAJAPATI HIRAL CHANDUBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1187, 1163135, 'PRAJAPATI JANVI ISHWARBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1188, 1163136, 'PRAJAPATI SANTOSHBEN GANESH KUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1189, 1163137, 'PRAJAPATI UMANG RAJENDRAKUMAR', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1190, 1163138, 'PRAJAPATI VIVEK KANUBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1191, 1163140, 'RAMI DEEP MAHESHBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1192, 1163141, 'RANA HITANSHI KIRANBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1193, 1163142, 'RATHORE SAPANA RATANSINGH', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1194, 1163143, 'SANTOKI HELIBEN KAMLESHKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1195, 1163144, 'SATHVARA ANIL NATVARBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1196, 1163145, 'SHAH DEEP BHAVESHKUMAR', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1197, 1163147, 'SHAH HAPPYBEN BHARATBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1198, 1163148, 'SHAH MANSI JIGNESHKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1199, 1163149, 'SHAH NIDHI JATINBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1200, 1163150, 'SHAH NISHI KINJALBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1201, 1163151, 'SHAH PARTHKUMAR ATULBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1202, 1163152, 'SHAH POOJA AJITBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1203, 1163153, 'SHAH ROSHANI JITENDRAKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1204, 1163154, 'SHAH SAKSHIBEN SANDIPKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1205, 1163155, 'SHAH STAVANA SHAILENBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1206, 1163156, 'SHAH YASHVI KAMLESHKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1207, 1163157, 'SHAIFALEE JAIN', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1208, 1163158, 'SHELAR HIMANI KALPESH BHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1209, 1163159, 'SONDAGAR RAVI DILIPBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1210, 1163160, 'SONI NISHANT PRAVEEN', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1211, 1163161, 'SUTHAR NIRALI MUKESHBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1212, 1163162, 'SUTHAR SHIVANI JAGATKUMAR', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1213, 1163163, 'THAKKER MASUM KIRITBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1214, 1163164, 'UNADKAT YASH VIJAYBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1215, 1163165, 'VACHHETA SAHIL DALSUKH', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1216, 1163167, 'VALA BHARATKUMAR DANABHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1217, 1163168, 'ZAVERI MEET NARESHBHAI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1218, 1163169, 'ANERI SHAH', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1219, 1163170, 'BAVISHI PRACHI RAJENDRA', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1220, 1163171, 'BHAVNANI MANISHA KISHAN KUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1221, 1163172, 'BHAVSAR AMAN PRASHANTBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1222, 1163173, 'CHAUHAN BANSARI RATILAL', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1223, 1163175, 'CHAUHAN PINKAL HASMUKHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1224, 1163176, 'DABHI AKASH NAVINKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1225, 1163177, 'DABHI JAIMIK BABULAL', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1226, 1163179, 'DARJI PRANJALBEN RAJESHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1227, 1163180, 'DESAI POOJA ANUPAM', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1228, 1163181, 'DHARMADARSHI MAITRI NILESHKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1229, 1163182, 'FOFANDI DIMPLE DHANJI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1230, 1163183, 'GIGLANI HONEY MAHENDRABHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1231, 1163184, 'GOSALIYA YASH HITENDRA', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1232, 1163185, 'JAGANI KRUPA NAVEENBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1233, 1163186, 'JANSARI DHAVAL LALJIBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1234, 1163187, 'KADIA DHRUV RAMCHANDRA', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1235, 1163188, 'KATHERIYA CHANDRASHEKHAR RAJESHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1236, 1163189, 'KHUBCHANDANI MONIKA BHARATKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1237, 1163190, 'KOTHARI KAJOL VIPUL', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1238, 1163191, 'LAKHNOTRA VAISHALI JINABHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1239, 1163192, 'MALI NANCY KANTILAL', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1240, 1163193, 'Mayur Bhatia', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1241, 1163194, 'MEHTA ISHAN GANGEYKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1242, 1163195, 'MISTRY SHIVANI SANJAYKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1243, 1163196, 'MODI JAY NILESHKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1244, 1163197, 'Mohit Bhatia', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1245, 1163198, 'MORE JINAL ARVINDBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1246, 1163199, 'NECHLANI DEEPAK NARESHKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1247, 1163200, 'NINAMA JIGNASABEN HARICHANDRA', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1248, 1163201, 'PANCHAL AYUSHI NARESH KUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1249, 1163204, 'PAREKH HELLY BHARATKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1250, 1163205, 'PARMAR DHARTI RAJESHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1251, 1163206, 'PARMAR RACHANA KAMLESHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1252, 1163207, 'PARMAR RAVINABEN AMARATBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1253, 1163208, 'PARMAR SMIT MANISHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1254, 1163209, 'PATADIYA HARSHIT PARESHKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1255, 1163210, 'PATEL KRUPA VIPULBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1256, 1163211, 'PATEL NIRALI JASHAVANTBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1257, 1163213, 'PAWAR RAHUL PRAKASHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1258, 1163214, 'PORIYA MADHAVI BABUBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1259, 1163216, 'PRAJAPATI JAIMIN RAJENDRAKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1260, 1163217, 'PRAJAPATI LAXMI JITENDRABHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1261, 1163218, 'PRAJAPATI SRUSHTI DILIPBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1262, 1163219, 'PRAJAPATI VANDANABEN KISHORBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1263, 1163220, 'PRIYANKA RAMCHANDANI', '', 1, '', 0, 1, 5, 'C', NULL, NULL);
INSERT INTO `student` (`s_enrl`, `s_rn`, `fnm`, `lnm`, `s_gen`, `email`, `contact`, `c_id`, `sem`, `division`, `usub_id`, `batch_id`) VALUES
(1264, 1163222, 'RAGHWANI MAYUR MANASUKHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1265, 1163223, 'RAMI KUSHAL DIPAKKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1266, 1163224, 'RANA SAURIN RANCHHODBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1267, 1163225, 'SAHEBA PARTH ASHOKBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1268, 1163226, 'SARVAIYA RIDDHIBEN HIMATBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1269, 1163228, 'SHAH DHARA SHAILESHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1270, 1163229, 'SHAH FORAM SHAILESHKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1271, 1163230, 'SHAH ISHITA AMRISHKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1272, 1163231, 'SHAH MONIL FENILKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1273, 1163232, 'SHAH NIDHI SHAILESHKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1274, 1163233, 'SHAH PALAK KALPESH', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1275, 1163234, 'SHAH RITU RAJESHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1276, 1163235, 'SHAH RUSHABH CHETANBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1277, 1163236, 'SHAH SAMKIT MUKESHKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1278, 1163237, 'SHAH VAISHAL BHAVESHKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1279, 1163238, 'SHAH YESHA ASHISHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1280, 1163240, 'SONI MANALI HITESHKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1281, 1163241, 'SONPAL JINAL MANISHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1282, 1163242, 'SUTHAR RAVIKUMAR JAYANTILAL', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1283, 1163245, 'VACHHETA JHANVI HASMUKHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1284, 1163246, 'VAGHELA BHAVIN RAMESHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1285, 1163247, 'VANKAR NIKKIBEN MANUBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1286, 1163251, 'SHAH ANAND NARESHKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1287, 1153252, 'UPADHYAY HONEY NIMESHKUMAR', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1288, 1153254, 'BHABHOR PANKAJKUMAR RAMESHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1289, 1153255, 'SOLANKI JAYESHKUMAR DHAJAYKUMAR', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1290, 1153256, 'DESAI DHRUMIL HIRENBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1291, 1153257, 'GOSWAMI JAGRUTI VASANTBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1292, 1163016, 'GADHIYA RIDDHI KANUBHAI', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1293, 1163021, 'JAY CHELANI', '', 0, '', 0, 1, 5, 'A', NULL, NULL),
(1294, 1144258, 'VARMA VIDHI RAJESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1295, 1144259, 'BAJANIYA JIGAR SAVJIBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1296, 1144261, 'PARMAR HITENDRAKUMAR PRAVINBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1297, 1144265, 'SHAH AASHAY YATINDRA', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1298, 1144266, 'SAHIL AWASTHI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1299, 1154001, 'ADANI TAKSHIL VIKRAMKUMAR', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1300, 1154002, 'AMAN JAIN', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1301, 1154003, 'BAGADIYA HIMANSHI TUSHARBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1302, 1154004, 'BAROT NIKITABEN NARENDRAKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1303, 1154006, 'BHERWANI SUMIT AMRUTLAL', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1304, 1154007, 'CHAUDHARY HARDI YOGESHKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1305, 1154008, 'CHAUHAN HIRALBEN KAILASHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1306, 1154009, 'CHAVDA POOJA DEVJIBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1307, 1154010, 'CHRISTIAN SAGAR SHAILESHBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1308, 1154011, 'DARAJI RUSHIL BHARATBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1309, 1154012, 'DARJI SHIVANI DHIRENKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1310, 1154013, 'DODIYA PARTH RAJENDRA', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1311, 1154014, 'GAJERA BHAGYASHRIBEN PRADIPBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1312, 1154015, 'GAJJAR VIVEK RAMESHCHANDRA', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1313, 1154016, 'GANGADIA DARSHAN BHARATBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1314, 1154017, 'GOLTAR HARSHAD RAMESHBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1315, 1154018, 'HARIYA ABHAY RAMESHCHANDRA', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1316, 1154019, 'HEROLE ASHWINKUMAR GAUTAMBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1317, 1154020, 'JAIN RINKAL NARESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1318, 1154021, 'JHONSON MARVIN PHILIP', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1319, 1154022, 'KADIA PRAGATI JIGNESH KUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1320, 1154023, 'KALAPARA BHARATBHAI BUDHABHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1321, 1154024, 'KATWALA MIT DHARMESHKUMAR', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1322, 1154025, 'KHAMBHATI PARTH MUKESHKUMAR', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1323, 1154026, 'KUHADA KISHAN PRATAPBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1324, 1154027, 'MAHETALIYA NIHARI RAJESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1325, 1154028, 'MAKWANA JAYANTI RAMJIBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1326, 1154029, 'MEHTA BHAVYABEN ANILKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1327, 1154030, 'MISTRY DHAVAL VIPULKUMAR', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1328, 1154032, 'MODI YASHKUMAR JAYESHBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1329, 1154033, 'NAGPARA HITISHA HARSHADBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1330, 1154034, 'NAYAK FENIL HARSHVADAN', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1331, 1154037, 'PANCHAL BHUMI HARESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1332, 1154038, 'PANCHAL JAYKUMAR DINESHBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1333, 1154039, 'PANCHAL NEHA YOGESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1334, 1154041, 'PARMAR BANSARI NITINBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1335, 1154042, 'PARMAR NILESHKUMAR LAXMANBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1336, 1154043, 'PATEL ARCHANA SHAILESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1337, 1154044, 'PATEL JAINEE BHAVESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1338, 1154045, 'PATEL PRACHI PARESHKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1339, 1154046, 'PATEL VISHAKHABEN HARSHADKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1340, 1154047, 'POSHIYA BANSIBEN MANSUKHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1341, 1154048, 'PRAJAPATI HARSH BIPINKUMAR', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1342, 1154050, 'PRAJAPATI JINAL HARESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1343, 1154051, 'PRAJAPATI NAMPYARI JAGDISHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1344, 1154052, 'PRAJAPATI SANGITABEN AMRATBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1345, 1154053, 'PRAJAPATI YOMIK RAJESHBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1346, 1154054, 'RABARI AMIT VIRAMBHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1347, 1154055, 'RAM KINJAL DEVSHIBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1348, 1154056, 'RATHOD MANISHA BHANUBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1349, 1154057, 'RAVAL JIGAR PRADIPKUMAR', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1350, 1154058, 'SACHDEVA SHANIA MANJIV', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1351, 1154059, 'SANGHAVI RIDDHI MANAHARBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1352, 1154060, 'SATHWARA KAJAL NATVARBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1353, 1154063, 'SHAH DHRUV DEVENDRABHAI', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1354, 1154064, 'SHAH HELI MAYURKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1355, 1154065, 'SHAH HETA MAHENDRABHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1356, 1154066, 'SHAH JIL VIKRAMBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1357, 1154068, 'SHAH POOJA JUGALKISHOR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1358, 1154069, 'SHAH RIYA ATULKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1359, 1154070, 'SHAH SHAILY KETANBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1360, 1154071, 'SHAH VIDHI UMESHKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1361, 1154074, 'SOLANKI CHARMI CHANDRAKANTBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1362, 1154075, 'SOLANKI SHIVANEE RAMESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1363, 1154076, 'SOMPURA DHRUTI DIVYESHBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1364, 1154077, 'Sumit Kumar Singh', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1365, 1154078, 'SWAROOP SINGH', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1366, 1154079, 'THAKKAR POOJA PRAVINBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1367, 1154082, 'VALA KOMAL GHANSHYAMBHAI', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1368, 1154083, 'AHIR ISHANI CHANDRAKANTBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1369, 1154085, 'BAROT HEMANGINI PRAVINBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1370, 1154086, 'BAROT RUTVIBEN ARVINDBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1371, 1154087, 'BHALANI RAJVI YOGESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1372, 1154090, 'CHAUHAN HITESH KUMAR KISHORBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1373, 1154091, 'CHHATBAR MANALI YOGESH', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1374, 1154092, 'DABHI DARSHIL PRAKASHKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1375, 1154093, 'DARBAR SMEET RAHUL', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1376, 1154094, 'DAVE CHIRAG RAJENDRABHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1377, 1154095, 'DUGAR PRANJAL ANILKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1378, 1154096, 'GAJJAR KAJAL DILIPBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1379, 1154097, 'GALIYA FALAK SHAILESHKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1380, 1154098, 'GOHEL RAJAL VASUDEVBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1381, 1154099, 'GOSWAMI DHARATI HARESHGIRI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1382, 1154100, 'HARPALANI LALIT MANISHKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1383, 1154101, 'JAIN NAMAN MANISH', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1384, 1154102, 'JAIN SHIKHA RAJESHKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1385, 1154104, 'KADIVAR KHUSHBUBANU GULAMHUSHEN', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1386, 1154105, 'KAPADIA JINALIBEN ATULKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1387, 1154106, 'KAURANI JIGNA SHANKERLAL', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1388, 1154107, 'KHEMANI JEETENDRA DILIPBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1389, 1154108, 'KUNJERA HILLBEN JAGDISHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1390, 1154109, 'MAKASANA DARSHITA DAHYALAL', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1391, 1154110, 'MAKWANA YASH UMESHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1392, 1154111, 'MEHTA URVI BHARATBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1393, 1154112, 'MISTRY RITESH SURESHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1394, 1154113, 'MODI DIMPAL ASHOKKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1395, 1154115, 'NAI KAJAL MUKESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1396, 1154119, 'PANCHAL HIMANSHU NATUBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1397, 1154120, 'PANCHAL JINALBEN SHAILESHKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1398, 1154122, 'PAREKH GARVIT PRAKASHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1399, 1154123, 'PARMAR HARSHVARDHAN BHARATKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1400, 1154125, 'PATEL DHAVAL RAMANLAL', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1401, 1154126, 'PATEL MANSI KIRITKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1402, 1154127, 'PATEL RUTVA RAJESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1403, 1154128, 'PIPALIYA SWATI DILIPBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1404, 1154129, 'PRAJAPATI AASHIL NARESHKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1405, 1154130, 'PRAJAPATI HARSHABEN BHUPATBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1406, 1154131, 'PRAJAPATI JAY VIJAYKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1407, 1154132, 'PRAJAPATI KINNAL PARESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1408, 1154133, 'PRAJAPATI RAHUL KAILASHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1409, 1154134, 'PRAJAPATI TWINKLE PRAMODBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1410, 1154135, 'PUJARA PRANAVKUMAR MAHESHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1411, 1154136, 'RADADIYA KEVAL MAGANBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1412, 1154137, 'RANA KARISHMA DINESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1413, 1154139, 'ROHIT HARSHIL DINESHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1414, 1154141, 'SAPRA SANNY HITESHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1415, 1154142, 'SAVALIYA URVASHI SURESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1416, 1154143, 'SHAH ANISHA KAMLESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1417, 1154144, 'SHAH DEVANSHI KIRANBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1418, 1154145, 'SHAH DRASHTI JITESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1419, 1154146, 'SHAH HELLYBEN RAKESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1420, 1154147, 'SHAH HETAL HITESHKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1421, 1154148, 'SHAH KRIMA KIRANBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1422, 1154149, 'SHAH NEHA KETANKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1423, 1154151, 'SHAH RUTUL DHIRAJKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1424, 1154153, 'SHARMA NIDHI DEVENDRAKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1425, 1154154, 'SHIVAM SARAFF', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1426, 1154157, 'SOLANKI SONALBEN BHOOPENDRAKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1427, 1154158, 'SONI BHUMI PRAVINBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1428, 1154159, 'SUTHAR PRITESH RAMESHBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1429, 1154160, 'TANK DOLLY BABUBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1430, 1154161, 'THAKORE RUCHITA RAVINDRABHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1431, 1154162, 'VACHHETA POOJABEN BHARATBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1432, 1154163, 'VAGHELA BINAL DINESHCHANDRA', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1433, 1154164, 'VANIYA DEVANG ANILKUMAR', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1434, 1154165, 'AHUJA VISHWAM DINESHBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1435, 1154167, 'BAROT KHUSHBUBEN UMANGBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1436, 1154168, 'BATUL RAHUL NAYANKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1437, 1154169, 'BHAVSAR PRUTHA KAUSHIKKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1438, 1154171, 'CHAUHAN DEVANGEE NARENDRABHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1439, 1154172, 'CHAUHAN PRAKASHKUMAR HIRABHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1440, 1154173, 'CHOKSI JINAL KETANKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1441, 1154174, 'DADIA MAITRI RAJESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1442, 1154175, 'DARJI KRISHNA ASHOKBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1443, 1154178, 'GAJJAR NISHANT KALPESHKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1444, 1154179, 'GANDHI SHREERAJ AJAYKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1445, 1154180, 'GOHIL BALBHADRASINH JITENDRASINH', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1446, 1154182, 'HERAMBHA JAGRUTIBEN PRAVINBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1447, 1154183, 'JAIN NIDHI BHARAT', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1448, 1154184, 'JHARNA S SONI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1449, 1154185, 'KABRA SONU RAJMAL', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1450, 1154186, 'KALANI CHANDNI HITESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1451, 1154187, 'KATRODIYA NAMRATA JASUBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1452, 1154193, 'MEVADA SWEETY RAJESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1453, 1154194, 'MODI BHUMI RAJESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1454, 1154195, 'MODI REEMA CHANDRAKANT', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1455, 1154196, 'MORI BHAVESHKUMAR TRIBHOVANBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1456, 1154197, 'NATHAWANI JEEL GHANSHYAMBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1457, 1154198, 'OZA JUHI RAJESH', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1458, 1154199, 'PADHIYAR URVASHI RAJESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1459, 1154200, 'PANCHAL ANJALI UPENDRABHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1460, 1154201, 'PANCHAL JANAVIBEN RAJESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1461, 1154202, 'PANCHAL MILANKUMAR PRAKASHBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1462, 1154203, 'PANT JUHI SHAILENDRA', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1463, 1154204, 'PAREKH JEET HARSHADBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1464, 1154205, 'PARMAR HET NAIMEESHKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1465, 1154206, 'PARMAR RUSHABH BHUPENDRABHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1466, 1154207, 'PATEL HENI HITENDRAKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1467, 1154208, 'PATEL NISHIT DHARMENDRAKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1468, 1154209, 'PATEL TWINKAL KIRITBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1469, 1154210, 'POOJA MEWARA SURENDER KUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1470, 1154211, 'PRAJAPATI BINAL KANTILAL', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1471, 1154212, 'PRAJAPATI HARSHIL BIPINKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1472, 1154213, 'PRAJAPATI JAYANTI PUNAMBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1473, 1154214, 'PRAJAPATI MAYUR RAMJIBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1474, 1154216, 'PRAJAPATI VIDHI ASHOKKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1475, 1154217, 'QURAISHI KHANSABIBI SABBIRHUSEN', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1476, 1154218, 'RAJPUT JANAK POONAMSINGH', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1477, 1154219, 'RANA MAULIK PRAVINBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1478, 1154221, 'ROHIT SAGAR RAMANBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1479, 1154222, 'SANGHAVI NIKI KALPESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1480, 1154223, 'SATHAWARA ZALAK HITESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1481, 1154224, 'SHAH AANGEE NIMESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1482, 1154225, 'SHAH CHERRY VIKRAMBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1483, 1154226, 'SHAH DEVANSHI NIKUNJBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1484, 1154227, 'SHAH HELI JAYESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1485, 1154229, 'SHAH HIMALAY HIMATLAL', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1486, 1154230, 'SHAH KRIMA SAUMILBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1487, 1154231, 'SHAH NIL ATULBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1488, 1154232, 'SHAH RAJVI KIRTIBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1489, 1154233, 'SHAH SETU YOGESHKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1490, 1154234, 'SHAH SMIT JAYESHKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1491, 1154235, 'SHARMA PURVISH SANJAYKUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1492, 1154236, 'SHRUTI SHARMA', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1493, 1154238, 'SOLANKI KHUSHALI SANJAYBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1494, 1154239, 'SOLANKI VIDHI NARESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1495, 1154240, 'SONI VIKRAM BHOOPENDRA', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1496, 1154241, 'SUTHAR TWINKALBEN PRADIPBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1497, 1154242, 'THAKKAR HELLY PANKAJBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1498, 1154243, 'TOMAR ABHISHEK SINGH DINESHSINGH', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1499, 1154244, 'VADHER ARJUN KAUSHIKBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1500, 1154245, 'VAISHNAV DHARANI VASUDEVBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1501, 1154246, 'VYAS TARJANI PANKAJKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1502, 1144272, 'DODIYA SHUBHAM NARENDRABHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1503, 1144274, 'KADIA VAIDEHI PRADIPKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1504, 1144276, 'SOLANKI DIPIKABEN CHUNILAL', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1505, 1144277, 'JADEJA RAVIRAJSINH BHUPENDRASINH', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1506, 1144278, 'GANDHI VATSAL ASHISHBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1507, 1144279, 'NIRAJ KUMAR BHABHOR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1508, 1134282, 'MEHROTRA MALAV RAJEEV', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1509, 3174285, 'SHAH SUNNY KIRITBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1510, 1144288, 'MANSURI SOHELBHAI SALIMBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1511, 1144289, 'JOGEL DIPAKKUMAR JIVANBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1512, 1144290, 'SHAH SIDDHARTH AMITBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1513, 1134291, 'PRAJAPATI PARTH ARVINDBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1514, 1134292, 'DODIYA RAJAT VINODBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1515, 3164295, 'THAKKAR ANJALI PURVINBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1516, 3174296, 'PATEL VISHWA KASHYAP', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1517, 3174297, 'DAMANI PARTH KALPESH', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1518, 3174298, 'DUDWADKAR UDITESH MITESH', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1519, 3174299, 'PARIKH JEET KAMLESHBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1520, 1135259, 'DHRUVA SAMKIT RAJENDRABHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1521, 1135264, 'PATEL MANSI MANISHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1522, 1135273, 'BURSE SAGAR RAMESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1523, 1135280, 'MEHTA CHANDANI KETAN', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1524, 1135281, 'RAJPUT APARNA ARUN', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1525, 1135282, 'RATHOD JIGAR RAJUBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1526, 1145001, 'AATAR RIHANA KHUDBUDDIN', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1527, 1145002, 'ADANI VIRAJ SHAILESHKUMAR', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1528, 1145017, 'GANDHI ANERI NIMISHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1529, 1145018, 'GOHEL HIRAL SUBHASHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1530, 1145019, 'GOR AYUSHI ATULKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1531, 1145020, 'HADIYA VIJAYKUMAR MANUBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1532, 1145022, 'JADAV NIHILRAJ HASMUKHBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1533, 1145023, 'JAIN NISHA SUSHILKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1534, 1145024, 'JAYDEEP PAVARA', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1535, 1145025, 'JOSHI DIXITA DIPAKKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1536, 1145027, 'KARGATHARA RAVIKUMAR DINESHBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1537, 1145030, 'MAKANI RAJ CHIMANBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1538, 1145031, 'MAKWANA RADHIKA ISHWARBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1539, 1145032, 'MEHTA DEVANSH RAKESHKUMAR', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1540, 1145033, 'MISTRY KAJAL UMESHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1541, 1145034, 'MODI NIKITA RASIKLAL', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1542, 1145035, 'NAGAR BRINDA JAYANTIBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1543, 1145036, 'NAI PRIYANKA MAFATBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1544, 1145037, 'NAYAK JAY HARESHKUMAR', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1545, 1145038, 'OZA URVASHI HARSHADBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1546, 1145039, 'PANCHAL DARSHANA MAHESHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1547, 1145042, 'PARMAR AKSHAYKUMAR BALDEVBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1548, 1145044, 'PARMAR SWETA GIRISHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1549, 1145045, 'PATEL AJAYKUMAR SHANTILAL', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1550, 1145047, 'PATEL NIDHI DINESHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1551, 1145048, 'PATEL SIDDHARTH ANILBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1552, 1145049, 'PATEL VIRALIBEN MAHESHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1553, 1145050, 'PATWALA HELLY PANKAJ', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1554, 1145051, 'PRAJAPATI ANAND KISHANLAL', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1555, 1145053, 'PRAJAPATI PRIYANKBHAI BHARATKUMAR', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1556, 1145054, 'PUJARA KRUNALKUMAR GHANSHYAMBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1557, 1145056, 'RATNAKAR HOMY UMESHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1558, 1145057, 'RAVAL KAVITA DILIPBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1559, 1145058, 'RAYATE POOJABEN PRAMODBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1560, 1145059, 'SAHLOT POOJA MUKESHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1561, 1145060, 'SHAH AANAL RAKESHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1562, 1145061, 'SHAH AKASH SURESHBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1563, 1145062, 'SHAH DHIR MAYURBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1564, 1145063, 'SHAH HETABEN NILESHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1565, 1145064, 'SHAH JINAL ATULKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1566, 1145065, 'SHAH KAJAL ASHISHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1567, 1145066, 'SHAH MAULESH VASUDEVBHAI', '', 0, '', 0, 1, 9, 'A', NULL, NULL),
(1568, 1145068, 'SHAH NIRALI CHETANBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1569, 1145069, 'SHAH PRACHI JIGNESHKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1570, 1145070, 'SHAH RIDDHI AJITKUMAR', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1571, 1145072, 'SHEKH SHIBABHEN HARUNBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1572, 1145073, 'SHIKHA RANI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1573, 1145076, 'THAKKAR KAJAL RAJESHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1574, 1145077, 'THAKOR DIMPLE NARESHBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1575, 1145080, 'VAGHELA NEHABEN PRAVINBHAI', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1576, 1145083, 'ZALA BHOOMI JAYPRAKASH', '', 1, '', 0, 1, 9, 'A', NULL, NULL),
(1577, 1145085, 'ADHYARU SHREYA HARDIKKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1578, 1145086, 'BAGADIA VATSAL PANKAJBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1579, 1145087, 'BAROT AKSHKUMAR ROHITBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1580, 1145088, 'BHABHRAWALA AIMAN MASOOD', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1581, 1145089, 'BHALALA KRISHNA BHARATBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1582, 1145090, 'BHAVESH M AILANI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1583, 1145092, 'CHAVADA KETAN RAMESHBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1584, 1145093, 'CHAVDA KRISHNA GHANSHYAMBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1585, 1145094, 'CHRISTIAN JENY WILSONBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1586, 1145096, 'DESAI PRIYA BIPINBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1587, 1145097, 'DHANDHUKIA PALAK BIPINBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1588, 1145098, 'DOSHI AALISHA BHARATBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1589, 1145099, 'GAJJAR RUTVI HITESHBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1590, 1145100, 'GANDHI KRIPA UDAYBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1591, 1145101, 'GOHEL KAJAL MUKESHBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1592, 1145102, 'GUPTA HETAL RAMSHANKAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1593, 1145103, 'HIMALAYA PURI GOSWAMI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1594, 1145104, 'JADAV DILIP JERAM BHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1595, 1145106, 'JAIN SALONI NARENDRABHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1596, 1145108, 'JUHI ANILKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1597, 1145109, 'KAJAL DINESHBHAI CHAUHAN', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1598, 1145111, 'KORADIA NILIMA RAJESHBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1599, 1145113, 'MAKAVANA DHARTIBEN MUKESHBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1600, 1145115, 'MEHTA FENY DHARMENDRABHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1601, 1145116, 'MISTRY UNNATI KAMLESHKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1602, 1145119, 'NAIR NANDINI RAMANAND', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1603, 1145120, 'NAYAK KUSHAL ATULKUMAR', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1604, 1145123, 'PANCHAL UNNATI PRAKASHKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1605, 1145125, 'PARMAR HIRAJ KISHORBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1606, 1145126, 'PARMAR NARESHKUMAR DINESHKUMAR', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1607, 1145130, 'PATEL PALAKBEN BALVANTBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1608, 1145131, 'PATEL TWINKLE ASHWINKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1609, 1145132, 'PATEL YASH MUKESHBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1610, 1145133, 'PITHADIYA POOJAN AMRISHKUMAR', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1611, 1145134, 'PRAJAPATI APURV SURESHBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1612, 1145135, 'PRAJAPATI KANDARP JAYANTIBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1613, 1145137, 'RALOLIYA SANJAYBHAI RAMESHBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1614, 1145138, 'RATHOD GRISHMA NARENDRABHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1615, 1145139, 'RAVAL ANKITA RANCHHODBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1616, 1145140, 'RAVAL MAHESH NATVARBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1617, 1145141, 'ROJASARA KISHAN DIPAKKUMAR', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1618, 1145142, 'SAMDANI KINJAL JAGDISHCHANDRA', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1619, 1145144, 'SHAH BHUMI SANDIPKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1620, 1145145, 'SHAH DRASHTIBAHEN YATINKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1621, 1145146, 'SHAH HIMANI ASHISHKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1622, 1145147, 'SHAH JINAL SANJAYKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1623, 1145148, 'SHAH KAVINA DIPALBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1624, 1145149, 'SHAH MOXA SATISHKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1625, 1145151, 'SHAH NISHI MINESHBHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1626, 1145153, 'SHAH RIYA VIPULKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1627, 1145154, 'SHAH SHIVANGI NAVINKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1628, 1145155, 'SHETH CHANDNI KETANKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1629, 1145156, 'SHRIMALIBHOI PRAKASH DEVENDRABHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1630, 1145158, 'TANK HIREN VIJAYBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1631, 1145159, 'THAKKAR KISHAN SURESHBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1632, 1145160, 'THAKOR MAHEKBEN ASHWINKUMAR', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1633, 1145161, 'TUVAR CHETANBHAI AJAMALBHAI', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1634, 1145162, 'VAGHELA AAKASHKUMAR SHAILESHKUMAR', '', 0, '', 0, 1, 9, 'B', NULL, NULL),
(1635, 1145163, 'VALA KANCHANBEN DANABHAI', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1636, 1145166, 'ZALA VRUSHIKABA SANJAYSINH', '', 1, '', 0, 1, 9, 'B', NULL, NULL),
(1637, 1145167, 'ACHARYA YATRI JITENDRAKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1638, 1145169, 'BATUL PRASHANT RAJESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1639, 1145170, 'BHAGIA HANISHA JITENDRA', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1640, 1145173, 'CHAUHAN AMITKUMAR VINODBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1641, 1145174, 'CHAVDA HARSHRAJSINH JAGATSINH', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1642, 1145175, 'CHAVDA VANITABEN DALPATBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1643, 1145176, 'DABHI KAJOL BIPINKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1644, 1145177, 'DELIWALA DHARAK KETANKUMAR', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1645, 1145179, 'DHRUV GRISHMA DILIPBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1646, 1145180, 'DOSHI CHAITALIBEN LALITBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1647, 1145181, 'GAJJAR URVI ASHOKBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1648, 1145183, 'GONDALIYA JINAL RAJESHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1649, 1145184, 'GURJAR NEETABAHEN MOHANBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1650, 1145185, 'HIRPARA VIBHUTIBEN MUKESHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1651, 1145186, 'JADAV MEHUL AMRSHIBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1652, 1145187, 'JADEJA SHIVANEE GHANSHYAMSINH', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1653, 1145188, 'JATAKIA QUEENCY CHANDRESHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1654, 1145190, 'KADIA TAKSHMA SHAILESHKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1655, 1145193, 'KOTIYA VISHAL LAKHAMBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1656, 1145194, 'MAITRI RAMESHBHAI VIRANI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1657, 1145197, 'MEHTA NIRALI ASHOKBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1658, 1145198, 'MODI BHARGAV DINESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1659, 1145199, 'MUSABAJI IMAD YUNUSALI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1660, 1145200, 'NAI APEXABEN BHANJIBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1661, 1145201, 'NAYAK DHIMANT PRADHYUMANBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1662, 1145203, 'PADHIYAR UMANG RAMESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1663, 1145204, 'PANCHAL NIKITA RAMESHKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1664, 1145206, 'PAREKH JAYDEEPKUMAR BHIKHABHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1665, 1145208, 'PARMAR SHAILESHKUMAR KANTIBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1666, 1145209, 'PARVATHI S R', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1667, 1145210, 'PATEL JIGNESHABEN NATVARBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1668, 1145211, 'PATEL MONALI JAGDISHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1669, 1145212, 'PATEL PURVI JITENDRAKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1670, 1145213, 'PATEL UNNATI KANAIYALAL', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1671, 1145214, 'PATIL PRIYANKA MAHESH', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1672, 1145215, 'POOJARA JAYMIN DHANESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1673, 1145217, 'PRAJAPATI KINJAL MAHESHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1674, 1145219, 'RANA CHARMI SATISHKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1675, 1145220, 'RATHOD YASH MANOJKUMAR', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1676, 1145221, 'RAVAL GAURANG MAHESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1677, 1145222, 'RAVAL PRIYA MAHESHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1678, 1145224, 'SANGHVI PURVANSHI KIRITBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1679, 1145225, 'SHAH AISHWARYA JAYESH', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1680, 1145226, 'SHAH CHANDANI VIJAYKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1681, 1145227, 'SHAH HARSH HITESHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1682, 1145228, 'SHAH JENISH MUKESH BHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1683, 1145229, 'SHAH KAIVAN RAJENDRABHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1684, 1145230, 'SHAH KRUTIKA RASHMIKANT', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1685, 1145231, 'SHAH MRUGESH SHIRISHCHANDRA', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1686, 1145232, 'SHAH NENCY HASMUKHBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1687, 1145233, 'SHAH PRACHI AJAYKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1688, 1145234, 'SHAH PRIYAL ASHOKKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1689, 1145235, 'SHAH RUSHAVI MILANBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1690, 1145239, 'SONI KHUSHBU SANJAYKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1691, 1145241, 'THAKKAR YASHVI JITENDRAKUMAR', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1692, 1145242, 'THEKDI PANKTI MAYANK', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1693, 1145244, 'VAGHELA HARKISHAN BABUBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1694, 1145245, 'VANIK NIMISH KISHANBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1695, 1145247, 'VISHVA APURVA SHAH', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1696, 3160502, 'DESAI KRISHNA AMITBHAI', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1697, 3160506, 'PASI DINESHKUMAR B.', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1698, 3170511, 'MEHTA DIPTI SHAILESH', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1699, 3170521, 'KAPADIYA RUCHI HITENDRA', '', 1, '', 0, 1, 9, 'C', NULL, NULL),
(1700, 1135283, 'ANTROLIYA MILAN RAMBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1701, 1135284, 'BHILAVALA SANTOSHBHAI MANILAL', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1702, 1135285, 'CHUDASAMA VIJAYBHAI NARSINGBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1703, 1135286, 'GALATHARA NILESHBHAI SHAMJEEBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1704, 1135287, 'MAKWANA SANJAYKUMAR POPATBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1705, 1135288, 'SONI RAJAN PRAKASHBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1706, 1125289, 'MALOO RAHUL OMPRAKASH G', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1707, 3165291, 'BHATIA VISHWESHRAJ SANJAYRAJ', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1708, 1125290, 'PANCHASARA UTTAM JIVANBHAI', '', 0, '', 0, 1, 9, 'C', NULL, NULL),
(1709, 2134280, 'KOSHTI SHIVAM RAJESHBHAI', '', 0, '', 0, 0, 7, 'B', NULL, NULL),
(1710, 2145239, 'SONI PRIYANKA JAYESHKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(1711, 2125266, 'MACWAN SAURABH MAHENDRABHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(1712, 2125267, 'RATHOD SHUBHAM JITENDRABHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(1713, 2125268, 'DHOBI BHAVIKKUMAR VINODKUMAR', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(1714, 2135269, 'DABHI RONAK RAJUBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(1715, 2135270, 'INDULKAR DISHA VIJAYKUMAR', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(1716, 2135273, 'CHAMPANERI JINALI MAHENDRABHAI', '', 1, '', 0, 0, 9, 'B', NULL, NULL),
(1717, 1172049, 'PATEL KERVI BHADRESHKUMAR', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(1718, 1172051, 'PATWA YESHA AMITBHAI', '', 1, '', 0, 1, 3, 'A', NULL, NULL),
(1719, 1172062, 'RISHABH UPADHYAY', '', 0, '', 0, 1, 3, 'A', NULL, NULL),
(1720, 1172102, 'JAIN PRACHI ISHWERBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(1721, 1172120, 'PANCHAL DRASHTI DASHRATHBHAI', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(1722, 1172146, 'SHAH KRINA PARESH', '', 1, '', 0, 1, 3, 'B', NULL, NULL),
(1723, 1172151, 'SHAIKH MOH TOKEER FAROOQUEBHAI', '', 0, '', 0, 1, 3, 'B', NULL, NULL),
(1724, 1172183, 'JAIN KHUSHI DINESH', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1725, 1172199, 'MOHAMMED ASHRAF', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1726, 1172228, 'SHAH KRISH SHASHIKANT', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1727, 1162249, 'SENGAL YASHIL DINESHKUMAR', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1728, 1172256, 'SONARA TANVI BIPINCHANDRA', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1729, 1162259, 'DAKSHAY NAVINBHAI ANTALA', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1730, 1162261, 'PATEL PRIYAM BHUPENDRABHAI', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1731, 1172233, 'SHARMA SUSHRI SHIVANI SHRI GODHAN', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1732, 1162264, 'PARMAR NISHA HIMMATBHAI', '', 1, '', 0, 1, 3, 'C', NULL, NULL),
(1733, 1162265, 'PARMAR RAJ RAMESHCHANDRA', '', 0, '', 0, 1, 3, 'C', NULL, NULL),
(1734, 1163075, 'SHAIKH SAYMAH NADEEM', '', 1, '', 0, 1, 5, 'A', NULL, NULL),
(1735, 1163126, 'PARTH GOSWAMI', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1736, 1163146, 'SHAH DHRUVIN NIMESHKUMAR', '', 0, '', 0, 1, 5, 'B', NULL, NULL),
(1737, 1163221, 'RADADIYA KINNARI YOGESHBHAI', '', 1, '', 0, 1, 5, 'C', NULL, NULL),
(1738, 1153253, 'PANCHAL YASH RAMESHBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1739, 1143258, 'RANA HARSH ASHWINBHAI', '', 0, '', 0, 1, 5, 'C', NULL, NULL),
(1740, 1154031, 'MODI DEVANSHI VIPULKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1741, 1154035, 'OZA KHUSHALEE BHAVINKUMAR', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1742, 1154036, 'PALLAVI JAIN', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1743, 1154049, 'PRAJAPATI INDRAJIT CHUNILAL', '', 0, '', 0, 1, 7, 'A', NULL, NULL),
(1744, 1154084, 'ANSARI MOHAMMED MUSAIF MAQSUDAHEMED', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1745, 1154088, 'BUCH RUTVI SHAILESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1746, 1154089, 'CHAUHAN AARTI VASANTBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1747, 1154103, 'JOSHI DEVANSHI UMESHKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1748, 1154116, 'NAYAK NISHIT VASANTBHAI', '', 0, '', 0, 1, 7, 'B', NULL, NULL),
(1749, 1154124, 'PARMAR RUPALBEN RAMANBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1750, 1154138, 'RATHOD PRIYANKA RAKESHBHAI', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1751, 1154155, 'SHUKLA SIDDHI SHAILESHKUMAR', '', 1, '', 0, 1, 7, 'B', NULL, NULL),
(1752, 1154166, 'AVASHIA KHUSHI KIRATBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1753, 1154189, 'KHETANI AKASHI PARESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1754, 1154191, 'MAKWANA HARSHIL POONAMBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1755, 1154228, 'SHAH HEMANGI KALPESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1756, 1144264, 'PATEL DARSHITA PRAVINBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1757, 1144269, 'PARMAR MRUNAL RAMANBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1758, 1144270, 'BHABHOR KEYURKUMAR PUNJABHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1759, 1144271, 'BHUTAIYA HARSHADKUMAR HARIBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1760, 1144273, 'GADHVI GAURAVKUMAR SHANKARDAN', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1761, 1144275, 'KRUNAL KUMAR', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1762, 1134280, 'CHAUHAN CHANDRESH SURESHBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1763, 1134281, 'SOLANKI KARAN GAJENDRABHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1764, 3174283, 'GOYAL ABHISHEK SUSHIL', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1765, 3174284, 'LACHHANI HIRAL PRADIP', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1766, 1144287, 'PATEL KHUSHALI BHAGVATKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1767, 1134293, 'RANA TANISH HARSUKHBHAI', '', 0, '', 0, 1, 7, 'C', NULL, NULL),
(1768, 3164294, 'PATEL KRISHA DHARMESH', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1769, 1154192, 'MANVEE DUGAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1770, 2172217, 'RAHUL KHERAJANI', '', 0, '', 0, 0, 3, 'C', NULL, NULL),
(1771, 2135256, 'PATEL HARSH SANJAYBHAI', '', 0, '', 0, 0, 9, 'B', NULL, NULL),
(1772, 1163116, 'MORI NIKITABEN RAMNIKBHAI', '', 1, '', 0, 1, 5, 'B', NULL, NULL),
(1773, 1154040, 'PAREKH DARSHINI RAKESH', '', 1, '', 0, 1, 7, 'A', NULL, NULL),
(1775, 1154237, 'SOLANKI CHANDNI HARESHBHAI', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1776, 1144258, 'VARMA VIDHI RAJESHKUMAR', '', 1, '', 0, 1, 7, 'C', NULL, NULL),
(1777, 2181001, 'AASHARA VISHWA HIRENKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1778, 2181002, 'AHIR POOJA KISHORKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1779, 2181003, 'CHAMPANERI RIDHAM RAKESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1780, 2181004, 'CHAUHAN HARSH UMESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1781, 2181005, 'CHAUHAN SHREYANSH KALPESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1782, 2181006, 'CHAVDA PRADIP BIPINBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1783, 2181007, 'DARJI AMISHA ASHOKBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1784, 2181008, 'DARJI PRACHI DIPAKKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1785, 2181009, 'DESAI DARSHI RAKESHKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1786, 2181010, 'DESAI DRISHTI ANKIT', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1787, 2181011, 'DOI MARIYAMBIBI MAKBULHUSEN', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1788, 2181012, 'GAJJAR VIDHI AMITKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1789, 2181013, 'GOHEL AYUSH CHANDRAKANTBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1790, 2181014, 'GOHEL POOJA ASHOKBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1791, 2181015, 'JANSARI SHUBHAM HASMUKHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1792, 2181016, 'KAKADIYA JANVI ARVINDBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1793, 2181017, 'KALVANI MUSKAN ATULKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1794, 2181018, 'KANZA MAHAMMADHANIF RASULBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1795, 2181019, 'KOTHIYA GAUMIT HARESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1796, 2181020, 'KUMBHANI DIVYESH HINDUSTANBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1797, 2181021, 'MISTRY PANSHUL ASHWINBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1798, 2181022, 'MODASIYA SABIHAKHATUN MAKBULHUSEN', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1799, 2181023, 'NAIR ABHIJIT SATHIKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1800, 2181024, 'NAYAK VRUSHABH MANOJKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1801, 2181025, 'NAYAK YASH RAJENDRAKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1802, 2181026, 'NISHIT RAJPOOT', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1803, 2181027, 'PANCHAL GHANSHYAMBHAI RAMESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1804, 2181028, 'PANCHAL JINAL JASHWANTBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1805, 2181029, 'PANCHAL NIKHAR PARESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1806, 2181030, 'PANCHAL PINKAL NILESHKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1807, 2181031, 'PANCHAL SIDDHARTH JAGDISHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1808, 2181032, 'PANCHANI PRINCE BHAVESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1809, 2181033, 'PARMAR BANSI HASMUKHBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1810, 2181034, 'PARMAR BHOOPAT AMRUTBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1811, 2181035, 'PARMAR HARSHIL NILESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1812, 2181036, 'PARMAR MAHI HARSHADBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1813, 2181037, 'PARMAR PRIYAKUMARI MANEKLAL', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1814, 2181038, 'PARMAR ROHANKUMAR SHAILESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1815, 2181039, 'PATADIYA MANSI KIRTIBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1816, 2181040, 'PATADIYA MITALIBEN BHARATKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1817, 2181041, 'PATALIYA PARTH SURESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1818, 2181042, 'PATEL ANJALIBEN MAHESHBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1819, 2181043, 'PATEL DHRUVI RAJENDRAKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1820, 2181044, 'PATEL DRUMILKUMAR SANDIPKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1821, 2181045, 'PATEL JANAVI BHARATBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1822, 2181046, 'PATEL NILAM MANUBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1823, 2181047, 'PATEL POOJAKUMARI ARVINDBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1824, 2181048, 'PATEL PRIYANKA PRAVINKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1825, 2181049, 'PATEL PRIYANKABEN PANKAJBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1826, 2181050, 'PATEL SHLOK PRASHANTBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1827, 2181051, 'PATEL SRUSHTIBEN PRAVINBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1828, 2181052, 'PATEL VIDHI BABUBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1829, 2181053, 'PRAJAPATI ASHA KHIMAJI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1830, 2181054, 'PRAJAPATI DHRUPAL PARESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1831, 2181055, 'PRAJAPATI KARAN NARESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1832, 2181056, 'PRAJAPATI KRUNAL JITENDRABHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1833, 2181057, 'PRAJAPATI YASH RAJESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1834, 2181058, 'RAMANUJ PIYUSHKUMAR RAJESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1835, 2181059, 'RUPAVATIYA KRUPA SHANTILAL', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1836, 2181060, 'SAVALIYA MAULIKKUMAR HARESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1837, 2181061, 'SHAH DEVANSHI JIGNESH', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1838, 2181062, 'SHAH DHAGASH MAULIN', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1839, 2181063, 'SHAH NISHA VIPULBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1840, 2181064, 'SHAH PARTH RAJESHKUMAR', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1841, 2181065, 'SHAH RADHESHYAM ACHHELAL', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1842, 2181066, 'SHAH TITHI SANJAYKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1843, 2181067, 'SHAH YASHVIBEN VIPULBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1844, 2181068, 'SHAIKH RASHEDABANU MOHMAD YUNUS', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1845, 2181069, 'SHESHANKUMAR ASHOKBHAI PATEL', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1846, 2181070, 'SOLANKI JANVI BHUPENDRABHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1847, 2181071, 'SOLANKI NUPUR HEMANGBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1848, 2181072, 'SOLANKI VATSAL DHARMESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1849, 2181073, 'TALAVIYA PRINCE RAMESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1850, 2181074, 'THAKKAR JEEMI ANILBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1851, 2181075, 'THAKKAR KEYUR NARESHBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1852, 2181076, 'TRIPATHI ASHUTOSH VIJAY', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1853, 2181077, 'UTTAMKUMAR MANANI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1854, 2181078, 'VACHHETA SUNNY RANJITBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1855, 2181079, 'VADALIYA SHRUSHTI SHAILESHBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1856, 2181080, 'VAGHELA JINALBEN DINESHBHAI', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1857, 2181081, 'VASANI DIVYA NITINKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1858, 2181082, 'VASITA RAHUL NATVARBHAI', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1859, 2181083, 'VYAS LAXMINARAYAN BALKRUSHNA', '', 0, '', 0, 0, 1, 'A', NULL, NULL),
(1860, 2181084, 'YADAV MAMTA RAMESHKUMAR', '', 1, '', 0, 0, 1, 'A', NULL, NULL),
(1861, 2181085, 'AKABRI DIVYESH PRAVINBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1862, 2181086, 'BABARIYA DHRUV PRAKASHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1863, 2181087, 'BALWANI JAY NARESHKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1864, 2181088, 'BHAVASAR DIMPLE HITENDRA KUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1865, 2181089, 'CHAUHAN KARAN JAYESH', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1866, 2181090, 'CHAVDA DHVANI SURESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1867, 2181091, 'CHAVDA HARSHKUMAR MUKESHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1868, 2181092, 'DABGAR KINNARI DINESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1869, 2181093, 'DAFTARY SUHASIBEN MITESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1870, 2181094, 'DARJI HARSH JAYESHKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1871, 2181095, 'DARJI KRINAL PRAKASHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1872, 2181096, 'DAVE SHAIL JIGNESH', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1873, 2181097, 'DESAI NEHI SAMIR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1874, 2181098, 'GAJERA NIRALI KIRITBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1875, 2181099, 'GOHIL DHRUMIL MANOJKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1876, 2181100, 'GOHIL MEERA JAGDISHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1877, 2181101, 'JAIN SHREYA RAKESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1878, 2181102, 'JAKASANIYA PINAL BHARATBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1879, 2181103, 'JETHVA DIPALIBEN KANTIBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1880, 2181104, 'KABIRA VAIBHAV RAJESHKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1881, 2181105, 'KADIA AKSHAY RAJUBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1882, 2181106, 'KATHIRIYA MANSI VINUBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1883, 2181107, 'KEVAT ABHISHEK HETRAM', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1884, 2181108, 'KHATRI NIRALI HITESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1885, 2181109, 'LIMBACHIYA CHIRAGBHAI MUKESHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL);
INSERT INTO `student` (`s_enrl`, `s_rn`, `fnm`, `lnm`, `s_gen`, `email`, `contact`, `c_id`, `sem`, `division`, `usub_id`, `batch_id`) VALUES
(1886, 2181110, 'MAKWANA DEV MAHENDRABHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1887, 2181111, 'MANSURI YASAR SOYABBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1888, 2181112, 'MAVAR SUHANEE GOPALBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1889, 2181113, 'MEHTA NIDHI JAYESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1890, 2181114, 'MEVADA JIMIT KANAIYALAL', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1891, 2181115, 'MISTRY DHARMIKKUMAR BHARATBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1892, 2181116, 'MISTRY MANSI SURESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1893, 2181117, 'MODI DHRUV GIRISHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1894, 2181118, 'NAGAR SANJANA KIRITBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1895, 2181119, 'NAYAK RAHUL NANUBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1896, 2181120, 'PALKHIWALA RIYA RAKESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1897, 2181121, 'PANCHAL HEMIN GHANSHYAM BHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1898, 2181122, 'PANCHAL NILAMBEN DIPAKBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1899, 2181123, 'PANCHASARA DEVAM NALINBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1900, 2181124, 'PARIKH JHANVI RUPESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1901, 2181125, 'PARMAR DEVANSHIBAHEN RAJESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1902, 2181126, 'PARMAR KINNARI ASHOKBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1903, 2181127, 'PARMAR NISHABEN ARVINDBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1904, 2181128, 'PARMAR PARTH GHUGHABHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1905, 2181129, 'PARMAR PRIYA SHAILESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1906, 2181130, 'PATEL AEMIBEN CHINTANKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1907, 2181131, 'PATEL DHAVAL NATAVARLAL', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1908, 2181132, 'PATEL KRENY DIPTESHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1909, 2181133, 'PATEL SHRUTI BIPINKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1910, 2181134, 'PATEL VISHWA SHANKARBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1911, 2181135, 'PATEL ZALAK DHARMENDRABHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1912, 2181136, 'PITHADIYA PRIYANKA ROHITBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1913, 2181137, 'PRAJAPATI ASHISH AJAYBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1914, 2181138, 'PRAJAPATI HARSIDHDHI BHARATBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1915, 2181139, 'PRAJAPATI RIYABEN HARISHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1916, 2181140, 'PRAJAPATI SUJAL RAHULKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1917, 2181141, 'PRAJAPATI URVASHIBEN PRAVINBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1918, 2181142, 'PRAJAPATI VAISHALI VANRAJBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1919, 2181143, 'PRATYUSH SRIVASTAVA', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1920, 2181144, 'RATHOD JALPA ASHOKBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1921, 2181145, 'RATHOD NIKULKUMAR SHANKARBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1922, 2181146, 'RAVAL DEVESH HITESHKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1923, 2181147, 'RAVAL DHRUVI RUSHIKESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1924, 2181148, 'RAVAL KAMIT HIMANSHUBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1925, 2181149, 'SANGHADIA PINAL JIGNESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1926, 2181150, 'SATHVARA RAJVI SUBHASHKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1927, 2181151, 'SHAH HENIL BHADRESHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1928, 2181152, 'SHAH JENISH HITESH', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1929, 2181153, 'SHAH KEVAL RAJESHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1930, 2181154, 'SHAH MUSKAN SHEETALKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1931, 2181155, 'SHAH PANAH TUSHAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1932, 2181156, 'SHAH PARSHWA PIYUSHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1933, 2181157, 'SHAH POOJA ASHWINKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1934, 2181158, 'SHAH RIYA ALPESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1935, 2181159, 'SHAH SHIKHA KAMALKUMAR', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1936, 2181160, 'SHAH SHUBHANK SHIRISHKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1937, 2181161, 'SHAIKH SALEHAPARVIN ZAKIRHUSAIN', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1938, 2181162, 'SOLANKI ARJUN PIYUSHBHAI', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1939, 2181163, 'SUTHAR MEET MANOJKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1940, 2181164, 'UMRANIYA HIRANG PARESHKUMAR', '', 0, '', 0, 0, 1, 'B', NULL, NULL),
(1941, 2181165, 'VAGHELA ANKITA GIRISHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1942, 2181166, 'VAGHELA JAHNAVI SANDIPBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1943, 2181167, 'VAGHELA NISHITA MUKESHBHAI', '', 1, '', 0, 0, 1, 'B', NULL, NULL),
(1944, 2181168, 'ADITYA NARAYAN', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1945, 2181169, 'ARYA DHARVI DHARMENDRABHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1946, 2181170, 'ASMANI DEEP VIPUL', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1947, 2181171, 'BABARIYA YASH VIPULBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1948, 2181172, 'BALIWALA AVESH MUNAFBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1949, 2181173, 'BANKER HETVI JITENDRAKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1950, 2181174, 'BHALANI JAY BHARATBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1951, 2181175, 'BHARVAD DHAVALKUMAR JAYANTIBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1952, 2181176, 'BHATT DISHA KAUSHIKKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1953, 2181177, 'CHAUHAN AJAYSINH DANSINH', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1954, 2181178, 'CHAUHAN PARTH BALVANTKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1955, 2181179, 'DABHI NEHA DHARMESHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1956, 2181180, 'DABHI SEEMABEN DAHYABHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1957, 2181181, 'DESAI ANKURKUMAR ISHWARBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1958, 2181182, 'DESAI VATSAL SHRENIKBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1959, 2181183, 'GAJJAR DHVANI BIRENBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1960, 2181184, 'GOHIL DHRUMIL HARISINH', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1961, 2181185, 'GOLWALA ZEEL ALPESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1962, 2181186, 'HIRPARA DRASHTI HASMUKHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1963, 2181187, 'JADEJA DHARMRAJSINH GHANSHYAMSINH', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1964, 2181188, 'JAIN SHERY NATHULAL', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1965, 2181189, 'KADIYA ABHISHEK KRISHNAKANT', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1966, 2181190, 'KALOLIYA PRIYANKABEN SUKHDEVBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1967, 2181191, 'KANSAGARA RAVI JASMEENBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1968, 2181192, 'KARENA HARDIK KANUBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1969, 2181193, 'KHATRI DARSHAN AJAYKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1970, 2181194, 'LAKHTARIYA BHUMI GUNVANTBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1971, 2181195, 'LAVANTRA PRAGNESH SURESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1972, 2181196, 'LIMBACHIYA DEEP KANUBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1973, 2181197, 'MEHTA VISHWAL MAHESHKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1974, 2181198, 'MISTRI GRESHA BHARATBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1975, 2181199, 'MISTRY ANJALI MITESHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1976, 2181200, 'MISTRY NIYATI NILESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1977, 2181201, 'NAYAK HETAKSHI RAJNIKANT', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1978, 2181202, 'PANCHAL NIRMAL ARVINDBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1979, 2181203, 'PANCHAL VATSAL KAUSHIKKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1980, 2181204, 'PAREKH SHAIL NIKUNJKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1981, 2181205, 'PARIKH DHAIRYA VIPUL', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1982, 2181206, 'PARMAR DARSHIL KESHAVBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1983, 2181207, 'PARMAR JIGAR KAMLESH', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1984, 2181208, 'PATADIYA PARTH PARESHKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1985, 2181209, 'PATEL DARSHIL AJITKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1986, 2181210, 'PATEL HANI JIGNESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1987, 2181211, 'PATEL HARSH ASHWINKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1988, 2181212, 'PATEL HELY RAJESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1989, 2181213, 'PATEL JAIVIK VINODBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1990, 2181214, 'PATEL JANVI GIRISHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1991, 2181215, 'PATEL MANSIBEN DIPAKBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1992, 2181216, 'PATEL MASUM ASHOKBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1993, 2181217, 'PATEL PRACHI HITESHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1994, 2181218, 'PATEL SHYAMAL JIGNESHKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1995, 2181219, 'PATIL DARSHAN YOGESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1996, 2181220, 'PIJKAR RICHARD PANKAJKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(1997, 2181221, 'PITHADIYA HINABEN PARASKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1998, 2181222, 'PRAJAPATI POOJABEN AMRUTBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(1999, 2181223, 'PRAJAPATI RINKUBEN LAXMANBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2000, 2181224, 'PRAJAPATI RONAK RAJESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2001, 2181225, 'PRAJAPATI VISHAL BHANVARLAL', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2002, 2181226, 'RAJBHARA UMANGI CHIRAGKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2003, 2181227, 'RAJPUT HARENDRA RAMPRAKASH', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2004, 2181228, 'RANA PRAGNESH KAUSHIKBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2005, 2181229, 'RATHOD DEVANSHU BIPINBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2006, 2181230, 'RATHOD MAHEK RITESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2007, 2181231, 'SAIYED NAMIRABANU IMTIYAZALI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2008, 2181232, 'SATVARA DRASHTI BHAVESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2009, 2181233, 'SHAH AANGI NALINKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2010, 2181234, 'SHAH DEVARSH PRAKASHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2011, 2181235, 'SHAH FENIL SUBHASHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2012, 2181236, 'SHAH MANUSHI ASHIKBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2013, 2181237, 'SHAH MISHEL TARUNKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2014, 2181238, 'SHAH SANJANA KAUSHALBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2015, 2181239, 'SHAH SHIVANI RAJESHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2016, 2181240, 'SHAH VISHWA SHRENIKBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2017, 2181241, 'SHAH YAKSH KAMALBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2018, 2181242, 'SHARMA SHUBHAM RAJESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2019, 2181243, 'SITAPARA DIPALI VINODKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2020, 2181244, 'TANK DHAVALKUMAR RAMESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2021, 2181245, 'THAKKER ANJALI KIRITBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2022, 2181246, 'THAKOR SUNILKUMAR KADVAJI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2023, 2181247, 'VAGHELA PRIYAL BHARATKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2024, 2181248, 'VAGHELA TARUNKUMAR MAVJIBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2025, 2181249, 'VARMA SARA RAJVIRSINH', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2026, 2181250, 'ZANZRUKIYA BHAUTIK DINESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2027, 2171251, 'CHAUHAN UPESHKUMAR GANAPATBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2028, 2171252, 'DEEPSHIKHA NARESHKUMAR SOLANKI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2029, 2171253, 'PARMAR SANKET KIRITBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2030, 2171254, 'SHINGH ANISHKUMAR VISHWAPRAKASH', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2031, 2171255, 'MAKWANA ANKITRAJ RAMESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2032, 2171256, 'PATEL DHRUVKUMAR SATISHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2033, 2171257, 'VAGHELA HETAL ASHOKBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2034, 2171258, 'CHAVDA SHREYANSHI MANISHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2035, 2171259, 'PARMAR KOMAL RANJITKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2036, 2171260, 'PATNI BHOOMIKA DILIPBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2037, 2171261, 'CHAUHAN RAHUL PARASBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2038, 2171262, 'BAROT HETVI MINESHKUMAR', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2039, 2171263, 'PANCHAL AKASH ASHOKBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2040, 2171264, 'SHAH HELI KALPESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2041, 2171265, 'MEHTA PANKTI RAKESH', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2042, 2171266, 'PANCHAL JAIVIK CHANDUBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2043, 2171267, 'PARMAR KHUSHBU KIRITBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2044, 2171268, 'PATEL PARTH BALKRUSHNA', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2045, 2171269, 'GADHAVI JAYDEEP RAJUBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2046, 2171270, 'KAVA MOHIT UPENDRABHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2047, 2171271, 'PARIKH RONAK MANOJKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2048, 2171272, 'PARMAR PRANAV RAMESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2049, 2171273, 'SOLANKI ROHIT DINESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2050, 2171274, 'YEMULWAR DHRUVIL RUPESH BHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2051, 2161275, 'BRAHMBHATT CHIRAG PIYUSHKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2052, 2141276, 'PARMAR KARAN LAXMANBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2053, 2161277, 'PARMAR PAVANKUMAR NATVARBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2054, 2171279, 'PATEL ARYA JAYESHBHAI', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2055, 2181280, 'PANSARA BANSI DINESHBHAI', '', 1, '', 0, 0, 1, 'C', NULL, NULL),
(2056, 2181281, 'PATEL DENIS RAJENDRAKUMAR', '', 0, '', 0, 0, 1, 'C', NULL, NULL),
(2057, 1181001, 'BARIYA RADHIKA MANSUKHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2058, 1181002, 'BAROT NEHA PRADIPKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2059, 1181003, 'CHAUHAN CHIRAG SAVALRAM', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2060, 1181004, 'CHAUHAN HARSHIT BHAVESHKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2061, 1181005, 'CHAVDA SNEHAL ASHWINBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2062, 1181006, 'CHAVDA ZALAK MANUBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2063, 1181007, 'CHHOTALA RUTVIK JASUBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2064, 1181008, 'DABHI CHIRAGBHAI BHAGVATBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2065, 1181009, 'DHADUK PRIYANSI GABHRU BHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2066, 1181010, 'DUDAKIYA JANAVI BHAVESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2067, 1181011, 'DUDANI DRASHTIBEN SHAILESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2068, 1181012, 'DUDHAT HARSHADKUMAR KHIMJIBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2069, 1181013, 'GAJJAR MANTHAN KAMLESHKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2070, 1181014, 'GOHIL SHRUTI KISHORBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2071, 1181015, 'GORANIYA HAJA KANA', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2072, 1181016, 'JADAV ARTI MERUBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2073, 1181017, 'JADAV KEYUR RAMESHBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2074, 1181018, 'JAIN JANVI SUKESHKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2075, 1181019, 'JOSHI SHIVANGI KRUTARTH', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2076, 1181020, 'KAKADIYA SHUBHAM ARVINDBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2077, 1181021, 'KATELIYA DISHA BHIKHUBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2078, 1181022, 'KORI MANSI ASHOKBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2079, 1181023, 'LODHA SUMIT SANJAYBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2080, 1181024, 'MAHERIYA URVASHI BHARATBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2081, 1181025, 'MAHESHKAR VISHWA BABANBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2082, 1181026, 'MAHOR RUPESHKUMAR AMRUTBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2083, 1181027, 'MEHTA PRIYA JITENDRABHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2084, 1181028, 'MEHTA TARAK ARVINDKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2085, 1181029, 'MEHTA YATRI RAKESH', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2086, 1181030, 'MODI CHIRAG NILESHKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2087, 1181031, 'MODI SHRAVAN HEMANTKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2088, 1181032, 'MODI VATSAL PRATIKKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2089, 1181033, 'NEERAJ KALAL', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2090, 1181034, 'PANCHAL HIMANI RAJESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2091, 1181035, 'PANCHAL SONAM PRAKASHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2092, 1181036, 'PARMAR ARPAN KANTILAL', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2093, 1181037, 'PATEL ADITI PRAFULKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2094, 1181038, 'PATEL JINAL PARESH', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2095, 1181039, 'PATEL KETUL JIGNESHKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2096, 1181040, 'PATEL MEET KETANBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2097, 1181041, 'PATEL RUCHI MAHESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2098, 1181042, 'PATEL RUTU VIJAYBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2099, 1181043, 'PATEL VAIBHAVKUMAR RAJNIKANT', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2100, 1181044, 'PATEL YASH NARESHBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2101, 1181045, 'PATHAK PAVANKUMAR ASHOKBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2102, 1181046, 'PATNI RAJESHKUMAR KISHANBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2103, 1181047, 'PRAJAPATI ASHISHKUMAR ALKESHBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2104, 1181048, 'PRAJAPATI MESHVA VIJAYKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2105, 1181049, 'PRAJAPATI NIKUNJ NATVARBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2106, 1181050, 'PRAJAPATI POOJA YOGESHKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2107, 1181051, 'PRAJAPATI SHILPABEN HIMMATLAL', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2108, 1181052, 'RAJPUT JAIMIN RAJUBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2109, 1181053, 'RATHOD HEMAL BIPINCHANDRA', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2110, 1181054, 'RATHOD VRINDA KALPESH', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2111, 1181055, 'SAHANI BITTUKUMAR MANOJKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2112, 1181056, 'SHAH DASVI ALPESH', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2113, 1181057, 'SHAH FORAM RAJESH', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2114, 1181058, 'SHAH HARSH MANOJBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2115, 1181059, 'SHAH HELI JIGNESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2116, 1181060, 'SHAH JIYABAHEN KAMLESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2117, 1181061, 'SHAH KRINA HITESHKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2118, 1181062, 'SHAH NIRIKSHA JATINKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2119, 1181063, 'SHAH POOJA PRAKASHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2120, 1181064, 'SHAH PREET DINESHCHANDRA', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2121, 1181065, 'SHAH RITIK RAKESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2122, 1181066, 'SHAH SHRUSHTI MAULIKBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2123, 1181067, 'SHAH UNNATI HITESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2124, 1181068, 'SHAH VRUSHALI VIPULKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2125, 1181069, 'SHETH PRIYANSHI RITULBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2126, 1181070, 'SOLANKI AYUSH LALJIBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2127, 1181071, 'SOLANKI DARPAN DEEPAKKUMAR', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2128, 1181072, 'SOLANKI DIPTIBEN PRAVINBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2129, 1181073, 'SOLANKI KARAN NARENDRABHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2130, 1181074, 'SOLANKI MIRAL ASHVINBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2131, 1181075, 'SONDARVA JINAL RAJESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2132, 1181076, 'SONI AYUSH HITESHBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2133, 1181077, 'SUHAGIYA VRUTIKA GORADHANBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2134, 1181078, 'SUVARIYA REENABEN VINODBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2135, 1181079, 'THAKKAR KHUSHI RAJESHBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2136, 1181080, 'THAKKAR YASH RAMESHBHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2137, 1181081, 'TRIVEDI BRUHATI BHASMANGKUMAR', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2138, 1181082, 'UMARETIYA MANSI MAHENDRABHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2139, 1181083, 'VAGHELA HIRAL KIRITBHAI', '', 1, '', 0, 1, 1, 'A', NULL, NULL),
(2140, 1181084, 'VANKER DARSHIL PUNJABHAI', '', 0, '', 0, 1, 1, 'A', NULL, NULL),
(2141, 1181085, 'ANAGHAN JALAY BHAGVANBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2142, 1181086, 'BAVALIYA RAKESH RAYSANGBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2143, 1181087, 'BELADIYA HEMANT NILESHBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2144, 1181088, 'BHARWAD ANJALI AMRATBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2145, 1181089, 'BHUVA DIVYABEN HASAMUKHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2146, 1181090, 'BRAHMANIYA ANKITAKUMARI HASMUKHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2147, 1181091, 'CHAUHAN CHINTANKUMAR LALAJIBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2148, 1181092, 'CHAUHAN DHRUVI JAGDISHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2149, 1181093, 'CHAUHAN HETAL BIPINBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2150, 1181094, 'DARJI RITIKA RAMESHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2151, 1181095, 'DAVE DHRUVI CHETAN', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2152, 1181096, 'DAVE MANUSHI PANKAJBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2153, 1181097, 'DESAI DRASHTI YOGESHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2154, 1181098, 'DIVYA KIRIT SHAH', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2155, 1181099, 'GAJJAR DEEP VIPULKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2156, 1181100, 'GAJJAR NIDHI ARVINDBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2157, 1181101, 'GOHEL SHELJA SATISHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2158, 1181102, 'HARDIK MALIYA', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2159, 1181103, 'JADAV RUTVIKBHAI ARVINDBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2160, 1181104, 'JETHWANI HIRAL BHAGWANDAS', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2161, 1181105, 'KACHHADIYA SAURAV NARENDRABHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2162, 1181106, 'KATHERIYA PRIYANKA DINESHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2163, 1181107, 'KUMAVAT RAHULKUMAR BHAVARLAL', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2164, 1181108, 'LODHA UTSAV PIYUSHKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2165, 1181109, 'MAKWANA PRIYANKA MANSUKH', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2166, 1181110, 'MAVANI NIDHIBEN KESHAVBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2167, 1181111, 'MODI PRIYANKA YOGESHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2168, 1181112, 'MUNDHVA RIYA GIRISHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2169, 1181113, 'MURABIYA DIP VIJAYBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2170, 1181114, 'PANCHAL MEET VIRALKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2171, 1181115, 'PANCHAL RUCHITA BHARATBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2172, 1181116, 'PARMAR AAYUSH MEHULBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2173, 1181117, 'PARMAR LEELAMBEN RAMESHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2174, 1181118, 'PARMAR RAHUL BALDEVBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2175, 1181119, 'PATEL AANCHAL PRASHANTKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2176, 1181120, 'PATEL DHRUVIBEN VIJAYKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2177, 1181121, 'PATEL DRASHTI MANOJKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2178, 1181122, 'PATEL HARSH KANAIYALAL', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2179, 1181123, 'PATHAN MAHINBANU AYAKHAN', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2180, 1181124, 'PATWA TANVI SATISHCHANDRA', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2181, 1181125, 'PRAJAPATI DARSHAN PRAVINKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2182, 1181126, 'PRAJAPATI DEVANSHI MUKESHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2183, 1181127, 'PRAJAPATI JANVI RAJENDRAKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2184, 1181128, 'PRAJAPATI SHIV JAGDISHKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2185, 1181129, 'PRAJAPATI UTKARSH RAMESHKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2186, 1181130, 'PRANAV RAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2187, 1181131, 'PUNCH CHANDNI AMARBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2188, 1181132, 'RAJBHAR ABHISHEK SHRIRAM', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2189, 1181133, 'RANGWALA FATEMA MUSTUFA', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2190, 1181134, 'RASANIA AAYUSH DHARMENDRABHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2191, 1181135, 'RATHOD AVINASH RAJESHBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2192, 1181136, 'RATHOD DARSHAN KISHORBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2193, 1181137, 'RAVAL JANKI SHAILESHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2194, 1181138, 'SANGHVI YASH HIRABHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2195, 1181139, 'SAPARIYA MEET ASHWINBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2196, 1181140, 'SARVALIYA ZEEL NARANBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2197, 1181141, 'SHAH DEV RUPESHKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2198, 1181142, 'SHAH DEVANSHI ANILBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2199, 1181143, 'SHAH DHARA KAMLESHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2200, 1181144, 'SHAH HARSHIL MAHESHKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2201, 1181145, 'SHAH JEEL UMANGBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2202, 1181146, 'SHAH KARAN JITENDRABHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2203, 1181147, 'SHAH MAUNI ALPESHKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2204, 1181148, 'SHAH NEHALI JIGENBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2205, 1181149, 'SHAH NENCY JAGDISHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2206, 1181150, 'SHAH POOJAN ATUL', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2207, 1181151, 'SHAH PRIYANSHI VIJAYKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2208, 1181152, 'SHAH VIHAR ALKESHKUMAR', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2209, 1181153, 'SHARMA SANJAY RAMGOPAL', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2210, 1181154, 'SHRIMALI RAHUL HASMUKHBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2211, 1181155, 'SOLANKI DIVYA RAMESHCHANDRA', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2212, 1181156, 'SOLANKI KOMAL MAHENDRA', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2213, 1181157, 'SOLANKI RANJANABEN PANKAJBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2214, 1181158, 'SOLANKI ROHITKUMAR KANTIBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2215, 1181159, 'THAKKAR ISHA BHARATBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2216, 1181160, 'THAKKAR YESHA JAYESH', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2217, 1181161, 'VAGHADIYA ABHISHEK KAUSHIKBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2218, 1181162, 'VAGHELA GHANSHYAM BHARATBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2219, 1181163, 'VAGHELA KARAN VINODBHAI', '', 0, '', 0, 1, 1, 'B', NULL, NULL),
(2220, 1181164, 'VAGHELA URVASHI MANSUKHBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2221, 1181165, 'VANIYA NIKEETABEN MAGANBHAI', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2222, 1181166, 'VIRANI ISHITA HEMANTKUMAR', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2223, 1181167, 'VYAS RUTVA JANAK', '', 1, '', 0, 1, 1, 'B', NULL, NULL),
(2224, 1181168, 'AMIPARA HIMANI BHAVESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2225, 1181169, 'BAROT SHUKAN DASHARATHBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2226, 1181170, 'BAROT SNEHALBEN DASHRATHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2227, 1181171, 'BATUL DIVYA RAJESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2228, 1181172, 'BHATI HARSH GAUTAMBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2229, 1181173, 'BHATT DEVANSHI ANIRUDDHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2230, 1181174, 'BHAVSAR YASH RAJESHKUMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2231, 1181175, 'BHIL NIKITA KANAIYALAL', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2232, 1181176, 'CHAUHAN JANVI KETANBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2233, 1181177, 'CHAUHAN KRUNAL BHARATBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2234, 1181178, 'CHAUHAN PRITI RAMESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2235, 1181179, 'CHAVDA ISHITABEN NARESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2236, 1181180, 'DABHI PIYUSH DAHYABHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2237, 1181181, 'DARJI HIRAL CHETANKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2238, 1181182, 'DARJI JINAL CHANDUBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2239, 1181183, 'DARJI KAMLESH LALABHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2240, 1181184, 'DHORAJIYA DIVYESH VALJIBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2241, 1181185, 'DOSHI MRUGA PARASBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2242, 1181186, 'GANATRA HIMANSHI MANSUKHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2243, 1181187, 'GOHEL DIPAL JAGDISHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2244, 1181188, 'PARIKH HET KALPESHKUMAR ', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2245, 1181189, 'HUNDANI MANAN MANOJKUMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2246, 1181190, 'JADAV KEYUR RAMESHCHANDRA', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2247, 1181191, 'JAIN ABHISHEK UTTAM', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2248, 1181192, 'JAKHAD MANISH KANHAIYALAL', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2249, 1181193, 'KADIA DEVANSHI KETANKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2250, 1181194, 'KARMUR MILAN DEVASHIBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2251, 1181195, 'KOMAL MUKESH KUMAR PARMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2252, 1181196, 'MADA ANJALI CHANDRASHEKHAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2253, 1181197, 'MADHAWANI DEVANSHI GHANSHYAMBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2254, 1181198, 'MAKWANA JIGAR KIRITBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2255, 1181199, 'MANSI VINCHHI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2256, 1181200, 'MEHTA MANSI DHIRENKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2257, 1181201, 'NANDANIYA HITESH JAGABHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2258, 1181202, 'DESAI NIRAV MAHESHBHAI ', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2259, 1181203, 'NISHTHA SRIVASTAVA', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2260, 1181204, 'PANCHAL NIRAV MAHESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2261, 1181205, 'PANCHAL RIYA DINESHKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2262, 1181206, 'PANCHAL SEJAL BHARATBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2263, 1181207, 'PANCHAL VIDHI CHANDRAKANT', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2264, 1181208, 'PARMAR DEVANSHI ARVIND', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2265, 1181209, 'PARMAR DIVY VIPULBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2266, 1181210, 'PARMAR HARSH SURESHBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2267, 1181211, 'PARMAR VIDHIBEN MAHENDRABHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2268, 1181212, 'PATEL ANUJ JITENDRA', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2269, 1181213, 'PATEL HAPPY MANISHKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2270, 1181214, 'PATEL HARSH PARESHKUMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2271, 1181215, 'PATEL KHUSHAL SHAILESHBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2272, 1181216, 'PRAJAPATI DIPIKABEN RAMESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2273, 1181217, 'PRAJAPATI VISHESH GOPALBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2274, 1181218, 'RAMI JEEL DHARMENDRAKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2275, 1181219, 'RAO ANIKETKUMAR JITENDRABHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2276, 1181220, 'RATHOD PRADIPBHAI HIRALAL', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2277, 1181221, 'SAKARIA FREYA VIRENDRAKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2278, 1181222, 'SAVALIYA AXITA BABUBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2279, 1181223, 'SHAH CHARMY KETANBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2280, 1181224, 'SHAH DIVYESH DHARMESHKUMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2281, 1181225, 'SHAH HELI MEHULKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2282, 1181226, 'SHAH HETKUMAR BHARATBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2283, 1181227, 'SHAH ISHA DHARMESH', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2284, 1181228, 'SHAH JAINEE UMANGBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2285, 1181229, 'SHAH NIDHI AAKESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2286, 1181230, 'SHAH RIYA DEVEN', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2287, 1181231, 'SHAH STUTI SHITALKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2288, 1181232, 'SHAH SUHANI VIRALBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2289, 1181233, 'SHARMA HIMALI LAXMIKANT', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2290, 1181234, 'SHUKLA RUDRA NILESH', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2291, 1181235, 'SIDDHPURA KUSHAL CHETANBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2292, 1181236, 'SOLANKI DHRUV ISHWARBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2293, 1181237, 'SOLANKI RIDDHI SHAILESHKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2294, 1181238, 'SOLANKI VIDHI RAJESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2295, 1181239, 'SONI JAY MITESHKUMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2296, 1181240, 'SURYAVANSHI JUHI PRATAP', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2297, 1181241, 'SUTHAR TANVI SANJAYBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2298, 1181242, 'TAVIYAD HARSHA JAGADISHCHANDRA', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2299, 1181243, 'THAKKAR CHINMAY PRAFULBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2300, 1181244, 'THAKOR AAYUSHEE PRADIPKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2301, 1181245, 'THAKOR ADARSH AMARSINH', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2302, 1181246, 'TRIVEDI HELI DEVANGKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2303, 1181247, 'VAGHELA RAKESH VIJAYBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2304, 1181248, 'VORA MANSI BHAVESHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2305, 1181249, 'VYAS RIDDHI PRAFUL', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2306, 1181250, 'WADHWANI SHIVANGI KAMLESH', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2307, 1171251, 'BOSMIYA RAJVI ARVINDBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2308, 1171252, 'CHAUHAN AMIT GHANSHYAMBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2309, 1171253, 'DARJI SALONI GOVINDBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2310, 1171254, 'DEVMORARI AAKRUTI KIRITKUMAR', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2311, 1171255, 'HANS AVINASH RAJUBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2312, 1171256, 'KAKADIYA GAGAN RAMESHBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2313, 1171257, 'KAPADIYA FEMINA HIMMAT BHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2314, 1171258, 'KAPADIYA RAVI VASHRAMBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2315, 1171259, 'MAKWANA AKSHAY AMARDAS', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2316, 1171260, 'MAKWANA SHWETABEN HARISHBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2317, 1171261, 'MANAN AGARWAL', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2318, 1171262, 'METIYA RUTVIKKUMAR SURAJKUMAR', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2319, 1171263, 'PANDYA JIGARBHAI MAHESHBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2320, 1171264, 'PARMAR NIRALI PANKAJBHAI', '', 1, '', 0, 1, 1, 'C', NULL, NULL),
(2321, 1171265, 'RATHOD MAYURKUMAR VAJUBHAI', '', 0, '', 0, 1, 1, 'C', NULL, NULL),
(2322, 1171266, 'SOLANKI URAVSHI SURYAKANT', '', 1, '', 0, 1, 1, 'C', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `usub_id` int(4) NOT NULL,
  `sub_id` varchar(25) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `special` varchar(20) NOT NULL,
  `sub_type` tinyint(1) NOT NULL,
  `sem_no` int(2) NOT NULL,
  `c_id` int(2) NOT NULL,
  `ufac_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`usub_id`, `sub_id`, `sub_name`, `special`, `sub_type`, `sem_no`, `c_id`, `ufac_id`) VALUES
(1, 'FOP', 'Fundamentals of Programming', '', 1, 1, 0, 1),
(2, 'FCO', 'Fundamental of Computer Organization', '', 1, 1, 0, 8),
(3, 'MC', 'Mathematical Concept', '', 1, 1, 0, 13),
(4, 'CS', 'Communications Skills', '', 1, 1, 0, 13),
(5, 'DBMS', 'Database Management System Concepts', '', 1, 1, 0, 10),
(6, 'C[prac]', 'Implimentation of C', '', 1, 1, 0, 21),
(7, 'IOA[prac]', 'Implimentation of Office Application', '', 1, 1, 0, 25),
(8, 'FM', 'Fundamental of Management', '', 2, 1, 0, 47),
(9, 'FAM', 'Financial Accounting and Management', '', 2, 1, 0, 11),
(10, 'MAGT', 'Matrix Algebra and Graph Theory', '', 2, 2, 0, 49),
(11, 'DBMS SQL/PLSQL', 'Database Management System using SQL/PLSQL', '', 1, 2, 0, 17),
(12, 'CC', 'Comertial Communication', '', 1, 2, 0, 40),
(13, 'ACP', 'Advance C Programming', '', 1, 2, 0, 16),
(14, 'SQL/PLSQL[prac]', 'Implemantation of SQL/PLSQL', '', 1, 2, 0, 44),
(15, 'ACP[prac]', 'Implementation of C Programing', '', 1, 2, 0, 9),
(16, 'MM[prac]', 'Multimedia', '', 1, 2, 0, 39),
(17, 'ES', 'Environmental Studies', '', 2, 2, 0, 15),
(18, 'TL', 'Taxation Laws', '', 2, 2, 0, 18),
(19, 'COSM', 'Computer Oriented Stastical Method', '', 1, 3, 0, 25),
(20, 'OS', 'Concepts of Operating System', '', 1, 3, 0, 8),
(21, 'OOP', 'Object Oriented Programming with C++', '', 1, 3, 0, 2),
(22, 'DS', 'Data Structures', '', 1, 3, 0, 47),
(23, 'DM', 'Discrete Mathematics', '', 1, 3, 0, 1),
(24, 'C++[prac]', 'Implementation of C++', '', 1, 3, 0, 25),
(25, 'DS[prac]', 'Implementation Of Data Structure', '', 1, 3, 0, 3),
(26, 'FE', 'Fundamental of Economics', '', 2, 3, 0, 7),
(27, 'SSD', 'Soft Skill Develpoment', '', 2, 3, 0, 2),
(28, 'CONM', 'Computer Oriented Numerical Method', '', 1, 4, 0, 2),
(29, 'OST', 'Open Souce Technology', '', 1, 4, 0, 1),
(30, 'SAD', 'System Analysis, Design and Modeling', '', 1, 4, 0, 1),
(31, 'CSA', 'Client Server Architecture', '', 1, 4, 0, 1),
(32, 'OST[prac]', 'Implementation of OST', '', 1, 4, 0, 1),
(33, 'WT[prac]', 'Web Technology', '', 1, 4, 0, 1),
(34, 'CSA[prac]', 'Implemantation of CSA', '', 1, 4, 0, 1),
(35, 'IH', 'Introduction to Humanities', '', 2, 4, 0, 1),
(36, 'BC', 'Business Communications', '', 2, 4, 0, 1),
(37, 'SE', 'Software Engineering', '', 1, 5, 0, 1),
(38, 'CG', 'Computer Graphics', '', 1, 5, 0, 1),
(39, 'Core JAVA', 'Core JAVA', '', 1, 5, 0, 1),
(40, 'CG[prac]', 'Implementation of CG', '', 1, 5, 0, 1),
(41, 'Core JAVA[prac]', 'Implementation of Core JAVA', '', 1, 5, 0, 1),
(42, 'CLIP', 'Cyber Law and Intelletual Property', '', 1, 5, 0, 1),
(43, 'TC', 'Technical Communication', '', 1, 5, 0, 1),
(44, 'DCN', 'Data Communication and Networking', '', 1, 6, 0, 1),
(45, 'SS', 'System Software', '', 1, 6, 0, 1),
(46, 'RM', 'Research Methodology', '', 1, 6, 0, 1),
(47, 'ECOM', 'E-coommerce and E-governance', '', 1, 6, 0, 1),
(48, 'DCN[prac]', 'Implemantation of DCN', '', 1, 6, 0, 1),
(49, 'SS[prac]', 'Implemantation of SS', '', 1, 6, 0, 1),
(50, 'Advance JAVA[prac]', 'Advance JAVA', '1', 1, 6, 0, 1),
(51, 'PHP[prac]', 'Hypertext Preprocessor', '1', 2, 6, 0, 1),
(52, 'ASP. Net[prac]', 'ASP . Net', '1', 2, 6, 0, 1),
(53, 'RM', 'Research Methodology', '', 2, 6, 0, 20),
(54, 'OR', 'Operations Research', '', 1, 7, 0, 4),
(55, 'AI', 'Artificial Intellegence', '', 1, 7, 0, 1),
(56, 'AN', 'Advance Networking', '', 1, 7, 0, 1),
(57, 'SPM', 'Software Project Management & Testing', '', 1, 7, 0, 1),
(58, 'ERP', 'Enterprise Resource Planning', '', 1, 7, 0, 10),
(59, 'ADBMS', 'Advance Database Systems', '', 1, 7, 0, 19),
(60, 'ES', 'Entrpreunership Skills', '', 2, 7, 0, 25),
(61, 'QT', 'Quantitative Techniques', '', 1, 8, 0, 9),
(62, 'MC', 'Mobile Communication', '', 1, 8, 0, 35),
(63, 'SC', 'Soft Computing', '', 1, 8, 0, 31),
(64, 'MIS', 'Management Information System', '', 1, 8, 0, 35),
(65, 'DWDM', 'Data Warehousing & Data Mining', '', 1, 8, 0, 36),
(66, 'IS', 'Information Security', '', 1, 8, 0, 39),
(67, 'Mcom', 'Mass Communication', '', 2, 8, 0, 40),
(68, 'GIS', 'Geographical Information System', '', 1, 9, 0, 45),
(69, 'Crypto', 'Cryptography', '', 1, 9, 0, 47),
(70, 'IA', 'Internet Applications', '', 1, 9, 0, 46),
(71, 'DOS', 'Distributed Operating System', '', 1, 9, 0, 36),
(72, 'DC', 'Data Compression', '', 1, 9, 0, 32),
(73, 'IP', 'Image Processing', '', 1, 9, 0, 31),
(74, 'NA', 'Network Administration', '', 2, 9, 0, 37),
(75, 'BM1', 'Business Management 1', '', 1, 1, 1, 7),
(76, 'FFA', 'Fundamental Of Financial Accounting', '', 1, 1, 1, 6),
(77, 'BS', 'Basic Statistics', '', 1, 1, 1, 4),
(78, 'FCE', 'Foundation Course in Economics', '', 1, 1, 1, 3),
(79, 'CS', 'Communication Skills', '', 1, 1, 1, 2),
(80, 'IIT', 'Introduction to Information Technology', '', 1, 1, 1, 2),
(81, 'LL', 'Learning from Leaders', '', 2, 1, 1, 2),
(82, 'ICC', 'Indian Culture & Civilization', '', 2, 1, 1, 11),
(83, 'BM2', 'Business Management 2', '', 1, 2, 1, 11),
(84, 'FCA', 'Fundamentals of Cost Accounting', '', 1, 2, 1, 8),
(86, 'BM', 'Basic Mathematics', '', 1, 2, 1, 19),
(87, 'ECE', 'Elementary Course in Economics', '', 1, 2, 1, 10),
(88, 'CC', 'Commercial Communication', '', 1, 7, 1, 15),
(89, 'GSI', 'Growth & Structure of Industries', '', 1, 2, 1, 6),
(90, 'SM', 'Stress Management', '', 2, 2, 1, 11),
(91, 'ES', 'Environmental Studies', '', 2, 2, 1, 6),
(92, 'IMM', 'Introduction to Marketing Management', '', 1, 3, 1, 6),
(93, 'AFA1', 'Advance Financial Accounting 1', '', 1, 3, 1, 4),
(94, 'BM', 'Business Mathematics', '', 1, 3, 1, 12),
(95, 'MET', 'Micro Economics-Theory', '', 1, 3, 1, 22),
(96, 'SSD', 'Soft Skill Development', '', 1, 3, 1, 18),
(97, 'DT1', 'Direct Taxes 1', '', 1, 3, 1, 23),
(98, 'H1', 'Humanities 1', '', 2, 3, 1, 4),
(99, 'IRM', 'Introduction to Research Methodology', '', 2, 3, 1, 3),
(100, 'FFM', 'Fundamentals of Financial Management', '', 1, 4, 1, 8),
(101, 'AFA2', 'Advance Financial Accounting 2', '', 1, 4, 1, 26),
(102, 'BS', 'Business Statistics', '', 1, 4, 1, 29),
(103, 'FM', 'Firms & Markets', '', 1, 4, 1, 23),
(104, 'BC', 'Business Communication', '', 1, 4, 1, 25),
(105, 'DT2', 'Direct Taxes 2', '', 1, 4, 1, 21),
(106, 'H2', 'Humanities 2', '', 2, 4, 1, 16),
(107, 'IST', 'Introduction to science & Technology', '', 2, 4, 1, 7),
(108, 'OBPM', 'Organization Behaviour & Personnel Management', '', 1, 5, 1, 13),
(109, 'FAR', 'Financial Analysis & Reporting', '', 1, 5, 1, 32),
(110, 'QT', 'Quantitative Techniques', '', 1, 5, 1, 36),
(111, 'ME', 'Macro Economics', '', 1, 5, 1, 4),
(112, 'CC', 'Corporate Communication', '', 1, 5, 1, 3),
(113, 'FM1', 'Financial Management 1', '', 2, 5, 1, 16),
(114, 'MM1', 'Marketing Management - Theory & Practice 1', '', 2, 5, 1, 47),
(115, 'HRM1', 'Human Resource Management 1', '', 2, 5, 1, 45),
(116, 'ERPM', 'Industrial Relations & Production Management', '', 1, 6, 1, 26),
(117, 'CMA', 'Cost & Management Accounting', '', 1, 6, 1, 15),
(118, 'OR', 'Operations Research', '', 1, 6, 1, 25),
(119, 'PFMB', 'Public Finance, Money & Banking', '', 1, 6, 1, 26),
(120, 'BE', 'Business English', '', 1, 6, 1, 24),
(121, 'BE', 'Business Ethics', '', 2, 6, 1, 13),
(122, 'WG', 'World Geography', '', 2, 6, 1, 9),
(123, 'PPM', 'Principles & Practices of Management', '', 1, 7, 1, 21),
(124, 'QTM1', 'Quantitative Techniques for Management 1', '', 1, 7, 1, 14),
(125, 'OB', 'Organizational Behaviour', '', 1, 7, 1, 23),
(126, 'ME', 'Managerial Economics', '', 1, 7, 1, 16),
(127, 'MIS', 'Management Informat on System', '', 1, 7, 1, 26),
(128, 'FAM', 'Financial Accounting for Management', '', 1, 7, 1, 25),
(129, 'MC', 'Managerial Communication', '', 1, 7, 1, 21),
(130, 'EEV', 'Ethics, Ethos & Values', '', 1, 7, 1, 12),
(131, 'QTM2', 'Quantitative Techniques for Management 2', '', 1, 8, 1, 23),
(132, 'AMM', 'Advance Marketing Management', '', 1, 8, 1, 45),
(133, 'HRD', 'Human Resource Development', '', 1, 8, 1, 16),
(134, 'ACMA', 'Advanced Cost & Management Accounting', '', 1, 8, 1, 4),
(135, 'POM', 'Production & Operations Management', '', 1, 8, 1, 9),
(136, 'IBE', 'Indian Business Environment', '', 1, 8, 1, 9),
(137, 'AFM', 'Advanced Financial Management', '', 1, 8, 1, 9),
(138, 'BRM', 'Business Research Methodology', '', 1, 8, 1, 9),
(139, 'SM', 'Strategic Management', '', 1, 9, 1, 9),
(140, 'LAB', 'Legal Aspects of Business', '', 1, 9, 1, 8),
(141, 'EDIM', 'Entrepreneurial Development & Innovation Management', '', 1, 9, 1, 8),
(142, 'CSER', 'Corporate Social & Environmental Responsibility', '', 1, 9, 1, 9),
(143, 'MCS', 'Management Control System', '', 1, 10, 1, 19),
(144, 'IB', 'International Business', '', 1, 10, 1, 45),
(145, 'BT', 'Business & Technilogy', '', 1, 10, 1, 8),
(146, 'HR', 'HR', '1', 1, 9, 1, 0),
(147, 'Marketing', 'Marketing', '1', 1, 9, 1, 0),
(148, 'Finance', 'Finance', '1', 1, 9, 1, 0),
(149, 'HR', 'HR', '1', 1, 10, 1, 0),
(150, 'Marketing', 'Marketing', '1', 1, 10, 1, 0),
(151, 'Finance', 'Finance', '1', 1, 10, 1, 0),
(152, 'Python', 'Python', '1', 1, 6, 0, 30),
(153, 'Ruby', 'Ruby', '1', 1, 6, 0, 43),
(158, 'en', 'kne', '', 1, 1, 1, 0),
(159, 'xyz', 'xyx', '1', 1, 10, 0, 3),
(161, 'abc', 'abc', '', 1, 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subject1`
--

CREATE TABLE `subject1` (
  `uesub_id` int(4) NOT NULL,
  `usub_id` int(4) NOT NULL,
  `sub_id` varchar(25) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `sem_no` int(2) NOT NULL,
  `ufac_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject1`
--

INSERT INTO `subject1` (`uesub_id`, `usub_id`, `sub_id`, `sub_name`, `sem_no`, `ufac_id`) VALUES
(1, 147, 'MR', 'Marketing Research', 9, 45),
(2, 147, 'ASP', 'Advertising & Sales Promotion', 9, 4),
(3, 147, 'CB', 'Consumer Behaviour', 9, 1),
(4, 147, 'SDM', 'Sales & Distribution Management', 9, 1),
(5, 150, 'IMM', 'International Marketing Management', 10, 12),
(6, 150, 'SM', 'Service Marketing', 10, 8),
(7, 150, 'RM', 'Retail Management', 10, 15),
(8, 150, 'SCIM', 'Seminar & Contemporary Issues in Marketing', 10, 4),
(9, 151, 'WCM', 'Working Capital management', 10, 9),
(10, 148, 'MFS', 'Management of Financial Services', 9, 9),
(11, 148, 'IAPM', 'Investment Analysis & Portfolio Management', 9, 15),
(12, 148, 'SFM', 'Strategic Financial Management', 9, 1),
(13, 151, 'MACR', 'Mergers, Acquisitions & Corporate Restructure', 10, 16),
(14, 148, 'CT', 'Corporate Taxation', 9, 1),
(15, 151, 'FD', 'Financial Derivatives', 10, 1),
(16, 151, 'IFM', 'International Financial Management', 10, 19),
(17, 146, 'ODCM', 'Organizational Development & Change Management', 9, 9),
(18, 146, 'CM', 'Compensation Management', 9, 25),
(19, 146, 'IRLL', 'Industrial Relations & Labour Lows', 9, 23),
(20, 146, 'IHRM', 'International Human Resources Management', 9, 2),
(21, 149, 'LIO', 'Leadership in Organizations', 10, 1),
(22, 149, 'SHRM', 'Strategic Human Resource Management', 10, 19),
(23, 149, 'PM', 'Performance Management', 10, 1),
(24, 149, 'SCIHR', 'Seminar & Contemporary Issues in HR', 10, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`ac_year_id`);

--
-- Indexes for table `attendance_mba_sem1`
--
ALTER TABLE `attendance_mba_sem1`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`),
  ADD KEY `s_enrl_2` (`s_enrl`),
  ADD KEY `usub_id_2` (`usub_id`);

--
-- Indexes for table `attendance_mba_sem2`
--
ALTER TABLE `attendance_mba_sem2`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem3`
--
ALTER TABLE `attendance_mba_sem3`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem4`
--
ALTER TABLE `attendance_mba_sem4`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem5`
--
ALTER TABLE `attendance_mba_sem5`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem6`
--
ALTER TABLE `attendance_mba_sem6`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem7`
--
ALTER TABLE `attendance_mba_sem7`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem8`
--
ALTER TABLE `attendance_mba_sem8`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem9`
--
ALTER TABLE `attendance_mba_sem9`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem9_ele`
--
ALTER TABLE `attendance_mba_sem9_ele`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`uesub_id`),
  ADD KEY `date_2` (`date`),
  ADD KEY `s_enrl_2` (`s_enrl`),
  ADD KEY `usub_id_2` (`uesub_id`),
  ADD KEY `date_3` (`date`,`s_enrl`,`uesub_id`);

--
-- Indexes for table `attendance_mba_sem10`
--
ALTER TABLE `attendance_mba_sem10`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_mba_sem10_ele`
--
ALTER TABLE `attendance_mba_sem10_ele`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`uesub_id`),
  ADD KEY `date_2` (`date`),
  ADD KEY `s_enrl_2` (`s_enrl`),
  ADD KEY `usub_id_2` (`uesub_id`);

--
-- Indexes for table `attendance_msc_sem1`
--
ALTER TABLE `attendance_msc_sem1`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

--
-- Indexes for table `attendance_msc_sem2`
--
ALTER TABLE `attendance_msc_sem2`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`),
  ADD KEY `date_3` (`date`,`s_enrl`,`usub_id`);

--
-- Indexes for table `attendance_msc_sem3`
--
ALTER TABLE `attendance_msc_sem3`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `attendance_msc_sem4`
--
ALTER TABLE `attendance_msc_sem4`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `attendance_msc_sem5`
--
ALTER TABLE `attendance_msc_sem5`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `attendance_msc_sem6`
--
ALTER TABLE `attendance_msc_sem6`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `attendance_msc_sem7`
--
ALTER TABLE `attendance_msc_sem7`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `attendance_msc_sem8`
--
ALTER TABLE `attendance_msc_sem8`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `attendance_msc_sem9`
--
ALTER TABLE `attendance_msc_sem9`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`,`s_enrl`,`usub_id`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`date`),
  ADD KEY `ac_year_id` (`ac_year_id`),
  ADD KEY `ac_year_id_2` (`ac_year_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`ufac_id`);

--
-- Indexes for table `schedule_msc_sem1_diva`
--
ALTER TABLE `schedule_msc_sem1_diva`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `sem_year`
--
ALTER TABLE `sem_year`
  ADD PRIMARY KEY (`sem_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_enrl`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `c_id_2` (`c_id`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `sem` (`sem`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`usub_id`),
  ADD KEY `sem_no` (`sem_no`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `subject1`
--
ALTER TABLE `subject1`
  ADD PRIMARY KEY (`uesub_id`),
  ADD KEY `sem_no` (`sem_no`),
  ADD KEY `usub_id` (`sem_no`,`ufac_id`),
  ADD KEY `usub_id_2` (`usub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `ac_year_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attendance_mba_sem1`
--
ALTER TABLE `attendance_mba_sem1`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `attendance_mba_sem2`
--
ALTER TABLE `attendance_mba_sem2`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem3`
--
ALTER TABLE `attendance_mba_sem3`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem4`
--
ALTER TABLE `attendance_mba_sem4`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem5`
--
ALTER TABLE `attendance_mba_sem5`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem6`
--
ALTER TABLE `attendance_mba_sem6`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem7`
--
ALTER TABLE `attendance_mba_sem7`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem8`
--
ALTER TABLE `attendance_mba_sem8`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem9`
--
ALTER TABLE `attendance_mba_sem9`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem9_ele`
--
ALTER TABLE `attendance_mba_sem9_ele`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem10`
--
ALTER TABLE `attendance_mba_sem10`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem10_ele`
--
ALTER TABLE `attendance_mba_sem10_ele`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_msc_sem1`
--
ALTER TABLE `attendance_msc_sem1`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `attendance_msc_sem2`
--
ALTER TABLE `attendance_msc_sem2`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_msc_sem3`
--
ALTER TABLE `attendance_msc_sem3`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `attendance_msc_sem4`
--
ALTER TABLE `attendance_msc_sem4`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_msc_sem5`
--
ALTER TABLE `attendance_msc_sem5`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `attendance_msc_sem6`
--
ALTER TABLE `attendance_msc_sem6`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_msc_sem7`
--
ALTER TABLE `attendance_msc_sem7`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_msc_sem8`
--
ALTER TABLE `attendance_msc_sem8`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_msc_sem9`
--
ALTER TABLE `attendance_msc_sem9`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `ufac_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_enrl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2323;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `usub_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `subject1`
--
ALTER TABLE `subject1`
  MODIFY `uesub_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_mba_sem1`
--
ALTER TABLE `attendance_mba_sem1`
  ADD CONSTRAINT `attendance_mba_sem1_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem1_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem1_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem2`
--
ALTER TABLE `attendance_mba_sem2`
  ADD CONSTRAINT `attendance_mba_sem2_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem2_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem2_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem3`
--
ALTER TABLE `attendance_mba_sem3`
  ADD CONSTRAINT `attendance_mba_sem3_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem3_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem3_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem4`
--
ALTER TABLE `attendance_mba_sem4`
  ADD CONSTRAINT `attendance_mba_sem4_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem4_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem4_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem5`
--
ALTER TABLE `attendance_mba_sem5`
  ADD CONSTRAINT `attendance_mba_sem5_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem5_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem5_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem6`
--
ALTER TABLE `attendance_mba_sem6`
  ADD CONSTRAINT `attendance_mba_sem6_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem6_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem6_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem7`
--
ALTER TABLE `attendance_mba_sem7`
  ADD CONSTRAINT `attendance_mba_sem7_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem7_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem7_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem8`
--
ALTER TABLE `attendance_mba_sem8`
  ADD CONSTRAINT `attendance_mba_sem8_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem8_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem8_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem9`
--
ALTER TABLE `attendance_mba_sem9`
  ADD CONSTRAINT `attendance_mba_sem9_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem9_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem9_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem9_ele`
--
ALTER TABLE `attendance_mba_sem9_ele`
  ADD CONSTRAINT `attendance_mba_sem9_ele_ibfk_1` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem9_ele_ibfk_2` FOREIGN KEY (`uesub_id`) REFERENCES `subject1` (`uesub_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem9_ele_ibfk_3` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem10`
--
ALTER TABLE `attendance_mba_sem10`
  ADD CONSTRAINT `attendance_mba_sem10_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem10_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem10_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem10_ele`
--
ALTER TABLE `attendance_mba_sem10_ele`
  ADD CONSTRAINT `attendance_mba_sem10_ele_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem10_ele_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem10_ele_ibfk_3` FOREIGN KEY (`uesub_id`) REFERENCES `subject1` (`uesub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem1`
--
ALTER TABLE `attendance_msc_sem1`
  ADD CONSTRAINT `attendance_msc_sem1_ibfk_1` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem1_ibfk_2` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem1_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem2`
--
ALTER TABLE `attendance_msc_sem2`
  ADD CONSTRAINT `attendance_msc_sem2_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem2_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem2_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem3`
--
ALTER TABLE `attendance_msc_sem3`
  ADD CONSTRAINT `attendance_msc_sem3_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem3_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem3_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem4`
--
ALTER TABLE `attendance_msc_sem4`
  ADD CONSTRAINT `attendance_msc_sem4_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem4_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem4_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem5`
--
ALTER TABLE `attendance_msc_sem5`
  ADD CONSTRAINT `attendance_msc_sem5_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem5_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem5_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem6`
--
ALTER TABLE `attendance_msc_sem6`
  ADD CONSTRAINT `attendance_msc_sem6_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem6_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem6_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem7`
--
ALTER TABLE `attendance_msc_sem7`
  ADD CONSTRAINT `attendance_msc_sem7_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem7_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem7_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem8`
--
ALTER TABLE `attendance_msc_sem8`
  ADD CONSTRAINT `attendance_msc_sem8_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem8_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem8_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem9`
--
ALTER TABLE `attendance_msc_sem9`
  ADD CONSTRAINT `attendance_msc_sem9_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem9_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem9_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `days`
--
ALTER TABLE `days`
  ADD CONSTRAINT `days_ibfk_1` FOREIGN KEY (`ac_year_id`) REFERENCES `academic_year` (`ac_year_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`sem`) REFERENCES `sem_year` (`sem_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`batch_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `subject1`
--
ALTER TABLE `subject1`
  ADD CONSTRAINT `subject1_ibfk_1` FOREIGN KEY (`sem_no`) REFERENCES `sem_year` (`sem_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject1_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
