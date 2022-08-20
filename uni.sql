-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 17, 2022 at 04:45 AM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uni`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'tipu', '202cb962ac59075b964b07152d234b70'),
(2, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `attn`
--

DROP TABLE IF EXISTS `attn`;
CREATE TABLE IF NOT EXISTS `attn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attn`
--

INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(206, 12103072, 'present', '2021-04-11'),
(211, 12103072, 'present', '2021-06-05'),
(212, 13103072, 'present', '2021-06-05'),
(213, 13203072, 'absent', '2021-06-05'),
(214, 14103053, 'present', '2021-06-05'),
(215, 14203072, 'present', '2021-06-05'),
(218, 12103072, 'present', '2021-06-06'),
(219, 13103072, 'absent', '2021-06-06'),
(220, 13203072, 'present', '2021-06-06'),
(221, 14103053, 'absent', '2021-06-06'),
(222, 14203072, 'absent', '2021-06-06'),
(223, 1454540, 'present', '2021-06-06'),
(224, 17699619, 'present', '2021-06-06'),
(225, 1234, 'absent', '2022-08-23'),
(226, 12103072, 'absent', '2022-08-23'),
(227, 12345678, 'absent', '2022-08-23'),
(228, 13103072, 'absent', '2022-08-23'),
(229, 13203072, 'absent', '2022-08-23'),
(230, 14103053, 'absent', '2022-08-23'),
(231, 14203072, 'absent', '2022-08-23'),
(232, 15103023, 'absent', '2022-08-23'),
(233, 15103033, 'absent', '2022-08-23'),
(234, 15103052, 'present', '2022-08-23'),
(235, 15103053, 'present', '2022-08-23'),
(236, 15103057, 'absent', '2022-08-23'),
(237, 15103058, 'absent', '2022-08-23'),
(238, 15103092, 'absent', '2022-08-23'),
(239, 16303053, 'absent', '2022-08-23'),
(240, 17699619, 'absent', '2022-08-23'),
(241, 1234, 'absent', '2022-08-24'),
(242, 12103072, 'absent', '2022-08-24'),
(243, 12345678, 'absent', '2022-08-24'),
(244, 13103072, 'absent', '2022-08-24'),
(245, 13203072, 'absent', '2022-08-24'),
(246, 14103053, 'absent', '2022-08-24'),
(247, 14203072, 'absent', '2022-08-24'),
(248, 15103023, 'absent', '2022-08-24'),
(249, 15103033, 'absent', '2022-08-24'),
(250, 15103052, 'absent', '2022-08-24'),
(251, 15103053, 'absent', '2022-08-24'),
(252, 15103057, 'absent', '2022-08-24'),
(253, 15103058, 'absent', '2022-08-24'),
(254, 15103092, 'absent', '2022-08-24'),
(255, 16303053, 'absent', '2022-08-24'),
(256, 17699619, 'absent', '2022-08-24'),
(257, 1234, 'absent', '2022-08-09'),
(258, 12103072, 'absent', '2022-08-09'),
(259, 12345678, 'absent', '2022-08-09'),
(260, 13103072, 'absent', '2022-08-09'),
(261, 13203072, 'absent', '2022-08-09'),
(262, 14103053, 'absent', '2022-08-09'),
(263, 14203072, 'absent', '2022-08-09'),
(264, 15103023, 'absent', '2022-08-09'),
(265, 15103033, 'absent', '2022-08-09'),
(266, 15103052, 'absent', '2022-08-09'),
(267, 15103053, 'absent', '2022-08-09'),
(268, 15103057, 'absent', '2022-08-09'),
(269, 15103058, 'absent', '2022-08-09'),
(270, 15103092, 'absent', '2022-08-09'),
(271, 16303053, 'absent', '2022-08-09'),
(272, 17699619, 'absent', '2022-08-09'),
(273, 1234, 'absent', '2022-08-02'),
(274, 12103072, 'absent', '2022-08-02'),
(275, 12345678, 'absent', '2022-08-02'),
(276, 13103072, 'absent', '2022-08-02'),
(277, 13203072, 'present', '2022-08-02'),
(278, 14103053, 'present', '2022-08-02'),
(279, 14203072, 'absent', '2022-08-02'),
(280, 15103023, 'present', '2022-08-02'),
(281, 15103033, 'absent', '2022-08-02'),
(282, 15103052, 'absent', '2022-08-02'),
(283, 15103053, 'absent', '2022-08-02'),
(284, 15103057, 'present', '2022-08-02'),
(285, 15103058, 'present', '2022-08-02'),
(286, 15103092, 'absent', '2022-08-02'),
(287, 16303053, 'absent', '2022-08-02'),
(288, 17699619, 'absent', '2022-08-02'),
(289, 1234, 'absent', '2022-08-17'),
(290, 12103072, 'absent', '2022-08-17'),
(291, 12345678, 'absent', '2022-08-17'),
(292, 13103072, 'absent', '2022-08-17'),
(293, 13203072, 'absent', '2022-08-17'),
(294, 14103053, 'absent', '2022-08-17'),
(295, 14203072, 'absent', '2022-08-17'),
(296, 15103023, 'absent', '2022-08-17'),
(297, 15103033, 'absent', '2022-08-17'),
(298, 15103052, 'absent', '2022-08-17'),
(299, 15103053, 'absent', '2022-08-17'),
(300, 15103057, 'absent', '2022-08-17'),
(301, 15103058, 'absent', '2022-08-17'),
(302, 15103092, 'absent', '2022-08-17'),
(303, 16303053, 'absent', '2022-08-17'),
(304, 17699619, 'absent', '2022-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_name` varchar(50) NOT NULL,
  `cs_desc` text DEFAULT 'No desc',
  `cs_duration` int(11) NOT NULL,
  PRIMARY KEY (`cs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`cs_id`, `cs_name`, `cs_desc`, `cs_duration`) VALUES
(1, 'BCA', 'Bachelor of Computer Applications', 36),
(3, 'MBA', 'Management', 24);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sec_question` varchar(50) DEFAULT 'None',
  `sec_answer` varchar(30) DEFAULT 'None',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`, `sec_question`, `sec_answer`) VALUES
(14, 'john123', '827ccb0eea8a706c4c34a16891f84e7b', 'John Doe', 'johndoe@gmail.com', '2000-01-01', 'Male', 'BSc in Phy from IMED', '9845814526', 'Wall Street', 'Place you were born', 'America'),
(15, 'Kiran123', 'df6d2338b2b8fce1ec2f6dda0a630eb0', 'Kiran Shine Mam', 'kiran@gmail.com', '1991-01-11', 'Female', 'MCA in ADBMS from IICMR', '9874563212', 'Nigdi, Pradhikaran,', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(28, 12103072, 95, 'DBMS', '1st'),
(29, 12103072, 92, 'DBMS Lab', '1st'),
(30, 12103072, 90, 'Mathematics', '1st'),
(31, 12103072, 80, 'Programming', '1st'),
(32, 12103072, 90, 'Programming Lab', '1st'),
(35, 12103072, 95, 'Physics', '2nd'),
(36, 12103072, 96, 'Mathematics', '2nd'),
(37, 12103072, 85, 'Chemistry', '2nd'),
(38, 12103072, 78, 'Psychology', '2nd'),
(39, 15103058, 96, 'DBMS', '1st'),
(40, 15103058, 98, 'DBMS Lab', '1st'),
(41, 15103058, 65, 'Mathematics', '1st'),
(42, 15103058, 90, 'Programming', '1st'),
(43, 15103058, 92, 'Programming Lab', '1st'),
(44, 15103058, 95, 'English', '2nd'),
(45, 15103058, 50, 'Physics', '2nd'),
(46, 15103058, 68, 'Chemistry', '2nd'),
(47, 15103058, 92, 'Psychology', '2nd'),
(48, 15103157, 89, 'DBMS', '1st'),
(49, 15103157, 90, 'DBMS Lab', '1st'),
(50, 15103157, 80, 'Mathematics', '1st'),
(51, 15103157, 95, 'English', '1st'),
(52, 16303053, 85, 'DBMS', '1st'),
(53, 15103053, 75, 'DBMS Lab', '1st'),
(54, 15103053, 40, 'Mathematics', '1st'),
(55, 15103053, 85, 'Programming', '1st'),
(56, 15103053, 90, 'Programming Lab', '1st'),
(57, 15103053, 87, 'English', '1st'),
(58, 15103053, 60, 'Physics', '1st'),
(59, 15103053, 65, 'Chemistry', '1st'),
(60, 15103053, 69, 'Psychology', '1st'),
(61, 17699619, 71, 'DBMS', '1st'),
(62, 17699619, 82, 'DBMS Lab', '1st'),
(63, 17699619, 65, 'Mathematics', '1st'),
(64, 17699619, 85, 'Programming', '1st'),
(65, 17699619, 86, 'Programming Lab', '1st'),
(66, 17699619, 87, 'English', '1st'),
(67, 17699619, 70, 'Physics', '1st'),
(68, 17699619, 75, 'Chemistry', '1st'),
(69, 17699619, 70, 'Psychology', '1st'),
(70, 1234, 100, 'Business Maths', '1st'),
(71, 14103053, 88, 'DBMS', '1st'),
(72, 14103053, 67, 'DBMS', '2nd'),
(73, 14103053, 56, 'Business Maths', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

DROP TABLE IF EXISTS `st_info`;
CREATE TABLE IF NOT EXISTS `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `sec_question` varchar(50) DEFAULT 'None',
  `sec_answer` varchar(30) DEFAULT 'None',
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`, `sec_question`, `sec_answer`) VALUES
(1234, 'JOY', '827ccb0eea8a706c4c34a16891f84e7b', 'joydeep@gmail.com', '1998-01-11', 'MCA', '789658422', 'Male', 'Pune', '5C222D80-E2F1-4603-81F4-A7BF46D7520A.jpeg', 'None', 'None'),
(1546784, 'Joydeep Mitra', '202cb962ac59075b964b07152d234b70', 'mitrajoydeep11@gmail.com', '2017-12-11', 'MCA', '7834343663', 'Male', 'Kothrud', NULL, 'Graduation', 'IMED'),
(12103072, 'Robert Speera', '250cf8b51c773f3f8dc8b4be867a9a02', 'robert@gmail.com', '1995-10-10', 'BIT', '7548884541', 'male', '950  Leo Street', 'F34FEDE2-0BE0-400A-82CC-2FCC984A21C4.png', 'None', 'None'),
(12345678, 'Jane Doe', '5844a15e76563fedd11840fd6f40ea7b', 'janedoe@gmail.com', '2002-01-06', 'BBA', '9123462356', 'Male', 'New Yoek', '7104AF4D-D800-4F4E-8B89-CA46CE45C007.jpeg', 'None', 'None'),
(13103072, 'Mariea Moore', '123', 'moremar@mail.com', '1995-10-10', 'BIT', '2457778450', 'female', '3983  Burnside Avenue', '7E230FB0-C157-4544-B270-97F3C8FDB1AA.png', 'None', 'None'),
(13203072, 'Pamela A Reed', '123', 'reedpar@mail.com', '1995-10-10', 'MsCIT', '4570002480', 'female', '2526  Riverwood Drive', '20DE853C-35DC-4D91-BB0F-BBAEB2388294.png', 'None', 'None'),
(14103053, 'Stephen D Skaggs', '81dc9bdb52d04dc20036dbd8313ed055', 'stephensk@mail.com', '1996-08-09', 'MIT', '97410000002', 'Male', '2684  Linden Avenue', '4B6A496B-5AD6-42E2-AE7C-4EE0995D0106.jpeg', 'First Pet', 'Dog'),
(14203072, 'Evelyn K Ambrose', '123', 'ambrose@mail.com', '1995-10-10', 'BCSE', '3457854445', 'female', '1568  Sugar Camp Road', 'A048670B-178D-4D31-B802-B5B7DBF00E78.png', 'None', 'None'),
(15103023, 'Gail A Jones', '202cb962ac59075b964b07152d234b70', 'jonesgail@mail.com', '1996-08-09', 'BsCIT', '7541112450', 'Male', '3444  Tree Top Lane', 'FFE697B5-F021-41FA-8267-53496890A002.png', 'None', 'None'),
(15103033, 'Sam Wilson', '202cb962ac59075b964b07152d234b70', 'wilsons@mail.com', '1996-08-09', 'MIT', '2145785550', 'Male', '292  Canis Heights Drive', 'C6F031D6-2249-4CDC-B513-DC16D9F2325E.png', 'None', 'None'),
(15103052, 'Sam A Ramirez', '123', 'ramirez@mail.com', '1995-10-10', 'BCSE', '8542145780', 'Male', '272  Shady Pines Drive', 'C9E6BD3E-8306-4385-BFE1-517DF1ACC505.png', 'None', 'None'),
(15103053, 'Thomas Bryant', '202cb962ac59075b964b07152d234b70', 'thoyant@mail.com', '1996-08-09', 'BIT', '1547854555', 'Male', '1937  Chapmans Lane', '70C5DB91-B97E-44D0-9B5D-298105F3FBE4.png', 'None', 'None'),
(15103057, 'Timothy Wilcher', '347602146a923872538f3803eb5f3cef', 'timothy@gmail.com', '1996-04-12', 'BIT', '7547854650', 'Male', '3435  Cabell Avenue', '0AD69827-DDEF-485F-8721-E18F29C9A1DE.png', 'None', 'None'),
(15103058, 'Bruno Den', '202cb962ac59075b964b07152d234b70', 'brunoden@gmail.com', '1996-10-28', 'MIT', '3124578450', 'Male', '919  Winding Way', '94E5BBB2-A0FF-4F19-BA12-C07F0C4C617A.png', 'None', 'None'),
(15103092, 'Rachel Johnson', '123', 'rachhel@mail.com', '1995-10-10', 'BCSE', '3457856969', 'female', '919  Winding Way', '2112827E-7215-4CB3-BC87-590B2B848955.png', 'None', 'None'),
(16303053, 'Emma Farrell', '202cb962ac59075b964b07152d234b70', 'emmafck6@mail.com', '1996-08-09', 'MIT', '7531598520', 'female', '431  Clover Drive', 'F6417D01-7D58-406A-B781-867ED93BACC0.png', 'None', 'None'),
(17699619, 'Amy Billington', '5f4dcc3b5aa765d61d8327deb882cf99', 'amy@gmail.com', '1995-04-01', 'BIT', '7410000058', 'Female', '2825 Alpaca Way', 'E2EB3AB3-379F-49E2-A558-E7CE535778A0.png', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `sub_course`
--

DROP TABLE IF EXISTS `sub_course`;
CREATE TABLE IF NOT EXISTS `sub_course` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(50) NOT NULL,
  `sub_desc` varchar(50) DEFAULT 'No Desc',
  `cs_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `sub_name` (`sub_name`),
  KEY `cs_id` (`cs_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_course`
--

INSERT INTO `sub_course` (`sub_id`, `sub_name`, `sub_desc`, `cs_id`) VALUES
(3, 'DBMS', 'Database', 1),
(2, 'Business Maths', 'Maths', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
