-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2019 at 11:08 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

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
  `contact` bigint(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ufac_id`, `fac_id`, `fac_name`, `c_id`, `email`, `contact`, `password`, `role`) VALUES
(1, 'ad', 'admin', 0, 'admin', 0, 'admin', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `sem_year`
--

CREATE TABLE `sem_year` (
  `sem_no` int(2) NOT NULL,
  `year` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD KEY `usub_id` (`usub_id`),
  ADD KEY `sem` (`sem`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`usub_id`),
  ADD KEY `ufac_id` (`ufac_id`),
  ADD KEY `sem_no` (`sem_no`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `subject1`
--
ALTER TABLE `subject1`
  ADD PRIMARY KEY (`uesub_id`),
  ADD KEY `ufac_id` (`ufac_id`),
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
  MODIFY `ac_year_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_mba_sem1`
--
ALTER TABLE `attendance_mba_sem1`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `ufac_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_enrl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `usub_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject1`
--
ALTER TABLE `subject1`
  MODIFY `uesub_id` int(4) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `subject1_ibfk_2` FOREIGN KEY (`ufac_id`) REFERENCES `faculty` (`ufac_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subject1_ibfk_3` FOREIGN KEY (`usub_id`) REFERENCES `subject` (`usub_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
