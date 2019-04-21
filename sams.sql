-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2018 at 12:25 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(28, '2018-19');

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
(1, '2018-06-13', 111115, 75, 1),
(2, '2018-06-13', 111116, 75, 0),
(3, '2018-06-13', 111117, 75, 1),
(4, '2018-06-13', 111118, 75, 0),
(5, '2018-06-13', 123456, 75, 1),
(6, '2018-06-14', 111113, 75, 1);

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
(1, '2018-06-20', 2, 1, 0),
(2, '2018-06-20', 3, 1, 1),
(3, '2018-06-20', 4, 1, 0),
(4, '2018-06-20', 5, 1, 1),
(5, '2018-06-20', 6, 1, 0),
(6, '2018-06-20', 7, 1, 1),
(7, '2018-06-20', 8, 1, 0),
(8, '2018-06-20', 9, 1, 1),
(9, '2018-06-20', 10, 1, 0),
(10, '2018-06-20', 11, 1, 1),
(11, '2018-06-20', 12, 1, 0),
(12, '2018-06-20', 12, 1, 0),
(13, '2018-06-20', 12, 1, 0),
(14, '2018-06-20', 13, 1, 1),
(15, '2018-06-20', 14, 1, 0),
(16, '2018-06-20', 15, 1, 1),
(17, '2018-06-20', 16, 1, 0),
(18, '2018-06-20', 17, 1, 1),
(19, '2018-06-20', 18, 1, 1),
(20, '2018-06-20', 19, 1, 1),
(21, '2018-06-20', 20, 1, 1),
(22, '2018-06-20', 21, 1, 1),
(23, '2018-06-20', 22, 1, 0),
(24, '2018-06-20', 23, 1, 0),
(25, '2018-06-20', 24, 1, 0),
(26, '2018-06-20', 25, 1, 0),
(27, '2018-06-20', 26, 1, 0),
(28, '2018-06-20', 27, 1, 0),
(29, '2018-06-20', 28, 1, 0),
(30, '2018-06-20', 29, 1, 0),
(31, '2018-06-20', 30, 1, 0),
(32, '2018-06-20', 31, 1, 0),
(33, '2018-06-20', 2, 2, 0),
(34, '2018-06-20', 3, 2, 1),
(35, '2018-06-20', 4, 2, 1),
(36, '2018-06-20', 5, 2, 0),
(37, '2018-06-20', 6, 2, 1),
(38, '2018-06-20', 7, 2, 1),
(39, '2018-06-20', 8, 2, 0),
(40, '2018-06-20', 9, 2, 1),
(41, '2018-06-20', 10, 2, 1),
(42, '2018-06-20', 11, 2, 0),
(43, '2018-06-20', 2, 3, 1),
(44, '2018-06-20', 3, 3, 1),
(45, '2018-06-20', 4, 3, 0),
(46, '2018-06-20', 5, 3, 1),
(47, '2018-06-20', 6, 3, 1),
(48, '2018-06-20', 7, 3, 0),
(49, '2018-06-20', 8, 3, 1),
(50, '2018-06-20', 9, 3, 1),
(51, '2018-06-20', 10, 3, 1),
(52, '2018-06-20', 11, 3, 0),
(53, '2018-06-01', 2, 1, 1),
(54, '2018-06-01', 3, 1, 1),
(55, '2018-06-01', 4, 1, 0),
(56, '2018-06-01', 5, 1, 1),
(57, '2018-06-01', 6, 1, 0),
(58, '2018-06-01', 7, 1, 0),
(59, '2018-06-01', 8, 1, 1),
(60, '2018-06-01', 9, 1, 1),
(61, '2018-06-01', 10, 1, 0),
(62, '2018-06-01', 11, 1, 1),
(63, '2018-06-01', 2, 4, 1),
(64, '2018-06-01', 3, 4, 0),
(65, '2018-06-01', 4, 4, 0),
(66, '2018-06-01', 5, 4, 0),
(67, '2018-06-01', 6, 4, 1),
(68, '2018-06-01', 7, 4, 0),
(69, '2018-06-01', 8, 4, 0),
(70, '2018-06-01', 9, 4, 1),
(71, '2018-06-01', 10, 4, 0),
(72, '2018-06-01', 11, 4, 0),
(73, '2018-06-02', 2, 4, 1),
(74, '2018-06-02', 3, 4, 1),
(75, '2018-06-02', 4, 4, 1),
(76, '2018-06-02', 5, 4, 1),
(77, '2018-06-02', 6, 4, 1),
(78, '2018-06-02', 7, 4, 1),
(79, '2018-06-02', 8, 4, 1),
(80, '2018-06-02', 9, 4, 1),
(81, '2018-06-02', 10, 4, 1),
(82, '2018-06-02', 11, 4, 1),
(83, '2018-06-02', 2, 8, 0),
(84, '2018-06-02', 3, 8, 0),
(85, '2018-06-02', 4, 8, 0),
(86, '2018-06-02', 5, 8, 0),
(87, '2018-06-02', 6, 8, 0),
(88, '2018-06-02', 7, 8, 0),
(89, '2018-06-02', 8, 8, 0),
(90, '2018-06-02', 9, 8, 0),
(91, '2018-06-02', 10, 8, 0),
(92, '2018-06-02', 11, 8, 0),
(93, '2018-06-03', 2, 9, 1),
(94, '2018-06-03', 3, 9, 1),
(95, '2018-06-03', 4, 9, 1),
(96, '2018-06-03', 5, 9, 1),
(97, '2018-06-03', 6, 9, 1),
(98, '2018-06-03', 7, 9, 1),
(99, '2018-06-03', 8, 9, 1),
(100, '2018-06-03', 9, 9, 1),
(101, '2018-06-03', 10, 9, 1),
(102, '2018-06-03', 11, 9, 1),
(103, '2018-06-04', 2, 9, 1),
(104, '2018-06-04', 3, 9, 1),
(105, '2018-06-04', 4, 9, 1),
(106, '2018-06-04', 5, 9, 1),
(107, '2018-06-04', 6, 9, 1),
(108, '2018-06-04', 7, 9, 1),
(109, '2018-06-04', 8, 9, 1),
(110, '2018-06-04', 9, 9, 1),
(111, '2018-06-04', 10, 9, 1),
(112, '2018-06-04', 11, 9, 1),
(113, '2018-06-04', 2, 7, 0),
(114, '2018-06-04', 3, 7, 0),
(115, '2018-06-04', 4, 7, 0),
(116, '2018-06-04', 5, 7, 0),
(117, '2018-06-04', 6, 7, 0),
(118, '2018-06-04', 7, 7, 0),
(119, '2018-06-04', 8, 7, 0),
(120, '2018-06-04', 9, 7, 0),
(121, '2018-06-04', 10, 7, 0),
(122, '2018-06-04', 11, 7, 0),
(123, '2018-06-05', 2, 2, 0),
(124, '2018-06-05', 3, 2, 0),
(125, '2018-06-05', 4, 2, 0),
(126, '2018-06-05', 5, 2, 0),
(127, '2018-06-05', 6, 2, 0),
(128, '2018-06-05', 7, 2, 0),
(129, '2018-06-05', 8, 2, 0),
(130, '2018-06-05', 9, 2, 0),
(131, '2018-06-05', 10, 2, 0),
(132, '2018-06-05', 11, 2, 0),
(133, '2018-06-06', 2, 1, 1),
(134, '2018-06-06', 3, 1, 1),
(135, '2018-06-06', 4, 1, 1),
(136, '2018-06-06', 5, 1, 1),
(137, '2018-06-06', 6, 1, 1),
(138, '2018-06-06', 7, 1, 1),
(139, '2018-06-06', 8, 1, 1),
(140, '2018-06-06', 9, 1, 1),
(141, '2018-06-06', 10, 1, 1),
(142, '2018-06-06', 11, 1, 1),
(143, '2018-06-06', 2, 2, 1),
(144, '2018-06-06', 3, 2, 1),
(145, '2018-06-06', 4, 2, 1),
(146, '2018-06-06', 5, 2, 1),
(147, '2018-06-06', 6, 2, 1),
(148, '2018-06-06', 7, 2, 1),
(149, '2018-06-06', 8, 2, 1),
(150, '2018-06-06', 9, 2, 1),
(151, '2018-06-06', 10, 2, 1),
(152, '2018-06-06', 11, 2, 1),
(163, '2018-06-06', 2, 3, 1),
(164, '2018-06-06', 3, 3, 1),
(165, '2018-06-06', 4, 3, 1),
(166, '2018-06-06', 5, 3, 1),
(167, '2018-06-06', 6, 3, 1),
(168, '2018-06-06', 7, 3, 1),
(169, '2018-06-06', 8, 3, 1),
(170, '2018-06-06', 9, 3, 1),
(171, '2018-06-06', 10, 3, 1),
(172, '2018-06-06', 11, 3, 1),
(173, '2018-06-07', 2, 4, 1),
(174, '2018-06-07', 3, 4, 1),
(175, '2018-06-07', 4, 4, 1),
(176, '2018-06-07', 5, 4, 1),
(177, '2018-06-07', 6, 4, 1),
(178, '2018-06-07', 7, 4, 1),
(179, '2018-06-07', 8, 4, 1),
(180, '2018-06-07', 9, 4, 1),
(181, '2018-06-07', 10, 4, 1),
(182, '2018-06-07', 11, 4, 1),
(183, '2018-06-07', 2, 5, 0),
(184, '2018-06-07', 3, 5, 0),
(185, '2018-06-07', 4, 5, 0),
(186, '2018-06-07', 5, 5, 0),
(187, '2018-06-07', 6, 5, 0),
(188, '2018-06-07', 7, 5, 0),
(189, '2018-06-07', 8, 5, 0),
(190, '2018-06-07', 9, 5, 0),
(191, '2018-06-07', 10, 5, 0),
(192, '2018-06-07', 11, 5, 0),
(193, '2018-06-07', 2, 6, 1),
(194, '2018-06-07', 3, 6, 1),
(195, '2018-06-07', 4, 6, 1),
(196, '2018-06-07', 5, 6, 1),
(197, '2018-06-07', 6, 6, 1),
(198, '2018-06-07', 7, 6, 1),
(199, '2018-06-07', 8, 6, 1),
(200, '2018-06-07', 9, 6, 1),
(201, '2018-06-07', 10, 6, 1),
(202, '2018-06-07', 11, 6, 1),
(203, '2018-06-20', 32, 1, 1),
(204, '2018-06-20', 33, 1, 1),
(205, '2018-06-20', 34, 1, 1),
(206, '2018-06-20', 35, 1, 1),
(207, '2018-06-20', 36, 1, 0),
(208, '2018-06-20', 37, 1, 0),
(209, '2018-06-20', 38, 1, 1),
(210, '2018-06-20', 39, 1, 0),
(211, '2018-06-20', 40, 1, 0),
(212, '2018-06-20', 41, 1, 1),
(213, '2018-06-20', 32, 1, 0),
(214, '2018-06-20', 33, 1, 1),
(215, '2018-06-20', 34, 1, 0),
(216, '2018-06-20', 35, 1, 1),
(217, '2018-06-20', 36, 1, 1),
(218, '2018-06-20', 37, 1, 1),
(219, '2018-06-20', 38, 1, 1),
(220, '2018-06-20', 39, 1, 1),
(221, '2018-06-20', 40, 1, 1),
(222, '2018-06-20', 41, 1, 1),
(223, '2018-06-20', 32, 1, 1),
(224, '2018-06-20', 33, 1, 1),
(225, '2018-06-20', 34, 1, 1),
(226, '2018-06-20', 35, 1, 1),
(227, '2018-06-20', 36, 1, 1),
(228, '2018-06-20', 37, 1, 1),
(229, '2018-06-20', 38, 1, 1),
(230, '2018-06-20', 39, 1, 0),
(231, '2018-06-20', 40, 1, 1),
(232, '2018-06-20', 41, 1, 1),
(233, '2018-06-20', 32, 1, 0),
(234, '2018-06-20', 33, 1, 0),
(235, '2018-06-20', 34, 1, 0),
(236, '2018-06-20', 35, 1, 0),
(237, '2018-06-20', 36, 1, 0),
(238, '2018-06-20', 37, 1, 0),
(239, '2018-06-20', 38, 1, 0),
(240, '2018-06-20', 39, 1, 0),
(241, '2018-06-20', 40, 1, 0),
(242, '2018-06-20', 41, 1, 0),
(243, '2018-06-20', 32, 1, 1),
(244, '2018-06-20', 33, 1, 1),
(245, '2018-06-20', 34, 1, 1),
(246, '2018-06-20', 35, 1, 1),
(247, '2018-06-20', 36, 1, 1),
(248, '2018-06-20', 37, 1, 1),
(249, '2018-06-20', 38, 1, 1),
(250, '2018-06-20', 39, 1, 1),
(251, '2018-06-20', 40, 1, 1),
(252, '2018-06-20', 41, 1, 1),
(253, '2018-06-20', 32, 1, 1),
(254, '2018-06-20', 33, 1, 1),
(255, '2018-06-20', 34, 1, 1),
(256, '2018-06-20', 35, 1, 1),
(257, '2018-06-20', 36, 1, 1),
(258, '2018-06-20', 37, 1, 1),
(259, '2018-06-20', 38, 1, 1),
(260, '2018-06-20', 39, 1, 1),
(261, '2018-06-20', 40, 1, 1),
(262, '2018-06-20', 41, 1, 1),
(263, '2018-06-20', 42, 1, 0),
(264, '2018-06-20', 43, 1, 0),
(265, '2018-06-20', 44, 1, 0),
(266, '2018-06-20', 45, 1, 0),
(267, '2018-06-20', 46, 1, 0),
(268, '2018-06-20', 47, 1, 0),
(269, '2018-06-20', 48, 1, 0),
(270, '2018-06-20', 49, 1, 0),
(271, '2018-06-20', 50, 1, 0),
(272, '2018-06-20', 51, 1, 0),
(273, '2018-06-20', 62, 1, 1),
(274, '2018-06-20', 63, 1, 1),
(275, '2018-06-20', 64, 1, 1),
(276, '2018-06-20', 65, 1, 1),
(277, '2018-06-20', 66, 1, 1),
(278, '2018-06-20', 67, 1, 1),
(279, '2018-06-20', 68, 1, 1),
(280, '2018-06-20', 69, 1, 1),
(281, '2018-06-20', 70, 1, 1),
(282, '2018-06-20', 71, 1, 1),
(283, '2018-06-20', 32, 1, 0),
(284, '2018-06-20', 33, 1, 1),
(285, '2018-06-20', 34, 1, 1),
(286, '2018-06-20', 35, 1, 0),
(287, '2018-06-20', 36, 1, 1),
(288, '2018-06-20', 37, 1, 1),
(289, '2018-06-20', 38, 1, 0),
(290, '2018-06-20', 39, 1, 1),
(291, '2018-06-20', 40, 1, 1),
(292, '2018-06-20', 41, 1, 0),
(293, '2018-06-20', 82, 1, 0),
(294, '2018-06-20', 83, 1, 0),
(295, '2018-06-20', 84, 1, 0),
(296, '2018-06-20', 85, 1, 0),
(297, '2018-06-20', 86, 1, 0),
(298, '2018-06-20', 87, 1, 0),
(299, '2018-06-20', 88, 1, 0),
(300, '2018-06-20', 89, 1, 0),
(301, '2018-06-20', 90, 1, 0),
(302, '2018-06-20', 91, 1, 0);

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
('2018-01-01', 0, 'Mon', 28),
('2018-01-02', 0, 'Tue', 28),
('2018-01-03', 0, 'Wed', 28),
('2018-01-04', 0, 'Thu', 28),
('2018-01-05', 0, 'Fri', 28),
('2018-01-06', 0, 'Sat', 28),
('2018-01-07', 1, 'Sun', 28),
('2018-01-08', 0, 'Mon', 28),
('2018-01-09', 0, 'Tue', 28),
('2018-01-10', 0, 'Wed', 28),
('2018-01-11', 0, 'Thu', 28),
('2018-01-12', 0, 'Fri', 28),
('2018-01-13', 0, 'Sat', 28),
('2018-01-14', 1, 'Sun', 28),
('2018-01-15', 0, 'Mon', 28),
('2018-01-16', 0, 'Tue', 28),
('2018-01-17', 0, 'Wed', 28),
('2018-01-18', 0, 'Thu', 28),
('2018-01-19', 0, 'Fri', 28),
('2018-01-20', 0, 'Sat', 28),
('2018-01-21', 1, 'Sun', 28),
('2018-01-22', 0, 'Mon', 28),
('2018-01-23', 0, 'Tue', 28),
('2018-01-24', 0, 'Wed', 28),
('2018-01-25', 0, 'Thu', 28),
('2018-01-26', 1, 'Fri', 28),
('2018-01-27', 0, 'Sat', 28),
('2018-01-28', 1, 'Sun', 28),
('2018-01-29', 0, 'Mon', 28),
('2018-01-30', 0, 'Tue', 28),
('2018-01-31', 0, 'Wed', 28),
('2018-02-01', 0, 'Thu', 28),
('2018-02-02', 0, 'Fri', 28),
('2018-02-03', 0, 'Sat', 28),
('2018-02-04', 1, 'Sun', 28),
('2018-02-05', 0, 'Mon', 28),
('2018-02-06', 0, 'Tue', 28),
('2018-02-07', 0, 'Wed', 28),
('2018-02-08', 0, 'Thu', 28),
('2018-02-09', 0, 'Fri', 28),
('2018-02-10', 0, 'Sat', 28),
('2018-02-11', 1, 'Sun', 28),
('2018-02-12', 0, 'Mon', 28),
('2018-02-13', 0, 'Tue', 28),
('2018-02-14', 0, 'Wed', 28),
('2018-02-15', 0, 'Thu', 28),
('2018-02-16', 0, 'Fri', 28),
('2018-02-17', 0, 'Sat', 28),
('2018-02-18', 1, 'Sun', 28),
('2018-02-19', 0, 'Mon', 28),
('2018-02-20', 0, 'Tue', 28),
('2018-02-21', 0, 'Wed', 28),
('2018-02-22', 0, 'Thu', 28),
('2018-02-23', 0, 'Fri', 28),
('2018-02-24', 0, 'Sat', 28),
('2018-02-25', 1, 'Sun', 28),
('2018-02-26', 0, 'Mon', 28),
('2018-02-27', 0, 'Tue', 28),
('2018-02-28', 0, 'Wed', 28),
('2018-03-01', 0, 'Thu', 28),
('2018-03-02', 0, 'Fri', 28),
('2018-03-03', 0, 'Sat', 28),
('2018-03-04', 1, 'Sun', 28),
('2018-03-05', 0, 'Mon', 28),
('2018-03-06', 0, 'Tue', 28),
('2018-03-07', 0, 'Wed', 28),
('2018-03-08', 0, 'Thu', 28),
('2018-03-09', 0, 'Fri', 28),
('2018-03-10', 0, 'Sat', 28),
('2018-03-11', 1, 'Sun', 28),
('2018-03-12', 0, 'Mon', 28),
('2018-03-13', 0, 'Tue', 28),
('2018-03-14', 0, 'Wed', 28),
('2018-03-15', 0, 'Thu', 28),
('2018-03-16', 0, 'Fri', 28),
('2018-03-17', 0, 'Sat', 28),
('2018-03-18', 1, 'Sun', 28),
('2018-03-19', 0, 'Mon', 28),
('2018-03-20', 0, 'Tue', 28),
('2018-03-21', 0, 'Wed', 28),
('2018-03-22', 0, 'Thu', 28),
('2018-03-23', 0, 'Fri', 28),
('2018-03-24', 0, 'Sat', 28),
('2018-03-25', 1, 'Sun', 28),
('2018-03-26', 0, 'Mon', 28),
('2018-03-27', 0, 'Tue', 28),
('2018-03-28', 0, 'Wed', 28),
('2018-03-29', 0, 'Thu', 28),
('2018-03-30', 0, 'Fri', 28),
('2018-03-31', 0, 'Sat', 28),
('2018-04-01', 1, 'Sun', 28),
('2018-04-02', 0, 'Mon', 28),
('2018-04-03', 0, 'Tue', 28),
('2018-04-04', 0, 'Wed', 28),
('2018-04-05', 0, 'Thu', 28),
('2018-04-06', 0, 'Fri', 28),
('2018-04-07', 0, 'Sat', 28),
('2018-04-08', 1, 'Sun', 28),
('2018-04-09', 0, 'Mon', 28),
('2018-04-10', 0, 'Tue', 28),
('2018-04-11', 0, 'Wed', 28),
('2018-04-12', 0, 'Thu', 28),
('2018-04-13', 0, 'Fri', 28),
('2018-04-14', 0, 'Sat', 28),
('2018-04-15', 1, 'Sun', 28),
('2018-04-16', 0, 'Mon', 28),
('2018-04-17', 0, 'Tue', 28),
('2018-04-18', 0, 'Wed', 28),
('2018-04-19', 0, 'Thu', 28),
('2018-04-20', 0, 'Fri', 28),
('2018-04-21', 0, 'Sat', 28),
('2018-04-22', 1, 'Sun', 28),
('2018-04-23', 0, 'Mon', 28),
('2018-04-24', 0, 'Tue', 28),
('2018-04-25', 0, 'Wed', 28),
('2018-04-26', 0, 'Thu', 28),
('2018-04-27', 0, 'Fri', 28),
('2018-04-28', 0, 'Sat', 28),
('2018-04-29', 1, 'Sun', 28),
('2018-04-30', 0, 'Mon', 28),
('2018-05-01', 0, 'Tue', 28),
('2018-05-02', 0, 'Wed', 28),
('2018-05-03', 0, 'Thu', 28),
('2018-05-04', 0, 'Fri', 28),
('2018-05-05', 0, 'Sat', 28),
('2018-05-06', 1, 'Sun', 28),
('2018-05-07', 0, 'Mon', 28),
('2018-05-08', 0, 'Tue', 28),
('2018-05-09', 0, 'Wed', 28),
('2018-05-10', 0, 'Thu', 28),
('2018-05-11', 0, 'Fri', 28),
('2018-05-12', 0, 'Sat', 28),
('2018-05-13', 1, 'Sun', 28),
('2018-05-14', 0, 'Mon', 28),
('2018-05-15', 0, 'Tue', 28),
('2018-05-16', 0, 'Wed', 28),
('2018-05-17', 0, 'Thu', 28),
('2018-05-18', 0, 'Fri', 28),
('2018-05-19', 0, 'Sat', 28),
('2018-05-20', 1, 'Sun', 28),
('2018-05-21', 0, 'Mon', 28),
('2018-05-22', 0, 'Tue', 28),
('2018-05-23', 0, 'Wed', 28),
('2018-05-24', 0, 'Thu', 28),
('2018-05-25', 0, 'Fri', 28),
('2018-05-26', 0, 'Sat', 28),
('2018-05-27', 1, 'Sun', 28),
('2018-05-28', 0, 'Mon', 28),
('2018-05-29', 0, 'Tue', 28),
('2018-05-30', 0, 'Wed', 28),
('2018-05-31', 0, 'Thu', 28),
('2018-06-01', 0, 'Fri', 28),
('2018-06-02', 0, 'Sat', 28),
('2018-06-03', 1, 'Sun', 28),
('2018-06-04', 0, 'Mon', 28),
('2018-06-05', 0, 'Tue', 28),
('2018-06-06', 0, 'Wed', 28),
('2018-06-07', 0, 'Thu', 28),
('2018-06-08', 0, 'Fri', 28),
('2018-06-09', 0, 'Sat', 28),
('2018-06-10', 1, 'Sun', 28),
('2018-06-11', 0, 'Mon', 28),
('2018-06-12', 0, 'Tue', 28),
('2018-06-13', 0, 'Wed', 28),
('2018-06-14', 0, 'Thu', 28),
('2018-06-15', 0, 'Fri', 28),
('2018-06-16', 0, 'Sat', 28),
('2018-06-17', 1, 'Sun', 28),
('2018-06-18', 0, 'Mon', 28),
('2018-06-19', 0, 'Tue', 28),
('2018-06-20', 0, 'Wed', 28),
('2018-06-21', 0, 'Thu', 28),
('2018-06-22', 0, 'Fri', 28),
('2018-06-23', 0, 'Sat', 28),
('2018-06-24', 1, 'Sun', 28),
('2018-06-25', 0, 'Mon', 28),
('2018-06-26', 0, 'Tue', 28),
('2018-06-27', 0, 'Wed', 28),
('2018-06-28', 0, 'Thu', 28),
('2018-06-29', 0, 'Fri', 28),
('2018-06-30', 0, 'Sat', 28),
('2018-07-01', 1, 'Sun', 28),
('2018-07-02', 0, 'Mon', 28),
('2018-07-03', 0, 'Tue', 28),
('2018-07-04', 0, 'Wed', 28),
('2018-07-05', 0, 'Thu', 28),
('2018-07-06', 0, 'Fri', 28),
('2018-07-07', 0, 'Sat', 28),
('2018-07-08', 1, 'Sun', 28),
('2018-07-09', 0, 'Mon', 28),
('2018-07-10', 0, 'Tue', 28),
('2018-07-11', 0, 'Wed', 28),
('2018-07-12', 0, 'Thu', 28),
('2018-07-13', 0, 'Fri', 28),
('2018-07-14', 0, 'Sat', 28),
('2018-07-15', 1, 'Sun', 28),
('2018-07-16', 0, 'Mon', 28),
('2018-07-17', 0, 'Tue', 28),
('2018-07-18', 0, 'Wed', 28),
('2018-07-19', 0, 'Thu', 28),
('2018-07-20', 0, 'Fri', 28),
('2018-07-21', 0, 'Sat', 28),
('2018-07-22', 1, 'Sun', 28),
('2018-07-23', 0, 'Mon', 28),
('2018-07-24', 0, 'Tue', 28),
('2018-07-25', 0, 'Wed', 28),
('2018-07-26', 0, 'Thu', 28),
('2018-07-27', 0, 'Fri', 28),
('2018-07-28', 0, 'Sat', 28),
('2018-07-29', 1, 'Sun', 28),
('2018-07-30', 0, 'Mon', 28),
('2018-07-31', 0, 'Tue', 28),
('2018-08-01', 0, 'Wed', 28),
('2018-08-02', 0, 'Thu', 28),
('2018-08-03', 0, 'Fri', 28),
('2018-08-04', 0, 'Sat', 28),
('2018-08-05', 1, 'Sun', 28),
('2018-08-06', 0, 'Mon', 28),
('2018-08-07', 0, 'Tue', 28),
('2018-08-08', 0, 'Wed', 28),
('2018-08-09', 0, 'Thu', 28),
('2018-08-10', 0, 'Fri', 28),
('2018-08-11', 0, 'Sat', 28),
('2018-08-12', 1, 'Sun', 28),
('2018-08-13', 0, 'Mon', 28),
('2018-08-14', 0, 'Tue', 28),
('2018-08-15', 1, 'Wed', 28),
('2018-08-16', 0, 'Thu', 28),
('2018-08-17', 0, 'Fri', 28),
('2018-08-18', 0, 'Sat', 28),
('2018-08-19', 1, 'Sun', 28),
('2018-08-20', 0, 'Mon', 28),
('2018-08-21', 0, 'Tue', 28),
('2018-08-22', 0, 'Wed', 28),
('2018-08-23', 0, 'Thu', 28),
('2018-08-24', 0, 'Fri', 28),
('2018-08-25', 0, 'Sat', 28),
('2018-08-26', 1, 'Sun', 28),
('2018-08-27', 0, 'Mon', 28),
('2018-08-28', 0, 'Tue', 28),
('2018-08-29', 0, 'Wed', 28),
('2018-08-30', 0, 'Thu', 28),
('2018-08-31', 0, 'Fri', 28),
('2018-09-01', 0, 'Sat', 28),
('2018-09-02', 1, 'Sun', 28),
('2018-09-03', 0, 'Mon', 28),
('2018-09-04', 0, 'Tue', 28),
('2018-09-05', 0, 'Wed', 28),
('2018-09-06', 0, 'Thu', 28),
('2018-09-07', 0, 'Fri', 28),
('2018-09-08', 0, 'Sat', 28),
('2018-09-09', 1, 'Sun', 28),
('2018-09-10', 0, 'Mon', 28),
('2018-09-11', 0, 'Tue', 28),
('2018-09-12', 0, 'Wed', 28),
('2018-09-13', 0, 'Thu', 28),
('2018-09-14', 0, 'Fri', 28),
('2018-09-15', 0, 'Sat', 28),
('2018-09-16', 1, 'Sun', 28),
('2018-09-17', 0, 'Mon', 28),
('2018-09-18', 0, 'Tue', 28),
('2018-09-19', 0, 'Wed', 28),
('2018-09-20', 0, 'Thu', 28),
('2018-09-21', 0, 'Fri', 28),
('2018-09-22', 0, 'Sat', 28),
('2018-09-23', 1, 'Sun', 28),
('2018-09-24', 0, 'Mon', 28),
('2018-09-25', 0, 'Tue', 28),
('2018-09-26', 0, 'Wed', 28),
('2018-09-27', 1, 'Thu', 28),
('2018-09-28', 0, 'Fri', 28),
('2018-09-29', 0, 'Sat', 28),
('2018-09-30', 1, 'Sun', 28),
('2018-10-01', 0, 'Mon', 28),
('2018-10-02', 1, 'Tue', 28),
('2018-10-03', 0, 'Wed', 28),
('2018-10-04', 0, 'Thu', 28),
('2018-10-05', 0, 'Fri', 28),
('2018-10-06', 0, 'Sat', 28),
('2018-10-07', 1, 'Sun', 28),
('2018-10-08', 0, 'Mon', 28),
('2018-10-09', 0, 'Tue', 28),
('2018-10-10', 0, 'Wed', 28),
('2018-10-11', 0, 'Thu', 28),
('2018-10-12', 0, 'Fri', 28),
('2018-10-13', 0, 'Sat', 28),
('2018-10-14', 1, 'Sun', 28),
('2018-10-15', 0, 'Mon', 28),
('2018-10-16', 0, 'Tue', 28),
('2018-10-17', 0, 'Wed', 28),
('2018-10-18', 0, 'Thu', 28),
('2018-10-19', 0, 'Fri', 28),
('2018-10-20', 0, 'Sat', 28),
('2018-10-21', 1, 'Sun', 28),
('2018-10-22', 0, 'Mon', 28),
('2018-10-23', 0, 'Tue', 28),
('2018-10-24', 0, 'Wed', 28),
('2018-10-25', 0, 'Thu', 28),
('2018-10-26', 0, 'Fri', 28),
('2018-10-27', 0, 'Sat', 28),
('2018-10-28', 1, 'Sun', 28),
('2018-10-29', 0, 'Mon', 28),
('2018-10-30', 0, 'Tue', 28),
('2018-10-31', 0, 'Wed', 28),
('2018-11-01', 0, 'Thu', 28),
('2018-11-02', 0, 'Fri', 28),
('2018-11-03', 0, 'Sat', 28),
('2018-11-04', 1, 'Sun', 28),
('2018-11-05', 0, 'Mon', 28),
('2018-11-06', 0, 'Tue', 28),
('2018-11-07', 0, 'Wed', 28),
('2018-11-08', 0, 'Thu', 28),
('2018-11-09', 0, 'Fri', 28),
('2018-11-10', 0, 'Sat', 28),
('2018-11-11', 1, 'Sun', 28),
('2018-11-12', 0, 'Mon', 28),
('2018-11-13', 0, 'Tue', 28),
('2018-11-14', 0, 'Wed', 28),
('2018-11-15', 0, 'Thu', 28),
('2018-11-16', 0, 'Fri', 28),
('2018-11-17', 0, 'Sat', 28),
('2018-11-18', 1, 'Sun', 28),
('2018-11-19', 0, 'Mon', 28),
('2018-11-20', 0, 'Tue', 28),
('2018-11-21', 0, 'Wed', 28),
('2018-11-22', 0, 'Thu', 28),
('2018-11-23', 0, 'Fri', 28),
('2018-11-24', 0, 'Sat', 28),
('2018-11-25', 1, 'Sun', 28),
('2018-11-26', 0, 'Mon', 28),
('2018-11-27', 0, 'Tue', 28),
('2018-11-28', 0, 'Wed', 28),
('2018-11-29', 0, 'Thu', 28),
('2018-11-30', 0, 'Fri', 28),
('2018-12-01', 0, 'Sat', 28),
('2018-12-02', 1, 'Sun', 28),
('2018-12-03', 0, 'Mon', 28),
('2018-12-04', 0, 'Tue', 28),
('2018-12-05', 0, 'Wed', 28),
('2018-12-06', 0, 'Thu', 28),
('2018-12-07', 0, 'Fri', 28),
('2018-12-08', 0, 'Sat', 28),
('2018-12-09', 1, 'Sun', 28),
('2018-12-10', 0, 'Mon', 28),
('2018-12-11', 0, 'Tue', 28),
('2018-12-12', 0, 'Wed', 28),
('2018-12-13', 0, 'Thu', 28),
('2018-12-14', 0, 'Fri', 28),
('2018-12-15', 0, 'Sat', 28),
('2018-12-16', 1, 'Sun', 28),
('2018-12-17', 0, 'Mon', 28),
('2018-12-18', 0, 'Tue', 28),
('2018-12-19', 0, 'Wed', 28),
('2018-12-20', 0, 'Thu', 28),
('2018-12-21', 0, 'Fri', 28),
('2018-12-22', 0, 'Sat', 28),
('2018-12-23', 1, 'Sun', 28),
('2018-12-24', 0, 'Mon', 28),
('2018-12-25', 1, 'Tue', 28),
('2018-12-26', 0, 'Wed', 28),
('2018-12-27', 0, 'Thu', 28),
('2018-12-28', 0, 'Fri', 28),
('2018-12-29', 0, 'Sat', 28),
('2018-12-30', 1, 'Sun', 28),
('2018-12-31', 0, 'Mon', 28);

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
(1, 'CR', 'Chintal raval', 0, 'chandni@gmail.com', 0, 'chandnisoni', 2),
(2, 'HP', 'Hitesh Parmar', 0, 'hiteshparmarHP@gmail.com', 0, 'hiteshparmarHP', 2),
(3, 'PG', 'Pooja Gandhi', 0, 'poojagandhiPG@gmail.com', 0, 'poojagandhiPG', 2),
(4, 'PJ', 'Pooja Jain', 0, 'poojajainPJ@gmail.com', 0, 'poojajainPJ', 2),
(6, 'JP', 'Dr. Jayraj Pandya', 2, 'chandnisoni@gmail.com', 0, 'chandnisoni', 1),
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
  `lnm` char(50) NOT NULL,
  `s_gen` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `c_id` int(2) NOT NULL,
  `sem` int(2) NOT NULL,
  `division` varchar(2) NOT NULL,
  `usub_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_enrl`, `s_rn`, `fnm`, `lnm`, `s_gen`, `email`, `contact`, `c_id`, `sem`, `division`, `usub_id`) VALUES
(1, 2161173, 'AYUSHI RAJESH PATEL', '', 1, '', 0, 0, 1, 'a', NULL),
(2, 2161174, 'BHARVAD VIKRAM NATHUBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(3, 2161175, 'BHAVSAR JAINAXI RAJESH', '', 1, '', 0, 0, 1, 'a', NULL),
(4, 2161176, 'BRAHMBHATT VISHAL RAMCHANDRA', '', 0, '', 0, 0, 1, 'a', NULL),
(5, 2161177, 'CHAUDHARY PRIYANKA RAHULKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(6, 2161178, 'CHAVDA JAYRAJSINH VIJAYSINH', '', 0, '', 0, 0, 1, 'a', NULL),
(7, 2161179, 'CHAWDA YUVRAJ KIRIT KUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(8, 2161180, 'CHUNARA KINJAL MANISH KUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(9, 2161181, 'DALWADI PRIYANSHI VINAYKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(10, 2161182, 'DARJI SHIVANI LALJIBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(11, 2161183, 'DHANDHUKIYA NIDHI ALPESHKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(12, 2161184, 'DUDHIA JUHI NIKUNJKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(13, 2161185, 'GAJJAR PRIYANKABEN MAHESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(14, 2161186, 'GOHIL HARDIK SHAMJIBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(15, 2161187, 'GORANIA KARAN RAMDEVBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(16, 2161188, 'JAIN ANSHI AMRIT', '', 1, '', 0, 0, 1, 'a', NULL),
(17, 2161189, 'JAYSWAL BHAVIKA PRAKASHKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(18, 2161190, 'JOGANI RIMABAHEN RAJENDRAKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(19, 2161191, 'JOSHI SACHIN KUMARBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(20, 2161192, 'KARLIKER YUG SHAILESHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(21, 2161193, 'KUTANA PAYALBEN SAVJIBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(22, 2161194, 'MACWAN ARPITA ALBERT', '', 1, '', 0, 0, 1, 'a', NULL),
(23, 2161195, 'MAKWANA PRAKASHKUMAR DHANJIBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(24, 2161196, 'MARU SHUBHAM RASHIKBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(25, 2161197, 'MEMON TASLIMBANU IQBALBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(26, 2161198, 'MISTRY BRIJESH MANSUKHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(27, 2161199, 'MODI BINAL PRAKASHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(28, 2161200, 'NAGAR REMILA PARASMAL', '', 1, '', 0, 0, 1, 'a', NULL),
(29, 2161201, 'NAYAK JAY KANDARPKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(30, 2161202, 'PADIA DARSHIL PRASHANTBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(31, 2161203, 'PANCHAL ANJALIBEN MAHENDRAKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(32, 2161204, 'PANCHAL KANISHKA JAYESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(33, 2161205, 'PANCHAL SHRUTI HEMENDRAKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(34, 2161206, 'PANCHAL VISMAY MAYANKKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(35, 2161207, 'PAREKH JAIMINI PREMALKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(36, 2161208, 'PARMAR AYUSHI MANHARBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(37, 2161209, 'PARMAR RAJAT MANOJBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(38, 2161210, 'PATADIYA BIJAL NARENDRABHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(39, 2161211, 'PATEL AYUSHI PIYUSHKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(40, 2161212, 'PATEL HENIL DIPAKKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(41, 2161213, 'PATEL MARGIBEN DILIPBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(42, 2161214, 'PATEL NEELKUMAR ASHOKBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(43, 2161215, 'PATEL PINKY ASHOKKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(44, 2161216, 'PATEL RAJ KALPESHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(45, 2161217, 'PATEL SHREY ASHWINKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(46, 2161218, 'PATEL SHRUTI SHAILESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(47, 2161219, 'PATEL ZINALBEN MAHENDRAKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(48, 2161220, 'PRAJAPATI AMISHA RAJUBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(49, 2161221, 'PRAJAPATI DARSHANKUMAR BALDEVBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(50, 2161222, 'PRAJAPATI JAY AMBALAL', '', 0, '', 0, 0, 1, 'a', NULL),
(51, 2161223, 'PRAJAPATI PRITI VITTHALBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(52, 2161224, 'PRAJAPATI SHIVANGI PARESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(53, 2161225, 'PUJARA ROSHNI HARISHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(54, 2161226, 'RANGWALA FATEMA MUSTAQBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(55, 2161227, 'RATHOD SRUSHTI DINESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(56, 2161228, 'RINGWALA JANKI YOGESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(57, 2161229, 'SANGHAVI PRACHI YOGESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(58, 2161230, 'SARVAIYA URVASHEE DIPAKBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(59, 2161231, 'SHAH AKSHAT PARESHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(60, 2161232, 'SHAH GREHA NILESH', '', 1, '', 0, 0, 1, 'a', NULL),
(61, 2161233, 'SHAH JANVI HETALBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(62, 2161234, 'SHAH KAVISH PRAFULBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(63, 2161235, 'SHAH KRISHA ALPESH', '', 1, '', 0, 0, 1, 'a', NULL),
(64, 2161236, 'SHAH MEET JITENDRAKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(65, 2161237, 'SHAH POOJAN SHRENIKKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(66, 2161238, 'SHAH PRESHA DARSHANKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(67, 2161239, 'SHAH PURVANG BHADRESHKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(68, 2161240, 'SHAH SHIKHA KAUSHAL', '', 1, '', 0, 0, 1, 'a', NULL),
(69, 2161241, 'SHAH VARSHIL FALGUNBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(70, 2161242, 'SHAIKH AAMENABANU KAMRUDDIN', '', 1, '', 0, 0, 1, 'a', NULL),
(71, 2161243, 'SHUKLA KAVISHA SANKETBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(72, 2161244, 'SOLANKI FENIL HITESHKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(73, 2161245, 'SOLANKI MILIND MUKESHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(74, 2161246, 'SOLANKI RENUKABEN AMARSING', '', 1, '', 0, 0, 1, 'a', NULL),
(75, 2161247, 'SONI DARSHITA DILIPBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(76, 2161248, 'SONI RAJ MAHENDRABHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(77, 2161249, 'SUTHAR DHRUVKUMAR ARVINDBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(78, 2161250, 'TAKOLIYA MIHIR DHARMENDRAKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(79, 2151251, 'SHAIKH MO AMMAR NAIMULHAQ', '', 0, '', 0, 0, 1, 'a', NULL),
(80, 2151252, 'PAREKH RAVI VIJAYKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(81, 2151253, 'PANCHAL TIRTH RAJUBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(82, 2151254, 'SHRIMALI DHAVAL ASHOKBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(83, 2151255, 'CHAUHAN NITIN MAHENDRABHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(84, 2151256, 'DARJI RAJAN ASHOKBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(85, 2151257, 'KORA VISHAL LAXMINARAYAN', '', 0, '', 0, 0, 1, 'a', NULL),
(86, 2151258, 'RAMI KINALBEN VINODBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(87, 2151259, 'VALA TEJAL ARUNBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(88, 2151260, 'PRAJAPATI DISHA RAJIVKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(89, 2151261, 'LEUVA NISHA PARESHKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(90, 2151262, 'NAYAK BHUMIKABEN BHUPENDRAKUMAR', '', 1, '', 0, 0, 1, 'a', NULL),
(91, 2151263, 'BHARADAVA JANAKI PARESHBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(92, 2151264, 'PRAJAPATI MANTHAN GANESHBHAI', '', 0, '', 0, 0, 1, 'a', NULL),
(93, 2151265, 'PATEL RUTU ASHWINKUMAR', '', 0, '', 0, 0, 1, 'a', NULL),
(94, 2151266, 'MAKVANA AARTIBEN JILAJI', '', 0, '', 0, 0, 1, 'a', NULL),
(95, 2151267, 'CHAUHAN RUCHITA CHHAGANBHAI', '', 1, '', 0, 0, 1, 'a', NULL),
(96, 2151268, 'KAYASTH HEMALI SHAILESHKUMAR', '', 1, '', 0, 0, 1, 'a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `usub_id` int(4) NOT NULL,
  `sub_id` varchar(25) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `special` varchar(10) NOT NULL,
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
(6, 'C[prac]', 'Implimentation of C', '', 1, 1, 0, 14),
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
(51, 'PHP[prac]', 'Hupertext Preprocessor', '1', 2, 6, 0, 1),
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
(146, 'MR', 'Marketing Research', 'Marketing', 1, 9, 1, 45),
(147, 'ASP', 'Advertising & Sales Promotion', 'Marketing', 1, 9, 1, 4),
(148, 'CB', 'Consumer Behaviour', 'Marketing', 1, 9, 1, 1),
(149, 'SDM', 'Sales & Distribution Management', 'Marketing', 1, 9, 1, 1),
(150, 'IMM', 'International Marketing Management', 'Marketing', 1, 10, 1, 12),
(151, 'SM', 'Service Marketing', 'Marketing', 1, 10, 1, 10),
(152, 'RM', 'Retail Management', 'Marketing', 1, 10, 1, 15),
(153, 'SCIM', 'Seminar & Contemporary Issues in Marketing', 'Marketing', 1, 10, 1, 4),
(154, 'WCM', 'Working Capital management', 'Finance', 1, 10, 1, 9),
(155, 'MFS', 'Management of Financial Services', 'Finance', 1, 9, 1, 9),
(156, 'IAPM', 'Investment Analysis & Portfolio Management', 'Finance', 1, 9, 1, 15),
(157, 'SFM', 'Strategic Financial Management', 'Finance', 1, 9, 1, 1),
(158, 'MACR', 'Mergers, Acquisitions & Corporate Restructure', 'Finance', 1, 10, 1, 16),
(159, 'CT', 'Corporate Taxation', 'Finance', 1, 9, 1, 1),
(160, 'FD', 'Financial Derivatives', 'Finance', 1, 10, 1, 1),
(161, 'IFM', 'International Financial Management', 'Finance', 1, 10, 1, 19),
(162, 'ODCM', 'Organizational Development & Change Management', 'HR', 1, 9, 1, 9),
(163, 'CM', 'Compensation Management', 'HR', 1, 9, 1, 25),
(164, 'IRLL', 'Industrial Relations & Labour Lows', 'HR', 1, 9, 1, 23),
(165, 'IHRM', 'International Human Resources Management', 'HR', 1, 9, 1, 2),
(166, 'LIO', 'Leadership in Organizations', 'HR', 1, 10, 1, 1),
(167, 'SHRM', 'Strategic Human Resource Management', 'HR', 1, 10, 1, 19),
(168, 'PM', 'Performance Management', 'HR', 1, 10, 1, 1),
(169, 'SCIHR', 'Seminar & Contemporary Issues in HR', 'HR', 1, 10, 1, 9);

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
  ADD KEY `date_2` (`date`);

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
-- Indexes for table `attendance_mba_sem10`
--
ALTER TABLE `attendance_mba_sem10`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `date` (`date`),
  ADD KEY `s_enrl` (`s_enrl`),
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `date_2` (`date`);

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
  ADD KEY `usub_id` (`usub_id`);

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
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`date`),
  ADD KEY `ac_year_id` (`ac_year_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`ufac_id`),
  ADD KEY `c_id` (`c_id`);

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
  ADD KEY `usub_id` (`usub_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`usub_id`),
  ADD KEY `ufac_id` (`ufac_id`),
  ADD KEY `sem_no` (`sem_no`),
  ADD KEY `c_id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `ac_year_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `attendance_mba_sem1`
--
ALTER TABLE `attendance_mba_sem1`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `attendance_mba_sem10`
--
ALTER TABLE `attendance_mba_sem10`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_msc_sem1`
--
ALTER TABLE `attendance_msc_sem1`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT for table `attendance_msc_sem2`
--
ALTER TABLE `attendance_msc_sem2`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_msc_sem3`
--
ALTER TABLE `attendance_msc_sem3`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_msc_sem4`
--
ALTER TABLE `attendance_msc_sem4`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance_msc_sem5`
--
ALTER TABLE `attendance_msc_sem5`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `ufac_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `usub_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_mba_sem1`
--
ALTER TABLE `attendance_mba_sem1`
  ADD CONSTRAINT `attendance_mba_sem1_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem1_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem1_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem2`
--
ALTER TABLE `attendance_mba_sem2`
  ADD CONSTRAINT `attendance_mba_sem2_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem2_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem2_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem3`
--
ALTER TABLE `attendance_mba_sem3`
  ADD CONSTRAINT `attendance_mba_sem3_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem3_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem3_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem4`
--
ALTER TABLE `attendance_mba_sem4`
  ADD CONSTRAINT `attendance_mba_sem4_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem4_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem4_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem5`
--
ALTER TABLE `attendance_mba_sem5`
  ADD CONSTRAINT `attendance_mba_sem5_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem5_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem5_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem6`
--
ALTER TABLE `attendance_mba_sem6`
  ADD CONSTRAINT `attendance_mba_sem6_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem6_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem6_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem7`
--
ALTER TABLE `attendance_mba_sem7`
  ADD CONSTRAINT `attendance_mba_sem7_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem7_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem7_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem8`
--
ALTER TABLE `attendance_mba_sem8`
  ADD CONSTRAINT `attendance_mba_sem8_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem8_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem8_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem9`
--
ALTER TABLE `attendance_mba_sem9`
  ADD CONSTRAINT `attendance_mba_sem9_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem9_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem9_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_mba_sem10`
--
ALTER TABLE `attendance_mba_sem10`
  ADD CONSTRAINT `attendance_mba_sem10_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem10_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_mba_sem10_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem1`
--
ALTER TABLE `attendance_msc_sem1`
  ADD CONSTRAINT `attendance_msc_sem1_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem1_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem1_ibfk_4` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem2`
--
ALTER TABLE `attendance_msc_sem2`
  ADD CONSTRAINT `attendance_msc_sem2_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem2_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem2_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem3`
--
ALTER TABLE `attendance_msc_sem3`
  ADD CONSTRAINT `attendance_msc_sem3_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem3_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem3_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem4`
--
ALTER TABLE `attendance_msc_sem4`
  ADD CONSTRAINT `attendance_msc_sem4_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem4_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem4_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem5`
--
ALTER TABLE `attendance_msc_sem5`
  ADD CONSTRAINT `attendance_msc_sem5_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem5_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem5_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem6`
--
ALTER TABLE `attendance_msc_sem6`
  ADD CONSTRAINT `attendance_msc_sem6_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem6_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem6_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem7`
--
ALTER TABLE `attendance_msc_sem7`
  ADD CONSTRAINT `attendance_msc_sem7_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem7_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem7_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem8`
--
ALTER TABLE `attendance_msc_sem8`
  ADD CONSTRAINT `attendance_msc_sem8_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem8_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem8_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance_msc_sem9`
--
ALTER TABLE `attendance_msc_sem9`
  ADD CONSTRAINT `attendance_msc_sem9_ibfk_1` FOREIGN KEY (`date`) REFERENCES `days` (`date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem9_ibfk_2` FOREIGN KEY (`s_enrl`) REFERENCES `student` (`s_enrl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_msc_sem9_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `days`
--
ALTER TABLE `days`
  ADD CONSTRAINT `days_ibfk_1` FOREIGN KEY (`ac_year_id`) REFERENCES `academic_year` (`ac_year_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`ufac_id`) REFERENCES `faculty` (`ufac_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_ibfk_2` FOREIGN KEY (`sem_no`) REFERENCES `sem_year` (`sem_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
