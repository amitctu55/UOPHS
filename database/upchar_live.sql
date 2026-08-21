-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2026 at 10:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upchar_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fee`, `percent`, `total`) VALUES
(10, 500, 5, 25),
(11, 1, 1, 0),
(12, 97, 1, 1),
(13, 500, 1, 5),
(14, 200, 5, 10),
(15, 1, 1, 0),
(16, 200, 2, 4),
(17, 200, 3, 6),
(18, 1, 1, 0),
(19, 1, 5, 0),
(20, 1, 10, 0),
(21, 1, 10, 0),
(22, 1, 10, 0),
(23, 300, 10, 30),
(24, 200, 2, 4),
(25, 200, 5, 10),
(26, 200, 15, 30),
(27, 200, 20, 40),
(28, 200, 25, 50),
(29, 200, 30, 60),
(30, 200, 30, 60),
(31, 200, 20, 40),
(32, 200, 20, 40),
(33, 200, 10, 20),
(34, 200, 2, 4),
(35, 1, 1, 0),
(36, 200, 2, 4),
(37, 1, 10, 0),
(38, 1, 10, 0),
(39, 1, 2, 0),
(40, 200, 10, 20),
(41, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `short_description` varchar(300) NOT NULL,
  `long_description` varchar(500) NOT NULL,
  `image` varchar(250) NOT NULL,
  `page` varchar(250) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `creat_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `short_description`, `long_description`, `image`, `page`, `status`, `creat_date`) VALUES
(1, 'As shown in the figure, whenever a request comes to CodeIgniter, it will first go to index.php page.  In the second step, Routing will decide whether to pass this request to step-3 for caching or to pass this request to step-4 for security check.  If the requested page is already in Caching, then Ro', 'Notice the word “test” in the above URI after index.php. This indicates the class name of controller. As we have given the name of the controller “Test”, we are writing “test” after the index.php. The class name must start with uppercase letter but we need to write lowercase letter when we call that controller by URI. The general syntax for calling the controller is as follows ', '_profile_pic_8760533982019-05-31.jpg', 'http://localhost/ss/admin1947/', '0', '2019-05-31 11:58:52'),
(2, 'Gyantech International pvt ltd', 'CodeIgniter is an application development framework, which can be used to develop websites, using PHP. It is an Open Source framework. It has a very rich set of functionality, which will increase the speed of website development work.  If you know PHP well, then CodeIgniter will make your task easier. It has a very rich set of libraries and helpers. By using CodeIgniter, you will save a lot of time, if you are developing a website from scratch. Not only that, a website built in CodeIgniter is se', '_profile_pic_5942013882019-05-31.jpg', 'http://localhost/ss/admin1947/login', '1', '2019-05-31 11:59:26'),
(3, 'gyantech', 'gyantech', '_profile_pic_7182089572019-05-31.jpg', 'http://localhost/ss/', '1', '2019-05-31 12:03:44'),
(4, 'As shown in the figure, whenever a request comes to CodeIgniter, it will first go to index.php page.  In the second step, Routing will decide whether to pass this request to step-3 for caching or to pass this request to step-4 for security check.  If the requested page is already in Caching, then Ro', 'CodeIgniter is an application development framework, which can be used to develop websites, using PHP. It is an Open Source framework. It has a very rich set of functionality, which will increase the speed of website development work.  If you know PHP well, then CodeIgniter will make your task easier. It has a very rich set of libraries and helpers. By using CodeIgniter, you will save a lot of time, if you are developing a website from scratch. Not only that, a website built in CodeIgniter is se', '_profile_pic_8673960362019-05-31.jpg', 'http://localhost/ss/index.php', '1', '2019-05-31 12:14:01'),
(5, 'gyantech', 'gyantech', '_profile_pic_6989238352019-06-03.jpg', 'https://www.upcharr.com/admin1947/', '1', '2019-06-03 02:05:43'),
(6, 'As shown in the figure, whenever a request comes to CodeIgniter, it will first go to index.php page.  In the second step, Routing will decide whether to pass this request to step-3 for caching or to pass this request to step-4 for security check.  If the requested page is already in Caching, then Ro', 'CodeIgniter is an application development framework, which can be used to develop websites, using PHP. It is an Open Source framework. It has a very rich set of functionality, which will increase the speed of website development work.  If you know PHP well, then CodeIgniter will make your task easier. It has a very rich set of libraries and helpers. By using CodeIgniter, you will save a lot of time, if you are developing a website from scratch. Not only that, a website built in CodeIgniter is se', '_profile_pic_4251950972019-06-03.jpg', 'https://www.upcharr.com/admin1947/login', '0', '2019-06-03 04:51:28'),
(7, 'upchar one place of helthcare', ',bmb,bnbcjbvdbv z,mcv,dbjfb', '_profile_pic_2087629012019-06-04.jpeg', 'https://www.upcharr.com/admin1947/login', '1', '2019-06-04 02:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_date` varchar(12) DEFAULT NULL,
  `appointment_time` varchar(12) DEFAULT NULL,
  `from_timing` varchar(12) NOT NULL,
  `to_timing` varchar(12) NOT NULL,
  `appointment_name` varchar(100) DEFAULT NULL,
  `appointment_mobile` varchar(12) DEFAULT NULL,
  `appointment_email` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `time_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `practice_id` int(11) DEFAULT NULL,
  `institute_id` int(11) NOT NULL,
  `institution_type` varchar(1) NOT NULL,
  `fee` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(10) NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `ref_no` varchar(44) NOT NULL,
  `pay_date` datetime NOT NULL,
  `book_date` datetime NOT NULL DEFAULT current_timestamp(),
  `cancel_date` datetime NOT NULL,
  `cancel_reason` int(11) NOT NULL,
  `cancel_by` varchar(20) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_time`, `from_timing`, `to_timing`, `appointment_name`, `appointment_mobile`, `appointment_email`, `age`, `date_id`, `time_id`, `doctor_id`, `practice_id`, `institute_id`, `institution_type`, `fee`, `amount`, `payment_mode`, `payment_status`, `checkout_id`, `ref_no`, `pay_date`, `book_date`, `cancel_date`, `cancel_reason`, `cancel_by`, `status`, `user_id`) VALUES
(385, '2019-05-22', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 94, '', '2019-05-22 17:02:10', '2019-05-22 06:29:26', '0000-00-00 00:00:00', 0, '', '1', 78),
(384, '2019-05-22', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-22 06:03:06', '0000-00-00 00:00:00', 0, '', '0', 78),
(383, '2019-05-22', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 93, '', '2019-05-22 16:20:45', '2019-05-22 05:47:23', '0000-00-00 00:00:00', 0, '', '1', 78),
(382, '2019-05-22', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 92, '', '2019-05-22 15:41:44', '2019-05-22 05:07:32', '0000-00-00 00:00:00', 0, '', '1', 78),
(381, '2019-05-22', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 91, '', '2019-05-22 15:36:26', '2019-05-22 05:02:53', '0000-00-00 00:00:00', 0, '', '1', 78),
(380, '2019-05-21', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-20 01:15:38', '0000-00-00 00:00:00', 0, '', '1', 78),
(379, '2019-05-20', NULL, '00:00', '01:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 338, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-20 01:14:58', '0000-00-00 00:00:00', 0, '', '1', 78),
(378, '2019-05-20', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 90, '', '2019-05-20 11:35:48', '2019-05-20 01:03:49', '0000-00-00 00:00:00', 0, '', '1', 78),
(377, '2019-05-20', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-20 00:58:34', '0000-00-00 00:00:00', 0, '', '1', 78),
(376, '2019-05-20', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-20 00:57:12', '0000-00-00 00:00:00', 0, '', '1', 78),
(375, '2019-05-20', NULL, '02:00', '03:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 89, '', '2019-05-19 20:27:46', '2019-05-19 09:56:12', '0000-00-00 00:00:00', 0, '', '1', 32),
(374, '2019-05-20', NULL, '02:00', '03:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 7, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-19 09:49:39', '2019-05-19 20:24:49', 0, 'U', '2', 24),
(373, '2019-05-20', NULL, '02:00', '03:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 7, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 88, '', '2019-05-19 20:18:57', '2019-05-19 09:46:39', '2019-05-19 20:30:28', 0, 'U', '2', 24),
(372, '2019-05-17', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 22, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 87, '', '2019-05-17 18:09:44', '2019-05-17 07:36:23', '0000-00-00 00:00:00', 0, '', '1', 78),
(371, '2019-05-16', NULL, '00:00', '01:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 338, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 86, '', '2019-05-16 22:14:58', '2019-05-16 11:43:10', '0000-00-00 00:00:00', 0, '', '1', 78),
(370, '2019-05-16', NULL, '02:00', '03:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 66, 818, 337, 27, 166, 1, 'H', 200, 1, 'ONLINE', 'DONE', 85, '', '2019-05-16 11:16:43', '2019-05-16 00:41:14', '0000-00-00 00:00:00', 0, '', '1', 32),
(369, '2019-05-14', NULL, '00:00:00', '01:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 20, 810, 327, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 83, '', '2019-05-14 16:19:09', '2019-05-14 05:47:18', '0000-00-00 00:00:00', 0, '', '1', 78),
(368, '2019-05-14', NULL, '00:00:00', '01:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 22, 810, 327, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 82, '', '2019-05-14 16:13:38', '2019-05-14 05:41:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(367, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 66, 810, 328, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 81, '', '2019-05-14 16:05:58', '2019-05-14 05:31:40', '0000-00-00 00:00:00', 0, '', '1', 78),
(366, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 80, '', '2019-05-14 15:59:15', '2019-05-14 05:26:58', '0000-00-00 00:00:00', 0, '', '1', 78),
(365, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Danish ', '8393014240', 'dharmendrarajput128@gmail.com', 77, 810, 328, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 79, '', '2019-05-14 15:11:07', '2019-05-14 04:38:06', '0000-00-00 00:00:00', 0, '', '1', 78),
(364, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Danish ', '8393014240', 'dharmendrarajput128@gmail.com', 77, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 04:35:08', '0000-00-00 00:00:00', 0, '', '0', 78),
(363, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 810, 328, 27, 168, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-14 04:06:44', '0000-00-00 00:00:00', 0, '', '1', 78),
(349, '2019-05-07', NULL, '10:00', '14:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 801, 309, 122, 164, 55, 'H', 0, 0, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-07 01:55:20', '0000-00-00 00:00:00', 0, '', '1', 32),
(348, '2019-05-03', NULL, '08:00', '10:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 78, 698, 277, 27, 135, 1, 'H', 1, 1, 'ONLINE', 'DONE', 70, '', '2019-05-03 10:52:47', '2019-05-03 00:18:48', '0000-00-00 00:00:00', 0, '', '1', 78),
(347, '2019-05-02', NULL, '08:00', '10:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 698, 277, 27, 135, 1, 'H', 1, 1, 'ONLINE', 'DONE', 69, '', '2019-05-02 14:26:54', '2019-05-02 03:52:30', '0000-00-00 00:00:00', 0, '', '1', 78),
(346, '2019-05-02', NULL, '04:30:00', '17:45:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 677, 252, 98, 156, 36, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-02 01:33:38', '0000-00-00 00:00:00', 0, '', '1', 78),
(345, '2019-05-02', NULL, '14:15', '16:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 672, 242, 27, 118, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-02 01:31:23', '0000-00-00 00:00:00', 0, '', '1', 78),
(344, '2019-04-30', NULL, '22:00', '23:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 674, 246, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-30 05:34:05', '0000-00-00 00:00:00', 0, '', '1', 78),
(343, '2019-04-30', NULL, '22:00', '23:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 674, 246, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-30 05:32:41', '0000-00-00 00:00:00', 0, '', '1', 78),
(342, '2019-04-30', NULL, '22:00', '23:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 674, 246, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-30 04:25:21', '0000-00-00 00:00:00', 0, '', '1', 78),
(341, '2019-04-30', NULL, '22:00', '23:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 674, 246, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-30 02:07:32', '0000-00-00 00:00:00', 0, '', '1', 78),
(340, '2019-04-26', NULL, '19:00', '20:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 674, 247, 27, 135, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-25 09:22:20', '0000-00-00 00:00:00', 0, '', '0', 24),
(339, '2019-04-26', NULL, '19:00', '20:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 674, 247, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-25 09:03:58', '0000-00-00 00:00:00', 0, '', '1', 24),
(338, '2019-04-25', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 674, 246, 27, 135, 1, 'H', 1, 1, 'ONLINE', 'DONE', 68, '', '2019-04-25 13:57:51', '2019-04-25 03:24:11', '0000-00-00 00:00:00', 0, '', '1', 78),
(337, '2019-04-25', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 674, 246, 27, 135, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-25 03:21:23', '0000-00-00 00:00:00', 0, '', '0', 78),
(336, '2019-04-25', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 674, 246, 27, 135, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-25 02:47:01', '0000-00-00 00:00:00', 0, '', '0', 78),
(335, '2019-04-25', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 674, 246, 27, 135, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-25 02:44:02', '0000-00-00 00:00:00', 0, '', '0', 78),
(334, '2019-04-25', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 674, 246, 27, 135, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-25 02:43:40', '0000-00-00 00:00:00', 0, '', '0', 78),
(333, '2019-04-25', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 674, 246, 27, 135, 1, 'H', 1, 1, 'ONLINE', 'DONE', 66, '', '2019-04-25 12:47:54', '2019-04-25 02:14:00', '0000-00-00 00:00:00', 0, '', '1', 78),
(332, '2019-04-25', NULL, '07:00', '12:00', 'golu', '7080245777', '', NULL, 672, 241, 27, 118, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-24 05:52:15', '2019-04-25 00:27:53', 0, 'U', '2', 28),
(331, '2019-04-23', NULL, '04:00', '06:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 669, 238, 98, 139, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-23 02:41:48', '0000-00-00 00:00:00', 0, '', '1', 78),
(330, '2019-04-23', NULL, '04:00', '06:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 669, 238, 98, 139, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-23 02:37:51', '0000-00-00 00:00:00', 0, '', '1', 78),
(329, '2019-04-18', NULL, '16:00', '18:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 666, 233, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-18 05:56:35', '0000-00-00 00:00:00', 0, '', '1', 78),
(328, '2019-04-18', NULL, '16:00', '18:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 666, 233, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-18 05:28:08', '0000-00-00 00:00:00', 0, '', '1', 78),
(327, '2019-04-19', NULL, '22:00', '23:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 666, 231, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-18 05:25:39', '0000-00-00 00:00:00', 0, '', '1', 78),
(326, '2019-04-16', NULL, '16:00', '18:00', 'Swati ', '8630417034', 'swati.varadwaj@gmail.com', NULL, 665, 230, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-16 02:25:31', '0000-00-00 00:00:00', 0, '', '1', 67),
(325, '2019-04-16', NULL, '16:00', '18:00', 'Swati ', '8630417034', 'swati.varadwaj@gmail.com', NULL, 665, 230, 27, 135, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-16 02:15:42', '0000-00-00 00:00:00', 0, '', '1', 67),
(324, '2019-04-16', NULL, '19:00', '20:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 665, 228, 27, 135, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-16 01:30:52', '0000-00-00 00:00:00', 0, '', '1', 78),
(323, '2019-04-16', NULL, '16:00', '18:00', 'HITENDRA2551', '7080245777', '', NULL, 644, 214, 27, 105, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-15 07:27:05', '0000-00-00 00:00:00', 0, '', '1', 28),
(322, '2019-04-15', NULL, '00:15', '01:15', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 644, 215, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 65, '', '2019-04-15 16:27:07', '2019-04-15 05:49:14', '0000-00-00 00:00:00', 0, '', '1', 78),
(321, '2019-04-15', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 644, 213, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-15 05:38:12', '0000-00-00 00:00:00', 0, '', '0', 78),
(320, '2019-04-13', NULL, '08:00', '09:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 644, 213, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-13 03:33:24', '0000-00-00 00:00:00', 0, '', '0', 32),
(319, '2019-04-12', NULL, '16:00', '18:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 644, 214, 27, 105, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-12 01:55:37', '0000-00-00 00:00:00', 0, '', '1', 78),
(318, '2019-04-15', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 642, 209, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-12 01:27:42', '0000-00-00 00:00:00', 0, '', '0', 78),
(317, '2019-04-15', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 642, 209, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-12 01:27:42', '0000-00-00 00:00:00', 0, '', '0', 78),
(316, '2019-04-15', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 642, 209, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-12 01:27:42', '0000-00-00 00:00:00', 0, '', '0', 78),
(315, '2019-04-10', NULL, '08:00', '09:00', 'Amit', '7080245777', 'set@tex.com', 3, 642, 210, 27, 105, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-10 08:31:02', '0000-00-00 00:00:00', 0, '', '1', 28),
(314, '2019-04-10', NULL, '08:00', '09:00', 'Amit', '7080245777', 'set@tex.com', 24, 642, 210, 27, 105, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-10 03:22:36', '0000-00-00 00:00:00', 0, '', '1', 28),
(444, '2019-07-06', NULL, '18:15:00', '19:15:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-05 22:10:19', '2019-07-06 08:40:55', 0, 'U', '2', 78),
(313, '2019-04-09', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 642, 210, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-09 08:00:21', '0000-00-00 00:00:00', 0, '', '1', 78),
(312, '2019-04-09', NULL, '08:00', '09:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 642, 210, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-09 07:31:42', '0000-00-00 00:00:00', 0, '', '1', 32),
(311, '2019-04-09', NULL, '08:00', '09:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 642, 210, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 64, '', '2019-04-09 18:01:16', '2019-04-09 07:29:59', '0000-00-00 00:00:00', 0, '', '1', 32),
(310, '2019-04-08', NULL, '20:00', '21:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 585, 195, 27, 37, 4, 'C', 1, 1, 'ONLINE', 'DONE', 63, '', '2019-04-08 11:20:20', '2019-04-08 00:48:13', '0000-00-00 00:00:00', 0, '', '1', 24),
(309, '2019-04-08', NULL, '20:00', '21:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 23, 585, 195, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-05 07:22:00', '2019-04-08 11:21:46', 0, 'U', '2', 24),
(308, '2019-04-08', NULL, '20:00', '21:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 23, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-05 07:21:29', '0000-00-00 00:00:00', 0, '', '0', 24),
(307, '2019-04-08', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 61, '', '2019-04-04 16:49:37', '2019-04-04 06:14:12', '0000-00-00 00:00:00', 0, '', '1', 78),
(306, '2019-04-08', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 60, '', '2019-04-04 16:31:38', '2019-04-04 05:58:51', '0000-00-00 00:00:00', 0, '', '1', 78),
(305, '2019-04-08', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 59, '', '2019-04-04 16:22:18', '2019-04-04 05:49:20', '0000-00-00 00:00:00', 0, '', '1', 78),
(304, '2019-04-08', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 58, '', '2019-04-04 16:11:54', '2019-04-04 05:38:44', '0000-00-00 00:00:00', 0, '', '1', 78),
(303, '2019-04-08', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 57, '', '2019-04-04 14:56:12', '2019-04-04 04:23:12', '2019-04-04 15:28:31', 0, 'U', '2', 78),
(302, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 56, '', '2019-04-03 17:18:06', '2019-04-03 06:46:36', '0000-00-00 00:00:00', 0, '', '1', 78),
(301, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 55, '', '2019-04-03 16:35:16', '2019-04-03 05:58:54', '0000-00-00 00:00:00', 0, '', '1', 78),
(300, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-03 05:44:46', '0000-00-00 00:00:00', 0, '', '0', 78),
(299, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 54, '', '2019-04-03 16:02:13', '2019-04-03 05:28:54', '0000-00-00 00:00:00', 0, '', '1', 78),
(298, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-03 05:21:51', '0000-00-00 00:00:00', 0, '', '0', 78),
(297, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 53, '', '2019-04-03 15:26:07', '2019-04-03 04:53:05', '0000-00-00 00:00:00', 0, '', '1', 78),
(296, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-03 04:48:35', '0000-00-00 00:00:00', 0, '', '0', 78),
(295, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-03 04:44:25', '0000-00-00 00:00:00', 0, '', '0', 78),
(294, '2019-04-03', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 67, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 51, '', '2019-04-03 12:25:27', '2019-04-03 01:52:55', '0000-00-00 00:00:00', 0, '', '1', 78),
(293, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 06:10:29', '0000-00-00 00:00:00', 0, '', '0', 78),
(292, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 50, '', '2019-04-02 16:09:46', '2019-04-02 05:37:08', '0000-00-00 00:00:00', 0, '', '1', 78),
(291, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 05:29:55', '0000-00-00 00:00:00', 0, '', '0', 78),
(290, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 05:21:34', '0000-00-00 00:00:00', 0, '', '0', 78),
(289, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 05:21:02', '0000-00-00 00:00:00', 0, '', '0', 78),
(288, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 05:07:00', '0000-00-00 00:00:00', 0, '', '0', 78),
(287, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 04:56:39', '0000-00-00 00:00:00', 0, '', '0', 78),
(286, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 04:56:21', '0000-00-00 00:00:00', 0, '', '0', 78),
(285, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 49, '', '2019-04-02 12:36:58', '2019-04-02 02:02:36', '0000-00-00 00:00:00', 0, '', '1', 78),
(284, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 48, '', '2019-04-02 12:21:16', '2019-04-02 01:47:59', '0000-00-00 00:00:00', 0, '', '1', 78),
(283, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 01:30:24', '0000-00-00 00:00:00', 0, '', '0', 78),
(282, '2019-04-02', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-02 01:30:05', '0000-00-00 00:00:00', 0, '', '0', 78),
(281, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 47, '', '2019-04-01 17:49:36', '2019-04-01 07:17:10', '0000-00-00 00:00:00', 0, '', '1', 78),
(280, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 46, '', '2019-04-01 17:39:03', '2019-04-01 07:05:58', '0000-00-00 00:00:00', 0, '', '1', 78),
(279, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:49:18', '0000-00-00 00:00:00', 0, '', '0', 78),
(278, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:46:15', '0000-00-00 00:00:00', 0, '', '0', 78),
(277, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:45:19', '0000-00-00 00:00:00', 0, '', '0', 78),
(276, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:45:14', '0000-00-00 00:00:00', 0, '', '1', 78),
(275, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:44:11', '0000-00-00 00:00:00', 0, '', '0', 78),
(274, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:37:10', '0000-00-00 00:00:00', 0, '', '1', 78),
(273, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:28:33', '0000-00-00 00:00:00', 0, '', '0', 78),
(272, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(271, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(270, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(269, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(268, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(267, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(266, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(265, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(264, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(263, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(262, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(261, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(260, '2019-04-01', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:22:09', '0000-00-00 00:00:00', 0, '', '0', 78),
(259, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 45, '', '2019-04-01 14:36:52', '2019-04-01 04:03:32', '0000-00-00 00:00:00', 0, '', '1', 78),
(258, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:02:52', '0000-00-00 00:00:00', 0, '', '1', 78),
(257, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 22, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 04:01:14', '0000-00-00 00:00:00', 0, '', '0', 78),
(256, '2019-04-01', NULL, '08:00', '09:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 22, 590, 202, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:57:17', '0000-00-00 00:00:00', 0, '', '0', 78),
(255, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:55:07', '0000-00-00 00:00:00', 0, '', '0', 78),
(254, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:48:42', '0000-00-00 00:00:00', 0, '', '1', 78),
(253, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:47:13', '0000-00-00 00:00:00', 0, '', '1', 78),
(252, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:42:52', '0000-00-00 00:00:00', 0, '', '1', 78),
(251, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:42:52', '0000-00-00 00:00:00', 0, '', '0', 78),
(250, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:42:52', '0000-00-00 00:00:00', 0, '', '0', 78),
(249, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:42:52', '0000-00-00 00:00:00', 0, '', '0', 78),
(248, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:42:52', '0000-00-00 00:00:00', 0, '', '0', 78),
(247, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 590, 203, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-04-01 03:42:52', '0000-00-00 00:00:00', 0, '', '0', 78),
(246, '2019-04-02', NULL, '06:00', '07:00', 'Akki ', '9910982600', 'akki@gmail.com', NULL, 585, 194, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-30 13:16:52', '0000-00-00 00:00:00', 0, '', '1', 85),
(245, '2019-04-01', NULL, '08:00', '09:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 588, 199, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 43, '', '2019-03-30 18:34:09', '2019-03-30 08:00:58', '0000-00-00 00:00:00', 0, '', '1', 24),
(244, '2019-04-01', NULL, '06:00', '07:00', 'Amit', '7080245777', 'set@tex.com', 7, 585, 194, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-28 06:51:20', '0000-00-00 00:00:00', 0, '', '1', 28),
(243, '2019-04-08', NULL, '00:15', '01:15', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 588, 198, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 42, '', '2019-03-28 16:18:27', '2019-03-28 05:45:16', '0000-00-00 00:00:00', 0, '', '1', 78),
(242, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 588, 198, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 41, '', '2019-03-28 15:18:09', '2019-03-28 04:45:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(241, '2019-04-08', NULL, '00:15', '01:15', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 588, 198, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 40, '', '2019-03-28 14:54:41', '2019-03-28 04:22:15', '0000-00-00 00:00:00', 0, '', '1', 78),
(240, '2019-04-01', NULL, '08:00', '09:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 588, 199, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 39, '', '2019-03-28 14:24:11', '2019-03-28 03:52:09', '0000-00-00 00:00:00', 0, '', '1', 24),
(239, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra', '9718777468', 'dharmendrarajput12@gmail.com', 28, 588, 198, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 38, '', '2019-03-28 13:56:24', '2019-03-28 03:23:25', '0000-00-00 00:00:00', 0, '', '1', 78),
(238, '2019-04-01', NULL, '06:00', '07:00', 'Amit', '7080245777', 'set@tex.com', 5, 585, 194, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-28 03:09:54', '0000-00-00 00:00:00', 0, '', '1', 28),
(237, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 588, 198, 27, 105, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-03-28 03:05:46', '0000-00-00 00:00:00', 0, '', '1', 78),
(236, '2019-04-01', NULL, '08:00', '09:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 588, 199, 27, 105, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 03:05:12', '0000-00-00 00:00:00', 0, '', '0', 24),
(235, '2019-04-01', NULL, '08:00', '09:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 588, 199, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 37, '', '2019-03-28 13:38:42', '2019-03-28 03:04:41', '0000-00-00 00:00:00', 0, '', '1', 24),
(234, '2019-04-01', NULL, '00:15', '01:15', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 588, 198, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 36, '', '2019-03-28 13:07:32', '2019-03-28 02:33:40', '0000-00-00 00:00:00', 0, '', '1', 78),
(231, '2019-04-02', NULL, '06:00', '07:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 01:38:47', '0000-00-00 00:00:00', 0, '', '0', 78),
(232, '2019-04-01', NULL, '06:00', '07:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 585, 194, 27, 37, 4, 'C', 1, 1, 'ONLINE', 'DONE', 35, '', '2019-03-28 12:58:07', '2019-03-28 02:24:41', '0000-00-00 00:00:00', 0, '', '1', 24),
(233, '2019-04-01', NULL, '06:00', '07:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 02:24:52', '0000-00-00 00:00:00', 0, '', '0', 24),
(230, '2019-04-01', NULL, '06:00', '07:00', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 01:37:28', '0000-00-00 00:00:00', 0, '', '0', 78),
(229, '2019-04-01', NULL, '06:00', '07:00', 'Danish ', '9430464652', 'danishakhtar.010@gmail.com', 78, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 01:10:11', '0000-00-00 00:00:00', 0, '', '0', 78),
(228, '2019-04-01', NULL, '06:00', '07:00', 'Danish ', '9430464652', 'danishakhtar.010@gmail.com', 78, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 01:09:57', '0000-00-00 00:00:00', 0, '', '0', 78),
(227, '2019-04-01', NULL, '06:00', '07:00', 'Danish ', '9430464652', 'danishakhtar.010@gmail.com', 78, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-28 01:06:12', '0000-00-00 00:00:00', 0, '', '0', 78),
(226, '2019-04-01', NULL, '06:00', '07:00', 'Danish ', '9430464652', 'danishakhtar.010@gmail.com', 78, 585, 194, 27, 37, 4, 'C', 1, 1, 'ONLINE', 'DONE', 34, '', '2019-03-28 11:39:18', '2019-03-28 01:06:06', '0000-00-00 00:00:00', 0, '', '1', 78),
(443, '2019-07-05', NULL, '12:00:00', '15:00:00', 'indra dev', '8299043502', 'sonu099099@gmail.com', 0, 786, 299, 87, 163, 42, 'H', 500, 500, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-07-04 05:41:51', '0000-00-00 00:00:00', 0, '', '1', 127),
(224, '2019-04-01', NULL, '08:00', '09:00', 'Amit', '7080245777', 'set@tex.com', 5, 584, 193, 27, 105, 1, 'H', 1, 1, 'ONLINE', 'DONE', 33, '', '2019-03-28 00:06:45', '2019-03-27 13:33:50', '0000-00-00 00:00:00', 0, '', '1', 28),
(399, '2019-06-04', NULL, '00:00:00', '23:30:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 820, 340, 27, 168, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-04 06:00:47', '0000-00-00 00:00:00', 0, '', '1', 78),
(400, '2019-06-06', NULL, '00:00:00', '23:30:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 820, 340, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-06-06 07:39:55', '0000-00-00 00:00:00', 0, '', '0', 78),
(352, '2019-05-14', NULL, '00:00:00', '01:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 327, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 01:02:46', '0000-00-00 00:00:00', 0, '', '0', 46),
(353, '2019-05-14', NULL, '00:00:00', '01:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 327, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 01:14:20', '0000-00-00 00:00:00', 0, '', '0', 46),
(354, '2019-05-14', NULL, '00:00:00', '01:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 327, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 01:19:37', '0000-00-00 00:00:00', 0, '', '0', 46),
(355, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 01:36:10', '0000-00-00 00:00:00', 0, '', '0', 46),
(356, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 01:49:47', '0000-00-00 00:00:00', 0, '', '0', 46),
(357, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 01:50:46', '0000-00-00 00:00:00', 0, '', '0', 46),
(358, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 02:04:49', '0000-00-00 00:00:00', 0, '', '0', 46),
(359, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 02:10:04', '0000-00-00 00:00:00', 0, '', '0', 46),
(360, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Azad', '9431967158', 'azadhussain16@yahoo.in', 0, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 02:10:33', '0000-00-00 00:00:00', 0, '', '0', 46),
(361, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-14 03:22:28', '0000-00-00 00:00:00', 0, '', '0', 78),
(350, '2019-05-08', NULL, '02:00:00', '03:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 78, 810, 328, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-08 03:05:27', '0000-00-00 00:00:00', 0, '', '0', 78),
(351, '2019-05-08', NULL, '02:00:00', '03:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 78, 810, 328, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 71, '', '2019-05-08 13:44:35', '2019-05-08 03:10:06', '0000-00-00 00:00:00', 0, '', '1', 78),
(362, '2019-05-14', NULL, '02:00:00', '03:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 810, 328, 27, 168, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-14 03:22:29', '0000-00-00 00:00:00', 0, '', '1', 78),
(209, '2019-03-26', NULL, '04:30', '09:30', 'Amit', '7080245777', 'set@tex.com', 5, 126, 143, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-26 12:56:50', '2019-03-26 23:27:04', 0, 'U', '2', 28),
(208, '2019-03-26', NULL, '04:30', '09:30', 'Amit', '7080245777', 'set@tex.com', 5, 126, 143, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 12:54:00', '0000-00-00 00:00:00', 0, '', '0', 28),
(207, '2019-03-26', NULL, '07:00', '10:45', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 126, 144, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 12:22:52', '0000-00-00 00:00:00', 0, '', '0', 24),
(206, '2019-03-26', NULL, '07:00', '10:45', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 126, 144, 27, 37, 4, 'C', 1, 1, 'ONLINE', 'DONE', 29, '', '2019-03-26 22:55:04', '2019-03-26 12:22:38', '0000-00-00 00:00:00', 0, '', '1', 24),
(205, '2019-03-26', NULL, '04:30', '09:30', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-26 12:19:18', '0000-00-00 00:00:00', 0, '', '1', 24),
(204, '2019-03-26', NULL, '04:30', '09:30', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 4, 126, 143, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-26 07:14:24', '2019-03-26 17:44:42', 0, 'U', '2', 24),
(203, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 06:34:05', '0000-00-00 00:00:00', 0, '', '0', 78),
(202, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 06:33:56', '0000-00-00 00:00:00', 0, '', '0', 78),
(201, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 06:27:06', '0000-00-00 00:00:00', 0, '', '0', 78),
(200, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 06:26:56', '0000-00-00 00:00:00', 0, '', '0', 78),
(199, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra ', '8393014240', 'dharmendrarajput12@gmail.com', NULL, 126, 143, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-03-26 06:23:24', '0000-00-00 00:00:00', 0, '', '1', 78),
(198, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-03-26 06:01:02', '0000-00-00 00:00:00', 0, '', '0', 78),
(197, '2019-03-26', NULL, '04:30', '09:30', 'Dharmendra', '8393014240', 'dharmendrarajput12@gmail.com', 0, 126, 143, 27, 37, 4, 'C', 1, 1, 'ONLINE', 'DONE', 28, '', '2019-03-26 16:41:24', '2019-03-26 06:00:52', '2019-07-18 22:28:05', 0, 'U', '2', 78),
(386, '2019-05-22', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 95, '', '2019-05-22 17:18:00', '2019-05-22 06:45:35', '0000-00-00 00:00:00', 0, '', '1', 78),
(387, '2019-05-22', NULL, '00:00', '01:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 76, 818, 338, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 96, '', '2019-05-22 17:31:25', '2019-05-22 06:59:16', '0000-00-00 00:00:00', 0, '', '1', 78),
(388, '2019-05-22', NULL, '00:00', '01:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 338, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 97, '', '2019-05-22 18:05:47', '2019-05-22 07:32:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(389, '2019-05-22', NULL, '00:00', '01:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 338, 27, 166, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-05-22 07:50:12', '0000-00-00 00:00:00', 0, '', '0', 78),
(390, '2019-05-22', NULL, '00:00', '01:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 338, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 98, '', '2019-05-22 18:23:51', '2019-05-22 07:50:37', '0000-00-00 00:00:00', 0, '', '1', 78),
(391, '2019-05-22', NULL, '00:00', '01:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 338, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 99, '', '2019-05-22 18:29:11', '2019-05-22 07:57:08', '0000-00-00 00:00:00', 0, '', '1', 78),
(392, '2019-05-22', NULL, '00:00', '01:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 818, 338, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-22 11:37:21', '0000-00-00 00:00:00', 0, '', '1', 32),
(393, '2019-05-23', NULL, '00:00', '01:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 338, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-23 02:16:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(394, '2019-05-26', NULL, '00:00:00', '23:30:00', 'ANOOP', '7235999099', 'anprt123456@gmail.com', 0, 820, 340, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 100, '', '2019-05-26 20:40:15', '2019-05-26 10:07:59', '0000-00-00 00:00:00', 0, '', '1', 24),
(395, '2019-05-26', NULL, '00:00:00', '23:30:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 820, 340, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 101, '', '2019-05-26 20:44:49', '2019-05-26 10:13:06', '2019-05-26 21:00:20', 0, 'U', '2', 32),
(396, '2019-05-27', NULL, '00:00:00', '23:30:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 820, 340, 27, 168, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-27 13:06:56', '0000-00-00 00:00:00', 0, '', '1', 32),
(397, '2019-05-28', NULL, '00:00:00', '23:30:00', 'patient name', '1234567890', 'xyz@gmail.com', 0, 820, 340, 27, 168, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-05-27 18:26:32', '0000-00-00 00:00:00', 0, '', '1', 32),
(398, '2019-05-30', NULL, '00:00:00', '23:30:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 820, 340, 27, 168, 31, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-05-30 09:53:00', '0000-00-00 00:00:00', 0, '', '1', 32),
(401, '2019-06-07', NULL, '00:00:00', '23:30:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 820, 340, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-06-07 07:00:53', '0000-00-00 00:00:00', 0, '', '0', 78),
(402, '2019-06-18', NULL, '00:00:00', '23:30:00', 'ANUJ', '9415831588', 'anujmishravns30@gmail.com', 0, 820, 340, 27, 168, 31, 'H', 1, 1, 'ONLINE', 'DONE', 102, '', '2019-06-17 11:44:52', '2019-06-17 01:07:43', '0000-00-00 00:00:00', 0, '', '1', 120),
(403, '2019-06-19', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 103, '', '2019-06-19 11:58:22', '2019-06-19 01:25:50', '0000-00-00 00:00:00', 0, '', '1', 78),
(404, '2019-06-19', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-19 01:29:44', '0000-00-00 00:00:00', 0, '', '1', 78),
(405, '2019-06-19', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 45, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 104, '', '2019-06-19 12:30:16', '2019-06-19 01:49:50', '2019-06-19 12:33:30', 0, 'U', '2', 78),
(406, '2019-06-19', NULL, '02:00', '03:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 105, '', '2019-06-19 12:49:37', '2019-06-19 02:17:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(407, '2019-06-24', NULL, '10:00', '15:00', 'Amitesh', '8009742403', 'helloguruji98@gmail.com', 0, 691, 267, 90, 143, 38, 'H', 500, 500, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-06-20 15:00:11', '0000-00-00 00:00:00', 0, '', '0', 93),
(408, '2019-06-21', NULL, '09:00:00', '16:00:00', 'Amitesh', '8009742403', 'helloguruji98@gmail.com', 0, 769, 279, 103, 153, 38, 'H', 300, 300, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-06-20 15:02:25', '2019-06-21 01:33:36', 0, 'U', '2', 93),
(409, '2019-06-21', NULL, '00:00:00', '23:30:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 820, 340, 27, 168, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-06-21 01:57:51', '0000-00-00 00:00:00', 0, '', '0', 78),
(410, '2019-06-21', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-21 02:08:00', '0000-00-00 00:00:00', 0, '', '1', 78);
INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_time`, `from_timing`, `to_timing`, `appointment_name`, `appointment_mobile`, `appointment_email`, `age`, `date_id`, `time_id`, `doctor_id`, `practice_id`, `institute_id`, `institution_type`, `fee`, `amount`, `payment_mode`, `payment_status`, `checkout_id`, `ref_no`, `pay_date`, `book_date`, `cancel_date`, `cancel_reason`, `cancel_by`, `status`, `user_id`) VALUES
(411, '2019-06-21', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'ONLINE', 'DONE', 106, '', '2019-06-21 12:43:47', '2019-06-21 02:11:18', '0000-00-00 00:00:00', 0, '', '1', 78),
(412, '2019-06-21', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-21 02:29:10', '0000-00-00 00:00:00', 0, '', '1', 78),
(413, '2019-06-24', NULL, '02:00', '03:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 818, 337, 27, 166, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-24 00:22:52', '2019-06-24 16:32:12', 0, 'U', '2', 78),
(414, '2019-06-25', NULL, '05:00:00', '06:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 21, 887, 346, 27, 172, 31, 'H', 1, 1, 'ONLINE', 'DONE', 107, '', '2019-06-25 19:11:59', '2019-06-25 08:38:42', '2019-06-25 19:13:20', 0, 'U', '2', 78),
(415, '2019-06-26', NULL, '05:00:00', '06:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-26 04:24:09', '0000-00-00 00:00:00', 0, '', '1', 78),
(416, '2019-06-26', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-26 07:03:06', '0000-00-00 00:00:00', 0, '', '1', 78),
(417, '2019-06-27', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-06-27 07:10:19', '0000-00-00 00:00:00', 0, '', '0', 78),
(418, '2019-06-27', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-06-27 07:13:25', '0000-00-00 00:00:00', 0, '', '1', 78),
(419, '2019-06-29', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 888, 347, 27, 177, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-06-29 06:01:16', '0000-00-00 00:00:00', 0, '', '0', 78),
(420, '2019-07-01', NULL, '05:00:00', '06:00:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 31, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-01 06:31:44', '0000-00-00 00:00:00', 0, '', '1', 32),
(421, '2019-07-01', NULL, '05:00:00', '06:00:00', 'Danish Akhtar', '9430464652', 'danishakhtar.010@gmail.com', NULL, 888, 347, 27, 177, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-07-01 06:59:00', '0000-00-00 00:00:00', 0, '', '1', 108),
(422, '2019-07-02', NULL, '20:00', '21:00', 'amit amit', '7978003492', 'upchar.developer@gmail.com', NULL, 585, 195, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-01 12:43:18', '0000-00-00 00:00:00', 0, '', '0', 125),
(423, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 888, 347, 27, 177, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 00:49:59', '0000-00-00 00:00:00', 0, '', '1', 78),
(424, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 01:57:26', '0000-00-00 00:00:00', 0, '', '0', 78),
(425, '2019-07-02', NULL, '05:00:00', '06:00:00', 'rahul', '8009957777', 'amit@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 01:57:33', '0000-00-00 00:00:00', 0, '', '1', 32),
(426, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 01:59:23', '0000-00-00 00:00:00', 0, '', '1', 78),
(427, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 02:25:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(428, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 02:27:08', '0000-00-00 00:00:00', 0, '', '0', 78),
(429, '2019-07-02', NULL, '05:00:00', '06:00:00', 'mohit', '9911077446', 'mohitupcharr@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 02:36:01', '0000-00-00 00:00:00', 0, '', '0', 29),
(430, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 02:48:19', '0000-00-00 00:00:00', 0, '', '0', 78),
(431, '2019-07-02', NULL, '05:00:00', '06:00:00', 'mohit bharti', '9911077446', 'mohitupcharr@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 02:49:35', '0000-00-00 00:00:00', 0, '', '0', 29),
(432, '2019-07-02', NULL, '06:00', '07:00', 'ammmhggdggd', '8393014240', 'amit@gmail.com', NULL, 585, 194, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 04:43:48', '0000-00-00 00:00:00', 0, '', '0', 78),
(433, '2019-07-02', NULL, '06:00', '07:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 585, 194, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 04:51:09', '0000-00-00 00:00:00', 0, '', '1', 78),
(434, '2019-07-02', NULL, '05:00:00', '06:00:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 887, 346, 27, 172, 31, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 04:59:17', '0000-00-00 00:00:00', 0, '', '0', 78),
(435, '2019-07-02', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-02 05:20:05', '0000-00-00 00:00:00', 0, '', '0', 78),
(436, '2019-07-02', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 05:23:19', '0000-00-00 00:00:00', 0, '', '1', 78),
(437, '2019-07-02', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 06:26:52', '0000-00-00 00:00:00', 0, '', '1', 78),
(438, '2019-07-02', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-07-02 06:28:20', '0000-00-00 00:00:00', 0, '', '1', 78),
(449, '2019-07-15', NULL, '14:00:00', '16:00:00', 'BRIJENDRA', '7905225054', 'lenovo.brij@gmail.com', 28, 783, 296, 114, 160, 38, 'H', 300, 300, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-07-15 03:43:59', '0000-00-00 00:00:00', 0, '', '0', 133),
(439, '2019-07-02', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 06:31:27', '0000-00-00 00:00:00', 0, '', '1', 78),
(440, '2019-07-02', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 06:37:36', '0000-00-00 00:00:00', 0, '', '1', 78),
(441, '2019-07-03', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-02 06:43:30', '0000-00-00 00:00:00', 0, '', '1', 78),
(442, '2019-07-03', NULL, '18:15:00', '19:15:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 889, 349, 27, 191, 1, 'H', 1, 1, 'ONLINE', 'DONE', 109, '', '2019-07-02 17:15:36', '2019-07-02 06:44:12', '0000-00-00 00:00:00', 0, '', '1', 78),
(445, '2019-07-06', NULL, '18:15:00', '19:15:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-06 01:47:54', '0000-00-00 00:00:00', 0, '', '1', 78),
(446, '2019-07-08', NULL, '18:15:00', '19:15:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-08 02:13:49', '2019-07-08 12:44:30', 0, 'U', '2', 78),
(447, '2019-07-08', NULL, '04:00:00', '05:00:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 889, 348, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-08 02:15:15', '0000-00-00 00:00:00', 0, '', '1', 78),
(448, '2019-07-08', NULL, '18:15:00', '19:15:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 889, 349, 27, 191, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-08 04:42:28', '2019-07-08 15:13:15', 0, 'U', '2', 78),
(450, '2019-07-20', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 894, 357, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-20 07:12:53', '0000-00-00 00:00:00', 0, '', '1', 78),
(451, '2019-07-25', NULL, '20:00', '21:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 894, 357, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-25 09:54:52', '0000-00-00 00:00:00', 0, '', '1', 78),
(452, '2019-08-01', NULL, '06:00', '07:00', 'sweta panday', '8009957777', 'thebest.krishna@gmail.com', 0, 894, 358, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-31 06:31:24', '0000-00-00 00:00:00', 0, '', '1', 32),
(453, '2019-08-01', NULL, '06:00', '07:00', 'priya', '8840653983', 'imshwetapandey73@gmail.com', 21, 894, 358, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-07-31 06:31:46', '0000-00-00 00:00:00', 0, '', '1', 32),
(454, '2019-08-01', NULL, '19:00:00', '20:00:00', 'Sita devi', '8317001377', 'Dgbhu2013@gmail.com', 50, 786, 300, 87, 163, 42, 'H', 500, 500, 'COC', 'DONE', 0, '', '0000-00-00 00:00:00', '2019-08-01 07:33:22', '0000-00-00 00:00:00', 0, '', '1', 32),
(455, '2019-08-06', NULL, '09:00:00', '10:00:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 893, 356, 27, 192, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-06 06:40:29', '0000-00-00 00:00:00', 0, '', '1', 32),
(456, '2019-08-10', NULL, '20:00', '21:00', 'Dharmendra', '8393014240', 'dharmendrarajput128@gmail.com', 0, 894, 357, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-07 02:35:08', '0000-00-00 00:00:00', 0, '', '1', 78),
(457, '2019-08-09', NULL, '12:00:00', '15:00:00', 'Sita devi', '8317001377', 'dgbhu2013@gmail.com', 50, 786, 299, 87, 163, 42, 'H', 500, 500, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-08 20:12:38', '0000-00-00 00:00:00', 0, '', '1', 32),
(458, '2019-08-09', NULL, '20:00', '21:00', 'san', '8393014240', 'dharmendrarajput128@gmail.com', 90, 894, 357, 27, 37, 4, 'C', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-08 20:22:38', '0000-00-00 00:00:00', 0, '', '1', 78),
(459, '2019-08-12', NULL, '04:30:00', '05:15:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 893, 355, 27, 192, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-10 09:00:35', '0000-00-00 00:00:00', 0, '', '1', 32),
(460, '2019-08-13', NULL, '09:00:00', '10:00:00', 'HITENDRA', '8009957777', 'thebest.krishna@gmail.com', 0, 893, 356, 27, 192, 1, 'H', 1, 1, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-11 15:03:17', '0000-00-00 00:00:00', 0, '', '1', 32),
(461, '2019-08-31', NULL, '12:00:00', '15:00:00', 'sita devi', '8317001377', 'Dgbhu2013@gmail.com', 50, 786, 299, 87, 163, 42, 'H', 500, 500, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2019-08-30 20:33:58', '0000-00-00 00:00:00', 0, '', '1', 32),
(462, '2019-08-31', NULL, '20:00', '21:00', 'Kamlesh', '7018744265', 'pkthakur2009@gmail.com', 23, 894, 357, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-08-31 05:32:48', '0000-00-00 00:00:00', 0, '', '0', 141),
(463, '2019-08-31', NULL, '10:00', '15:00', 'Kamlesh', '7018744265', 'pkthakur2009@gmail.com', 23, 691, 267, 90, 143, 38, 'H', 500, 500, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-08-31 05:33:54', '0000-00-00 00:00:00', 0, '', '0', 141),
(464, '2019-09-10', NULL, '20:00', '21:00', 'Dharmendra', '8630417034', 'dharmendrarajput128@gmail.com', NULL, 894, 357, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-09-10 02:30:48', '0000-00-00 00:00:00', 0, '', '0', 67),
(465, '2019-09-10', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 894, 357, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-09-10 02:56:04', '0000-00-00 00:00:00', 0, '', '0', 78),
(466, '2019-09-10', NULL, '20:00', '21:00', 'Dharmendra ', '8393014240', 'dharmendrarajput128@gmail.com', NULL, 894, 357, 27, 37, 4, 'C', 1, 1, 'NA', 'NA', 0, '', '0000-00-00 00:00:00', '2019-09-10 02:58:13', '0000-00-00 00:00:00', 0, '', '0', 78),
(467, '2026-08-22', NULL, '10:00:00', '13:00:00', 'Amit Kumar', '6393591977', 'amitctu67@gmail.com', NULL, 777, 289, 64, 117, 29, 'H', 300, 300, 'COC', 'UNPAID', 0, '', '0000-00-00 00:00:00', '2026-08-21 03:59:41', '0000-00-00 00:00:00', 0, '', '1', 149);

-- --------------------------------------------------------

--
-- Table structure for table `biomedical`
--

CREATE TABLE `biomedical` (
  `id` int(11) NOT NULL,
  `short_desc` varchar(250) NOT NULL,
  `long_desc` varchar(500) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `distributor_name` varchar(250) NOT NULL,
  `distributor_mobile` varchar(20) NOT NULL,
  `distributor_email` varchar(150) NOT NULL,
  `price` varchar(500) NOT NULL,
  `mrp_price` varchar(250) NOT NULL,
  `discount_price` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `equipment` varchar(250) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `biomedical`
--

INSERT INTO `biomedical` (`id`, `short_desc`, `long_desc`, `company_name`, `distributor_name`, `distributor_mobile`, `distributor_email`, `price`, `mrp_price`, `discount_price`, `image`, `equipment`, `date`) VALUES
(10, 'CodeIgniter is a powerful PHP framework with a very small footprint, built for developers who need a simple and elegant toolkit to create full-featured web applications. CodeIgniter was created by EllisLab, and is now a project of the British Columbi', 'CodeIgniter is a powerful PHP framework with a very small footprint, built for developers who need a simple and elegant toolkit to create full-featured web applications. CodeIgniter was created by EllisLab, and is now a project of the British Columbia Institute of Technology.', 'Gyantech International pvt ltd', 'Amit Kumar', '8009957777', 'upcharr@gmail.com', '1000', '1500', '10%', '_profile_pic_4874549982019-05-28.jpg', 'Ventilator', '2019-05-28 03:48:48'),
(11, 'CodeIgniter is a powerful PHP framework with a very small footprint, built for developers who need a simple and elegant toolkit to create full-featured web applications. CodeIgniter was created by EllisLab, and is now a project of the British Columbi', 'CodeIgniter is a powerful PHP framework with a very small footprint, built for developers who need a simple and elegant toolkit to create full-featured web applications. CodeIgniter was created by EllisLab, and is now a project of the British Columbia Institute of Technology.', 'upcharr medical Solution', 'Dharmendra Rajput', '8393014240', 'dharmendrarajput128@gmail.com', '2000', '2500', '5%', '_profile_pic_9911172072019-05-28.jpg', '', '2019-05-28 03:50:00'),
(13, 'This tutorial has been prepared for developers who would like to learn the art of developing websites using CodeIgniter. It provides a complete understanding of this framework.', 'This tutorial has been prepared for developers who would like to learn the art of developing websites using CodeIgniter. It provides a complete understanding of this framework.', 'HCL', 'Mohit Kumar', '8009957777', 'upcharr@gmail.com', '5000', '5500', '10%', '_profile_pic_846268772019-05-28.jpg', 'X Ray', '2019-05-28 04:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `chemistlogin`
--

CREATE TABLE `chemistlogin` (
  `USERID` mediumint(9) NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FBUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `LNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PROFILEIMG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LPROFILE` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SM_PROFILEIMG` text NOT NULL,
  `MOBILE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ALTEMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ALTCONTACT` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CART` text NOT NULL,
  `OTP` int(6) DEFAULT NULL,
  `APPROVED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COMPLETED_PROFLE` enum('0','1') NOT NULL DEFAULT '0',
  `APPROVED` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `ADDRESS_ID` int(11) NOT NULL,
  `STATUS` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0-> initial otp sent , 1 verified , 2 blocked ',
  `REG_DATE` datetime DEFAULT current_timestamp(),
  `UPDATE_DATE` date NOT NULL,
  `UNSUBSCRIBE` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chemistlogin`
--

INSERT INTO `chemistlogin` (`USERID`, `EMAIL`, `PASSWORD`, `GUID`, `FBUID`, `FNAME`, `LNAME`, `GENDER`, `PROFILEIMG`, `LPROFILE`, `SM_PROFILEIMG`, `MOBILE`, `ALTEMAIL`, `ALTCONTACT`, `CART`, `OTP`, `APPROVED_BY`, `COMPLETED_PROFLE`, `APPROVED`, `ADDRESS_ID`, `STATUS`, `REG_DATE`, `UPDATE_DATE`, `UNSUBSCRIBE`) VALUES
(1, 'devkrishnapiimt@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'jggcc', '', '', '', '', '', '7840076569', '', '', '', 693772, '', '0', '1', 0, '0', '2019-03-24 14:37:56', '0000-00-00', '0'),
(4, 'dharmendrarajput128@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Gyantech', 'Medical', 'M', '', '', '', '8393014240', '', '', '', NULL, '', '0', '1', 0, '1', '2019-04-04 00:00:00', '0000-00-00', '0'),
(7, 'mcaswati02@gmail.com', '840dc90b7b0442717a3cc7726b91a57f', '', '', 'Swati', 'Singh', 'M', '', '', '', '8630417034', '', '', '', 564562, '', '0', '1', 0, '0', '2019-04-22 00:00:00', '0000-00-00', '0'),
(8, 'pee@gmail.com', 'e9bc0e13a8a16cbb07b175d92a113126', '', '', 'Penaut', NULL, 'M', '', '', '', '9911766209', '', '', '', 320412, '', '0', '1', 0, '0', '2019-04-26 00:00:00', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` int(11) NOT NULL,
  `location` varchar(35) NOT NULL,
  `services` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `website` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `id_proof` varchar(500) NOT NULL,
  `drimage` varchar(509) NOT NULL,
  `med_reg_proof` varchar(500) NOT NULL,
  `tag` text NOT NULL,
  `subscription` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL,
  `verified` enum('0','1') NOT NULL,
  `drid` int(11) DEFAULT NULL,
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL DEFAULT 0,
  `modified_by` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `name`, `city`, `location`, `services`, `address`, `email`, `mobile`, `website`, `about`, `id_proof`, `drimage`, `med_reg_proof`, `tag`, `subscription`, `approved`, `verified`, `drid`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `status`) VALUES
(1, 'SRMS', 3, '3', 1, 'Rahpura jageer', 'dharmendrarajput128@gmail.com', '8393014240', 'www.upcharr.com', ' yr h', '', '', 'clinic_proof_pic_80928222720190216.jpg', '  hgvv  uyv lubn ', 0, '0', '0', NULL, '2019-04-10 12:25:57', 0, 0, '2019-02-16 00:27:56', 'A'),
(2, 'raj', 28, '7', 0, '', '', '9910982600', '', '', '', '', 'clinic_proof_pic_98091960820190217.jpg', '', 0, '0', '0', NULL, '2019-02-17 02:16:01', 0, 0, '2019-02-17 02:16:01', '1'),
(3, 'Mahendra gayatari hospital', 28, '7', 0, 'Bareilly', 'dharmendrarajput128@gmail.com', '8630417034', '', '', '', '', 'clinic_proof_pic_82893712320190302.jpg', '', 0, '0', '0', NULL, '2019-03-02 00:59:21', 0, 0, '2019-03-02 00:59:21', '1'),
(4, 'SRMS Bareilly', 28, '7', 0, 'Rahpura jageer', 'dharmendrarajput128@gmail.com', '8393014240', '', '', '', '', 'clinic_proof_pic_45486401520190306.jpg', '', 0, '0', '0', NULL, '2019-03-04 05:04:51', 0, 0, '2019-03-04 05:04:51', '1'),
(5, 'aims', 28, '7', 0, 'Bareilly', 'dharmendrarajput128@gmail.com', '123456780', '', '', '', '', 'clinic_proof_pic_27179756520190305.jpg', '', 0, '0', '0', NULL, '2019-03-05 04:34:51', 0, 0, '2019-03-05 04:34:51', '1'),
(6, 'dffgfg', 28, '8', 0, 'bareilly', 'dharmendrarajput128@gmail.com', '9718777468', '', '', '', '', 'clinic_proof_pic_60316050320190306.jpg', '', 0, '0', '0', NULL, '2019-03-06 01:04:51', 0, 0, '2019-03-06 01:04:51', '1'),
(7, 'upcharr clinic', 28, '7', 0, 'Bareilly', 'dharmendrarajput128@gmail.com', '8393014240', '', '', '', '', 'clinic_proof_pic_31985723520190308.jpg', '', 0, '0', '0', NULL, '2019-03-08 03:31:53', 0, 0, '2019-03-08 03:31:53', '1'),
(8, 'Dharmendra rajput', 28, '7', 0, '', '', '', '', '', '', '', 'clinic_proof_pic_79208514320190424.jpg', '', 0, '0', '0', NULL, '2019-04-24 08:04:42', 0, 0, '2019-04-24 08:04:42', '1'),
(9, 'gyantech hospital', 3, '9', 0, '', '', '', '', '', '', '', 'clinic_proof_pic_90265394820190707.jpg', '', 0, '0', '0', NULL, '2019-07-07 03:15:26', 0, 0, '2019-07-07 03:15:26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_claimed`
--

CREATE TABLE `clinic_claimed` (
  `id` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clinic_claimed`
--

INSERT INTO `clinic_claimed` (`id`, `did`, `clinic_id`, `status`, `date`) VALUES
(1, 2, 1, 'P', '2019-02-16 11:57:56'),
(2, 7, 2, 'P', '2019-02-17 13:46:01'),
(3, 13, 2, 'P', '2019-02-22 11:30:50'),
(4, 13, 2, 'P', '2019-02-22 11:32:55'),
(5, 13, 2, 'P', '2019-02-22 11:36:19'),
(6, 13, 2, 'P', '2019-02-22 12:29:25'),
(7, 27, 3, 'P', '2019-03-02 12:29:21'),
(8, 27, 2, 'P', '2019-03-02 14:29:38'),
(9, 27, 2, 'P', '2019-03-02 14:30:27'),
(10, 27, 4, 'P', '2019-03-04 16:34:51'),
(11, 27, 5, 'P', '2019-03-05 16:04:51'),
(12, 16, 1, 'P', '2019-03-06 03:58:12'),
(13, 27, 6, 'P', '2019-03-06 12:34:51'),
(14, 27, 7, 'P', '2019-03-08 15:01:53'),
(15, 27, 8, 'P', '2019-04-24 18:34:42'),
(16, 66, 9, 'P', '2019-07-07 13:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `message` varchar(300) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `mobile`, `message`, `resume`, `date`) VALUES
(1, 'Dharmendra Rajput', 'dharmendrarajput128@gmail.com', '8393014240', 'hello', '', '2019-02-22'),
(8, 'swati singh', 'mcaswati02@gmail.com', '9718777468', 'hiiii', '', '2019-03-16'),
(3, 'Dharmendra Rajput', 'dharmendrarajput128@gmail.com', '8393014240', 'hello', '', '2019-03-04'),
(5, 'Winston', 'redwin7@thefirstpageplan.com', '1.319.423.94', 'I simply wondered if you\'ve planned any marketing yet for your site this new year.  I\'m self-employed achieving this for various businesses for a number of years now, I feed my family doing this so I won\'t complain.  I\'ve a means of getting immediate interested traffic and buyers to your site throug', '', '2019-03-09'),
(6, 'Dharmendra Rajput', 'mcaswati02@gmail.com', '8393014240', 'hello', '', '2019-03-09'),
(7, 'Winston', 'redwin7@thefirstpageplan.com', '1.319.423.94', 'I just wondered if you\'ve planned any marketing yet for your site this new year.  I\'m self-employed carrying this out for various businesses for a number of years now, I feed my family doing it so I won\'t complain.  I\'ve a means of getting immediate interested traffic and buyers to your website thro', '', '2019-03-10'),
(9, 'Dharmendra', 'dharmendrarajput128@gmail.com', '8393014240', 'hello', '', '2019-03-18'),
(10, 'swati singh  ', 'mcaswati02@gmail.com', '9718777468', 'helo', '', '2019-03-18'),
(11, 'Dharmendra  ', 'dharmendrarajput128@gmail.com', '8393014240', 'hello', '', '2019-03-20'),
(12, 'Dharmendra', 'dharmendrarajput128@gmail.com', '8393014240', 'hello', '', '2019-03-22'),
(13, 'Dharmendra Rajput', 'dharmendrarajput128@gmail.com', '8393014240', 'hello', '', '2019-03-26'),
(14, 'Natalie Johnson', 'noreply@socialchief.club', '123-123-1234', 'Hi!\r\n \r\nApologies for the cold outreach! I thought I would contact you and see if you needed any help with your Instagram growth. We are a small and friendly agency specialized in Instagram Marketing. We can generate an organic following of real, genuine people, who fit your target group. \r\n\r\nWe wil', '', '2019-04-09'),
(15, 'amit kumar', 'thebest.krishna@gmail.com', '8009957777', 'hrhwuwjajhsaao', '', '2019-04-10'),
(16, 'Dharmendra', 'dharmendrarajput128@gmail.com', '8630417034', 'hello', '', '2019-07-02'),
(17, 'Dharmendra', 'mohitbharti128@gmail.com', '8630417034', 'hello', '', '2019-07-02'),
(18, 'mohit', 'mohitupcharr@gmail.com', '8630417034', 'hello\r\n', '', '2019-07-02'),
(19, 'Amit Kumar', 'upchar.developer@gmail.com', '8009957777', 'hello upcharr.com', '', '2019-07-02'),
(20, 'Dharmendra', 'dharmendrarajput128@gmail.com', '8630417034', 'hello', '', '2019-07-02'),
(21, 'Dr A Ali', '', '9471002110', 'I want to meet Mr Anoop ', '', '2019-07-16'),
(22, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello upcharr.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve checked out your website upcharr.com.\r\n- NOT with a ', '', '2019-07-24'),
(23, '', '', '', '', '', '2019-07-27'),
(24, 'test', 'test@test.com', '1234567890', 'gffdg', '', '2019-07-27'),
(25, 'test', 'test@test.com', '124567897', 'gt', '', '2019-07-28'),
(26, 'Aly Chiman', 'aly1@alychidesigns.com', '613-321-3419', 'Hello there, My name is Aly and I would like to know if you would have any interest to have your website here at upcharr.com  promoted as a resource on our blog alychidesign.com ?\r\n\r\n We are  updating our do-follow broken link resources to include current and up to date resources for our readers. If', '', '2019-08-04'),
(27, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello upcharr.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve checked out your website upcharr.com.\r\n- NOT with a ', '', '2019-08-06'),
(28, 'George Martin', 'george1@georgemartinjr.com', '604-278-3755', 'Would you be interested in submitting a guest post on georgemartjr.com or possibly allowing us to submit a post to upcharr.com ? Maybe you know by now that links are essential\r\nto building a brand online? If you are interested in submitting a post and obtaining a link to upcharr.com , let me know an', '', '2019-08-20'),
(29, 'Vernia Huor', 'vernia@perfectmedialab.com', '06-93616500', 'Work together\r\n\r\nHi Business Owner,\r\n\r\nI wanted to find out if you have any loan needs at your business?\r\n\r\nYalber can quickly and easily customize a small business loan that works for your business, so you can get on with the business of building your bottom line.\r\n\r\nInterested? Visit our website, ', '', '2019-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `doctorgallery`
--

CREATE TABLE `doctorgallery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `shot_description` varchar(150) NOT NULL,
  `long_description` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorgallery`
--

INSERT INTO `doctorgallery` (`id`, `user_id`, `image`, `shot_description`, `long_description`, `date`) VALUES
(4, 27, '_profile_pic_3965229812019-03-30.jpg', 'sdb ', 'hh dc ', '2019-03-30 04:23:04'),
(6, 27, '_profile_pic_5711709962019-03-30.jpg', 'Dharmendra', 'Rajput', '2019-03-30 04:26:28'),
(5, 27, '_profile_pic_2394619372019-03-30.jpg', 'kjh', 'mmb ', '2019-03-30 04:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `doctorlogin`
--

CREATE TABLE `doctorlogin` (
  `USERID` mediumint(9) NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FBUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `LNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PROFILEIMG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LPROFILE` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SM_PROFILEIMG` text NOT NULL,
  `MOBILE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ALTEMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ALTCONTACT` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CART` text NOT NULL,
  `OTP` int(6) DEFAULT NULL,
  `APPROVED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COMPLETED_PROFLE` enum('0','1') NOT NULL DEFAULT '0',
  `APPROVED` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `ADDRESS_ID` int(11) NOT NULL,
  `STATUS` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0-> initial otp sent , 1 verified , 2 blocked ',
  `REG_DATE` datetime DEFAULT current_timestamp(),
  `UPDATE_DATE` date NOT NULL,
  `UNSUBSCRIBE` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `doctorlogin`
--

INSERT INTO `doctorlogin` (`USERID`, `EMAIL`, `PASSWORD`, `GUID`, `FBUID`, `FNAME`, `LNAME`, `GENDER`, `PROFILEIMG`, `LPROFILE`, `SM_PROFILEIMG`, `MOBILE`, `ALTEMAIL`, `ALTCONTACT`, `CART`, `OTP`, `APPROVED_BY`, `COMPLETED_PROFLE`, `APPROVED`, `ADDRESS_ID`, `STATUS`, `REG_DATE`, `UPDATE_DATE`, `UNSUBSCRIBE`) VALUES
(7, 'orianahospitalvns@gmail.com', 'a47fdf346528e87fb9ef1619bb97ed1f', '', '', 'Atul', 'Ratan', 'M', '', '', '', '9415204313', '', '', '', NULL, '', '0', '1', 0, '1', '2019-02-17 00:00:00', '0000-00-00', '0'),
(8, 'raj.cool11@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Kumar', 'Utshav', 'M', '', '', '', '9099936273', '', '', '', NULL, '', '0', '1', 0, '1', '2019-02-17 00:00:00', '0000-00-00', '0'),
(10, 'drskrai@rediffmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Sandeep', 'Rai', 'M', '', '', '', '8090311155', '', '', '', NULL, '', '0', '1', 0, '1', '2019-02-17 00:00:00', '0000-00-00', '0'),
(14, 'shahnajkhatun09@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Shahnaj', 'Khatun', '', '', '', '', '8896204363', '', '', '', 0, '', '0', '1', 0, '1', '2019-02-20 06:08:29', '0000-00-00', '0'),
(17, 'dharmendrarajput128@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dharmendra', 'Rajput', 'M', '', '', '', '8393014240', '', '', '', NULL, '', '0', '1', 0, '1', '2019-03-01 00:00:00', '0000-00-00', '0'),
(21, 'summittheone@gmail.com', '7cec85c75537840dad40251576e5b757', '', '', 'SUMMIT', 'JAISWAL', '', '', '', '', '6307397772', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-02 02:22:23', '0000-00-00', '0'),
(73, 'ravibairagi31@gmail.com', '2ff720dd9ca019b73cd87f94507a60ce', '', '', 'RAVI', 'BAIRAGI', '', '', '', '', '9009283531', '', '', '', 945132, '', '0', '1', 0, '0', '2019-03-18 05:34:15', '0000-00-00', '0'),
(74, 'manojsrivastava39@yahoo.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr M K', 'Srivastava', '', '', '', '', '9415256272', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-23 02:14:58', '0000-00-00', '0'),
(75, 'devkrishnapiimt@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'krishna', 'dev', '', '', '', '', '7840076569', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-24 14:31:40', '0000-00-00', '0'),
(76, 'amit28010@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'amit', 'kumar', '', '', '', '', '8009957777', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-24 16:17:37', '0000-00-00', '0'),
(77, 'vinod_sarthak21@rediffmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Vinod', 'kumar', '', '', '', '', '9415273558', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-26 03:04:36', '0000-00-00', '0'),
(81, 'sunilkumarsinghdr@gmailcom', '25d55ad283aa400af464c76d713c07ad', '', '', 'Sunil', 'kushwaha', '', '', '', '', '8933055668', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-31 22:19:35', '0000-00-00', '0'),
(82, 'kilkarisrinagar@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Shelly', 'Kushwaha', '', '', '', '', '7565004462', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-31 23:49:29', '0000-00-00', '0'),
(83, 'amit221@gmail.com', 'ac58a45073258ca1e7ec36eb31cdc1b5', '', '', 'Amit', NULL, 'M', '', '', '', '7080245777', '', '', '', 333356, '', '0', '1', 0, '1', '2019-04-10 00:00:00', '0000-00-00', '0'),
(85, 'popularhospital@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'A.KKAUSHIK', NULL, 'M', '', '', '', '9336916965', '', '', '', NULL, '', '0', '1', 0, '1', '2019-04-13 06:35:49', '0000-00-00', '0'),
(92, 'santushti.hospital@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Ajay Kumar', 'Garg', '', '', '', '', '9839058489', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-13 07:35:19', '0000-00-00', '0'),
(95, 'rajeeventclinic7@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Rajeev', 'Mishra', '', '', '', '', '9415202120', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-17 05:03:13', '0000-00-00', '0'),
(97, 'akkirankawhik@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Kiran', 'kaushik', '', '', '', '', '9519010005', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-18 06:29:57', '0000-00-00', '0'),
(98, 'dranil998skmch@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Anil Kumar', 'Singh', '', '', '', '', '6200322959', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-18 07:07:42', '0000-00-00', '0'),
(99, 'Sudhakar.harsh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Sudhakar', 'singh', '', '', '', '', '9088054684', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-18 07:29:38', '0000-00-00', '0'),
(100, 'popular001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Anupama', 'goel', '', '', '', '', '7275505584', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-19 00:58:35', '0000-00-00', '0'),
(101, 'popular002@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Amit Kumar', 'Yadav', '', '', '', '', '8009154888', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-19 01:07:10', '0000-00-00', '0'),
(102, 'popular003@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Prabhat', 'Kumar', '', '', '', '', '9807636717', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-19 01:16:18', '0000-00-00', '0'),
(103, 'piyushkumar8190@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr.Piyush', 'kumar', '', '', '', '', '8299583912', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-19 09:01:32', '0000-00-00', '0'),
(104, 'Dubey.ashok.dr@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr A.k', 'Dubey', '', '', '', '', '9415992072', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-20 06:38:18', '0000-00-00', '0'),
(105, 'shikhshah85@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Shikha', 'Shah', '', '', '', '', '8299828599', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-20 06:51:51', '0000-00-00', '0'),
(107, 'doctor@papular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Mool', 'Narayan', '', '', '', '', '8881400066', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 07:34:26', '0000-00-00', '0'),
(108, 'doctor@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Kamlesh Kumar', 'Prajapati', '', '', '', '', '9519001053', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 07:46:44', '0000-00-00', '0'),
(109, 'doctor1@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Neha', 'Gupta', '', '', '', '', '9519003331', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 07:53:28', '0000-00-00', '0'),
(110, 'doctor2@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Nimisha', 'Singh', '', '', '', '', '8573037503', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 08:04:00', '0000-00-00', '0'),
(111, 'doctor3@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Jitendra', 'Singh', '', '', '', '', '8112400090', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 14:04:04', '0000-00-00', '0'),
(112, 'doctor4@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Nishtha', 'Yadav', '', '', '', '', '9519999276', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 14:43:00', '0000-00-00', '0'),
(113, 'doctor@popularhospital.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'dr. sudhakar', 'singh', '', '', '', '', '9519001056', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 15:00:48', '0000-00-00', '0'),
(114, 'doctor5@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr Prabhat', 'Kumar', '', '', '', '', '9519999267', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-23 15:12:13', '0000-00-00', '0'),
(120, 'drvini000@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr VINIT', 'AGRAWAL', '', '', '', '', '9519999320', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-30 06:50:58', '0000-00-00', '0'),
(121, 'drotor0@popular.hospital.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr. Ashish Kumar', 'Singh', '', '', '', '', '7800001898', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-30 07:21:06', '0000-00-00', '0'),
(122, 'doctor9@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr. I Basu ( Intrajit)', 'Dr. I Basu ( Intrajit)', '', '', '', '', '6391555522', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-30 08:08:54', '0000-00-00', '0'),
(123, 'doctor8@popular.hospitals.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dr. Amit Kumar', 'Singh', '', '', '', '', '9453357975', '', '', '', 0, '', '0', '1', 0, '1', '2019-05-01 05:41:23', '0000-00-00', '0'),
(127, 'psaba4671@gmail.com', '84109e98c1294406c993c27af1eb4ba7', '', '', 'Saba', 'perween', '', '', '', '', '7277621585', '', '', '', 0, '', '0', '1', 0, '1', '2019-05-04 04:01:13', '0000-00-00', '0'),
(131, 'krishna.kgmu@gmail.com', 'fa838829f993fcf2fcf14642a3364e31', '', '', 'dr. Gopal krishna', 'Rai', '', '', '', '', '8290846997', '', '', '', 0, '', '0', '1', 0, '1', '2019-05-09 05:11:57', '0000-00-00', '0'),
(133, 's.spandey@popular.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'DR.S.S.PANDEY', NULL, 'M', '', '', '', '9519001043', '', '', '', NULL, '', '0', '1', 0, '1', '2019-05-14 00:00:00', '0000-00-00', '0'),
(145, 'anprt123456@gmail.com', 'a8a1ae74c4148178e1f1885c4465a9e6', '', '', 'Anoop', NULL, 'M', '', '', '', '7235999099', '', '', '', 961785, '', '0', '1', 0, '0', '2019-06-20 00:00:00', '0000-00-00', '0'),
(146, 'danishakhtar.010@gmail.com', '22801e0090abb5dfe0a1d9197b3d1e42', '', '', 'No', NULL, 'M', '', '', '', '5555555555', '', '', '', 941815, '', '0', '1', 0, '0', '2019-06-24 00:00:00', '0000-00-00', '0'),
(147, 'rupalisrivastava20@gmail.com', '2dfc8e4b1ef15d0c3c802caac96940f2', '', '', 'rupali', 'srivastav', '', '', '', '', '8527158338', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-01 11:45:15', '0000-00-00', '0'),
(148, 'nshandloom786@gmail.com', '6b050305727cf58f619ee76f40697abf', '', '', 'Neyamul', 'hak', '', '', '', '', '+917905488', '', '', '', 225975, '', '0', '1', 0, '0', '2019-07-01 14:09:38', '0000-00-00', '0'),
(149, 'raj487694@gmail.com', '32039f179773e969b1d8eca8d64228e6', '', '', 'Rajkumar', '', '', '', '', '', '9718140273', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-02 12:05:18', '0000-00-00', '0'),
(150, 'preetigoyal55555@gmail.com', 'f008bc285bd0f8f70fafc2437c3d2609', '', '', 'DR. Prity', 'modi', '', '', '', '', '7015101114', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-03 05:22:17', '0000-00-00', '0'),
(151, 'svcc.ucr@gmail.com', '299de9ed99feb9d3801b160435aa73a1', '', '', 'Dharmendra', 'Kumar', '', '', '', '', '8127851002', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-05 00:04:48', '0000-00-00', '0'),
(152, 'schauhanjaat@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Chauhan', '', '', '', '', '', '8881837859', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-05 13:28:15', '0000-00-00', '0'),
(153, 'blmalmarandi00784@gmail.com', '9d5fa18a22d28f0eff14262669d52dca', '', '', 'Bimal', 'Marandi', '', '', '', '', '7558882341', '', '', '', 167602, '', '0', '1', 0, '0', '2019-07-07 05:24:15', '0000-00-00', '0'),
(154, 'bmarandi290@gmail.com', '9d5fa18a22d28f0eff14262669d52dca', '', '', 'Bimal', 'Marandi', '', '', '', '', '6238961071', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-07 05:26:15', '0000-00-00', '0'),
(155, 'abdulbasit.abdulbari.aby@gmail.com', '517edd23ee087e994fdb9c14837cf6b8', '', '', 'abdul', 'basit', '', '', '', '', '9038888754', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-08 03:54:14', '0000-00-00', '0'),
(156, 'rakeshchandela81@com', '202cb962ac59075b964b07152d234b70', '', '', 'Rakesh', '', '', '', '', '', '8307214748', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-10 01:17:47', '0000-00-00', '0'),
(157, 'drabhijitarya@gmail.com', '65e01b5d7805eb0f015a1493e81b716a', '', '', 'abhijit', '', '', '', '', '', '7783006621', '', '', '', 758969, '', '0', '1', 0, '0', '2019-07-10 02:19:34', '0000-00-00', '0'),
(158, 'sanjaykr6686@gmail.com', '29879753320cfb732074f6ca7d2cdead', '', '', 'sanjay', 'kumar', '', '', '', '', '7398854311', '', '', '', 755496, '', '0', '1', 0, '0', '2019-07-10 15:29:51', '0000-00-00', '0'),
(159, 'abimanyu6281@gmail.com', '27a11075496786430f64c9e816db29f5', '', '', 'abimanyu', 'chettri', '', '', '', '', '700041646', '', '', '', 389354, '', '0', '1', 0, '0', '2019-07-10 21:36:11', '0000-00-00', '0'),
(160, 'kpp546991@gmail.com', 'f0021bcc88e7bbbffd141c38416e3f8c', '', '', 'kamal', '', '', '', '', '', '9340194256', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-13 09:13:22', '0000-00-00', '0'),
(161, 'Pravashrock@gmail.com', 'c7c9e7ed13fdd2a055b1c44b455733fc', '', '', 'prs', '', '', '', '', '', '9348818122', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-14 08:20:45', '0000-00-00', '0'),
(162, 'tejbahadurpatelp@gmail.com', '31167c93b2b72e6cd6107ddeca7af9ce', '', '', 'tej', 'Bahadur', '', '', '', '', '8318039566', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-16 20:36:36', '0000-00-00', '0'),
(164, 'kashyappursati@gmail.com', '25befede4d6f7051622c0566ce062f99', '', '', 'pursati', 'kashyap', '', '', '', '', '7974548966', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-18 07:18:14', '0000-00-00', '0'),
(165, 'rajkumar9646522160@gmail.com', '97e385a487c45ee77128f624310ee99d', '', '', 'Raj', 'Kumar', '', '', '', '', '9876355205', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-18 11:00:04', '0000-00-00', '0'),
(168, 'shaguftakhan125@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Shagufta', 'Khan', '', '', '', '', '8851904268', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-20 05:27:02', '0000-00-00', '0'),
(169, 'priyadarship4@gmail.com', '35737bfd0b0686ae955771b88f67e1a4', '', '', 'pkp', '', '', '', '', '', '7978003492', '', '', '', 210304, '', '0', '1', 0, '0', '2019-07-20 12:45:50', '0000-00-00', '0'),
(170, 'yogesh.khade2011@gmail.com', '6e1e4e594fca3f1cdf5b2b217ea5212a', '', '', 'Yogesh', 'Khade', '', '', '', '', '9892112863', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-20 15:54:33', '0000-00-00', '0'),
(171, 'vermazx90@gmail.com', '357c06722e621dedf4aa73d3a346c987', '', '', 'pankaj', 'Verma', '', '', '', '', '9455890972', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-21 10:45:12', '0000-00-00', '0'),
(172, 'manishsahu230@gmail.com', '7822cb6c26d370c49ac9874f64fd48f1', '', '', 'manishsahu', '', '', '', '', '', '7985679632', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-21 12:03:42', '0000-00-00', '0'),
(173, 'Harimangal6264@gmail.com', '17f86b4c4084d403507374389c13e164', '', '', 'harimangal', '', '', '', '', '', '9325815500', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-21 23:53:20', '0000-00-00', '0'),
(174, 'rakeshrajpoot895320@gmail.com', '35521eeaebdbc55974e05a96a13d2bf8', '', '', 'Rakesh', 'Rajpoot', '', '', '', '', '7309818192', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-22 10:49:30', '0000-00-00', '0'),
(175, 'rashmibhupesh77@gmail.com', 'aa50bc04419e5f9d06ff6e8333b5850d', '', '', 'rashmi', '', '', '', '', '', '7800300978', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-23 01:41:45', '0000-00-00', '0'),
(176, 'das263780@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '', '', 'santosh', 'das', '', '', '', '', '9926957586', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-23 06:49:49', '0000-00-00', '0'),
(177, 'rupeshtawri1222@gmail.com', '96b6fb66ab88d6d878d877175cf43287', '', '', 'Rupesh', '', '', '', '', '', '9302080133', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-23 11:23:49', '0000-00-00', '0'),
(178, 'harishpasi01@email.com', '2ad3396660820a0e4c034e186a3ef480', '', '', 'Harish', 'Pasi', '', '', '', '', '9598714156', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-24 01:41:46', '0000-00-00', '0'),
(179, 'yadavyogesh974@gmail.com', 'c0273cdcd5eb3ae317aafd6beb0b316e', '', '', 'Yogesh', 'Yadav', '', '', '', '', '8950777265', '', '', '', 838256, '', '0', '1', 0, '0', '2019-07-24 04:59:54', '0000-00-00', '0'),
(180, 'ansarikaran@gmail.com', '151f8c3cc7cfcf7200074801d02d6017', '', '', 'karan', 'ansari', '', '', '', '', '7409316923', '', '', '', 150506, '', '0', '1', 0, '0', '2019-07-24 05:38:12', '0000-00-00', '0'),
(181, 'sonukumar8', '8bac9e2cf3b8f56e0c350b6725689060', '', '', 'sonu', 'kumar', '', '', '', '', '+916299682', '', '', '', 970995, '', '0', '1', 0, '0', '2019-07-26 01:08:56', '0000-00-00', '0'),
(182, 'sonukumar8113020@gmail.com', '8bac9e2cf3b8f56e0c350b6725689060', '', '', 'sonu', 'kumar', '', '', '', '', '629968235', '', '', '', 411201, '', '0', '1', 0, '0', '2019-07-26 01:12:04', '0000-00-00', '0'),
(183, 'au.rmssy25@gmail.com', 'f8c8725e7e6c9d3f64cf41f04e7fdbc5', '', '', 'Dr. Jay Namdev', 'Kamble', '', '', '', '', '9175868605', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-26 11:42:39', '0000-00-00', '0'),
(184, 'masoomrazakhan42@gmail.com', 'a208daa2544cef0c8c8a8d0bd24750ae', '', '', 'Masoom Raza', 'Khan', '', '', '', '', '9619608542', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-26 12:20:39', '0000-00-00', '0'),
(185, 'deshwal8859@gmail.com', 'c491e55510c55922abd894ee3ad785ab', '', '', 'anuj', 'deshwal', '', '', '', '', '8859055388', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-26 22:47:08', '0000-00-00', '0'),
(186, 'manishsigh74@gmail.com', '52d8bed408c57d06d0f236113fcd5b1a', '', '', 'arjunji', '', '', '', '', '', '7067350494', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-27 02:25:11', '0000-00-00', '0'),
(187, 'sg4779290@gmail.com', 'eb91df472a3c9adf8ea62e47b5f20c23', '', '', 'suraj', 'gupta', '', '', '', '', '9120158500', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-27 10:11:44', '0000-00-00', '0'),
(188, 'babaextremes@gmail.com', 'a688574d608c0157370e310f1c3ac202', '', '', 'Road', 'life', '', '', '', '', '+919813071', '', '', '', 145154, '', '0', '1', 0, '0', '2019-07-28 03:26:14', '0000-00-00', '0'),
(189, 'sjplimitedmultiservises@gmail.com', '68a3303966d60f6d0b3fe17ea2a41336', '', '', 'Sain Jeet', 'Pandey', '', '', '', '', '9984413264', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-29 03:54:09', '0000-00-00', '0'),
(191, 'village biloda post biloda drict dhar', 'c954f729e823e965b6be97a8c548e04d', '', '', 'dinesh', 'parmar', '', '', '', '', '7000520167', '', '', '', 739372, '', '0', '1', 0, '0', '2019-07-29 09:21:49', '0000-00-00', '0'),
(192, 'danishakhtar10@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Danish', 'Akhtat', '', '', '', '', '9430464652', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-30 01:20:17', '0000-00-00', '0'),
(193, 'simmi9693@gmail.com', '63dcc7e9f7d8ae8810d6e6d69b25c95a', '', '', 'cutie', 'simran', '', '', '', '', '+916203840', '', '', '', 976459, '', '0', '1', 0, '0', '2019-07-30 23:18:06', '0000-00-00', '0'),
(194, 'simnit0705@gmail.com', '63dcc7e9f7d8ae8810d6e6d69b25c95a', '', '', 'cutie', 'simran', '', '', '', '', '6203840577', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-30 23:19:37', '0000-00-00', '0'),
(195, 'devendra1995x@gmail.com', 'b2a761f25760760e802abca1d5762d32', '', '', 'Devendra', 'Singh', '', '', '', '', '9675432790', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-31 08:06:12', '0000-00-00', '0'),
(196, 'drsunny05@gmail.com', 'c396670cea4b53c7166b1acdef142c64', '', '', 'Sunny', 'Kumar', '', '', '', '', '7388779608', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-01 00:12:20', '0000-00-00', '0'),
(197, 'ak160260@gmail.com', 'e4f5a124a370c4fca924980063d07d52', '', '', 'Amit', 'jha', '', '', '', '', '7979011997', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-01 07:02:43', '0000-00-00', '0'),
(198, 'sunnydhwan@Gmail.com', '26ea3a69a1b12f419f03a49ae78ea42b', '', '', 'sunnydhawan', '', '', '', '', '', '9899495492', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-01 21:57:48', '0000-00-00', '0'),
(199, 'kmnhhjp@gmail.com', 'b0d6789cec33dae314cf8a9de9f73aec', '', '', 'abhijit', '', '', '', '', '', '7004234548', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-02 08:50:03', '0000-00-00', '0'),
(200, 'tusharbhutada9@gmail.com', '49fce5a78050a7b23fed311ad238c70f', '', '', 'tushar', 'bhutada', '', '', '', '', '9970911119', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-03 08:40:32', '0000-00-00', '0'),
(201, 'amitsingh300188@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'AMIT', 'SINGH', '', '', '', '', '7607997697', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-04 00:17:51', '0000-00-00', '0'),
(202, 'anurag8696674308@gmail.com', '280ac7a3924a13cb218db8e23b6ff9c0', '', '', 'Anurag', 'Sharma', '', '', '', '', '8696674308', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-04 10:14:41', '0000-00-00', '0'),
(203, 'vshukla19300@gmail.com', 'f7f383993ed35f8c98e25b26a94ed0ac', '', '', 'vishwajeet', 'shukla', '', '', '', '', '6306971449', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-04 11:55:30', '0000-00-00', '0'),
(204, 'ashoksahu637@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Ashok', 'Sahu', '', '', '', '', '9424153603', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-05 20:46:38', '0000-00-00', '0'),
(205, 'vierendersingh vierendersingh 99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'vierendersingh', '', '', '', '', '', '6388839800', '', '', '', 891188, '', '0', '1', 0, '0', '2019-08-06 08:55:04', '0000-00-00', '0'),
(206, 'modi.pinesh@gmail.com', '28d90c017f78f7d3495a950fb5154380', '', '', 'pinesh', '', '', '', '', '', '9924601852', '', '', '', 619083, '', '0', '1', 0, '0', '2019-08-06 20:31:19', '0000-00-00', '0'),
(207, 'dibeshsonjar@gmail.com', '1abb7efa9d248ef82bedc2f095e5a379', '', '', 'Dr.Dinesh', 'Sonkar', '', '', '', '', '9407910443', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-07 02:08:52', '0000-00-00', '0'),
(208, 'amardeepkochar@gmail.com', 'b6cfcd1a8b3f022b7733db6c2599ca2b', '', '', 'Amardeep', 'Kochar', '', '', '', '', '9424456167', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-09 07:22:27', '0000-00-00', '0'),
(209, 'rajuc7239@gmail.com', '67719c4c2dae2189c6a83110e9461c15', '', '', 'Raju', 'choudhary', '', '', '', '', '6353778623', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-09 22:18:44', '0000-00-00', '0'),
(210, 'jiteshkumar23789@gmail.com', '51abf4bda0a73e479306dd9d361ab8e8', '', '', 'Jitesh', 'Prajapati', '', '', '', '', '9860825465', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-10 01:21:14', '0000-00-00', '0'),
(211, 'Sunilkumarsingh3226@gmail.com', '7c42d37e021225906f0d57edbeac1669', '', '', 'Rekha', 'singh', '', '', '', '', '7838859811', '', '', '', 691760, '', '0', '1', 0, '0', '2019-08-11 02:59:53', '0000-00-00', '0'),
(212, 'Sunilkumarsingh@gmail.com', '474ace8289c3798edf20dadc461218fb', '', '', 'Sunil', 'Singh', '', '', '', '', '7503791284', '', '', '', 535378, '', '0', '1', 0, '0', '2019-08-11 03:04:25', '0000-00-00', '0'),
(213, 'Rekhad118@gmail.com', 'b0b86080c976aa7651bffe0801644d74', '', '', 'Sunil', 'Singh', '', '', '', '', '9711355227', '', '', '', 303414, '', '0', '1', 0, '0', '2019-08-11 03:43:27', '0000-00-00', '0'),
(214, 'ravishankarfemous22@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '', 'R', 'Shankar', '', '', '', '', '9631257940', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-11 20:57:52', '0000-00-00', '0'),
(215, 'aftab4u67@gmail.com', '6346dc723395e1ee8ef57f4883be4cb4', '', '', 'Aftab', 'Alam', '', '', '', '', '6390581135', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-11 23:32:25', '0000-00-00', '0'),
(216, 'sureshmanjhi100@gmail.com', '664bf174027beacfb7cfea88ea038af2', '', '', 'Suresh', 'Manjhi', '', '', '', '', '9301810100', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-12 08:45:07', '0000-00-00', '0'),
(217, 'jitendraraj18004@gmail.com', 'ff997e9777bf64e396c52c99e834603d', '', '', 'Jitendra', 'Yadav', '', '', '', '', '9372494226', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-12 10:43:18', '0000-00-00', '0'),
(218, 'ybabita985gmail.com', '678e0480c32ef2baaa6bfcc271d45ceb', '', '', 'babita', 'yadav', '', '', '', '', '8770107941', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-13 00:28:35', '0000-00-00', '0'),
(219, 'vipinmhit64@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'amarjeet', '', '', '', '', '', '9198280672', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-13 16:48:34', '0000-00-00', '0'),
(220, 'razamofarhan0786@gmail.com', 'f773032d1335827fb5c252580727bd97', '', '', 'MO FARHAN RAZA', 'KHATEEBI', '', '', '', '', '6395974448', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-13 22:39:17', '0000-00-00', '0'),
(221, 'bhagwatsingh2345@gmail.com', '5eb01332c3329360d319ab91e08980b4', '', '', 'laksa', '', '', '', '', '', '9079357092', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-18 04:20:35', '0000-00-00', '0'),
(222, 'drwaseem1986@gmail.com', '2f4059ce1227f021edc5d9c6f0f17dc1', '', '', 'MOHD WASEEM', 'MANSOORI', '', '', '', '', '8700332749', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-19 06:17:40', '0000-00-00', '0'),
(223, 'ypawan390@gmail.com', '58b0f3360fdbf04f3cc998a48cebade1', '', '', 'pawan', 'yadav', '', '', '', '', '8209245395', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-24 05:01:49', '0000-00-00', '0'),
(224, 'singhrakesh12248@gmail.com', 'c02d0450cdd75ce7595f5eaeb5f041a3', '', '', 'Rakesh', '', '', '', '', '', '7988189523', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-26 00:18:40', '0000-00-00', '0'),
(225, 'saurabhsharmamechanical@gmail.com', '133057facf49cbe6520b15a4d96ee395', '', '', 'saurabh', 'sharma', '', '', '', '', '8476922291', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-27 00:45:33', '0000-00-00', '0'),
(226, 'jeetujj325@gmail.com', '180416100343aae648f71ab1bc793de9', '', '', 'JEETU', 'SHARMA', '', '', '', '', '9807415900', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-27 20:43:42', '0000-00-00', '0'),
(227, 'tanmaymitra5247@gmail.com', 'c62d929e7b7e7b6165923a5dfc60cb56', '', '', 'Tanmay', 'Mitra', '', '', '', '', '9074008980', '', '', '', 765575, '', '0', '1', 0, '0', '2019-08-29 05:41:58', '0000-00-00', '0'),
(228, 'mintumitra44@gmail.com', 'c62d929e7b7e7b6165923a5dfc60cb56', '', '', 'Tanmay', 'Mitra', '', '', '', '', '8770249401', '', '', '', 600626, '', '0', '1', 0, '0', '2019-08-29 05:43:25', '0000-00-00', '0'),
(229, 'rakeshvishwakarma88@gmail.com', 'b33563acfcf872750dbe0a80aa318c27', '', '', 'Rakesh kumar', 'Vishwakarma', '', '', '', '', '9149271319', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-30 10:41:05', '0000-00-00', '0'),
(230, 'akhlaquealamktr91@gmail.com', 'd2041e364e53c05b9bc05ca30b6d9744', '', '', 'Akhlaque', 'Alam', '', '', '', '', '6300709561', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-31 10:36:43', '0000-00-00', '0'),
(231, 'amojha420@gmail.com', '23ce23b1f40cf0cacb3f4bb835bdc8c3', '', '', 'Mohit', 'Ojha', '', '', '', '', '7408327191', '', '', '', 0, '', '0', '1', 0, '1', '2019-09-02 08:48:05', '0000-00-00', '0'),
(232, 'anilku263340@gmail.com', '97b9e4b6e11bfc7f54b2c9de25276ce5', '', '', 'Anil', 'Kumar', '', '', '', '', '6394263340', '', '', '', 0, '', '0', '1', 0, '1', '2019-09-08 19:51:48', '0000-00-00', '0'),
(233, 'pankajkrdas1999@gmail.com', '4c787bc3ce1b8d33ae9f6448c9c39140', '', '', 'pankaj Kumar', 'das', '', '', '', '', '7707036528', '', '', '', 0, '', '0', '1', 0, '1', '2019-09-09 00:15:27', '0000-00-00', '0'),
(234, 'drnosheen1991@gmail.com', 'd9e7da35c1248efdd12da0942ae5a81d', '', '', 'Dr.Nosheen', 'Ali', '', '', '', '', '8120288336', '', '', '', 0, '', '0', '1', 0, '1', '2019-09-09 11:33:18', '0000-00-00', '0'),
(235, 'afrinkhank6@gmail.com', '9674fe10ec404ca3ee892294e27c5bbe', '', '', 'Mukeem', 'khan', '', '', '', '', '9050740979', '', '', '', 886098, '', '0', '1', 0, '0', '2019-09-12 03:28:46', '0000-00-00', '0'),
(236, 'www.ralawe111@Gmail.com', 'd9cb30a5ed8c6da4c8ef29b072a9ad91', '', '', 'rahul', 'alawe', '', '', '', '', '9516123900', '', '', '', 737800, '', '0', '1', 0, '0', '2019-09-12 23:26:24', '0000-00-00', '0'),
(237, 'Brijrajtripathi3695@gmail.com', '987bdef2990c8b346dfabe4ebf7cbcd7', '', '', 'Brijraj', 'Tripathi', '', '', '', '', '9005653649', '', '', '', 897173, '', '0', '1', 0, '0', '2019-09-13 12:03:14', '0000-00-00', '0'),
(238, 'surajvishwakarma84076@gmail.com', 'ee8ae846d00b89efaabce090ad8f39c2', '', '', 'Suraj', 'Vishwakarma', '', '', '', '', '9616415397', '', '', '', 538994, '', '0', '1', 0, '0', '2019-09-15 10:10:46', '0000-00-00', '0'),
(239, '9616415397', 'ee8ae846d00b89efaabce090ad8f39c2', '', '', 'Suraj', 'Vishwakarma', '', '', '', '', '+919369302', '', '', '', 937894, '', '0', '1', 0, '0', '2019-09-15 10:18:37', '0000-00-00', '0'),
(240, '9518883449', '26e84be3d1128eaa288de6944c7ae8ba', '', '', 'Ajay', 'Goel', '', '', '', '', '9518883449', '', '', '', 260734, '', '0', '1', 0, '0', '2019-09-16 07:12:25', '0000-00-00', '0'),
(241, 'kavitamewad77@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Kavita', 'mewada', '', '', '', '', '8819086486', '', '', '', 687625, '', '0', '1', 0, '0', '2019-09-18 02:05:48', '0000-00-00', '0'),
(242, 'satishkumar05011979@gmail.com', 'ad846fd1138e66a1cacd0fb4b8644671', '', '', 'satish kumar', 'Giri', '', '', '', '', '9801513474', '', '', '', 724766, '', '0', '1', 0, '0', '2019-09-19 09:49:48', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `dr_practice`
--

CREATE TABLE `dr_practice` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('H','C') NOT NULL,
  `institution_id` int(11) NOT NULL,
  `fee` int(4) NOT NULL DEFAULT 0,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dr_practice`
--

INSERT INTO `dr_practice` (`id`, `user_id`, `type`, `institution_id`, `fee`, `status`) VALUES
(3, 3, 'H', 3, 1, '1'),
(20, 2, 'H', 1, 0, '1'),
(13, 8, 'H', 11, 0, '1'),
(39, 1, 'H', 1, 0, '1'),
(5, 3, 'H', 8, 1, '1'),
(6, 3, 'H', 9, 1, '1'),
(7, 4, 'H', 3, 0, '1'),
(8, 4, 'H', 7, 0, '1'),
(9, 7, 'H', 3, 0, '1'),
(15, 3, 'H', 13, 1, '1'),
(51, 5, 'H', 13, 0, '1'),
(45, 1, 'H', 13, 800, '1'),
(55, 5, 'H', 16, 0, '1'),
(25, 2, 'H', 16, 0, '1'),
(26, 3, 'H', 16, 0, '1'),
(43, 40, 'H', 25, 0, '1'),
(46, 15, 'H', 13, 0, '1'),
(32, 17, 'H', 13, 0, '1'),
(37, 27, 'C', 4, 1, '1'),
(38, 17, 'H', 1, 0, '1'),
(49, 5, 'H', 1, 0, '1'),
(72, 49, '', 20, 0, '1'),
(64, 10, 'H', 16, 0, '1'),
(58, 44, 'H', 1, 1, '1'),
(59, 44, 'H', 22, 1, '1'),
(60, 45, 'H', 1, 0, '1'),
(71, 27, '', 20, 0, '1'),
(61, 47, 'H', 1, 0, '1'),
(62, 40, 'H', 15, 0, '1'),
(65, 27, 'H', 16, 0, '1'),
(66, 40, 'H', 16, 0, '1'),
(76, 27, '', 20, 0, '1'),
(106, 27, '', 20, 0, '1'),
(68, 30, 'H', 1, 0, '1'),
(73, 27, '', 20, 0, '1'),
(74, 27, '', 20, 0, '1'),
(75, 27, '', 20, 0, '1'),
(77, 27, '', 20, 0, '1'),
(78, 27, '', 20, 0, '1'),
(79, 27, '', 20, 0, '1'),
(80, 50, 'H', 1, 0, '1'),
(81, 27, '', 20, 0, '1'),
(82, 51, 'H', 1, 0, '1'),
(83, 52, 'H', 1, 0, '1'),
(84, 27, '', 20, 0, '1'),
(85, 53, 'H', 1, 1, '1'),
(86, 55, 'H', 1, 0, '1'),
(87, 56, 'H', 1, 0, '1'),
(88, 57, 'H', 1, 0, '1'),
(89, 58, 'H', 1, 0, '1'),
(90, 27, '', 20, 0, '1'),
(91, 40, 'H', 13, 1, '1'),
(92, 32, 'H', 13, 1, '1'),
(93, 59, 'H', 13, 0, '1'),
(94, 60, 'H', 13, 0, '1'),
(95, 27, '', 20, 0, '1'),
(96, 27, '', 20, 0, '1'),
(98, 16, 'H', 16, 0, '1'),
(99, 41, 'H', 16, 0, '1'),
(100, 41, '', 14, 0, '1'),
(101, 40, 'H', 1, 0, '1'),
(102, 49, 'H', 1, 0, '1'),
(103, 28, 'H', 1, 0, '1'),
(104, 40, 'H', 27, 0, '1'),
(107, 27, '', 20, 0, '1'),
(108, 49, 'H', 13, 0, '1'),
(109, 27, 'H', 13, 0, '1'),
(110, 49, '', 20, 0, '1'),
(111, 27, '', 20, 0, '1'),
(169, 123, 'H', 56, 0, '1'),
(112, 41, 'H', 12, 0, '1'),
(113, 40, 'H', 12, 0, '1'),
(114, 27, 'H', 12, 0, '1'),
(115, 16, 'H', 12, 0, '1'),
(116, 61, 'H', 12, 0, '1'),
(117, 64, 'H', 29, 300, '1'),
(119, 72, 'H', 33, 0, '1'),
(120, 71, 'H', 33, 0, '1'),
(121, 73, 'H', 31, 0, '1'),
(122, 75, 'H', 38, 300, '1'),
(123, 76, 'H', 1, 500, '1'),
(124, 77, 'H', 1, 1, '1'),
(125, 78, 'H', 1, 1, '1'),
(126, 79, 'H', 1, 1, '1'),
(127, 80, 'H', 1, 1, '1'),
(128, 81, 'H', 1, 1, '1'),
(129, 83, 'H', 1, 1, '1'),
(138, 86, 'H', 1, 0, '1'),
(158, 10, 'H', 38, 300, '1'),
(136, 84, 'H', 39, 0, '1'),
(157, 117, 'H', 31, 0, '1'),
(139, 98, 'H', 1, 1, '1'),
(140, 86, 'H', 31, 0, '1'),
(141, 98, 'H', 31, 0, '1'),
(142, 89, 'H', 38, 300, '1'),
(143, 90, 'H', 38, 500, '1'),
(144, 91, 'H', 38, 500, '1'),
(145, 92, 'H', 38, 300, '1'),
(146, 93, 'H', 38, 500, '1'),
(147, 94, 'H', 38, 300, '1'),
(161, 113, 'H', 38, 300, '1'),
(149, 100, 'H', 38, 300, '1'),
(150, 99, 'H', 38, 300, '1'),
(151, 101, 'H', 38, 500, '1'),
(152, 102, 'H', 38, 300, '1'),
(153, 103, 'H', 38, 300, '1'),
(154, 104, 'H', 38, 300, '1'),
(160, 114, 'H', 38, 300, '1'),
(192, 27, 'H', 1, 1, '0'),
(156, 98, 'H', 36, 1, '1'),
(181, 8, 'H', 1, 0, '0'),
(159, 67, 'H', 32, 200, '1'),
(162, 112, 'H', 38, 0, '1'),
(172, 27, 'H', 31, 1, '0'),
(163, 87, 'H', 42, 500, '1'),
(164, 122, 'H', 55, 0, '1'),
(165, 121, 'H', 55, 0, '1'),
(170, 125, 'H', 38, 500, '1'),
(171, 134, 'H', 53, 460, '1'),
(194, 159, 'H', 60, 400, '1'),
(193, 27, 'C', 5, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `dr_qualifications`
--

CREATE TABLE `dr_qualifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qualification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dr_qualifications`
--

INSERT INTO `dr_qualifications` (`id`, `user_id`, `qualification_id`) VALUES
(1, 1, 6),
(5, 3, 1),
(9, 5, 1),
(11, 6, 3),
(17, 7, 7),
(33, 2, 2),
(35, 15, 0),
(43, 13, 6),
(55, 31, 3),
(63, 16, 1),
(90, 44, 1),
(91, 45, 1),
(92, 47, 8),
(97, 49, 1),
(101, 50, 1),
(102, 51, 1),
(103, 52, 14),
(104, 53, 13),
(105, 55, 13),
(106, 56, 14),
(107, 57, 13),
(108, 58, 14),
(109, 32, 3),
(111, 59, 15),
(112, 60, 13),
(115, 41, 1),
(118, 61, 1),
(120, 40, 3),
(125, 64, 21),
(135, 71, 1),
(137, 72, 1),
(154, 4, 2),
(158, 137, 1),
(159, 73, 1),
(162, 76, 2),
(163, 77, 2),
(164, 78, 1),
(165, 79, 1),
(166, 80, 1),
(167, 81, 1),
(168, 82, 1),
(172, 83, 1),
(174, 85, 14),
(178, 86, 1),
(182, 87, 1),
(183, 84, 1),
(186, 91, 1),
(188, 93, 1),
(190, 94, 0),
(191, 95, 14),
(192, 96, 17),
(193, 97, 0),
(194, 98, 1),
(195, 99, 1),
(196, 100, 14),
(198, 103, 1),
(199, 104, 1),
(200, 105, 1),
(201, 106, 1),
(205, 112, 1),
(206, 113, 1),
(211, 92, 28),
(212, 89, 29),
(213, 117, 1),
(218, 121, 29),
(219, 122, 29),
(221, 123, 28),
(222, 90, 1),
(224, 125, 29),
(225, 101, 31),
(228, 114, 29),
(229, 75, 24),
(237, 134, 1),
(238, 135, 1),
(246, 115, 1),
(252, 141, 1),
(255, 66, 1),
(261, 159, 14),
(262, 102, 30),
(263, 183, 14),
(264, 27, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dr_specialization`
--

CREATE TABLE `dr_specialization` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dr_specialization`
--

INSERT INTO `dr_specialization` (`id`, `user_id`, `specialization_id`) VALUES
(1, 1, 1),
(10, 5, 6),
(14, 6, 10),
(18, 9, 7),
(20, 7, 12),
(51, 3, 7),
(55, 2, 2),
(57, 15, 11),
(67, 13, 6),
(84, 31, 2),
(97, 16, 1),
(118, 44, 1),
(119, 45, 1),
(120, 47, 14),
(126, 49, 1),
(130, 50, 1),
(131, 51, 1),
(132, 52, 16),
(133, 53, 16),
(134, 55, 15),
(135, 56, 16),
(136, 57, 19),
(137, 58, 17),
(138, 32, 7),
(140, 59, 14),
(141, 60, 15),
(144, 41, 2),
(149, 61, 1),
(151, 40, 7),
(156, 64, 40),
(166, 71, 41),
(168, 72, 42),
(187, 4, 1),
(193, 137, 1),
(194, 73, 1),
(197, 76, 6),
(198, 77, 6),
(199, 78, 1),
(200, 79, 1),
(201, 80, 1),
(202, 81, 1),
(203, 82, 1),
(208, 83, 1),
(210, 85, 19),
(218, 87, 10),
(219, 84, 9),
(222, 91, 6),
(224, 93, 9),
(225, 94, 19),
(226, 95, 1),
(227, 96, 18),
(228, 97, 0),
(229, 98, 1),
(230, 99, 11),
(231, 100, 1),
(234, 103, 39),
(235, 104, 12),
(236, 105, 6),
(237, 106, 19),
(245, 112, 0),
(246, 113, 46),
(250, 92, 12),
(251, 89, 12),
(252, 117, 1),
(256, 86, 1),
(261, 121, 49),
(262, 122, 49),
(265, 123, 6),
(266, 90, 8),
(268, 125, 13),
(269, 101, 47),
(272, 114, 7),
(273, 75, 43),
(286, 134, 1),
(287, 135, 1),
(308, 115, 10),
(311, 66, 1),
(320, 159, 1),
(321, 102, 19),
(322, 183, 1),
(323, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `shot_description` varchar(150) NOT NULL,
  `long_description` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `shot_description`, `long_description`, `date`) VALUES
(14, '_profile_pic_3927347312019-05-21.jpg', 'gyantech', 'gyantech', '2019-05-21 04:55:44'),
(13, '_profile_pic_3238425132019-05-21.jpg', 'gyantech', 'gyantech', '2019-05-21 04:55:30'),
(12, '_profile_pic_4690707842019-05-21.jpg', 'gyantech', 'gyantech', '2019-05-21 04:54:59'),
(11, '_profile_pic_5486596832019-05-21.jpg', 'gyantech', 'gyantech', '2019-05-21 04:54:50'),
(15, '_profile_pic_3348087762019-05-21.jpg', 'gyantech', 'gyantech', '2019-05-21 04:56:05'),
(16, '_profile_pic_6657533902019-05-21.jpg', 'gyantech', 'gyantech', '2019-05-21 04:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` int(11) NOT NULL,
  `location` varchar(35) NOT NULL,
  `services` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `website` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `id_proof` varchar(500) NOT NULL,
  `drimage` varchar(509) NOT NULL,
  `med_reg_proof` varchar(500) NOT NULL,
  `tag` text NOT NULL,
  `subscription` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL,
  `verified` enum('0','1') NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL DEFAULT 0,
  `modified_by` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `city`, `location`, `services`, `address`, `email`, `mobile`, `website`, `about`, `id_proof`, `drimage`, `med_reg_proof`, `tag`, `subscription`, `approved`, `verified`, `uid`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `status`) VALUES
(1, 'SRMS Bareilly', 3, '3', 1, 'B-112,Gautam Buddh Nagar,Sector 10,Noida,Uttar Pradesh,201301.', 'dharmendrarajput128@gmail.com', '8393014240', 'www.upcharr.com', 'hello i am from work at  gyatech international pvt ltd', '', 'disp_profile_pic_43905993520190624.jpg', 'hospital_proof_pic_2787825520190624.png', 'hiii', 0, '1', '1', 1, '2019-04-09 06:02:40', 0, 0, '2019-02-15 23:31:38', '1'),
(33, 'KILKARI HOSPITAL and Fertility Center', 0, '', 0, 'SA. 6/186 2B-1A Srinagar colony Pahariya Varanasi', 'kilkarisrinagar@gmail.com', '8933055668', '', '', '', '', 'hospital_proof_pic_24751384620190401.JPG', '', 0, '1', '1', 33, '2019-04-01 00:59:49', 0, 0, '2019-04-01 00:59:49', '1'),
(31, 'Gyantech helthcare', 3, '12', 0, 'ledhupur ashapur sarnath varanasi', 'amit28010@gmail.com', '8009957777', '', '', '', 'disp_profile_pic_8820699972019-04-10.jpg', 'hospital_proof_pic_55824559920190410.jpg', '', 0, '1', '1', 31, '2019-03-24 16:12:45', 0, 0, '2019-03-24 16:12:45', '1'),
(11, 'ORIANA HOSPITAL', 0, '', 0, '', 'orianahospitalvns@gmail.com', '9415204313', '', '', '', '', '', '', 0, '0', '0', 11, '2019-02-17 04:50:00', 0, 0, '2019-02-17 04:50:00', '1'),
(32, 'SARTHAK SURGICAL CENTER', 0, '', 0, 'varanasi', 'vinod_sarthak21@rediffmail.com', '9839339153', '', '', '', '', '', '', 0, '1', '1', 32, '2019-03-26 03:11:02', 0, 0, '2019-03-26 03:11:02', '1'),
(29, 'KASHI MEDICARE', 3, '8', 0, 'ashok vihar colony phase 2 pahariya pandeypur Varanasi Up 221001', 'manojsrivastva39@yahoo.in', '9415256272', '', '', '', 'disp_profile_pic_96902820820190323.jpg', 'hospital_proof_pic_36533969320190323.jpeg', '', 0, '1', '1', 29, '2019-03-23 02:08:07', 0, 0, '2019-03-23 02:08:07', '1'),
(30, 'BRIJRAJ HADDI HOSPITAL', 0, '', 0, 'Near Ashapur churaha sarnath varanasi', 'vermajitendraashapur@gmail.com', '9452295515', '', '', '', 'disp_profile_pic_10276227720190323.jpg', '', '', 0, '1', '1', 30, '2019-03-23 03:33:41', 0, 0, '2019-03-23 03:33:41', '1'),
(60, 'T32 Dental Care & Implant Centre', 28, '37', 0, 'Main market Noida sector 12 ', 'shaguftakhan125@yahoo.com', '8851904268', '', '', '', 'disp_profile_pic_5294977482019-07-20.jpg', 'hospital_proof_pic_48077030120190720.jpeg', '', 0, '1', '1', 55, '2019-07-19 01:15:27', 0, 0, '2019-07-19 01:15:27', '1'),
(61, 'Stanford Hospital', 0, '', 0, '', 'lloyd.kennedy40@yahoo.com', '2637142916', '', '', '', '', '', '', 0, '0', '0', 56, '2019-07-20 03:53:56', 0, 0, '2019-07-20 03:53:56', '1'),
(38, 'POPULAR HOSPITAL', 3, '14', 0, 'N 10/16,A-2 DLW ROAD KAKARMATTA VARANASI 221004 UP', 'info@popularhospital.com', '9519999276', '', '', '', 'disp_profile_pic_59192091320190504.jpg', 'hospital_proof_pic_6408520320190504.jpg', '', 0, '1', '1', 38, '2019-04-13 03:42:14', 0, 0, '2019-04-13 03:42:14', '1'),
(39, 'SANTUSHTI  HOSPITAL Pvt Ltd', 3, '15', 1, 'SANTUSHTI HOSPITAL PVT LTD N8/180,B-51 NEWADA SUNDARPUR Varanasi', 'SANTUSHTI.HOSPITAL@GAMIL.COM', '9839058489', '', '', '', 'disp_profile_pic_8430663882019-04-17.jpeg', 'hospital_proof_pic_657402920190417.jpg', '', 0, '1', '1', 39, '2019-04-17 04:49:18', 0, 0, '2019-04-17 05:38:12', 'A'),
(40, 'SUMAN AYURVEDA CLINIC', 0, '', 0, '98 mahamanapuri colony karaundhi ITI BHU VARANASI 221010', 'drashok@bestsexologistvaranasi.com', '9415992072', '', '', '', '', '', '', 0, '0', '0', 40, '2019-04-20 06:57:42', 0, 0, '2019-04-20 06:57:42', '1'),
(62, 'Aarogyam Emergency Hospital', 3, '11', 0, 'Hariom nagar samneghat lanka varanasi', 'vishwajeetsngh4@gmail.com', '9415144152', '', '', '', 'disp_profile_pic_4430143132019-07-29.jpg', 'hospital_proof_pic_87833900920190729.jpg', '', 0, '0', '0', 57, '2019-07-29 07:42:47', 0, 0, '2019-07-29 07:42:47', '1'),
(42, 'E.N.T CLINIC & NURSING HOME', 3, '18', 0, 'D.59/115, Sigra varanasi', 'rajeeventclinic7@gmail.com', '7800443300', '', '', '', 'disp_profile_pic_48918941020190501.jpeg', 'hospital_proof_pic_59665956420190501.JPG', '', 0, '1', '1', 41, '2019-04-30 09:33:52', 0, 0, '2019-04-30 09:33:52', '1'),
(63, 'BL kapoor', 0, '', 0, '', 'abhishek.mehta@boloro.com', '+919318443', '', '', '', '', '', '', 0, '0', '0', 58, '2019-08-31 04:50:11', 0, 0, '2019-08-31 04:50:11', '1'),
(64, 'apolo', 0, '', 0, '', 'godhansinghairi@gmail.com', '7065788355', '', '', '', '', '', '', 0, '0', '0', 59, '2019-08-31 05:04:44', 0, 0, '2019-08-31 05:04:44', '1'),
(55, 'Apex Superspeciality Hospital ', 3, '19', 0, 'D.L.W. Hydle Road , Varanasi-04', 'apex.vns@gmail.com', '9415304102', '', '', '', 'disp_profile_pic_8544856702019-05-07.jpg', 'hospital_proof_pic_20607260120190507.jpg', '', 0, '0', '0', 53, '2019-05-06 17:55:39', 0, 0, '2019-05-06 17:55:39', '1'),
(56, 'Avika Heart clinic', 8, '20', 0, 'Avika Heart clinic Near Fatima Chauraha Sahadatpura, Mau', 'krishna.kgmu@gmail.com', '8290846997', '', '', '', 'disp_profile_pic_3792649272019-05-09.jpg', 'hospital_proof_pic_86986123220190509.jpg', '', 0, '1', '1', 54, '2019-05-09 05:25:09', 0, 0, '2019-05-09 05:25:09', '1'),
(53, 'Akarshan- a smile dental clinic', 3, '11', 0, 'Akarshan-a smile dental clinic\n kashi gomti samyut gramin bank katra,susuwahi,Hyderabad gate,BHU Varanasi 221005', 'piyushkumar8190@gmail.com', '8299583912', '', '', '', '', '', '', 0, '1', '1', 51, '2019-05-06 06:06:21', 0, 0, '2019-05-06 06:06:21', '1'),
(65, 'apolo', 0, '', 0, '', 'godhan', '7065788322', '', '', '', '', '', '', 0, '0', '0', 60, '2019-08-31 05:06:22', 0, 0, '2019-08-31 05:06:22', '1'),
(66, 'Upchar', 0, '', 0, '', 'pkthakur2009@gmail.com', '7018744265', '', '', '', '', '', '', 0, '0', '0', 61, '2019-08-31 05:10:01', 0, 0, '2019-08-31 05:10:01', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalgallery`
--

CREATE TABLE `hospitalgallery` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `shot_description` varchar(150) NOT NULL,
  `long_description` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hospitalgallery`
--

INSERT INTO `hospitalgallery` (`id`, `uid`, `image`, `shot_description`, `long_description`, `date`) VALUES
(16, 31, '_profile_pic_351030052019-03-30.jpg', 'Dharmendra', 'Rajput', '2019-03-30 01:38:13'),
(15, 1, '_profile_pic_2232622352019-03-29.jpg', 'Dharmendra', 'Rajput', '2019-03-29 02:28:20'),
(19, 1, '_profile_pic_1718705352019-04-28.jpg', 'Dharmendra', 'Rajput', '2019-04-28 03:36:25'),
(14, 1, '_profile_pic_6191482212019-03-29.jpg', 'sdb ', 'fg bhh', '2019-03-29 12:49:12'),
(18, 1, '_profile_pic_2265543842019-04-28.jpg', 'Dharmendra', 'fg bhh', '2019-04-28 03:35:08'),
(20, 1, '_profile_pic_7503886282019-04-28.jpg', 'sdb ', 'hh dc ', '2019-04-28 03:38:51'),
(21, 1, '_profile_pic_8749935302019-04-28.jpg', '', '', '2019-04-28 03:40:07'),
(22, 1, '_profile_pic_7171963392019-07-03.jpg', 'hhh', 'ghghfg', '2019-07-03 11:15:27'),
(23, 1, '_profile_pic_8261842552019-07-03.jpg', 'hhh', 'ghghfg', '2019-07-03 11:15:38'),
(24, 1, '_profile_pic_1374535382019-07-03.jpg', 'hhh', 'ghghfg', '2019-07-03 11:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `hospitallogin`
--

CREATE TABLE `hospitallogin` (
  `USERID` mediumint(9) NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FBUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `LNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PROFILEIMG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LPROFILE` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SM_PROFILEIMG` text NOT NULL,
  `MOBILE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ALTEMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ALTCONTACT` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CART` text NOT NULL,
  `OTP` int(6) DEFAULT NULL,
  `APPROVED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COMPLETED_PROFLE` enum('0','1') NOT NULL DEFAULT '0',
  `APPROVED` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `ADDRESS_ID` int(11) NOT NULL,
  `STATUS` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0-> initial otp sent , 1 verified , 2 blocked ',
  `REG_DATE` datetime DEFAULT current_timestamp(),
  `UPDATE_DATE` date NOT NULL,
  `UNSUBSCRIBE` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hospitallogin`
--

INSERT INTO `hospitallogin` (`USERID`, `EMAIL`, `PASSWORD`, `GUID`, `FBUID`, `FNAME`, `LNAME`, `GENDER`, `PROFILEIMG`, `LPROFILE`, `SM_PROFILEIMG`, `MOBILE`, `ALTEMAIL`, `ALTCONTACT`, `CART`, `OTP`, `APPROVED_BY`, `COMPLETED_PROFLE`, `APPROVED`, `ADDRESS_ID`, `STATUS`, `REG_DATE`, `UPDATE_DATE`, `UNSUBSCRIBE`) VALUES
(1, 'dharmendrarajput128@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'swati singh', NULL, 'M', '', '', '', '8393014240', '', '', '', 945000, '', '0', '1', 0, '1', '2019-02-16 00:00:00', '0000-00-00', '0'),
(11, 'orianahospitalvns@gmail.com', 'a47fdf346528e87fb9ef1619bb97ed1f', '', '', 'ORIANA', 'HOSPITAL', 'M', '', '', '', '9415204313', '', '', '', NULL, '', '0', '1', 0, '1', '2019-02-17 00:00:00', '0000-00-00', '0'),
(29, 'manojsrivastva39@yahoo.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'KASHI', 'MEDICARE', '', '', '', '', '9415256272', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-23 02:08:07', '0000-00-00', '0'),
(30, 'vermajitendraashapur@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'BRIJRAJ HADDI', 'HOSPITAL', '', '', '', '', '9452295515', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-23 03:33:41', '0000-00-00', '0'),
(31, 'amit28010@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Gyantech', 'Helthcare', 'M', '', '', '', '8009957777', '', '', '', 874877, '', '0', '1', 0, '1', '2019-03-25 00:00:00', '0000-00-00', '0'),
(32, 'vinod_sarthak21@rediffmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'SARTHAK SURGICAL', 'CENTER', '', '', '', '', '9839339153', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-26 03:11:02', '0000-00-00', '0'),
(33, 'kilkarisrinagar@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'KILKARI HOSPITAL and Fertility', 'Center', '', '', '', '', '8933055668', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-01 00:59:49', '0000-00-00', '0'),
(38, 'popularhospital@gmail.com', '2f78532bd6bd3aebcc37b0f70c9eecb3', '', '', 'POPULAR', 'HOSPITAL', 'M', '', '', '', '9519999276', '', '', '', 862801, '', '0', '1', 0, '1', '2019-04-13 00:00:00', '0000-00-00', '0'),
(39, 'SANTUSHTI.HOSPITAL@GAMIL.COM', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'SANTUSHTI', 'HOSPITAL', '', '', '', '', '9839058489', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-17 05:38:11', '0000-00-00', '0'),
(40, 'drashok@bestsexologistvaranasi.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'SUMAN AYURVEDA', 'CLINIC', '', '', '', '', '9415992072', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-20 06:57:42', '0000-00-00', '0'),
(41, 'rajeeventclinic7@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'E.N.T CLINIC & NURSING', 'HOME', '', '', '', '', '7800443300', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-30 09:33:52', '0000-00-00', '0'),
(51, 'piyushkumar8190@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Akarshan', '', '', '', '', '', '8299583912', '', '', '', 148100, '', '0', '1', 0, '1', '2019-05-06 06:06:21', '0000-00-00', '0'),
(53, 'apex.vns@gmail.com', '3457ba7d87ebd87db6ba2cf4cc135784', '', '', 'Apex', 'Superspeciality', 'M', '', '', '', '9415304102', '', '', '', NULL, '', '0', '1', 0, '1', '2019-05-07 00:00:00', '0000-00-00', '0'),
(54, 'krishna.kgmu@gmail.com', 'fa838829f993fcf2fcf14642a3364e31', '', '', 'Avika Heart', 'clinic', '', '', '', '', '8290846997', '', '', '', 0, '', '0', '1', 0, '1', '2019-05-09 05:25:09', '0000-00-00', '0'),
(55, 'shaguftakhan125@yahoo.com', 'de88e3e4ab202d87754078cbb2df6063', '', '', 'T32 Dental Care & Implant', 'Centre', '', '', '', '', '8851904268', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-19 01:15:27', '0000-00-00', '0'),
(56, 'lloyd.kennedy40@yahoo.com', '229c60388754122a3ba8976ce61c634f', '', '', 'Stanford', 'Hospital', '', '', '', '', '2637142916', '', '', '', 230526, '', '0', '1', 0, '0', '2019-07-20 03:53:56', '0000-00-00', '0'),
(57, 'vishwajeetsngh4@gmail.com', 'aacc1bfd075b6d8d22284bf0e348ecd7', '', '', 'Aarogyam', 'Emergency', 'M', '', '', '', '9415144152', '', '', '', NULL, '', '0', '1', 0, '1', '2019-07-29 00:00:00', '0000-00-00', '0'),
(58, 'abhishek.mehta@boloro.com', '45a8c16a90c9e15f663a86c8606a825e', '', '', 'BL', 'kapoor', '', '', '', '', '+919318443', '', '', '', 774231, '', '0', '1', 0, '0', '2019-08-31 04:50:11', '0000-00-00', '0'),
(59, 'godhansinghairi@gmail.com', 'cb06bc43793401c0ff4bb120118eb699', '', '', 'apolo', '', '', '', '', '', '7065788355', '', '', '', 768859, '', '0', '1', 0, '0', '2019-08-31 05:04:44', '0000-00-00', '0'),
(60, 'godhan', 'cb06bc43793401c0ff4bb120118eb699', '', '', 'apolo', '', '', '', '', '', '7065788322', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-31 05:06:22', '0000-00-00', '0'),
(61, 'pkthakur2009@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Upchar', '', '', '', '', '', '7018744265', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-31 05:10:01', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `instition_services`
--

CREATE TABLE `instition_services` (
  `id` int(11) NOT NULL,
  `institution_type` enum('C','H') NOT NULL,
  `institution_id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(35) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(55) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `role` enum('A','AD','SA','BD','AC') NOT NULL,
  `usercode` varchar(255) NOT NULL,
  `permisions` varchar(26) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pid`, `username`, `password`, `name`, `dob`, `email`, `mobile`, `role`, `usercode`, `permisions`, `status`) VALUES
(1, NULL, 'Damd', '0192023a7bbd73250516f069df18b500', 'upchaar admin', '0000-00-00', 'upcharr@upcharr.com', '7080245777', 'A', '', '', '1'),
(2, NULL, 'amit5510', '3231c8e357513804d1140cba41ad48cd', 'amit kumar', '1991-04-29', 'amit28010@gmail.com', '8009957777', 'A', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `master_category`
--

CREATE TABLE `master_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_category`
--

INSERT INTO `master_category` (`id`, `category_name`, `category_image`, `status`) VALUES
(1, 'Dentists', '0', '1'),
(2, 'General Physicians', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `master_city`
--

CREATE TABLE `master_city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_city`
--

INSERT INTO `master_city` (`id`, `state_id`, `name`, `image`, `description`, `lat`, `lng`, `status`, `date`) VALUES
(1, 1, 'Delhi', '201708021736510566641001501675611.jpg', '', '22.793066', '86.1856652', '1', '2017-08-02'),
(2, 0, 'sultanpur', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(3, 2, 'Varanasi', '201708041845430352013001501852543.jpg', '', '28.6314512', '77.2166672', '1', '2017-08-04'),
(4, 2, 'Allahabad', '201708291242560538968001503990776.jpg', '', '28.5676955', '77.2432721', '1', '2017-08-29'),
(5, 2, 'Bilashpur', '201708291619030804036001504003743.jpg', '', '28.6000912', '77.2270425', '1', '2017-08-29'),
(6, 3, 'Gazipur', '201708291619030804036001504003743.jpg', '', '', '', '1', '2018-12-10'),
(7, 2, 'mirzapur', '201708291619030804036001504003743.jpg', '', '', '', '1', '2018-12-10'),
(8, 0, 'Mau', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(9, 0, 'Balia', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(10, 0, 'shonbhadra', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(11, 0, 'chanduli', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(12, 0, 'Bhadohi', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(13, 0, 'Jaunpur', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(14, 0, 'Azamgadh', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(15, 0, 'kanpur', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(16, 0, 'lucknow', '201708291619030804036001504003743.jpg', '', '', '', '1', '0000-00-00'),
(17, 0, 'Ghaziabad', '', '', '', '', '1', '0000-00-00'),
(18, 0, 'Pilibhit', '', '', '', '', '1', '0000-00-00'),
(19, 0, 'merut', '', '', '', '', '1', '0000-00-00'),
(20, 0, 'Punjab', '', '', '', '', '1', '0000-00-00'),
(21, 0, 'Rajasthan', '', '', '', '', '1', '0000-00-00'),
(22, 0, 'U K', '', '', '', '', '1', '0000-00-00'),
(23, 0, 'Gujrat', '', '', '', '', '1', '0000-00-00'),
(24, 0, 'Badaun', '', '', '', '', '1', '0000-00-00'),
(25, 0, 'Bareilly', '', '', '', '', '1', '2019-02-06'),
(26, 0, 'Purnea bihar', '', '', '', '', '1', '2019-04-18'),
(27, 0, 'Jharkhand', '', '', '', '', '1', '2019-04-19'),
(28, 0, 'Noida', '', '', '', '', '1', '2019-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `master_college`
--

CREATE TABLE `master_college` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_college`
--

INSERT INTO `master_college` (`id`, `name`, `status`) VALUES
(1, 'TMU', '1');

-- --------------------------------------------------------

--
-- Table structure for table `master_council`
--

CREATE TABLE `master_council` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_council`
--

INSERT INTO `master_council` (`id`, `name`, `status`) VALUES
(1, 'Jharkhand Medical Council', '1'),
(2, 'Delhi Medical Council', '1'),
(3, 'Bihar Medical Council', '1'),
(4, 'Andhra Pradesh Medical Council', '1'),
(5, 'Arunachal Pradesh Medical Council', '1'),
(6, 'Assam Council of Medical Regisration', '1'),
(7, 'Goa Medical Council', '1'),
(8, 'Gujarat Medical Council', '1'),
(9, 'Haryana Medical Counci', '1'),
(10, 'Jammu & Kashmir Medical Council', '1'),
(11, 'Karnataka Medical Council', '1'),
(12, 'Travancore Cochin Medical Council', '1'),
(13, 'Madhya Pradesh Medical Council', '1'),
(14, 'Maharashtra Medical Council', '1'),
(15, 'Manipur Medical Council', '1'),
(16, 'Mizoram Medical Council', '1'),
(17, 'Nagaland Medical Council', '1'),
(18, 'Orissa Council of Medical Registration', '1'),
(19, 'Punjab Medical Council', '1'),
(20, 'Rajasthan Medical Council', '1'),
(21, 'Sikkim Medical Council', '1'),
(22, 'Tamil Nadu Medical Council', '1'),
(23, 'Telangana State Medical Council', '1'),
(24, 'Tripura State Medical Council ', '1'),
(25, 'Uttar Pradesh Medical Council', '1'),
(26, 'Uttarakhand Medical Council', '1'),
(27, 'West Bengal Medical Council', '1'),
(28, 'Delhi Dental Council', '1');

-- --------------------------------------------------------

--
-- Table structure for table `master_degree`
--

CREATE TABLE `master_degree` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_degree`
--

INSERT INTO `master_degree` (`id`, `name`, `status`) VALUES
(1, 'MBBS', '1'),
(2, 'MD (Cardio)', '1'),
(3, 'Ms', '1'),
(4, 'FRCH', '1'),
(5, 'DM(Gastro)', '1'),
(6, 'Mch', '1'),
(7, 'MD(Path)', '1'),
(8, 'MD(RAD)', '1'),
(9, 'DM(Cardio)', '1'),
(10, 'Cardio thoracic surgeon', '1'),
(11, 'DM(Nephro)', '1'),
(12, 'DM(Neuro)', '1'),
(13, 'BAMS', '1'),
(14, 'BDS', '1'),
(15, 'MS(ortho)', '1'),
(16, 'Ms(Gyane)', '1'),
(17, 'BAMS  (MD)', '1'),
(18, 'BHMS', '1'),
(19, 'BHMS (MD)', '1'),
(20, 'Opthology ', '1'),
(21, 'MD(Medicine)', '1'),
(22, 'MD(Pediatrics)', '1'),
(23, 'MS(OBS&gynae)', '1'),
(24, 'MS General surgeon ', '1'),
(25, 'DNB(SURGEON)', '1'),
(26, 'DNB', '1'),
(27, 'MNAMS', '1'),
(28, 'DM', '1'),
(29, 'MD', '1'),
(30, 'DCH', '1'),
(31, 'MD(Rediotherapy)', '1'),
(32, 'Mch(Neurosurgery)', '1');

-- --------------------------------------------------------

--
-- Table structure for table `master_locality`
--

CREATE TABLE `master_locality` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_locality`
--

INSERT INTO `master_locality` (`id`, `city_id`, `name`, `image`, `description`, `lat`, `lng`, `status`, `date`) VALUES
(1, 1, 'Jamshedpur', '201708021736070312626001501675567.jpg', '', '22.8045498', '86.2032879', '1', '2017-08-02'),
(2, 1, 'Delhi', '201708021736510566641001501675611.jpg', '', '22.793066', '86.1856652', '1', '2017-08-02'),
(3, 3, 'Varanasi', '201708041845430352013001501852543.jpg', '', '28.6314512', '77.2166672', '1', '2017-08-04'),
(4, 2, 'Allahabad', '201708291242560538968001503990776.jpg', '', '28.5676955', '77.2432721', '1', '2017-08-29'),
(5, 2, 'Jaipur', '201708291455480466144001503998748.jpg', '', '28.6415294', '77.1209145', '1', '2017-08-29'),
(6, 2, 'Bilashpur', '201708291619030804036001504003743.jpg', '', '28.6000912', '77.2270425', '1', '2017-08-29'),
(7, 28, 'Fatehganj west', '', '', '', '', '1', '2019-02-06'),
(8, 3, 'PAHARIYA PANDYPUR', '', '', '', '', '1', '2019-03-23'),
(9, 3, 'ASHAPUR', '', '', '', '', '1', '2019-03-23'),
(10, 3, 'PAHARIYA', '', '', '', '', '1', '2019-03-23'),
(11, 3, 'LANKA', '', '', '', '', '1', '2019-03-23'),
(12, 3, 'AKTHA', '', '', '', '', '1', '2019-03-23'),
(13, 3, 'PANDYPUR', '', '', '', '', '1', '2019-03-23'),
(14, 3, 'KAKARMATTA', '', '', '', '', '1', '2019-04-13'),
(15, 3, 'SUNDERPUR ', '', '', '', '', '1', '2019-04-17'),
(16, 30, 'Palamu', '', '', '', '', '1', '2019-04-19'),
(17, 30, 'palamu', '', '', '', '', '1', '2019-04-24'),
(18, 3, 'Sigra', '', '', '', '', '1', '2019-05-04'),
(19, 3, 'bhikharipur', '', '', '', '', '1', '2019-05-07'),
(20, 8, 'Fatma chauraha', '', '', '', '', '1', '2019-05-09'),
(21, 28, 'Noida sector 62', '', '', '', '', '1', '2019-07-08'),
(22, 28, 'sector 61', '', '', '', '', '1', '2019-07-08'),
(23, 28, 'sector 63', '', '', '', '', '1', '2019-07-08'),
(24, 28, 'sector 50', '', '', '', '', '1', '2019-07-08'),
(25, 28, 'sector 51', '', '', '', '', '1', '2019-07-08'),
(26, 28, 'sector 52', '', '', '', '', '1', '2019-07-08'),
(27, 28, 'sector 53', '', '', '', '', '1', '2019-07-08'),
(28, 28, 'sector 12', '', '', '', '', '1', '2019-07-08'),
(29, 28, 'sector 22', '', '', '', '', '1', '2019-07-08'),
(30, 28, 'sector 15', '', '', '', '', '1', '2019-07-08'),
(31, 28, 'sector 16', '', '', '', '', '1', '2019-07-08'),
(32, 28, 'sector 18', '', '', '', '', '1', '2019-07-08'),
(33, 28, 'sector 9', '', '', '', '', '1', '2019-07-08'),
(34, 28, 'sector 10', '', '', '', '', '1', '2019-07-08'),
(35, 28, 'sector 19', '', '', '', '', '1', '2019-07-08'),
(36, 28, 'sector 11', '', '', '', '', '1', '2019-07-08'),
(37, 28, 'Sector 12', '', '', '', '', '1', '2019-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `master_location`
--

CREATE TABLE `master_location` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_location`
--

INSERT INTO `master_location` (`id`, `city_id`, `name`, `location`, `image`, `description`, `lat`, `lng`, `status`, `date`) VALUES
(1, 1, 'Jamshedpur', '', '201708021736070312626001501675567.jpg', '', '22.8045498', '86.2032879', '1', '2017-08-02'),
(2, 1, 'Delhi', '', '201708021736510566641001501675611.jpg', '', '22.793066', '86.1856652', '1', '2017-08-02'),
(3, 2, 'Varanashi', '', '201708041845430352013001501852543.jpg', '', '28.6314512', '77.2166672', '1', '2017-08-04'),
(4, 2, 'Allahabad', '', '201708291242560538968001503990776.jpg', '', '28.5676955', '77.2432721', '1', '2017-08-29'),
(5, 2, 'Jaipur', '', '201708291455480466144001503998748.jpg', '', '28.6415294', '77.1209145', '1', '2017-08-29'),
(6, 2, 'Bilashpur', '', '201708291619030804036001504003743.jpg', '', '28.6000912', '77.2270425', '1', '2017-08-29'),
(1, 1, 'Jamshedpur', '', '201708021736070312626001501675567.jpg', '', '22.8045498', '86.2032879', '1', '2017-08-02'),
(2, 1, 'Delhi', '', '201708021736510566641001501675611.jpg', '', '22.793066', '86.1856652', '1', '2017-08-02'),
(3, 2, 'Varanashi', '', '201708041845430352013001501852543.jpg', '', '28.6314512', '77.2166672', '1', '2017-08-04'),
(4, 2, 'Allahabad', '', '201708291242560538968001503990776.jpg', '', '28.5676955', '77.2432721', '1', '2017-08-29'),
(5, 2, 'Jaipur', '', '201708291455480466144001503998748.jpg', '', '28.6415294', '77.1209145', '1', '2017-08-29'),
(6, 2, 'Bilashpur', '', '201708291619030804036001504003743.jpg', '', '28.6000912', '77.2270425', '1', '2017-08-29'),
(1, 1, 'Jamshedpur', '', '201708021736070312626001501675567.jpg', '', '22.8045498', '86.2032879', '1', '2017-08-02'),
(2, 1, 'Delhi', '', '201708021736510566641001501675611.jpg', '', '22.793066', '86.1856652', '1', '2017-08-02'),
(3, 2, 'Varanashi', '', '201708041845430352013001501852543.jpg', '', '28.6314512', '77.2166672', '1', '2017-08-04'),
(4, 2, 'Allahabad', '', '201708291242560538968001503990776.jpg', '', '28.5676955', '77.2432721', '1', '2017-08-29'),
(5, 2, 'Jaipur', '', '201708291455480466144001503998748.jpg', '', '28.6415294', '77.1209145', '1', '2017-08-29'),
(6, 2, 'Bilashpur', '', '201708291619030804036001504003743.jpg', '', '28.6000912', '77.2270425', '1', '2017-08-29'),
(1, 1, 'Jamshedpur', '', '201708021736070312626001501675567.jpg', '', '22.8045498', '86.2032879', '1', '2017-08-02'),
(2, 1, 'Delhi', '', '201708021736510566641001501675611.jpg', '', '22.793066', '86.1856652', '1', '2017-08-02'),
(3, 2, 'Varanashi', '', '201708041845430352013001501852543.jpg', '', '28.6314512', '77.2166672', '1', '2017-08-04'),
(4, 2, 'Allahabad', '', '201708291242560538968001503990776.jpg', '', '28.5676955', '77.2432721', '1', '2017-08-29'),
(5, 2, 'Jaipur', '', '201708291455480466144001503998748.jpg', '', '28.6415294', '77.1209145', '1', '2017-08-29'),
(6, 2, 'Bilashpur', '', '201708291619030804036001504003743.jpg', '', '28.6000912', '77.2270425', '1', '2017-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `master_services`
--

CREATE TABLE `master_services` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_services`
--

INSERT INTO `master_services` (`id`, `category`, `name`, `create_date`, `created_by`, `modified_date`, `status`) VALUES
(1, 0, 'WORLD ASTHMA DAY', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '1'),
(6, 0, 'cardiologist', '2018-10-09 11:27:21', 0, '2018-10-09 01:57:21', '1'),
(8, 0, 'physytion', '2018-10-09 11:32:09', 0, '2018-10-09 02:02:09', '1'),
(11, 0, 'Prime service', '2018-12-08 08:23:41', 0, '2018-12-08 08:53:41', '1');

-- --------------------------------------------------------

--
-- Table structure for table `master_specialization`
--

CREATE TABLE `master_specialization` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `image_icon` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `master_specialization`
--

INSERT INTO `master_specialization` (`id`, `category`, `name`, `image_icon`, `create_date`, `created_by`, `modified_date`, `status`) VALUES
(1, 1, 'Dentist', 'master_specialization_5714977492019-02-07.png', '0000-00-00 00:00:00', 0, '2019-02-07 12:00:21', '1'),
(2, 1, 'Orthopedic', 'master_specialization_6568477652019-03-02.png', '0000-00-00 00:00:00', 0, '2019-03-02 03:34:35', '1'),
(6, 0, 'Cardiologist', '', '2018-10-09 11:21:32', 0, '2018-10-09 01:51:32', '1'),
(7, 0, 'Physician', '', '2018-10-09 11:29:34', 0, '2018-10-09 01:59:34', '1'),
(8, 0, 'Neurosurgery', '', '2018-12-08 07:47:53', 0, '2018-12-08 08:17:53', '1'),
(9, 0, 'Urology ', '', '2018-12-08 07:48:11', 0, '2018-12-08 08:18:11', '1'),
(10, 0, 'ENT ', '', '2018-12-08 07:48:28', 0, '2018-12-08 08:18:28', '1'),
(11, 0, 'Ophthalmology', '', '2018-12-08 07:48:50', 0, '2018-12-08 08:18:50', '1'),
(12, 0, 'Obstetrics & Gynecology (Ob/Gyn)', '', '2018-12-08 07:49:09', 0, '2018-12-08 08:19:09', '1'),
(13, 0, 'Dermatology', '', '2018-12-08 07:49:26', 0, '2018-12-08 08:19:26', '1'),
(14, 0, 'Neurology', '', '2018-12-08 07:49:39', 0, '2018-12-08 08:19:39', '1'),
(15, 0, 'Pathology', '', '2018-12-08 07:49:49', 0, '2018-12-08 08:19:49', '1'),
(16, 0, 'Radiology', '', '2018-12-08 07:50:04', 0, '2018-12-08 08:20:04', '1'),
(17, 0, 'Anesthesiology', '', '2018-12-08 07:50:37', 0, '2018-12-08 08:20:37', '1'),
(18, 0, 'Psychiatry', '', '2018-12-08 07:50:48', 0, '2018-12-08 08:20:48', '1'),
(19, 0, 'Pediatrics', '', '2018-12-08 07:51:03', 0, '2018-12-08 08:21:03', '1'),
(20, 0, 'Radiation Oncology', '', '2018-12-08 07:51:22', 0, '2018-12-08 08:21:22', '1'),
(21, 0, 'Emergency Medicine', '', '2018-12-08 07:51:41', 0, '2018-12-08 08:21:41', '1'),
(22, 0, 'General Medicine', '', '2018-12-10 12:53:32', 0, '2018-12-10 01:23:32', '1'),
(38, 0, 'Surgeon', '', '2019-02-12 05:57:58', 0, '2019-02-12 06:27:58', '1'),
(39, 0, 'MD(Medicine)', '', '2019-03-23 06:35:11', 0, '2019-03-23 08:05:11', '1'),
(40, 0, 'MD(Medicine)physician and hematologist', '', '2019-03-23 06:35:41', 0, '2019-03-23 08:05:41', '1'),
(41, 0, 'MD(Pediatrics)', '', '2019-04-01 09:02:38', 0, '2019-03-31 22:32:38', '1'),
(42, 0, 'MS(OBG&GYNAE)', '', '2019-04-01 10:23:06', 0, '2019-03-31 23:53:06', '1'),
(43, 0, 'Laproscopy surgeon ', '', '2019-04-13 02:26:22', 0, '2019-04-13 03:56:22', '1'),
(44, 0, 'MD (OBS & Gyne)', '', '2019-04-18 05:05:50', 0, '2019-04-18 06:35:50', '1'),
(45, 0, 'DCH', '', '2019-04-19 11:54:41', 0, '2019-04-19 01:24:41', '1'),
(46, 0, 'Respiratory medicine', '', '2019-04-30 06:34:27', 0, '2019-04-30 08:04:27', '1'),
(47, 0, 'Oncologist', '', '2019-05-04 02:13:56', 0, '2019-05-03 15:43:56', '1'),
(48, 0, 'Pediatrician', '', '2019-05-04 02:16:26', 0, '2019-05-03 15:46:26', '1'),
(49, 0, 'ASTHMA', '', '2019-05-06 12:44:54', 0, '2019-05-05 14:14:54', '1');

-- --------------------------------------------------------

--
-- Table structure for table `medicalgallery`
--

CREATE TABLE `medicalgallery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `shot_description` varchar(150) NOT NULL,
  `long_description` varchar(150) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `medicalgallery`
--

INSERT INTO `medicalgallery` (`id`, `user_id`, `image`, `shot_description`, `long_description`, `date`) VALUES
(1, 4, '_profile_pic_2419105082019-04-04.jpg', 'Dharmendra', 'Rajput', '2019-04-04 06:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `pathdoctor`
--

CREATE TABLE `pathdoctor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `specialization` int(11) NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `city` varchar(55) NOT NULL,
  `regd_no` varchar(55) NOT NULL,
  `regd_council` int(11) NOT NULL,
  `regd_year` int(4) NOT NULL,
  `degree` int(11) NOT NULL,
  `college` varchar(87) NOT NULL,
  `year` int(4) NOT NULL,
  `exp` int(2) NOT NULL,
  `clinic_type` enum('OWN','OTHER') NOT NULL,
  `id_proof` text NOT NULL,
  `mic_proof` text NOT NULL,
  `med_reg_proof` text NOT NULL,
  `drimage` text NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `street` varchar(75) NOT NULL,
  `map` text NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `short_about` varchar(250) NOT NULL,
  `subscription` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) NOT NULL,
  `source` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pathdoctor`
--

INSERT INTO `pathdoctor` (`id`, `user_id`, `fname`, `lname`, `specialization`, `gender`, `city`, `regd_no`, `regd_council`, `regd_year`, `degree`, `college`, `year`, `exp`, `clinic_type`, `id_proof`, `mic_proof`, `med_reg_proof`, `drimage`, `mobile`, `email`, `street`, `map`, `achievement`, `about`, `short_about`, `subscription`, `fee`, `approved`, `verified`, `status`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `source`) VALUES
(137, 178, 'Dharmendra', NULL, 0, 'M', '28', '123456', 26, 2017, 0, 'Bareilly collage Bareilly', 2018, 0, 'OWN', 'dr_idproof_pic_53055686420190403.jpg', 'dr_micidproof_pic_61106843120190403.jpg', 'dr_regproof_pic_93410048820190403.jpg', 'dr_profile_pic_49912988820190403.jpg', '8393014240', 'dharmendrarajput128@gmail.com', '', '', '', '', 'hello i am from bareilly', 0, 0, '0', '0', '0', '2019-04-03 01:07:37', 0, '2019-04-03 01:07:37', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pathdoctorlogin`
--

CREATE TABLE `pathdoctorlogin` (
  `USERID` mediumint(9) NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FBUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `LNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PROFILEIMG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LPROFILE` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SM_PROFILEIMG` text NOT NULL,
  `MOBILE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ALTEMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ALTCONTACT` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CART` text NOT NULL,
  `OTP` int(6) DEFAULT NULL,
  `APPROVED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COMPLETED_PROFLE` enum('0','1') NOT NULL DEFAULT '0',
  `APPROVED` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `ADDRESS_ID` int(11) NOT NULL,
  `STATUS` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0-> initial otp sent , 1 verified , 2 blocked ',
  `REG_DATE` datetime DEFAULT current_timestamp(),
  `UPDATE_DATE` date NOT NULL,
  `UNSUBSCRIBE` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pathdoctorlogin`
--

INSERT INTO `pathdoctorlogin` (`USERID`, `EMAIL`, `PASSWORD`, `GUID`, `FBUID`, `FNAME`, `LNAME`, `GENDER`, `PROFILEIMG`, `LPROFILE`, `SM_PROFILEIMG`, `MOBILE`, `ALTEMAIL`, `ALTCONTACT`, `CART`, `OTP`, `APPROVED_BY`, `COMPLETED_PROFLE`, `APPROVED`, `ADDRESS_ID`, `STATUS`, `REG_DATE`, `UPDATE_DATE`, `UNSUBSCRIBE`) VALUES
(178, 'dharmendrarajput128@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Dharmendra', NULL, 'M', '', '', '', '8393014240', '', '', '', NULL, '', '0', '1', 0, '1', '2019-04-03 00:00:00', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pathlab`
--

CREATE TABLE `pathlab` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` int(11) NOT NULL,
  `location` varchar(35) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `website` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `id_proof` varchar(500) NOT NULL,
  `drimage` varchar(509) NOT NULL,
  `med_reg_proof` varchar(500) NOT NULL,
  `tag` text NOT NULL,
  `subscription` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL,
  `verified` enum('0','1') NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL DEFAULT 0,
  `modified_by` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pathlab`
--

INSERT INTO `pathlab` (`id`, `name`, `city`, `location`, `address`, `email`, `mobile`, `website`, `about`, `id_proof`, `drimage`, `med_reg_proof`, `tag`, `subscription`, `approved`, `verified`, `uid`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `status`) VALUES
(28, 'Danish Akhtar', 0, '', '', 'danishakhtar.010@gmail.com', '9430464652', '', '', '', '', '', '', 0, '0', '0', 28, '2019-07-08 04:52:38', 0, 0, '2019-07-08 04:52:38', '0'),
(29, 'mohit bharti', 0, '', '', 'mohitupcharr@gmail.com', '9911077446', '', '', '', '', '', '', 0, '0', '0', NULL, '2019-07-19 05:12:51', 0, 0, '2019-07-19 05:12:51', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pathlogin`
--

CREATE TABLE `pathlogin` (
  `USERID` mediumint(9) NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FBUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `LNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PROFILEIMG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LPROFILE` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SM_PROFILEIMG` text NOT NULL,
  `MOBILE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ALTEMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ALTCONTACT` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CART` text NOT NULL,
  `OTP` int(6) DEFAULT NULL,
  `APPROVED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COMPLETED_PROFLE` enum('0','1') NOT NULL DEFAULT '0',
  `APPROVED` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `ADDRESS_ID` int(11) NOT NULL,
  `STATUS` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0-> initial otp sent , 1 verified , 2 blocked ',
  `REG_DATE` datetime DEFAULT current_timestamp(),
  `UPDATE_DATE` date NOT NULL,
  `UNSUBSCRIBE` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pathlogin`
--

INSERT INTO `pathlogin` (`USERID`, `EMAIL`, `PASSWORD`, `GUID`, `FBUID`, `FNAME`, `LNAME`, `GENDER`, `PROFILEIMG`, `LPROFILE`, `SM_PROFILEIMG`, `MOBILE`, `ALTEMAIL`, `ALTCONTACT`, `CART`, `OTP`, `APPROVED_BY`, `COMPLETED_PROFLE`, `APPROVED`, `ADDRESS_ID`, `STATUS`, `REG_DATE`, `UPDATE_DATE`, `UNSUBSCRIBE`) VALUES
(28, 'danishakhtar.010@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Danish', 'Akhtar', '', '', '', '', '9430464652', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-08 04:52:38', '0000-00-00', '0'),
(29, 'mohitupcharr@gmail.com', 'd51f0311c240b83b4ba6fb6adfb04f3d', '', '', 'Mohit', 'Bharti', 'M', '', '', '', '9911077446', '', '', '', 802651, '', '0', '1', 0, '0', '2019-07-19 00:00:00', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `profile_chem`
--

CREATE TABLE `profile_chem` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `specialization` int(11) NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `city` varchar(55) NOT NULL,
  `regd_no` varchar(55) NOT NULL,
  `regd_council` int(11) NOT NULL,
  `regd_year` int(4) NOT NULL,
  `degree` int(11) NOT NULL,
  `college` varchar(87) NOT NULL,
  `year` int(4) NOT NULL,
  `exp` int(2) NOT NULL,
  `clinic_type` enum('OWN','OTHER') NOT NULL,
  `id_proof` text NOT NULL,
  `med_reg_proof` text NOT NULL,
  `drimage` text NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `street` varchar(75) NOT NULL,
  `map` text NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `short_about` varchar(255) NOT NULL,
  `subscription` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) NOT NULL,
  `source` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profile_chem`
--

INSERT INTO `profile_chem` (`id`, `user_id`, `fname`, `lname`, `specialization`, `gender`, `city`, `regd_no`, `regd_council`, `regd_year`, `degree`, `college`, `year`, `exp`, `clinic_type`, `id_proof`, `med_reg_proof`, `drimage`, `mobile`, `email`, `street`, `map`, `achievement`, `about`, `short_about`, `subscription`, `fee`, `approved`, `verified`, `status`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `source`) VALUES
(1, 1, 'jggcc', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '7840076569', 'devkrishnapiimt@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-03-24 14:37:56', 0, '2019-03-24 14:37:56', 0, 0),
(4, 4, 'Gyantech Medical Store', NULL, 0, 'M', '28', '123456', 26, 2018, 0, 'Bareilly collage Bareilly', 2018, 0, 'OWN', 'dr_idproof_pic_59554731820190404.jpg', 'dr_regproof_pic_48055565020190404.jpg', 'dr_profile_pic_76401248520190405.jpg', '8393014240', 'dharmendrarajput128@gmail.com', '', '', '', '<p style=\"text-align: right;\"><br></p>', 'hello i am from Bareilly', 0, 0, '0', '0', '0', '2019-04-04 04:39:00', 0, '2019-04-04 04:39:00', 0, 0),
(6, 6, 'mohit', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '9911077446', 'mohitupcharr@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-04-22 01:59:29', 0, '2019-04-22 01:59:29', 0, 0),
(7, 7, 'swati singh  ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '8630417034', 'mcaswati02@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-04-22 05:45:13', 0, '2019-04-22 05:45:13', 0, 0),
(8, 8, 'Penaut', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '9911766209', 'pee@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-04-25 23:34:19', 0, '2019-04-25 23:34:19', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile_dr`
--

CREATE TABLE `profile_dr` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `specialization` int(11) NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `city` varchar(55) NOT NULL,
  `regd_no` varchar(55) NOT NULL,
  `regd_council` int(11) NOT NULL,
  `regd_year` int(4) NOT NULL,
  `degree` int(11) NOT NULL,
  `college` varchar(87) NOT NULL,
  `year` int(4) NOT NULL,
  `exp` int(2) NOT NULL,
  `clinic_type` enum('OWN','OTHER') NOT NULL,
  `id_proof` text NOT NULL,
  `mic_proof` text NOT NULL,
  `med_reg_proof` text NOT NULL,
  `drimage` text NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `street` varchar(75) NOT NULL,
  `map` text NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `short_about` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `subscription` int(11) NOT NULL,
  `dr_fee` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) NOT NULL,
  `source` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profile_dr`
--

INSERT INTO `profile_dr` (`id`, `user_id`, `fname`, `lname`, `specialization`, `gender`, `city`, `regd_no`, `regd_council`, `regd_year`, `degree`, `college`, `year`, `exp`, `clinic_type`, `id_proof`, `mic_proof`, `med_reg_proof`, `drimage`, `mobile`, `email`, `street`, `map`, `achievement`, `short_about`, `about`, `subscription`, `dr_fee`, `approved`, `verified`, `status`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `source`) VALUES
(8, 7, 'Dr Atul Ratan', '', 0, 'M', '1', '', 1, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9415204313', 'orianahospitalvns@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '', '2019-02-17 06:57:20', 0, '2019-02-17 05:19:15', 0, 0),
(9, 8, 'Dr Kumar Utshav', NULL, 0, 'M', '3', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9099936273', 'raj.cool11@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-02-17 05:37:12', 0, '2019-02-17 05:37:12', 0, 0),
(10, 9, 'Amit kumar gupta', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7607750457', 'amit@upcharr.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-02-17 05:48:20', 0, '2019-02-17 05:48:20', 0, 0),
(11, 10, 'Sandeep Rai', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8090311155', 'drskrai@rediffmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-02-17 05:51:53', 0, '2019-02-17 05:51:53', 0, 0),
(15, 14, 'Dr. shahnaj', NULL, 0, 'F', '1', '', 1, 2019, 0, 'NIMS University jaipur', 2019, 3, 'OWN', '', 'dr_mic_proof_2187915620190220.jpg', '', 'dr_profile_pic_2426198820190220.jpg', '8896204363', 'shahnajkhatun09@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-02-20 06:08:29', 0, '2019-02-20 06:08:29', 0, 0),
(27, 17, 'Dharmendra', '', 0, 'M', '1', '123456', 7, 2015, 0, 'AIIMS', 2014, 6, 'OWN', 'dr_idproof_pic_12957259020190703.jpg', 'dr_mic_proof_79252646720190620.jpg', 'dr_regproof_pic_76179050820190416.jpg', 'dr_profile_pic_1443977420190703.jpg', '8393014240', 'dharmendrarajput@gmail.com', '', '', 'hello', 'hello i am from bareilly', 'i am work in gyantech international pvt ltd delhi', 0, 0, '1', '1', '1', '2019-04-15 00:00:00', 0, '2019-03-01 01:08:53', 0, 0),
(31, 21, 'SUMIT JAISWAL', NULL, 0, 'M', '1', '', 2, 2017, 0, 'aiims', 2019, 3, 'OWN', '', '', '', 'dr_profile_pic_23525168520190302.jpg', '6307397772', 'summittheone@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-03-02 02:22:23', 0, '2019-03-02 02:22:23', 0, 0),
(41, 31, 'Neeraj Kumar Jaiswal ', NULL, 0, 'M', '3', '123456', 2, 2018, 0, 'xyzzzzzz', 2018, 1, 'OWN', 'dr_idproof_pic_94541269020190312.jpg', 'dr_micidproof_pic_19829540420190312.jpg', 'dr_regproof_pic_25733663520190312.jpg', 'dr_profile_pic_120927820190312.jpg', '8318288890', 'nklove5445@gmail.com', '', '', '', 'welcome to upchar', '<p>welcome to upcharwelcome to upcharwelcome to upchar&nbsp;&nbsp;&nbsp;&nbsp;<br></p>', 1, 0, '0', '0', '1', '2019-03-07 05:49:02', 0, '2019-03-07 05:49:02', 1, 1),
(63, 73, 'RAVI BAIRAGI', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9009283531', 'ravibairagi31@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-03-18 05:34:15', 0, '2019-03-18 05:34:15', 0, 0),
(64, 74, 'M K Srivastava', '', 0, 'M', '3', '', 25, 1995, 0, 'IMS BHU', 1999, 23, 'OWN', '', '', '', 'dr_profile_pic_94345742020190323.jpg', '9415256272', 'manojsrivastava39@yahoo.in', '', '', '', '', '', 0, 0, '1', '1', '', '2019-03-24 12:13:53', 0, '2019-03-23 02:14:58', 0, 0),
(65, 75, 'krishna dev', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7840076569', 'devkrishnapiimt@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-03-24 14:31:40', 0, '2019-03-24 14:31:40', 0, 0),
(66, 76, 'amit', NULL, 0, 'M', '3', '1123345', 25, 2019, 0, 'kgmc', 2019, 5, 'OWN', 'dr_idproof_pic_3656723420190707.jpeg', 'dr_micidproof_pic_65103249720190707.jpg', 'dr_regproof_pic_37836870420190707.jpeg', 'dr_profile_pic_43489219820190411.jpg', '8009957777', 'amit28010@gmail.com', '', '', '', '', '<p>jmmm  nmm</p>', 0, 0, '0', '0', '0', '2019-03-24 16:17:37', 0, '2019-03-24 16:17:37', 0, 0),
(67, 77, 'Vinod kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', 'dr_profile_pic_65884769620190326.jpg', '9415273558', 'vinod_sarthak21@rediffmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-03-26 03:04:36', 0, '2019-03-26 03:04:36', 0, 0),
(71, 81, 'Sunil kushwaha', NULL, 0, 'M', '3', '', 25, 2018, 0, 'IMS BHU VARANASI UTTAR PRADESH', 2019, 5, 'OWN', 'dr_id_proof_7602628120190401.jpg', 'dr_mic_proof_96065050420190401.jpg', '', '', '8933055668', 'sunilkumarsinghdr@gmailcom', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-03-31 22:19:35', 0, '2019-03-31 22:19:35', 0, 0),
(72, 82, 'Shelly Kushwaha', NULL, 0, 'F', '3', 'MCI-16-22956', 26, 2016, 0, 'IMS BHU VARANASI UTTER PRADESH', 2015, 4, 'OWN', 'dr_id_proof_2322746220190401.JPG', 'dr_mic_proof_1631917020190401.JPG', 'dr_regproof_pic_75709738520190401.jpeg', 'dr_profile_pic_44838062820190401.jpg', '7565004462', 'kilkarisrinagar@gmail.com', '', '', '', 'MBBS,MS(OBS & GYNAE),IMS,BHU Fellow ICOG (Reprodutive Medicie) , MFOGSI,MIMA', '', 0, 0, '1', '1', '0', '2019-03-31 23:49:29', 0, '2019-03-31 23:49:29', 0, 0),
(73, 83, 'amit', NULL, 0, 'M', '3', '123456', 4, 2010, 0, 'vvic', 2006, 5, 'OWN', '', '', '', '', '7080245777', 'amit221@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '1', '2019-04-10 03:34:43', 0, '2019-04-10 03:34:43', 0, 0),
(75, 85, 'Dr A. K.  Kaushik', '', 1, 'M', '3', '34620', 25, 1991, 0, 'IMS BHU', 1991, 30, 'OWN', 'dr_id_proof_9565836362019-04-13.jpg', '', 'dr_reg_proof_972036182019-04-13.jpg', 'dr_profile_pic_27676892320190415.jpg', '9336916965', 'popularhospital@gmail.com', '', '', '', 'Dr A K Kaushik is best laparoscopy surgeon in varanasi.He done 99% of success result of surgery.', '', 1, 1, '1', '1', '1', '2019-04-13 02:57:01', 1, '2019-04-13 04:00:24', 1, 1),
(84, 92, 'Sanjay Kumar Garg', NULL, 0, 'M', '1', '', 1, 2019, 0, 'People,s College', 2019, 27, 'OWN', '', '', '', '', '9839058489', 'santushti.hospital@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-13 07:35:19', 0, '2019-04-13 07:35:19', 0, 0),
(85, 93, 'Danish Akhtar', NULL, 0, 'M', '3', '', 22, 2009, 0, 'pcrt', 2014, 8, 'OWN', '', '', '', 'dr_profile_pic_69809538020190415.jpg', '9430464652', 'danishakhtar.010@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-04-15 01:56:27', 0, '2019-04-15 01:56:27', 0, 0),
(87, 95, 'Dr Rajeev Mishra', NULL, 0, 'M', '3', '', 1, 2019, 0, 'IMS BHU VARANASI', 2019, 20, 'OWN', '', '', '', 'dr_profile_pic_22500659820190417.jpg', '9415202120', 'rajeeventclinic7@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-17 05:03:13', 0, '2019-04-17 05:03:13', 0, 0),
(89, 97, 'Dr Kiran Kaushik', NULL, 0, 'F', '3', '0000', 26, 1996, 0, 'BHU IMS Varanasi', 1996, 25, 'OWN', 'dr_idproof_pic_22452954720190501.jpg', 'dr_micidproof_pic_18237926320190501.jpg', 'dr_regproof_pic_62095782920190501.jpg', 'dr_profile_pic_95585343020190421.jpg', '9519010005', 'akkirankaushik@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-18 06:29:57', 0, '2019-04-18 06:29:57', 0, 0),
(90, 98, 'Anil kumar singh', NULL, 0, 'M', '3', '', 3, 2017, 0, 'Dr NTR university vijaywadha AP', 2019, 5, 'OWN', '', '', '', 'dr_profile_pic_3443331620190515.jpg', '6200322959', 'dranil998skmch@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-18 07:07:42', 0, '2019-04-18 07:07:42', 0, 0),
(91, 99, 'Dr Sudhakar Singh', NULL, 0, 'M', '1', '', 1, 2019, 0, 'not available', 2019, 4, 'OWN', '', '', '', 'dr_profile_pic_1254702520190421.jpg', '9088054684', 'Sudhakar.harsh@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-18 07:29:38', 0, '2019-04-18 07:29:38', 0, 0),
(92, 100, 'Dr Anupama goel', NULL, 0, 'F', '3', '', 25, 2009, 0, 'Tribhuvan university', 2009, 10, 'OWN', '', '', '', 'dr_profile_pic_38108420120190421.jpg', '7275505584', 'popular001@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-19 00:58:35', 0, '2019-04-19 00:58:35', 0, 0),
(93, 101, 'Dr Amit Kumar Yadav', NULL, 0, 'M', '1', '', 1, 2019, 0, '', 2019, 14, 'OWN', '', '', '', 'dr_profile_pic_99296551020190419.jpg', '8009154888', 'popular002@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-19 01:07:10', 0, '2019-04-19 01:07:10', 0, 0),
(94, 102, 'Dr Prabhat Kumar', NULL, 0, 'M', '1', '', 1, 2019, 0, '', 2019, 8, 'OWN', '', '', '', 'dr_profile_pic_12482761020190421.jpg', '9807636717', 'popular003@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-19 01:16:18', 0, '2019-04-19 01:16:18', 0, 0),
(95, 103, 'Dr Piyush Kumar', NULL, 0, 'M', '3', '', 1, 2019, 0, 'ITS Dental college Hospital & Research Center GN', 2019, 4, 'OWN', 'dr_id_proof_18224230420190419.jpg', 'dr_mic_proof_95723084520190419.jpg', '', 'dr_profile_pic_49288786520190419.jpg', '8299583912', 'piyushkumar8190@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-19 09:01:32', 0, '2019-04-19 09:01:32', 0, 0),
(96, 104, 'Dr A.K. Dubey', NULL, 0, 'M', '3', '', 25, 2003, 0, 'D.A. Medical College sivan bihar', 2003, 16, 'OWN', '', '', '', 'dr_profile_pic_76998853220190420.jpg', '9415992072', 'Dubey.ashok.dr@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-04-20 06:38:18', 0, '2019-04-20 06:38:18', 0, 0),
(97, 105, 'Dr Shikha shah', NULL, 0, 'F', '1', '', 1, 2019, 0, 'Acupressure helth care training & treatment institute system jodhpur', 2019, 6, 'OWN', '', '', '', 'dr_profile_pic_89382396120190420.jpg', '8299828599', 'shikhshah85@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-04-20 06:51:51', 0, '2019-04-20 06:51:51', 0, 0),
(99, 107, 'Dr Mool Narayan', NULL, 0, 'M', '1', '', 1, 2019, 0, 'Ms Gorakhpur University', 2019, 38, 'OWN', '', '', '', 'dr_profile_pic_5041621320190423.jpg', '8881400066', 'doctor@papular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 07:34:26', 0, '2019-04-23 07:34:26', 0, 0),
(100, 108, 'Dr Kamlesh Kumar Prajapati', NULL, 0, 'M', '1', '', 1, 2019, 0, 'C.C.S. University', 2019, 2, 'OWN', '', '', '', 'dr_profile_pic_78240507420190515.jpg', '9519001053', 'doctor@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 07:46:44', 0, '2019-04-23 07:46:44', 0, 0),
(101, 109, 'Dr Neha Gupta', NULL, 0, 'F', '3', '046182', 25, 2008, 0, 'MD SGPGIMS LUCKNOW', 2002, 12, 'OWN', 'dr_idproof_pic_38733552520190514.png', 'dr_micidproof_pic_93418488520190514.png', 'dr_regproof_pic_39518587720190514.png', 'dr_profile_pic_10400898220190514.png', '9519003331', 'doctor1@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 07:53:28', 0, '2019-04-23 07:53:28', 0, 0),
(102, 110, 'Nimisha singh', NULL, 0, 'F', '3', '0000', 25, 2019, 0, 'JIWAJI UNIVERSITY GWALIOR', 2019, 18, 'OWN', 'dr_id_proof_20359204220190504.jpg', '', '', 'dr_profile_pic_55262727020190728.jpg', '8573037503', 'doctor2@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 08:04:00', 0, '2019-04-23 08:04:00', 0, 0),
(103, 111, 'Dr Jitendra Singh', NULL, 0, 'M', '1', '', 1, 2019, 0, 'Uttar Pradesh medical council', 2019, 10, 'OWN', '', '', '', 'dr_profile_pic_32165240120190515.jpg', '8112400090', 'doctor3@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 14:04:04', 0, '2019-04-23 14:04:04', 0, 0),
(104, 112, 'Dr Nishtha Yadav', NULL, 0, 'F', '1', '', 1, 2019, 0, 'mahatma Jyotiba Phule Rohilkhand University', 2019, 2, 'OWN', '', '', '', 'dr_profile_pic_3661939920190424.jpg', '9519999276', 'doctor4@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 14:43:00', 0, '2019-04-23 14:43:00', 0, 0),
(105, 113, 'Dr Sudhakar Singh', NULL, 0, 'M', '1', '', 1, 2019, 0, 'West Bengal University of health sciences', 2019, 7, 'OWN', '', '', '', 'dr_profile_pic_30281970120190424.jpg', '9519001056', 'doctor@popularhospital.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 15:00:48', 0, '2019-04-23 15:00:48', 0, 0),
(106, 114, 'Dr Prabhat Kumar', NULL, 0, 'M', '1', '', 1, 2019, 0, 'Jamshedpur University', 2019, 8, 'OWN', '', '', '', 'dr_profile_pic_25439347920190424.jpg', '9519999267', 'doctor5@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-23 15:12:13', 0, '2019-04-23 15:12:13', 0, 0),
(112, 120, 'Dr VINIT AGRAWAL', NULL, 0, 'M', '1', '', 1, 2019, 0, 'JNMCH. AMU Aligarh', 2019, 8, 'OWN', '', '', '', 'dr_profile_pic_87496999620190430.jpg', '9519999320', 'drvini000@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-30 06:50:58', 0, '2019-04-30 06:50:58', 0, 0),
(113, 121, 'Dr. Ashish Kumar Singh', NULL, 0, 'M', '1', '', 1, 2019, 0, 'BHU UNIVERSITY', 2019, 6, 'OWN', '', '', '', 'dr_profile_pic_27930242220190515.jpg', '7800001898', 'drotor0@popular.hospital.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-30 07:21:06', 0, '2019-04-30 07:21:06', 0, 0),
(114, 122, 'INDRANEEL BASU', NULL, 0, 'M', '3', '038165', 25, 1995, 0, 'BHU UNIVERSITY', 1995, 25, 'OWN', 'dr_idproof_pic_36238392720190514.jpg', 'dr_micidproof_pic_99515996020190514.jpg', 'dr_regproof_pic_28597432120190514.jpg', 'dr_profile_pic_79964364620190514.jpg', '6391555522', 'doctor9@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-04-30 08:08:54', 0, '2019-04-30 08:08:54', 0, 0),
(115, 123, 'Dr. Amit Kumar', NULL, 0, 'M', '3', '000', 25, 2019, 0, 'BHU UNIVERSITY', 2019, 10, 'OWN', '', '', '', 'dr_profile_pic_45924359920190501.jpg', '9453357975', 'doctor8@popular.hospitals.in', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-05-01 05:41:23', 0, '2019-05-01 05:41:23', 0, 0),
(119, 127, 'Saba perween', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7277621585', 'psaba4671@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-05-04 04:01:13', 0, '2019-05-04 04:01:13', 0, 0),
(120, 128, 'Dr Binod Singh KK ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9415304102', 'apexhospital.varansi.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-05-05 14:50:27', 0, '2019-05-05 14:50:27', 0, 0),
(123, 131, 'Gopal krishna rai', NULL, 0, 'M', '3', '', 25, 2008, 0, 'MBBS KGMC LUCKNOW,DM UDAIPUR', 2017, 11, 'OWN', '', '', '', 'dr_profile_pic_64280354420190509.jpg', '8290846997', 'krishna.kgmu@gmail.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-05-09 05:11:57', 0, '2019-05-09 05:11:57', 0, 0),
(125, 133, 'DR.S.S.PANDEY', NULL, 0, 'M', '3', '22973', 25, 1978, 0, 'IMS BHU VARANASI UP', 1978, 40, 'OWN', 'dr_idproof_pic_63402558820190514.jpg', 'dr_micidproof_pic_43205770820190514.jpg', 'dr_regproof_pic_62143962720190514.jpg', 'dr_profile_pic_14374842020190514.jpg', '9519001043', 's.spandey@popular.in', '', '', '', '', '', 0, 0, '1', '1', '1', '2019-05-14 04:55:49', 0, '2019-05-14 04:55:49', 0, 0),
(137, 145, 'Anoop', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7235999099', 'anprt123456@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-06-20 13:21:45', 0, '2019-06-20 13:21:45', 0, 0),
(138, 147, 'rupali srivastav', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8527158338', 'rupalisrivastava20@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-01 11:45:15', 0, '2019-07-01 11:45:15', 0, 0),
(139, 148, 'Neyamul hak', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '+917905488', 'nshandloom786@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-01 14:09:38', 0, '2019-07-01 14:09:38', 0, 0),
(140, 149, 'Rajkumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9718140273', 'raj487694@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-02 12:05:18', 0, '2019-07-02 12:05:18', 0, 0),
(141, 150, 'DR. Prity', NULL, 0, 'F', '1', '', 2, 2019, 0, 'MAHARAJA AGRASEN medical COLLEGE ', 2019, 0, 'OWN', '', 'dr_mic_proof_16305918720190703.jpg', '', '', '7015101114', 'preetigoyal55555@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-03 05:22:17', 0, '2019-07-03 05:22:17', 0, 0),
(142, 151, 'Dharmendra Kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8127851002', 'svcc.ucr@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-05 00:04:48', 0, '2019-07-05 00:04:48', 0, 0),
(143, 152, 'Chauhan ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8881837859', 'schauhanjaat@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-05 13:28:15', 0, '2019-07-05 13:28:15', 0, 0),
(144, 153, 'Bimal Marandi', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7558882341', 'blmalmarandi00784@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-07 05:24:15', 0, '2019-07-07 05:24:15', 0, 0),
(145, 154, 'Bimal Marandi', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6238961071', 'bmarandi290@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-07 05:26:15', 0, '2019-07-07 05:26:15', 0, 0),
(146, 155, 'abdul basit', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9038888754', 'abdulbasit.abdulbari.aby@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-08 03:54:14', 0, '2019-07-08 03:54:14', 0, 0),
(147, 156, 'Rakesh', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8307214748', 'rakeshchandela81@com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-10 01:17:47', 0, '2019-07-10 01:17:47', 0, 0),
(148, 157, 'abhijit', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7783006621', 'drabhijitarya@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-10 02:19:34', 0, '2019-07-10 02:19:34', 0, 0),
(149, 158, 'sanjay kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7398854311', 'sanjaykr6686@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-10 15:29:51', 0, '2019-07-10 15:29:51', 0, 0),
(150, 159, 'abimanyu chettri', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '700041646', 'abimanyu6281@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-10 21:36:11', 0, '2019-07-10 21:36:11', 0, 0),
(151, 160, 'kamal', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9340194256', 'kpp546991@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-13 09:13:22', 0, '2019-07-13 09:13:22', 0, 0),
(152, 161, 'prs', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9348818122', 'Pravashrock@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-14 08:20:45', 0, '2019-07-14 08:20:45', 0, 0),
(153, 162, 'tej Bahadur', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8318039566', 'tejbahadurpatelp@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-16 20:36:36', 0, '2019-07-16 20:36:36', 0, 0),
(155, 164, 'pursati kashyap', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7974548966', 'kashyappursati@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-18 07:18:14', 0, '2019-07-18 07:18:14', 0, 0),
(156, 165, 'Raj Kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9876355205', 'rajkumar9646522160@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-18 11:00:04', 0, '2019-07-18 11:00:04', 0, 0),
(159, 168, 'Shagufta', NULL, 0, 'F', '28', 'A-4826', 28, 2019, 0, 'Chaudhary charan Singh University Merath', 2002, 17, 'OWN', 'dr_id_proof_49259056720190720.jpg', 'dr_mic_proof_25816590020190720.jpg', '', 'dr_profile_pic_57942456620190720.JPG', '8851904268', 'shaguftakhan125@yahoo.com', '', '', '', '', '', 0, 0, '1', '1', '0', '2019-07-20 05:27:02', 0, '2019-07-20 05:27:02', 0, 0),
(160, 169, 'pkp', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7978003492', 'priyadarship4@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-20 12:45:50', 0, '2019-07-20 12:45:50', 0, 0),
(161, 170, 'Yogesh Khade ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9892112863', 'yogesh.khade2011@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-20 15:54:33', 0, '2019-07-20 15:54:33', 0, 0),
(162, 171, 'pankaj Verma ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9455890972', 'vermazx90@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-21 10:45:12', 0, '2019-07-21 10:45:12', 0, 0),
(163, 172, 'manishsahu', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7985679632', 'manishsahu230@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-21 12:03:42', 0, '2019-07-21 12:03:42', 0, 0),
(164, 173, 'harimangal', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9325815500', 'Harimangal6264@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-21 23:53:20', 0, '2019-07-21 23:53:20', 0, 0),
(165, 174, 'Rakesh Rajpoot', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7309818192', 'rakeshrajpoot895320@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-22 10:49:30', 0, '2019-07-22 10:49:30', 0, 0),
(166, 175, 'rashmi', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7800300978', 'rashmibhupesh77@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-23 01:41:45', 0, '2019-07-23 01:41:45', 0, 0),
(167, 176, 'santosh das', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9926957586', 'das263780@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-23 06:49:49', 0, '2019-07-23 06:49:49', 0, 0),
(168, 177, 'Rupesh ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9302080133', 'rupeshtawri1222@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-23 11:23:49', 0, '2019-07-23 11:23:49', 0, 0),
(169, 178, 'Harish Pasi', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9598714156', 'harishpasi01@email.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-24 01:41:46', 0, '2019-07-24 01:41:46', 0, 0),
(170, 179, 'Yogesh Yadav', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8950777265', 'yadavyogesh974@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-24 04:59:54', 0, '2019-07-24 04:59:54', 0, 0),
(171, 180, 'karan ansari', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7409316923', 'ansarikaran@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-24 05:38:12', 0, '2019-07-24 05:38:12', 0, 0),
(172, 181, 'sonu kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '+916299682', 'sonukumar8', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-26 01:08:56', 0, '2019-07-26 01:08:56', 0, 0),
(173, 182, 'sonu kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '629968235', 'sonukumar8113020@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-26 01:12:04', 0, '2019-07-26 01:12:04', 0, 0),
(174, 183, 'Dr. Jay Namdev Kamble', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9175868605', 'au.rmssy25@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-26 11:42:39', 0, '2019-07-26 11:42:39', 0, 0),
(175, 184, 'Masoom Raza Khan', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9619608542', 'masoomrazakhan42@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-26 12:20:39', 0, '2019-07-26 12:20:39', 0, 0),
(176, 185, 'anuj deshwal', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8859055388', 'deshwal8859@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-26 22:47:08', 0, '2019-07-26 22:47:08', 0, 0),
(177, 186, 'arjunji', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7067350494', 'manishsigh74@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-27 02:25:11', 0, '2019-07-27 02:25:11', 0, 0),
(178, 187, 'suraj gupta ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9120158500', 'sg4779290@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-27 10:11:44', 0, '2019-07-27 10:11:44', 0, 0),
(179, 188, 'Road life', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '+919813071', 'babaextremes@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-28 03:26:14', 0, '2019-07-28 03:26:14', 0, 0),
(180, 189, 'Sain Jeet Pandey', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9984413264', 'sjplimitedmultiservises@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-29 03:54:09', 0, '2019-07-29 03:54:09', 0, 0),
(182, 191, 'dinesh parmar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7000520167', 'village biloda post biloda drict dhar', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-29 09:21:49', 0, '2019-07-29 09:21:49', 0, 0),
(183, 192, 'Danish', NULL, 0, 'M', '1', '', 3, 2020, 0, 'Dhaka high school', 2018, 1, 'OWN', 'dr_id_proof_40839878420190730.jpg', 'dr_mic_proof_73304501920190730.jpg', '', 'dr_profile_pic_37513971120190730.jpg', '9430464652', 'danishakhtar10@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-30 01:20:17', 0, '2019-07-30 01:20:17', 0, 0),
(184, 193, 'cutie simran', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '+916203840', 'simmi9693@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-30 23:18:06', 0, '2019-07-30 23:18:06', 0, 0),
(185, 194, 'cutie simran', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6203840577', 'simnit0705@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-30 23:19:37', 0, '2019-07-30 23:19:37', 0, 0),
(186, 195, 'Devendra Singh', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9675432790', 'devendra1995x@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-07-31 08:06:12', 0, '2019-07-31 08:06:12', 0, 0),
(187, 196, 'Sunny Kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7388779608', 'drsunny05@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-01 00:12:20', 0, '2019-08-01 00:12:20', 0, 0),
(188, 197, 'Amit jha', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7979011997', 'ak160260@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-01 07:02:43', 0, '2019-08-01 07:02:43', 0, 0),
(189, 198, 'sunnydhawan', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9899495492', 'sunnydhwan@Gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-01 21:57:48', 0, '2019-08-01 21:57:48', 0, 0),
(190, 199, 'abhijit', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7004234548', 'kmnhhjp@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-02 08:50:03', 0, '2019-08-02 08:50:03', 0, 0),
(191, 200, 'tushar bhutada', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9970911119', 'tusharbhutada9@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-03 08:40:32', 0, '2019-08-03 08:40:32', 0, 0),
(192, 201, 'AMIT SINGH', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7607997697', 'amitsingh300188@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-04 00:17:51', 0, '2019-08-04 00:17:51', 0, 0),
(193, 202, 'Anurag Sharma', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8696674308', 'anurag8696674308@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-04 10:14:41', 0, '2019-08-04 10:14:41', 0, 0),
(194, 203, 'vishwajeet shukla', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6306971449', 'vshukla19300@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-04 11:55:30', 0, '2019-08-04 11:55:30', 0, 0),
(195, 204, 'Ashok Sahu', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9424153603', 'ashoksahu637@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-05 20:46:38', 0, '2019-08-05 20:46:38', 0, 0),
(196, 205, 'vierendersingh', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6388839800', 'vierendersingh vierendersingh 99@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-06 08:55:04', 0, '2019-08-06 08:55:04', 0, 0),
(197, 206, 'pinesh', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9924601852', 'modi.pinesh@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-06 20:31:19', 0, '2019-08-06 20:31:19', 0, 0),
(198, 207, 'Dr.Dinesh Sonkar ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9407910443', 'dibeshsonjar@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-07 02:08:52', 0, '2019-08-07 02:08:52', 0, 0),
(199, 208, 'Amardeep Kochar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9424456167', 'amardeepkochar@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-09 07:22:27', 0, '2019-08-09 07:22:27', 0, 0),
(200, 209, 'Raju choudhary choudhary', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6353778623', 'rajuc7239@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-09 22:18:44', 0, '2019-08-09 22:18:44', 0, 0),
(201, 210, 'Jitesh Prajapati', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9860825465', 'jiteshkumar23789@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-10 01:21:14', 0, '2019-08-10 01:21:14', 0, 0),
(202, 211, 'Rekha singh', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7838859811', 'Sunilkumarsingh3226@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-11 02:59:53', 0, '2019-08-11 02:59:53', 0, 0),
(203, 212, 'Sunil Singh ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7503791284', 'Sunilkumarsingh@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-11 03:04:25', 0, '2019-08-11 03:04:25', 0, 0),
(204, 213, 'Sunil Singh ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9711355227', 'Rekhad118@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-11 03:43:27', 0, '2019-08-11 03:43:27', 0, 0),
(205, 214, 'R Shankar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9631257940', 'ravishankarfemous22@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-11 20:57:52', 0, '2019-08-11 20:57:52', 0, 0),
(206, 215, 'Aftab Alam', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6390581135', 'aftab4u67@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-11 23:32:25', 0, '2019-08-11 23:32:25', 0, 0),
(207, 216, 'Suresh Manjhi', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9301810100', 'sureshmanjhi100@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-12 08:45:07', 0, '2019-08-12 08:45:07', 0, 0),
(208, 217, 'Jitendra Yadav', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9372494226', 'jitendraraj18004@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-12 10:43:18', 0, '2019-08-12 10:43:18', 0, 0),
(209, 218, 'babita yadav', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8770107941', 'ybabita985gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-13 00:28:35', 0, '2019-08-13 00:28:35', 0, 0),
(210, 219, 'amarjeet', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9198280672', 'vipinmhit64@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-13 16:48:34', 0, '2019-08-13 16:48:34', 0, 0),
(211, 220, 'MO FARHAN RAZA KHATEEBI', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6395974448', 'razamofarhan0786@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-13 22:39:17', 0, '2019-08-13 22:39:17', 0, 0),
(212, 221, 'laksa', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9079357092', 'bhagwatsingh2345@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-18 04:20:35', 0, '2019-08-18 04:20:35', 0, 0),
(213, 222, 'MOHD WASEEM MANSOORI', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8700332749', 'drwaseem1986@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-19 06:17:40', 0, '2019-08-19 06:17:40', 0, 0),
(214, 223, 'pawan yadav', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8209245395', 'ypawan390@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-24 05:01:49', 0, '2019-08-24 05:01:49', 0, 0),
(215, 224, 'Rakesh', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7988189523', 'singhrakesh12248@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-26 00:18:40', 0, '2019-08-26 00:18:40', 0, 0),
(216, 225, 'saurabh sharma', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8476922291', 'saurabhsharmamechanical@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-27 00:45:33', 0, '2019-08-27 00:45:33', 0, 0),
(217, 226, 'JEETU SHARMA', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9807415900', 'jeetujj325@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-27 20:43:42', 0, '2019-08-27 20:43:42', 0, 0),
(218, 227, 'Tanmay Mitra', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9074008980', 'tanmaymitra5247@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-29 05:41:58', 0, '2019-08-29 05:41:58', 0, 0),
(219, 228, 'Tanmay Mitra', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8770249401', 'mintumitra44@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-29 05:43:25', 0, '2019-08-29 05:43:25', 0, 0),
(220, 229, 'Rakesh kumar Vishwakarma', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9149271319', 'rakeshvishwakarma88@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-30 10:41:05', 0, '2019-08-30 10:41:05', 0, 0),
(221, 230, 'Akhlaque Alam', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6300709561', 'akhlaquealamktr91@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-08-31 10:36:43', 0, '2019-08-31 10:36:43', 0, 0),
(222, 231, 'Mohit Ojha', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7408327191', 'amojha420@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-02 08:48:05', 0, '2019-09-02 08:48:05', 0, 0),
(223, 232, 'Anil Kumar', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '6394263340', 'anilku263340@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-08 19:51:48', 0, '2019-09-08 19:51:48', 0, 0),
(224, 233, 'pankaj Kumar das ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '7707036528', 'pankajkrdas1999@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-09 00:15:27', 0, '2019-09-09 00:15:27', 0, 0),
(225, 234, 'Dr.Nosheen Ali', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8120288336', 'drnosheen1991@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-09 11:33:18', 0, '2019-09-09 11:33:18', 0, 0),
(226, 235, 'Mukeem khan', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9050740979', 'afrinkhank6@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-12 03:28:46', 0, '2019-09-12 03:28:46', 0, 0),
(227, 236, 'rahul alawe', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9516123900', 'www.ralawe111@Gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-12 23:26:24', 0, '2019-09-12 23:26:24', 0, 0),
(228, 237, 'Brijraj Tripathi ', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9005653649', 'Brijrajtripathi3695@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-13 12:03:14', 0, '2019-09-13 12:03:14', 0, 0),
(229, 238, 'Suraj Vishwakarma', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9616415397', 'surajvishwakarma84076@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-15 10:10:46', 0, '2019-09-15 10:10:46', 0, 0),
(230, 239, 'Suraj Vishwakarma', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '+919369302', '9616415397', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-15 10:18:37', 0, '2019-09-15 10:18:37', 0, 0),
(231, 240, 'Ajay Goel', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9518883449', '9518883449', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-16 07:12:25', 0, '2019-09-16 07:12:25', 0, 0),
(232, 241, ' Kavita mewada', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '8819086486', 'kavitamewad77@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-18 02:05:48', 0, '2019-09-18 02:05:48', 0, 0),
(233, 242, 'satish kumar Giri', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '', '9801513474', 'satishkumar05011979@gmail.com', '', '', '', '', '', 0, 0, '0', '0', '0', '2019-09-19 09:49:48', 0, '2019-09-19 09:49:48', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile_path`
--

CREATE TABLE `profile_path` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `specialization` int(11) NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `city` varchar(55) NOT NULL,
  `regd_no` varchar(55) NOT NULL,
  `regd_council` int(11) NOT NULL,
  `regd_year` int(4) NOT NULL,
  `degree` int(11) NOT NULL,
  `college` varchar(87) NOT NULL,
  `year` int(4) NOT NULL,
  `exp` int(2) NOT NULL,
  `clinic_type` enum('OWN','OTHER') NOT NULL,
  `id_proof` text NOT NULL,
  `med_reg_proof` text NOT NULL,
  `drimage` text NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `street` varchar(75) NOT NULL,
  `map` text NOT NULL,
  `achievement` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `subscription` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `creat_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) NOT NULL,
  `source` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profile_path`
--

INSERT INTO `profile_path` (`id`, `user_id`, `fname`, `lname`, `specialization`, `gender`, `city`, `regd_no`, `regd_council`, `regd_year`, `degree`, `college`, `year`, `exp`, `clinic_type`, `id_proof`, `med_reg_proof`, `drimage`, `mobile`, `email`, `street`, `map`, `achievement`, `about`, `subscription`, `fee`, `approved`, `verified`, `status`, `creat_date`, `created_by`, `modified_date`, `modified_by`, `source`) VALUES
(1, 3, 'Dharmendra', NULL, 0, 'M', '', '', 0, 0, 0, '', 0, 0, 'OWN', '', '', '', '8393014240', 'dharmendrarajput128@gmail.com', '', '', '', '', 0, 0, '0', '0', '0', '2019-06-17 02:33:00', 0, '2019-06-17 02:33:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `saurvey`
--

CREATE TABLE `saurvey` (
  `fname` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `age` int(3) NOT NULL,
  `Qus1` varchar(50) NOT NULL,
  `Qus2` varchar(50) NOT NULL,
  `Qus3` varchar(50) NOT NULL,
  `Qus4` varchar(50) NOT NULL,
  `Qus5` varchar(50) NOT NULL,
  `Qus6` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `saurvey`
--

INSERT INTO `saurvey` (`fname`, `place`, `gender`, `phno`, `age`, `Qus1`, `Qus2`, `Qus3`, `Qus4`, `Qus5`, `Qus6`) VALUES
('rahul', 'VARANASI', 'Male', '27', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Rajiv', 'Delhi', 'Male', '35', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Dharmendra ', 'Bareilly ', 'Male', '21', 0, 'YES', 'YES', 'YES', 'NO', 'NO', ''),
('Mohammad Hasnain ', 'Varanasi ', 'Male', '21', 0, 'NO', '', '', '', '', ''),
('Mohammad Hasnain ', 'Varanasi ', 'Male', '21', 0, 'NO', '', '', '', '', ''),
('ROHIT YADAV', 'VARANASI', 'Male', '22', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('vineet ', 'varanasi', 'Male', '19', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('vineet ', 'varanasi', 'Male', '19', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('NAYAB AHAMAD', 'VARANASI', 'Male', '28', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Kamalesh kumar', 'Delhi ', 'Male', '27', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Ashish', 'Varanasi', 'Male', '32', 0, 'NO', 'NO', 'YES', 'YES', 'YES', ''),
('Atul Kumar', 'Varanasi', 'Male', '31', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Pratima', 'Varanasi', 'Female', '27', 0, 'NO', 'NO', 'NO', 'YES', 'YES', ''),
('Niraj Kumar Verma ', 'Varanasi ', 'Male', '29', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Amit', 'Honolulu', 'Female', '29', 0, 'NO', 'YES', 'YES', 'YES', 'YES', ''),
('Sanjay Kumar Yadav ', 'Varanasi ', 'Male', '24', 0, 'YES', 'NO', 'YES', 'YES', 'YES', ''),
('Sunaina', 'Mirzapur', 'Female', '25', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Amit Mishra', 'Varanasi', 'Male', '29', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Sunaina', 'Mirzapur', 'Female', '25', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Sunaina', 'Mirzapur', 'Female', '25', 0, 'NO', 'YES', 'YES', 'NO', 'YES', ''),
('Malay kumar', '8887999576', '', '40', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Kuldeep', 'Varanasi ', 'Male', '29', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Ravi singh', 'Mirzapur', 'Male', '21', 0, 'NO', 'NO', 'YES', 'YES', 'YES', ''),
('Avinash Gupta ', '29', 'Male', '0', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Shivam kasera', 'Mirzapur', 'Male', '26', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Santosh Kumar', 'Ashok Nagar', 'Male', '31', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Santosh Kumar', 'Ashok Nagar', 'Male', '31', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Santosh Kumar', 'Ashok Nagar', 'Male', '31', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Shivam kasera', 'Mirzapur', 'Male', '26', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Atrikesh sonkar', 'Varanasi', 'Male', '13', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Anil yadav', '', 'Male', '25', 0, '', '', '', '', '', ''),
('Arun sonkar', 'Varansi', 'Male', '21', 0, 'NO', 'NO', 'YES', 'YES', 'YES', ''),
('Shweta', 'Prayagraj ', 'Female', '20', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Shweta', 'Prayagraj ', 'Female', '20', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Shweta', 'Prayagraj ', 'Female', '20', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Shweta', 'Prayagraj ', 'Female', '20', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Kajal singh', 'Varanasi', 'Female', '24', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('King', '', 'Male', '22', 0, 'YES', 'YES', 'NO', 'YES', 'NO', ''),
('Anil upadhyay', 'Chitaiour Varanasi', '', '54', 0, '', '', '', '', '', ''),
('Ritu', 'Varanasi ', 'Female', '27', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Riya', 'Mirzapur', 'Female', '18', 0, 'NO', 'YES', 'YES', 'NO', 'YES', ''),
('Riya', 'Mirzapur', 'Female', '18', 0, 'NO', 'YES', 'YES', 'NO', 'YES', ''),
('Riya pandey', 'Ghaziabad', 'Female', '26', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit', 'VARANASI', 'Male', '2147483647', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit', 'VARANASI', 'Male', '2147483647', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit kumar', 'kanpur', 'Male', '2147483647', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit kumar', 'kanpur', 'Male', '2147483647', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit', '', '', '2147483647', 0, '', '', '', '', '', ''),
('amit', '', '', '2147483647', 0, '', '', '', '', '', ''),
('amit', '', '', '2147483647', 0, '', '', '', '', '', ''),
('amit', '', '', '2147483647', 0, '', '', '', '', '', ''),
('amit', '', '', '8009957777', 0, '', '', '', '', '', ''),
('amit', '', '', '8009957777', 0, '', '', '', '', '', ''),
('amit', '', '', '8009957777', 0, '', '', '', '', '', ''),
('Saurabh singh', 'Vanarasi', 'Male', '8317002247', 0, 'YES', 'NO', 'YES', 'NO', 'YES', ''),
('Saurabh singh', 'Vanarasi', 'Male', '8317002247', 0, 'YES', 'NO', 'YES', 'YES', 'YES', ''),
('Ekta', 'Varanasi ', 'Female', '8726209263', 0, 'YES', 'NO', 'YES', 'YES', 'YES', ''),
('amit', '', '', '8009957777', 0, '', '', '', '', '', ''),
('amit', 'vjndjndk', 'Male', '8009957777', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit', 'VARANASI', 'Male', '8009957778', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit', 'VARANASI', 'Male', '8009957778', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('amit', 'VARANASI', 'Male', '8009957778', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('HIRALAL sonkar', 'Rattapur Ramnagar Varanasi ', 'Male', '6393643978', 0, '', '', '', '', '', ''),
('vinit singh', 'chitaipur', 'Male', '9956501500', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Shailesh', 'Tilmapur, ashapur ,varanasi', 'Male', '9140800079', 0, 'maybe', 'YES', 'YES', 'YES', 'YES', ''),
('Amit 12', 'Gaya', 'Male', '7261837926', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Diwakar Sharma', 'Varanasi', 'Male', '7696418388', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Sanjay Kumar Sonker', 'Balrampur', 'Male', '9029244337', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Sanjeev Sharma', 'Varanasi', 'Male', '8004416617', 0, 'YES', 'NO', 'YES', 'YES', 'YES', ''),
('Sanjeev Sharma', 'Varanasi', 'Male', '8004416617', 0, 'YES', 'NO', 'YES', 'YES', 'YES', ''),
('amit', 'VARANASI', 'Male', '', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('rahul', 'gazipur', 'Male', '', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('rahul', 'gazipur', 'Male', '', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('vivek', 'mirzapur', 'Male', '7080245777', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('vivek', 'mirzapur', 'Male', '7080245777', 0, 'YES', 'YES', 'YES', 'YES', 'YES', ''),
('Neha sonkar', 'mirzapur', 'Female', '9506328632', 0, 'maybe', 'YES', 'YES', 'YES', 'YES', ''),
('Dwijesh tripathi', 'Sarnath', 'Male', '9140812293', 0, 'YES', 'NO', 'NO', 'NO', 'YES', ''),
('Dwijesh tripathi', 'Sarnath', 'Male', '9140812293', 0, 'YES', 'NO', 'NO', 'NO', 'YES', ''),
('Neha sonkar', 'mirzapur', 'Female', '9506328632', 0, 'maybe', 'YES', 'YES', 'YES', 'YES', 'yes'),
('Dwijesh tripathi', 'Sarnath', 'Male', '9140812293', 0, 'YES', 'NO', 'NO', 'NO', 'YES', 'yes'),
('Neha sonkar', 'mirzapur', 'Female', '9506328632', 0, 'maybe', 'YES', 'YES', 'YES', 'YES', 'yes'),
('astha singh', 'VARANASI', 'Female', '9005481185', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'yes'),
('beijendra', 'kanpur', 'Male', '8090703587', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'yes'),
('vineet', 'varanasi', 'Male', '9616210663', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Sandeep patel', '15/180 Nanhupur Chandra Chouraha Sarnath Varanasi', 'Male', '9450978830', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Abhijeet Rai', 'Varanasi', 'Male', '9565550067', 0, '0-2 times', 'YES', 'YES', 'NO', 'NO', 'YES'),
('shubham sonkar', 'pandeypur ', 'Male', '9453772332', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Aman Singh Parihar', 'Faridabad', 'Male', '7742355135', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Avadhesh sonkar', 'Varanasi', 'Male', '9919100024', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Shweta', 'lucknow', 'Female', '9795616155', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Avadhesh sonkar', 'Varanasi', 'Male', '9919100024', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Divya', 'Bhopal', 'Female', '8962252844', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ashutosh kumar singh', 'Varanasi', 'Male', '7905444485', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Arsh', 'Hyderabad', 'Male', '7073937891', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Md Zeeshan Hassan ', 'Muzaffarpur ', 'Male', '9650567049', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Shreyash', 'Varanasi', 'Male', '9161911122', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Raghav Sonkar ', 'Delhi', 'Male', '9711055973', 0, '6 or more', 'NO', 'NO', 'YES', 'YES', 'YES'),
('Sachin choudhary ', 'Haryana ', 'Male', '9079168458', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Abhishek Trioathi', 'Ramngar', 'Male', '6394202173', 0, '', '', '', '', '', 'YES'),
('Ravi Prakash Maurya', 'Varanasi', 'Male', '7760331635', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Kamlesh kumar', 'Varanasi', 'Male', '8318535985', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Pooja ', 'Varanasi', 'Female', '6392216108', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shubhangi dwivedi', 'Siddarthnager', '', '7992178545', 0, '0-2 times', 'YES', 'YES', 'NO', 'YES', 'YES'),
('Abhijeet singh solanki', 'Noida ', 'Male', '9636070907', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Milan Jain', 'Daman', 'Male', '9565382171', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vipin Pandey ', '', 'Male', '8400073085', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Romesh Agrawal', 'Indore ', 'Male', '9806666691', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vaishali sonkar', 'Azamgarh', 'Female', '8115496928', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rajeshswar Singh chib ', 'Chennai', 'Male', '9419218550', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vaishali sonkar', 'Azamgarh', 'Female', '8115496928', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vaishali sonkar', 'Azamgarh', 'Female', '8115496928', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vaishali sonkar', 'Azamgarh', 'Female', '8115496928', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ajit jaiswal', 'Varanasi', 'Male', '9795991111', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vaishali sonkar', 'Azamgarh', 'Female', '8115496928', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ajit jaiswal', 'Varanasi', 'Male', '9795991111', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Sharad ', '', 'Male', '9807664901', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Malaya sharma', 'Noida', 'Male', '9649481395', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shakambhari', 'Jaunpur', 'Male', '9307885459', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Kuldeep', 'Varanasi ', 'Male', '9335530054', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Mrityunjay pathak', 'Varanasi', 'Male', '7880955004', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Gaurav kumar', 'Varanasi', 'Male', '8874555560', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Awabh', 'Varanasii', 'Male', '9455486699', 0, '0-2 times', 'YES', 'YES', '', 'YES', 'YES'),
('Km sita', 'Ghazipur', 'Female', '7652055010', 0, '3-5 times', '', '', '', '', 'YES'),
('Dadhich', 'Noida', 'Male', '8800967017', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Mohit Srivastava', 'Livknow', 'Male', '8004950029', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Dadhich', 'Noida', 'Male', '8800967017', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Akhilesh Yadav', 'Delhi', 'Male', '9680005767', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Pranjali', 'Uttar pradesh', '', '', 0, '', '', '', '', '', 'YES'),
('Shashi chandra yadav', 'Varanasi', 'Male', '9862102638', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Pawan kumar singh', 'Delhi', 'Male', '8750597766', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('DR.D.N.Bhatt', 'Varanasi', 'Male', '7379320555', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('BRIJENDRA', 'Delhi', 'Male', '7905225054', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Pranjali', 'Uttar pradesh', 'Female', '', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Akash', 'Varanasi ', 'Male', '9519111999', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Deepanshu', 'Kanpur', 'Male', '9839098390', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('Riya Pandey', 'Ghaziabad', 'Female', '9910982600', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Himanshu jayant', 'Kanpur', 'Male', '8630563348', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Brijendra ', 'Delhi', 'Male', '9044431966', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Kashi maurya', 'Varanasi', 'Male', '9596457321', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Nidhi', 'Delhi', 'Female', '9044431966', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Risham', 'Renusagar,Sonebhadra,U.P.', '', '9415533435', 0, '', '', '', '', '', 'YES'),
('Risham', 'Renusagar,Sonebhadra,U.P.', 'Male', '9415533435', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Priya', 'Brisbane,australia', 'Female', '+614698519', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Sagun Shukla', 'Noida', 'Male', '9990889609', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Urvashi', 'Haldwani', 'Female', '9368349771', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vivek kumar', 'Varanasi', 'Male', '8604679952', 0, '', 'NO', 'NO', 'YES', 'NO', 'YES'),
('Shashank', 'Banglore', 'Male', '9074887927', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Himani ', 'Delhi', 'Female', '', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Prantik Dobhal', 'Gurgaon', 'Male', '9599030652', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Piyush Tyagi', 'Delhi', 'Male', '', 0, '0-2 times', 'NO', 'NO', '', 'YES', 'YES'),
('Satyajeet', 'Varanasi ', 'Male', '9696480905', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Aditya ', 'Varanasi', 'Male', '7388315796', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Neeraj Kumar Jaiswal', 'Kakrmatta', 'Male', '7007828846', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('ROHAN SONKER', 'GUWAHATI', 'Male', '7905083628', 0, '6 or more', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Alkesh vishwakarma', 'Varanasi', 'Male', '8299239927', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Michelle', 'Bangalore', 'Female', '8587857282', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('VINAY PRAKSH', 'Varanasi', 'Male', '8299655040', 0, '0-2 times', 'YES', 'NO', 'NO', 'NO', 'YES'),
('ATUL YADAV', 'Ghaziabad ', 'Male', '9990459600', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Michelle', 'Bangalore', 'Female', '8587857282', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('rajat', 'Varanasi', 'Male', '8299036918', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('AJAY PANT', 'Lucknow', 'Male', '9532211133', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Pankaj narsinghani', 'Varsnasi', 'Male', '7355182073', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Dharmendra chauhan ', 'Varanasi', 'Male', '8115421151', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Mansi sonkar', 'Varanasi', 'Female', '6388112281', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('alka', 'Delhi', 'Female', '9971623447', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Brijesh sonkar', 'Varanasi ', 'Male', '8318032207', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Krishna pal', 'Jaipur', 'Male', '9057015000', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Aman', 'Varanasi', 'Male', '7033584507', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ayushi', 'Bangalore', 'Female', '9739670343', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Meenakshi Sharma', 'Gurgaon ', 'Female', '9001495868', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Abhisek kumar', 'Pantnagar', 'Male', '9458922521', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ravish Tiwari', 'Varanasi, UP', 'Male', '9005792636', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Rishav yadav', 'Varanasi', 'Male', '8574257386', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Piyush Joshi', 'Bangalore', 'Male', '9456709735', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ilyas', 'Varanasi', 'Male', '9452711962', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shailja Dwivedi ', 'Varanasi ', 'Female', '9140390198', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shailja Dwivedi ', 'Varanasi ', 'Female', '9140390198', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Simran', 'Ghaziabad', 'Female', '9899144297', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ayushi Tyagi', 'Delhi', 'Female', '', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Riitka singh', 'Mumbai', 'Female', '7237978881', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Mandira', 'Noida', 'Female', '8375822831', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shah Alam', 'Azamgarh', 'Male', '8127036595', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Siddharth Sonkar', 'Ghazipur', 'Male', '9990545909', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Naincy', 'Jaunpur', '', '8318724617', 0, '0-2 times', 'YES', 'NO', 'YES', 'YES', 'YES'),
('Shashikant singh', 'New delhi', 'Male', '7522864627', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vicky rai', 'Chandigarh', 'Female', '8765887058', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('M N Pandey', 'Varanasi', 'Male', '8354083133', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Smita Sengupta', 'Noida', 'Female', '9711367489', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rakesh Singh Bisht', 'Haldwani', 'Male', '8650073079', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shahnawaz Khursheed ', 'Raxa rahim our ', 'Male', '9199416617', 0, '0-2 times', 'NO', '', '', '', 'YES'),
('Vaibhav rajhans', 'Noida', 'Male', '9453936611', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Mahehu sonkari', ' 9 5 97', 'Male', '6387366939', 0, '', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Mahesu sonkari', 'chaubepur', 'Male', '6387366939', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Deepika', 'Varanasi ', 'Female', '8317001377', 0, '0-2 times', 'NO', 'NO', 'YES', 'YES', 'YES'),
('mahesh sonkar', 'baharampur', 'Male', '6387366939', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('mahesh sonkar', 'baharampur', 'Male', '6387366939', 0, '6 or more', 'NO', 'NO', 'NO', 'YES', 'YES'),
('mahesh sonkar', 'baharampur', 'Male', '6387366939', 0, '6 or more', 'NO', 'NO', 'NO', 'YES', 'YES'),
('mahesh sonkar', 'baharampur', 'Male', '6387366939', 0, '6 or more', 'NO', 'NO', 'NO', 'NO', 'YES'),
('Sunil Sonkar ', 'Baharampur post. Chandrawati thana chaubeypur Vara', 'Male', '8181037932', 0, '0-2 times', 'YES', 'NO', 'NO', 'YES', 'YES'),
('mahesh ', 'baharampur', 'Male', '', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Satyendra Singh', 'Varanasi', 'Male', '7206436956', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Satyendra Singh', 'Varanasi', 'Male', '7206436956', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shubham Gupta ', 'Gurgaon ', 'Male', '7417210111', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Shashikant singh', 'New delhi', 'Male', '7522864627', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Prakhar gupta', 'Varanasi', 'Male', '+918896906', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Saumya Garg', 'Ghaziabad ', 'Female', '7358754619', 0, '0-2 times', 'NO', '', 'YES', 'NO', 'YES'),
('MOHit yadav', 'Noisa', 'Male', '7983332391', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Avinash ', 'Noida ', 'Male', '9795075000', 0, '0-2 times', 'NO', 'YES', 'NO', 'NO', 'YES'),
('gaurav singh', 'fatehgarh', 'Male', '8090281185', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('DEVENDRA KUMAR ', 'varanasi ', 'Male', '8858814669', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('DEVENDRA KUMAR ', 'varanasi ', 'Male', '8858814669', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('DEVENDRA KUMAR ', 'varanasi ', 'Male', '8858814669', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Rajnish yadav', 'Noida', 'Male', '9721979999', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Kartikeya sharma', 'Noida', 'Male', '9315850968', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ankit Verma', 'Noida', 'Male', '6395753475', 0, '0-2 times', 'YES', '', 'YES', 'YES', 'YES'),
('Chandradeep', 'Varanasi', 'Male', '9616886125', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vaishnov', 'Varanasi', 'Male', '9454934031', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vaishnov', 'Varanasi', 'Male', '9454934031', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Swatantra', 'Varanasi', 'Male', '9450709523', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('PriyaTrivedi', 'Varanasi', 'Female', '9793322166', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('PriyaTrivedi', 'Varanasi', 'Female', '9793322166', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Amitesh Maurya', 'Gurgaon', 'Male', '8009742403', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Divya Singh', 'Varanasi ', 'Female', '8707360894', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Saroj sahoo', 'Varanasi ', 'Male', '9937014400', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Riya Pandey', 'Ghaziabad', 'Female', '9910982600', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Nikita singh', 'Delhi', 'Female', '9560737094', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Prabhat Singh Rawat', 'Delhi', 'Male', '9810815955', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shiv tiwari tapasvi', 'Varanasi', 'Male', '8188010007', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Chahat chandani', 'K64/60gola dina nath varanasi', 'Female', '7007669054', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Zeeshan', 'Varanasi ', 'Male', '9889704900', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Anoop Sonkar', 'Varanasi', 'Male', '6392844650', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Zeeshan ', 'Varanasi', 'Male', '9889704900', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Sahil', 'Varanasi', 'Male', '9889080009', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Umesh makwana', 'Rajkot', 'Male', '9601111196', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Prince kumar Pandey', 'Varanasi', 'Male', '9453900030', 0, '0-2 times', 'NO', 'YES', 'NO', 'NO', 'YES'),
('PALLAV GARG', 'FARIDABAD ', 'Male', '8814893829', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('shrey Mehta ', 'Vadodara ', 'Male', '9925835615', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Manoj kumar', 'Raghunathpur', 'Male', '8318570506', 0, '0-2 times', 'YES', '', '', '', 'YES'),
('Joohee pandey', 'Mumbai', 'Female', '8587800832', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Aparajita', 'Varanasi', 'Female', '7880987777', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Prateek', 'Varanasi', 'Male', '8299059758', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Tanuja', 'Dehradun', 'Female', '8869815775', 0, '6 or more', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Pallavi saxena', 'Aligarh', 'Female', '9084480812', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Pallavi saxena', 'Aligarh', 'Female', '9084480812', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Manthan Patel', 'Ahmedabad', 'Male', '8320784928', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Deepak kumar', 'Varanasi', 'Male', '7081990999', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Anjali srivastava', 'Aligarh', 'Female', '8874640218', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shubham Singh ', 'Agra', 'Female', '8755939913', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Avadhesh sonkar', 'Varanasi', 'Male', '9919100024', 0, '0-2 times', '', 'YES', 'YES', 'YES', 'YES'),
('Avadhesh sonkar', 'Varanasi', 'Male', '9919100024', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Deepak yadav', 'Noida', 'Male', '8802914577', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vaibhav Singh', 'Babatpur ', 'Male', '7380957110', 0, '0-2 times', 'NO', 'YES', 'NO', 'NO', 'YES'),
('Mani yadav', 'New delhi', 'Female', '8285902141', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('ZEESHAN ', 'VARANASI', 'Male', '7388770270', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Aastha', 'Lucknow', 'Female', '7754010765', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('ayushi m', 'vns', 'Female', '9168635748', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('Srishty yadav', 'Varanasi', 'Female', '7985005913', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Srishty yadav', 'Varanasi', 'Female', '7985005913', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Kritika Gupta ', 'Delhi', 'Female', '8285208001', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ayushi omar', 'Hamirpur', 'Female', '9555722182', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Anuj Kumar pandey', 'Varanasi ', 'Male', '9540877027', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Naveen panthi ', 'Delhi ', 'Male', '9205818894', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Neeraj Kumar', 'Phulwariya Varanasi', '', '9807446021', 0, '0-2 times', 'NO', 'YES', 'NO', 'YES', 'YES'),
('ATUL YADAV', 'Ghaziabad ', 'Male', '9990459600', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Shalini srivastava', 'Ghaziabad', 'Female', '9354415160', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Apurva', 'Ghr', 'Female', '9411295001', 0, '0-2 times', 'YES', 'YES', 'NO', 'YES', 'YES'),
('Brijesh Madhukar', 'Varanasi', 'Male', '7398502998', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Diksha', 'Delhi', 'Female', '', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('Rajendra', 'Varanasi ', 'Male', '9044682735', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rajendra', 'Varanasi ', 'Male', '9044682735', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Sakshi', 'Varanasi ', 'Female', '9415270397', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shalini srivastava', 'Ghaziabad', 'Female', '9354415160', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Harshit', 'Greater Noida', 'Male', '7728989303', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Abhieshree Dhami', '/', '', '9742997795', 0, '', '', '', '', '', 'YES'),
('Abhieshree Dhami', 'Bangalore', 'Female', '9742997795', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Riddhi M', 'Delhi', 'Female', '9582548495', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Karan sonkar', 'Varanadi', 'Male', '8574767425', 0, '0-2 times', 'NO', 'NO', 'YES', 'YES', 'YES'),
('Shivangi', 'Delhi', 'Female', '9540113964', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Tanwishree Patra ', 'New Delhi ', 'Female', '9650421185', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Himanshi Dwivedi ', 'Delhi ', 'Female', '9837301454', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ankita sonkar', 'Varanasi', 'Female', '9140861474', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vinod kumar gameti', 'Udaipur', 'Male', '9472706010', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Brijesh Kumar sonkar', '1', 'Male', '8318032207', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Astha Gupta', 'Gwalior', 'Female', '8770195391', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Vimla Srivastava', 'Ballia', 'Female', '9450198607', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Shikha Maurya', 'Kirahiya khojwan varanasi', 'Female', '8565921819', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Nitin rai', 'Varanasi', 'Male', '', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Anup Gupta ', 'Varanasi ', 'Male', '8188811122', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Anup Gupta ', 'Varanasi ', 'Male', '8188811122', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Rohit kumar jaiswal', 'Varanasi', 'Male', '9307808114', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Raajveer singh', 'Mumbai', 'Male', '8828001122', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Raajveer singh', 'Mumbai', 'Male', '8828001122', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Raajveer singh', 'Mumbai', 'Male', '8828001122', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Raajveer singh', 'Mumbai', 'Male', '8828001122', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Raajveer singh', 'Mumbai', 'Male', '8828001122', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Raajveer singh', 'Mumbai', 'Male', '8828001122', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Dipti Pandey ', 'Varanasi', 'Female', '9140977934', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Vaibhav', 'Noida', 'Male', '9453936623', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ankit', 'Varanasi', 'Male', '7860877564', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Anurag', 'Varanasi', 'Male', '9389599968', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Gaurav sharma', 'Delhi', 'Male', '9557725079', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Shalini ', 'Kasganj ', 'Female', '8650297181', 0, '6 or more', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shalini ', 'Kasganj ', 'Female', '8650297181', 0, '6 or more', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shalini ', 'Kasganj ', 'Female', '8650297181', 0, '6 or more', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shalini ', 'Kasganj', 'Female', '8650297181', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Bhupesh', 'new delhi', 'Male', '9910935479', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Dhiraj kumar', 'Varanasi', 'Male', '8250184916', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Neha Ray ', 'Varanasi', 'Female', '8081556161', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Neha Ray ', 'Varanasi', 'Female', '8081556161', 0, '3-5 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Sakshi Singh ', 'Varanasi ', 'Female', '7310095979', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Abjisek', 'Varanasi', 'Male', '9727066263', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rohit ', 'Kanpur ', 'Male', '8081887202', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Nishu tiwari', 'Varanasi ', 'Female', '7007654065', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Arya tripathi', 'Ramngar , varanasi', 'Female', '8858438210', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shubham Srivastav ', 'DELHI', 'Male', '9873743240', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ritik sonkar', 'Varanasi', 'Male', '7706819004', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Akriti Srivastava', 'Lucknow', 'Female', '8573831677', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rajan Kumar Paswan', 'Gorakhpur', 'Male', '7905986160', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('rohit', 'mirzapur', 'Male', '7905356932', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rajan Kumar Paswan', 'Gorakhpur', 'Male', '7905986160', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('rohit', 'mirzapur', 'Male', '7905356932', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Alka', 'Pune', 'Female', '7042550628', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('Azad Kumar', 'Varanasi', 'Male', '7007760779', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ashish kumar vind', 'VARANASI', 'Male', '9519795349', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Soni Pandey ', 'Varanasi ', 'Female', '9598551111', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Soni Pandey ', 'Varanasi ', 'Female', '9598551111', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('sury pratap sonkar ', 'bareilly', 'Male', '9794772878', 0, '6 or more', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Shivam', 'New delhi', 'Male', '9999231051', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Arpit pandey', 'Ashapur', 'Male', '9415121086', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Ram babu sonkar', 'Ramnagar', 'Male', '9918342065', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Dasharath yadav ', '200', 'Male', '9454342290', 0, '', '', '', '', '', 'YES'),
('Shruti', 'New Delhi', 'Female', '7275697450', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('à¤®à¥à¤¨à¥à¤¨à¤¾ à¤•à¤¸à¥‡à¤°à¤¾ ', 'Ck62/55 kashipura varanasi', 'Male', '9369396770', 0, '6 or more', 'NO', 'NO', 'NO', 'YES', 'YES'),
('Manoj Kumar Sonkar', 'Mandua dih Varanasi', 'Male', '9598120030', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Manoj Kumar Sonkar', 'Mandua dih Varanasi', 'Male', '9598120030', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ram Prakash Dubey ', 'Varanasi ', 'Male', '9453393923', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Chandra bali singh ', 'Ramai patti, jamalpur RTOOffice', 'Male', '9453220486', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Chandra bali singh ', 'Ramai patti, jamalpur RTOOffice', 'Male', '9453220486', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Chandra bali singh ', 'Ramai patti, jamalpur RTOOffice', 'Male', '9453220486', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Sanjay Sonkar', 'Allahabad', 'Male', '9935619229', 0, '3-5 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('Brijesh Kumar', 'Varanasi ', 'Male', '9415618654', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Nitesh ', '', 'Male', '9918000719', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Vikash', 'Ktq', 'Male', '8969004707', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('rohit', 'mirzapur', 'Male', '7905356932', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Hitendra krishna', 'Mirzapur', 'Male', '9628126096', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ajay kumar', 'Pakkanar', 'Male', '8737820437', 0, '6 or more', 'YES', 'YES', 'NO', 'YES', 'YES'),
('Rahul Gautam', 'Chunar', 'Male', '9450847220', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ajay kumar', 'Jagadishpur urf bhateria pakkanara', 'Male', '8737820437', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Ajay kumar', 'Jagadishpur urf bhateria pakkanara', 'Male', '8737820437', 0, '0-2 times', 'NO', 'NO', 'NO', 'NO', 'YES'),
('Ajay kumar', 'Jagadishpur urf bhateria pakkanara', 'Male', '8737820437', 0, '0-2 times', 'NO', 'NO', 'NO', 'NO', 'YES'),
('Gaurav', 'Varanasi ', 'Male', '7800877393', 0, '0-2 times', 'NO', 'NO', 'YES', 'YES', 'YES'),
('Ayush Singh', 'Sundarpu varanasi', 'Male', '9598572443', 0, '0-2 times', 'YES', 'NO', 'NO', 'NO', 'YES'),
('Dharmendra B. Srivastava', 'Palava City Do', 'Male', '9450155090', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rahul sonkar ', 'VARANASI', 'Male', '9044123466', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rahul sonkar ', 'VARANASI', 'Male', '9044123466', 0, '3-5 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Jitendra Patel ', '', 'Male', '8382854003', 0, '0-2 times', 'NO', 'NO', 'YES', 'YES', 'YES'),
('Jitendra Patel ', 'Chunar mirzapur 231304 ', 'Male', '8382854003', 0, '0-2 times', 'NO', 'NO', 'YES', 'YES', 'YES'),
('Stuti sharma', 'Dehradun', 'Female', '', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Jatin', 'Delhi', 'Male', '9027282871', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Anshika', '', 'Female', '', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Aarushi Agarwal', 'Kotdwara', 'Female', '9012800151', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Anjali uniyal', 'dehradun', 'Female', '7060134099', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Gunjan', 'Dehradun ', 'Female', '875566324', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rohan Sareen', 'Meerut', 'Male', '8954533707', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Akshay dhiman', 'dehradun', 'Male', '7060706033', 0, '0-2 times', 'NO', 'YES', 'YES', 'NO', 'YES'),
('Ridhima ', 'Delhi', 'Female', '9703055165', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Rahul Rawat', 'Dehradun', 'Male', '8171475569', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Ankita badoni', 'Dehradun', 'Female', '9068499189', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shweta Bartwal', 'Dehradun', 'Female', '9997720610', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Sudhanshu Chamoli', 'DEHRADUN', 'Male', '7060272342', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Garv Sabharwal', 'Noida', 'Male', '9034219369', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Shivam Pandey', 'Dehradun ', 'Male', '9634993226', 0, '0-2 times', 'YES', 'YES', 'YES', 'NO', 'YES'),
('Charu', 'Noida', 'Female', '', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('isha', 'Dehradun', 'Female', '9149332906', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('Saket Rautela ', 'Dehradun ', 'Male', '7024734529', 0, '0-2 times', 'YES', 'NO', 'NO', 'YES', 'YES'),
('Susheel kumar', 'Aligarh', 'Male', '9758564576', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES'),
('Alok', 'Vns', 'Male', '9044422299', 0, '0-2 times', 'NO', 'NO', 'NO', 'NO', 'YES'),
('Raju.sonkar ', 'Varanasi ', 'Male', '9415906540', 0, '0-2 times', 'NO', 'YES', 'YES', 'YES', 'YES'),
('MANJU ', 'Dehradun', 'Female', '9410759590', 0, '0-2 times', 'YES', 'YES', 'YES', 'YES', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `sm_checkout`
--

CREATE TABLE `sm_checkout` (
  `id` bigint(19) NOT NULL,
  `userid` bigint(19) NOT NULL,
  `checkoutid` bigint(19) NOT NULL,
  `orderid` varchar(250) NOT NULL,
  `trakingid` varchar(250) NOT NULL,
  `bankrefno` varchar(250) NOT NULL,
  `orderstatus` varchar(250) NOT NULL,
  `failurestatus` varchar(250) NOT NULL,
  `paymentmod` varchar(250) NOT NULL,
  `cardname` varchar(250) NOT NULL,
  `statuscode` varchar(250) NOT NULL,
  `statusmessage` varchar(250) NOT NULL,
  `currency` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `billingname` varchar(250) NOT NULL,
  `billingaddress` varchar(250) NOT NULL,
  `billingcity` varchar(250) NOT NULL,
  `billingstate` varchar(250) NOT NULL,
  `billingzip` bigint(19) NOT NULL,
  `billingcountry` varchar(250) NOT NULL,
  `billingtel` bigint(19) NOT NULL,
  `billingemail` varchar(250) NOT NULL,
  `deliveryname` varchar(250) NOT NULL,
  `deliveryaddress` varchar(250) NOT NULL,
  `deliverycity` varchar(250) NOT NULL,
  `deliverystate` varchar(250) NOT NULL,
  `deliveryzip` bigint(19) NOT NULL,
  `deliverycountry` varchar(250) NOT NULL,
  `deliverytel` bigint(19) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sm_checkout`
--

INSERT INTO `sm_checkout` (`id`, `userid`, `checkoutid`, `orderid`, `trakingid`, `bankrefno`, `orderstatus`, `failurestatus`, `paymentmod`, `cardname`, `statuscode`, `statusmessage`, `currency`, `amount`, `billingname`, `billingaddress`, `billingcity`, `billingstate`, `billingzip`, `billingcountry`, `billingtel`, `billingemail`, `deliveryname`, `deliveryaddress`, `deliverycity`, `deliverystate`, `deliveryzip`, `deliverycountry`, `deliverytel`, `status`, `date`) VALUES
(1, 13, 0, 'UA0000000017', '108522205617', '904802127765', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful', 'INR', '1.00', 'Upchar Online Medical Appointm solution', 'dgcddhdd', 'Varanasi', 'Uttar Pradesh', 221001, 'India', 8009957777, 'upcharr@gmail.com', 'Upchar Online Medical Appointm solution', 'dgcddhdd', 'Varanasi', 'Uttar Pradesh', 221001, 'India', 8009957777, 1, '2019-02-17 02:01:06'),
(2, 1, 1, 'UA0000000019', '108522417699', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', 'amit kumar', '', '', '', 0, 'India', 8009957777, 'amit28010@gmail.com', 'amit kumar', 'cust-address', 'cust-city', 'cust-city', 111111, 'India', 8009957777, 1, '2019-02-17 15:18:15'),
(3, 24, 0, 'UA0000000027', '108527737953', '905910278318', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'ANOOP', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'ANOOP', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 1, '2019-02-28 10:36:14'),
(4, 65, 0, 'UA0000000072', '108530540119', '151155', 'Success', '', 'Debit Card', 'RuPay', 'null', 'SUCCESS', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'up', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'up', 243501, 'India', 8393014240, 1, '2019-03-05 15:13:23'),
(5, 73, 2, 'UA0000000092', '108531152930', '906517521793', 'Failure', '', 'Unified Payments', 'UPI', '', 'Failed', 'INR', '1.00', 'Dharmendra Rajput', 'varanasi', 'varanasi', 'uttar pradesh', 221007, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra Rajput', 'varanasi', 'varanasi', 'uttar pradesh', 221007, 'India', 8393014240, 1, '2019-03-06 17:54:51'),
(6, 77, 0, 'UA0000000107', '108533207363', '906914000437', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful', 'INR', '1.00', 'Anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 9454776802, 'rohit.sonkar9454@gmail.com', 'Anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 9454776802, 1, '2019-03-10 14:33:20'),
(7, 78, 0, 'UA0000000115', '108533752945', '164000', 'Success', '', 'Debit Card', 'RuPay', 'null', 'SUCCESS', 'INR', '1.00', 'Dharmendra Rajput', 'Bareilly', 'Bareilly', 'U P', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra Rajput', 'Bareilly', 'Bareilly', 'U P', 243501, 'India', 8393014240, 1, '2019-03-11 16:40:39'),
(8, 66, 2, 'UA0000000118', '108534169130', '907112139644', 'Failure', '', 'Unified Payments', 'UPI', '', 'Failed', 'INR', '1.00', 'Upchar Online Medical Appointm solution', 'ssfssdgs', 'vns', 'up', 221007, 'India', 9415204313, 'upcharr@gmail.com', 'Upchar Online Medical Appointm solution', 'ssfssdgs', 'vns', 'up', 221007, 'India', 9415204313, 1, '2019-03-12 12:38:55'),
(9, 66, 2, 'UA0000000119', '108534172064', '907112143883', 'Failure', '', 'Unified Payments', 'UPI', '', 'Failed', 'INR', '1.00', 'Upchar Online Medical Appointm solution', 'varaanasi', 'vns', 'up', 221007, 'India', 9415204313, 'upcharr@gmail.com', 'Upchar Online Medical Appointm solution', 'varaanasi', 'vns', 'up', 221007, 'India', 9415204313, 1, '2019-03-12 12:43:33'),
(10, 78, 3, 'UA0000000153', '108535805890', 'null', 'Timeout', '', 'null', '', '', 'Session Expired', 'INR', '1.00', 'Dharmendra', '', '', '', 0, 'India', 8393014240, 'dharmendrarajput12@gmail.com', 'Dharmendra', 'cust-address', 'cust-city', 'cust-city', 111111, 'India', 8393014240, 1, '2019-03-15 13:37:25'),
(11, 67, 0, '2281010', '108537810277', '20190319111212800110168655261637827', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Pradeep kumar', 'Luhard', 'Mandi', 'Himachal Pradesh', 175003, 'India', 7833020069, 'pkthakur20009@gmail.com', 'Pradeep kumar', 'Luhard', 'Mandi', 'Himachal Pradesh', 175003, 'India', 7833020069, 1, '2019-03-19 12:47:48'),
(12, 21, 0, '9561547', '108540142396', '20190323111212800110168610362431471', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Pradeep Kumar', 'Luhard', 'Kotli', 'Himachal Pradesh', 175003, 'India', 7833020069, 'pkthakur20009@gmail.com', 'Pradeep Kumar', 'Luhard', 'Kotli', 'Himachal Pradesh', 175003, 'India', 7833020069, 1, '2019-03-23 11:45:19'),
(13, 21, 0, '5666682', '108540147296', '752603', 'Success', '', 'Debit Card', 'MasterCard Debit Card', 'null', 'SUCCESS', 'INR', '1.00', 'Pradeep Kumar', 'Luhard', 'Mandi', 'Himachal Pradesh', 175003, 'India', 7833020069, 'pkthakur20009@gmail.com', 'Pradeep Kumar', 'Luhard', 'Mandi', 'Himachal Pradesh', 175003, 'India', 7833020069, 1, '2019-03-23 11:50:23'),
(14, 78, 0, '5233162', '108540414630', '20190323111212800110168023762130088', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'mcaswati02@gmail.com', 'Swati', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-03-23 16:33:00'),
(15, 78, 0, '1887978', '108540485026', '20190323111212800110168491962162838', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Gyantech', 'Laxmi nagar', 'Delhidelhi', 'New Delhi', 110092, 'India', 9719877478, 'mcaswati02@gmail.com', 'Gyantech', 'Laxmi nagar', 'Delhidelhi', 'New Delhi', 110092, 'India', 9719877478, 1, '2019-03-23 17:40:33'),
(16, 78, 0, '296496', '108541630814', '20190325111212800110168272562393013', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati', 'Delhi', 'Delhidelhi', 'New Delhi', 110092, 'India', 9718777468, 'mcaswati02@gmail.com', 'Swati', 'Delhi', 'Delhidelhi', 'New Delhi', 110092, 'India', 9718777468, 1, '2019-03-25 09:55:39'),
(17, 78, 0, '784936', '108541852767', '145519', 'Success', '', 'Debit Card', 'RuPay', 'null', 'SUCCESS', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up', 243501, 'India', 8393014240, 1, '2019-03-25 14:56:01'),
(18, 78, 0, '5576159', '108541861629', '150657', 'Success', '', 'Debit Card', 'RuPay', 'null', 'SUCCESS', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 1, '2019-03-25 15:07:42'),
(19, 78, 0, '567534', '108541960337', '20190325111212800110168039762613583', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Azad', 'Delhi ', 'Delhi', 'New Delhi', 110092, 'India', 9431967158, 'Mcaswati02@gmail.com', 'Azad', 'Delhi ', 'Delhi', 'New Delhi', 110092, 'India', 9431967158, 1, '2019-03-25 17:22:03'),
(20, 78, 0, '533356', '108541983475', '20190325111212800110168017962381480', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati', 'Delhi ', 'Delhi', 'New Delhi', 110092, 'India', 9430464652, 'mcaswati02@gmail.com', 'Swati', 'Delhi ', 'Delhi', 'New Delhi', 110092, 'India', 9430464652, 1, '2019-03-25 17:50:04'),
(21, 78, 0, '6306697', '108541992902', '20190325111212800110168168362577238', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 1, '2019-03-25 18:00:03'),
(22, 78, 0, '7020593', '108542008452', '20190325111212800110168450862480545', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-03-25 18:17:19'),
(23, 78, 0, '2486602', '108542511922', '20190326111212800110168964662625291', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-03-26 12:51:50'),
(24, 78, 0, '8605120', '108542522491', '20190326111212800110168193162468003', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-03-26 13:04:36'),
(25, 78, 0, '1994388', '108542603693', '20190326111212800110168434062366747', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala vihar', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gma8l.com', 'Danish', 'Okhala vihar', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-03-26 14:39:14'),
(26, 28, 0, '90684', '108542633154', '908515315125', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'amit kumar', 'Ghgvcff', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 'amit28010@gmail.com', 'amit kumar', 'Ghgvcff', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 1, '2019-03-26 15:11:58'),
(27, 78, 0, 'UA0000000192', '108542644230', '20190326111212800110168855962407140', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Noida', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com', 'Dharmendra', 'Noida', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-26 15:24:34'),
(28, 78, 0, 'UA0000000194', '108542707624', '20190326111212800110168420762423894', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmandra', 'Noida', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Dharmandra', 'Noida', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-26 16:41:24'),
(29, 24, 0, 'UA0000000203', '108543092455', '908522843429', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'anoop', 'vns', 'varanasi', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'anoop', 'vns', 'varanasi', 'up', 221007, 'India', 7235999099, 1, '2019-03-26 22:55:04'),
(30, 28, 1, '3917382', '108543110423', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-03-26 23:26:39'),
(31, 78, 0, 'UA0000000209', '108543437072', '20190327111212800110168768062701717', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Sharma ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com ', 'Sharma ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-27 12:16:05'),
(32, 78, 0, 'UA0000000211', '108543500076', '20190327111212800110168219462485703', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com ', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-27 13:26:02'),
(33, 28, 0, 'UA0000000221', '108544048974', '908700245878', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'amit kumar', 'Ggfghg', 'Varanasi', 'Uttar Pradesh', 22100, 'India', 8009957777, 'upchar.developer@gmail.com', 'amit kumar', 'Ggfghg', 'Varanasi', 'Uttar Pradesh', 22100, 'India', 8009957777, 1, '2019-03-28 00:06:45'),
(34, 78, 0, 'UA0000000223', '108544307171', '20190328111212800110168490762914632', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-03-28 11:39:18'),
(35, 24, 0, 'UA0000000229', '108544390663', '908712935888', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 1, '2019-03-28 12:58:07'),
(36, 78, 0, 'UA0000000231', '108544399896', '20190328111212800110168843362762553', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'dharmendra ', 'Noida ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com ', 'dharmendra ', 'Noida ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-28 13:07:32'),
(37, 24, 0, 'UA0000000232', '108544431000', '908713567625', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 1, '2019-03-28 13:38:42'),
(38, 78, 0, 'UA0000000236', '108544448373', '20190328111212800110168994362791698', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati', 'Saharsa', 'Saharsa', 'Bihar', 852201, 'India', 9718777468, 'mcaswati02@gmail.com', 'Swati', 'Saharsa', 'Saharsa', 'Bihar', 852201, 'India', 9718777468, 1, '2019-03-28 13:56:24'),
(39, 24, 0, 'UA0000000237', '108544476377', '908714280185', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'anoop', 'varanasi', 'varanasi', 'up', 221007, 'India', 7235999099, 1, '2019-03-28 14:24:11'),
(40, 78, 0, 'UA0000000238', '108544504999', '20190328111212800110168622762883510', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com ', 'Danish ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-28 14:54:41'),
(41, 78, 0, 'UA0000000239', '108544526622', '20190328111212800110168450862913213', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati', 'Nirman vihar', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Swati', 'Nirman vihar', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-28 15:18:09'),
(42, 78, 0, 'UA0000000240', '108544582375', '20190328111212800110168089262948126', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'danish', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com ', 'danish', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-03-28 16:18:27'),
(43, 24, 0, 'UA0000000242', '108547085943', '908918099319', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'a', 'a', 'vatsala', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'a', 'a', 'vatsala', 'up', 221007, 'India', 7235999099, 1, '2019-03-30 18:34:09'),
(44, 78, 2, 'UA0000000252', '108548549012', '20190401111212800110168995163378063', 'Failure', '', 'Wallet', 'Paytm', 'null', 'Cancel Request by Customer.', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 1, '2019-04-01 14:32:23'),
(45, 78, 0, 'UA0000000256', '108548555531', '143443', 'Success', '', 'Debit Card', 'RuPay', 'null', 'CAPTURED', 'INR', '1.00', 'Dharmendra', 'bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 1, '2019-04-01 14:36:52'),
(46, 78, 0, 'UA0000000277', '108548701585', '20190401111212800110168849663352434', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com ', 'Dharmendra ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-04-01 17:39:03'),
(47, 78, 0, 'UA0000000278', '108548711124', '20190401111212800110168946863514208', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com', 'Danish ', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-04-01 17:49:36'),
(48, 78, 0, 'UA0000000281', '108549256917', '20190402111212800110168698463524164', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-04-02 12:21:16'),
(49, 78, 0, 'UA0000000282', '108549268822', '20190402111212800110168019763522863', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-04-02 12:36:58'),
(50, 78, 0, 'UA0000000289', '108549440363', '20190402111212800110168494163648872', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-04-02 16:09:46'),
(51, 78, 0, 'UA0000000291', '108550118681', '20190403111212800110168049063703924', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-04-03 12:25:27'),
(52, 78, 2, 'UA0000000292', '108550262105', 'null', 'Failure', '', 'Debit Card', 'RuPay', 'null', 'NOT CAPTURED', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP', 243501, 'India', 8393014240, 1, '2019-04-03 15:18:23'),
(53, 78, 0, 'UA0000000294', '108550268773', '152535', 'Success', '', 'Debit Card', 'RuPay', 'null', 'CAPTURED', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-04-03 15:26:07'),
(54, 78, 0, 'UA0000000296', '108550296649', '721611', 'Success', '', 'Debit Card', 'State Bank of India', 'null', 'CAPTURED', 'INR', '1.00', 'Danish Akhtar ', 'Okhla ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Danish Akhtar ', 'Okhla ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-04-03 16:02:13'),
(55, 78, 0, 'UA0000000298', '108550321301', '728568', 'Success', '', 'Debit Card', 'State Bank of India', 'null', 'CAPTURED', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-04-03 16:35:16'),
(56, 78, 0, 'UA0000000299', '108550361951', '171743', 'Success', '', 'Debit Card', 'RuPay', 'null', 'CAPTURED', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 1, '2019-04-03 17:18:06'),
(57, 78, 0, 'UA0000000300', '108551086973', '145546', 'Success', '', 'Debit Card', 'RuPay', 'null', 'CAPTURED', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-04-04 14:56:12'),
(58, 78, 0, 'UA0000000301', '108551142574', '20190404111212800110168833764010739', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP', 243501, 'India', 8393014240, 'dharmrndrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP', 243501, 'India', 8393014240, 1, '2019-04-04 16:11:54'),
(59, 78, 0, 'UA0000000302', '108551150612', '20190404111212800110168716564032668', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243502, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243502, 'India', 8393014240, 1, '2019-04-04 16:22:18'),
(60, 78, 0, 'UA0000000303', '108551158069', '311996', 'Success', '', 'Debit Card', 'State Bank of India', 'null', 'CAPTURED', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 1, '2019-04-04 16:31:38'),
(61, 78, 0, 'UA0000000304', '108551169930', '856173', 'Success', '', 'Debit Card', 'State Bank of India', 'null', 'CAPTURED', 'INR', '1.00', 'Danish ', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danushakhtar.010@gmail.com', 'Danish ', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-04-04 16:49:37'),
(62, 24, 1, 'UA0000000305', '108552075637', 'null', 'Aborted', '', 'null', 'null', '', 'Cancel reason is not specified by the customer.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-04-05 17:51:54'),
(63, 24, 0, 'UA0000000307', '108554573420', '909811513606', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'anoop', 'vns', 'varanasi', 'up', 221007, 'India', 7235999099, 'anprt123456@gmail.com', 'anoop', 'vns', 'varanasi', 'up', 221007, 'India', 7235999099, 1, '2019-04-08 11:20:20'),
(64, 32, 0, 'UA0000000308', '108555832032', '20190409111212800110168465864620131', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'amit kumar', 'Vgdfh', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 'amit28010@gmail.com', 'amit kumar', 'Vgdfh', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 1, '2019-04-09 18:01:16'),
(65, 78, 0, 'UA0000000319', '108561259863', '201910587166639', 'Success', '', 'Debit Card', 'RuPay', 'null', 'SUCCESS', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Uo', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Uo', 243501, 'India', 8393014240, 1, '2019-04-15 16:27:07'),
(66, 78, 0, 'UA0000000330', '108569417523', '20190425111212800110168037167279903', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 'dharmendrarajput120@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Up ', 243501, 'India', 8393014240, 1, '2019-04-25 12:47:54'),
(67, 78, 3, 'UA0000000333', '108569445945', 'null', 'Timeout', '', 'null', '', '', 'Session Expired', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-04-25 13:36:54'),
(68, 78, 0, 'UA0000000335', '108569469679', '201911559593327', 'Success', '', 'Debit Card', 'RuPay', 'null', 'SUCCESS', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-04-25 13:57:51'),
(69, 78, 0, 'UA0000000344', '108575143963', '20190502111212800110168183067986461', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-02 14:26:54'),
(70, 78, 0, 'UA0000000345', '108575815039', '20190503111212800110168581168451945', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com', 'Danish', 'okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-03 10:52:47'),
(71, 78, 0, 'UA0000000348', '108580078908', '20190508111212800110168669568900943', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-08 13:44:35'),
(72, 46, 1, 'UA0000000349', '108584290359', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 11:33:09'),
(73, 46, 1, 'UA0000000350', '108584297910', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 11:44:55'),
(74, 46, 1, 'UA0000000351', '108584301330', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 11:49:51'),
(75, 46, 1, 'UA0000000352', '108584312666', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 12:06:51'),
(76, 46, 1, 'UA0000000354', '108584322708', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 12:21:05'),
(77, 46, 1, 'UA0000000355', '108584332278', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 12:36:04'),
(78, 46, 1, 'UA0000000357', '108584336118', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 12:40:51'),
(79, 78, 0, 'UA0000000362', '108584426291', '20190514111212800110168203069964489', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-14 15:11:07'),
(80, 78, 0, 'UA0000000363', '108584456374', '20190514111212800110168857569711142', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati ', 'Delhi ', 'Delhi ', 'Delhi ', 24301, 'India', 9718777468, 'mcaswati02@gmail.com', 'Swati ', 'Delhi ', 'Delhi ', 'Delhi ', 24301, 'India', 9718777468, 1, '2019-05-14 15:59:15'),
(81, 78, 0, 'UA0000000364', '108584459114', '20190514111212800110168504069959179', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'danishakhtar.010@gmail.com', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-14 16:05:58'),
(82, 78, 0, 'UA0000000365', '108584464672', '20190514111212800110168051569902034', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'Up', 243501, 'India', 9718777468, 'mcaswati02@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'Up', 243501, 'India', 9718777468, 1, '2019-05-14 16:13:38'),
(83, 78, 0, 'UA0000000366', '108584468170', '20190514111212800110168622069843415', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-05-14 16:19:09'),
(84, 78, 3, 'UA0000000366', '108584478115', 'null', 'Timeout', '', 'null', '', '', 'Session Expired', 'INR', '1.00', '', '', '', '', 0, '', 0, '', '', '', '', '', 0, '', 0, 1, '2019-05-14 16:49:52'),
(85, 32, 0, 'UA0000000367', '108585425705', '20190516111212800110168569469809517', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8800957777, 'danishakhtar.010@gmail.com ', 'Danish ', 'okhala ', 'New Delhi', 'New Delhi', 110025, 'India', 8800957777, 1, '2019-05-16 11:16:43'),
(86, 78, 0, 'UA0000000368', '108585809805', '20190516111212800110168694170144735', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 1, '2019-05-16 22:14:58'),
(87, 78, 0, 'UA0000000369', '108586316707', '20190517111212800110168546470209032', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'UP ', 243501, 'India', 8393014240, 1, '2019-05-17 18:09:44'),
(88, 24, 0, 'UA0000000370', '108587479689', '20190519111212800110168660670479190', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'amit', 'varanasi', 'varanasi', 'up', 221007, 'India', 8009957777, 'amit28010@gmail.com', 'amit', 'varanasi', 'varanasi', 'up', 221007, 'India', 8009957777, 1, '2019-05-19 20:18:57'),
(89, 32, 0, 'UA0000000372', '108587484768', '913920172139', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Success', 'INR', '1.00', 'amit kumar', 'Vara', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 'amit28010@gmail.com', 'amit kumar', 'Vara', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 1, '2019-05-19 20:27:46'),
(90, 78, 0, 'UA0000000375', '108587704181', '914011926196', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'U P', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'U P', 243501, 'India', 8393014240, 1, '2019-05-20 11:35:48'),
(91, 78, 0, 'UA0000000378', '108589062597', '20190522111212800110168348570832089', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'Mcaswati.02@gmail.com', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 15:36:26'),
(92, 78, 0, 'UA0000000379', '108589065262', '20190522111212800110168266370801176', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 15:41:44'),
(93, 78, 0, 'UA0000000380', '108589088891', '20190522111212800110168990670843712', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 16:20:45'),
(94, 78, 0, 'UA0000000382', '108589116012', '20190522111212800110168860871006573', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Swati', 'Nirman', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcasati02@gmail.com', 'Swati', 'Nirman', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 17:02:10'),
(95, 78, 0, 'UA0000000383', '108589125144', '20190522111212800110168727470984631', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 17:18:00'),
(96, 78, 0, 'UA0000000384', '108589133108', '20190522111212800110168914771038699', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 17:31:25'),
(97, 78, 0, 'UA0000000385', '108589151301', '20190522111212800110168667470899352', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 'mcaswati02@gmail.com', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8393014240, 1, '2019-05-22 18:05:47'),
(98, 78, 0, 'UA0000000387', '108589161806', '20190522111212800110168976371441917', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 1, '2019-05-22 18:23:51'),
(99, 78, 0, 'UA0000000388', '108589165455', '20190522111212800110168711771098053', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Uo', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra ', 'Bareilly ', 'Bareilly ', 'Uo', 243501, 'India', 8393014240, 1, '2019-05-22 18:29:11'),
(100, 24, 0, 'UA0000000391', '108591482044', '5436060532', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Transaction success', 'INR', '1.00', 'amit', 'vwranasi', 'vns', 'up', 221007, 'India', 8009957777, 'amit28010@gmail.com', 'amit', 'vwranasi', 'vns', 'up', 221007, 'India', 8009957777, 1, '2019-05-26 20:40:15'),
(101, 32, 0, 'UA0000000392', '108591484187', '5436130731', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Transaction success', 'INR', '1.00', 'amit kumar', 'Vns', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 'amit28010@gmail.com', 'amit kumar', 'Vns', 'Varanasi', 'Uttar Pradesh', 221007, 'India', 8009957777, 1, '2019-05-26 20:44:49'),
(102, 120, 0, 'UA0000000399', '108605987168', '5802499099', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Transaction success', 'INR', '1.00', 'ANUJ MISHRA', 'varanasi', 'Varanasi', 'up', 221201, 'India', 6388647435, 'anujmishravns30@gmail.com', 'ANUJ MISHRA', 'varanasi', 'Varanasi', 'up', 221201, 'India', 6388647435, 1, '2019-06-17 11:44:52'),
(103, 78, 0, 'UA0000000400', '108607470220', '20190619111212800110168491074828946', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-06-19 11:58:22'),
(104, 78, 0, 'UA0000000402', '108607495396', '20190619111212800110168300474933898', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dard', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Dard', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-06-19 12:30:16'),
(105, 78, 0, 'UA0000000403', '108607523859', '20190619111212800110168361575003248', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 'danishakhtar.010@gmail.com ', 'Danish', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 9430464652, 1, '2019-06-19 12:49:37'),
(106, 78, 0, 'UA0000000408', '108609062248', '917212682626', 'Success', '', 'Unified Payments', 'UPI', '', 'Transaction Successful', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'U P', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'U P', 243501, 'India', 8393014240, 1, '2019-06-21 12:43:47'),
(107, 78, 0, 'UA0000000411', '108612390630', '5952594834', 'Success', '', 'Unified Payments', 'UPI', 'null', 'Transaction success', 'INR', '1.00', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8009957777, 'Danishakhtar.010@gmail.com ', 'Dharmendra', 'Okhala', 'New Delhi', 'New Delhi', 110025, 'India', 8009957777, 1, '2019-06-25 19:11:59'),
(108, 125, 1, 'UA0000000419', '108617347282', 'null', 'Aborted', '', 'null', 'null', '', 'I wish to review my order again before completing the transaction.', 'INR', '1.00', 'amit amit', '', '', '', 0, 'India', 7978003492, 'upchar.developer@gmail.com', 'amit amit', 'cust-address', 'cust-city', 'cust-city', 111111, 'India', 7978003492, 1, '2019-07-01 23:18:28'),
(109, 78, 0, 'UA0000000439', '108618019053', '20190702111212800110168684676583672', 'Success', '', 'Wallet', 'Paytm', 'null', 'Txn Success', 'INR', '1.00', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 'dharmendrarajput128@gmail.com', 'Dharmendra', 'Bareilly', 'Bareilly', 'UP', 243501, 'India', 8393014240, 1, '2019-07-02 17:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `sm_order`
--

CREATE TABLE `sm_order` (
  `ID` int(11) NOT NULL,
  `ORDER_ID` varchar(55) NOT NULL,
  `USER_TYPE` enum('P','U','H','D','C') NOT NULL DEFAULT 'U',
  `USER_ID` int(11) NOT NULL,
  `ITEM_TYPE` enum('A') NOT NULL DEFAULT 'A',
  `ITEM_ID` int(11) NOT NULL,
  `QTY` smallint(3) NOT NULL DEFAULT 1,
  `PRICE` float(9,2) NOT NULL DEFAULT 0.00,
  `TAX` float(9,2) NOT NULL DEFAULT 0.00,
  `DISCOUNT` float(9,2) NOT NULL DEFAULT 0.00,
  `SUB_TOTAL` float(9,2) NOT NULL DEFAULT 0.00,
  `TOTAL` float(9,2) NOT NULL DEFAULT 0.00,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `PAYMENT_STATUS` enum('REQUESTED','FAILED','DONE') NOT NULL DEFAULT 'REQUESTED',
  `PAYMENT_REF` varchar(255) NOT NULL,
  `REMARK` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sm_order`
--

INSERT INTO `sm_order` (`ID`, `ORDER_ID`, `USER_TYPE`, `USER_ID`, `ITEM_TYPE`, `ITEM_ID`, `QTY`, `PRICE`, `TAX`, `DISCOUNT`, `SUB_TOTAL`, `TOTAL`, `DATE`, `TIME`, `PAYMENT_STATUS`, `PAYMENT_REF`, `REMARK`) VALUES
(1, 'UA0000000001', 'U', 3, 'A', 1, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '12:10:31', '', '', ''),
(2, 'UA0000000002', 'U', 3, 'A', 2, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '12:11:29', 'REQUESTED', '', ''),
(3, 'UA0000000003', 'U', 5, 'A', 3, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '14:41:32', '', '', ''),
(4, 'UA0000000004', 'U', 4, 'A', 4, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-02-16', '14:52:01', 'REQUESTED', '', ''),
(5, 'UA0000000005', 'U', 4, 'A', 5, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '14:52:47', '', '', ''),
(6, 'UA0000000006', 'U', 4, 'A', 6, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-02-16', '14:53:41', 'REQUESTED', '', ''),
(7, 'UA0000000007', 'U', 9, 'A', 7, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '14:57:01', '', '', ''),
(8, 'UA0000000008', 'U', 8, 'A', 8, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '14:58:43', '', '', ''),
(9, 'UA0000000009', 'U', 10, 'A', 9, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:03:37', '', '', ''),
(10, 'UA0000000010', 'U', 6, 'A', 10, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:06:52', '', '', ''),
(11, 'UA0000000011', 'U', 6, 'A', 11, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:14:43', 'REQUESTED', '', ''),
(12, 'UA0000000012', 'U', 6, 'A', 12, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:15:12', '', '', ''),
(13, 'UA0000000013', 'U', 6, 'A', 13, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:17:48', '', '', ''),
(14, 'UA0000000014', 'U', 6, 'A', 14, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:18:50', '', '', ''),
(15, 'UA0000000015', 'U', 6, 'A', 15, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:31:37', '', '', ''),
(16, 'UA0000000016', 'U', 6, 'A', 16, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-16', '15:37:47', 'REQUESTED', '', ''),
(17, 'UA0000000017', 'U', 13, 'A', 17, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-17', '01:59:05', 'DONE', '', ''),
(18, 'UA0000000018', 'U', 14, 'A', 18, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-17', '15:11:39', 'REQUESTED', '', ''),
(19, 'UA0000000019', 'U', 1, 'A', 19, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-17', '15:17:40', 'REQUESTED', '', ''),
(20, 'UA0000000020', 'U', 6, 'A', 20, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-02-18', '19:55:30', 'REQUESTED', '', ''),
(21, 'UA0000000021', 'U', 4, 'A', 21, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-02-18', '20:40:51', 'REQUESTED', '', ''),
(22, 'UA0000000022', 'U', 5, 'A', 22, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-18', '20:47:50', '', '', ''),
(23, 'UA0000000023', 'U', 4, 'A', 23, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-02-19', '10:54:01', '', '', ''),
(24, 'UA0000000024', 'U', 4, 'A', 24, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-19', '17:04:53', '', '', ''),
(25, 'UA0000000025', 'U', 5, 'A', 27, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-20', '15:15:21', '', '', ''),
(26, 'UA0000000026', 'U', 5, 'A', 28, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-20', '15:15:22', '', '', ''),
(27, 'UA0000000027', 'U', 24, 'A', 29, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '10:34:01', 'DONE', '', ''),
(28, 'UA0000000028', 'U', 35, 'A', 30, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '12:51:00', '', '', ''),
(29, 'UA0000000029', 'U', 35, 'A', 31, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '12:55:57', '', '', ''),
(30, 'UA0000000030', 'U', 35, 'A', 32, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '12:57:35', '', '', ''),
(31, 'UA0000000031', 'U', 35, 'A', 33, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '17:48:32', 'REQUESTED', '', ''),
(32, 'UA0000000032', 'U', 35, 'A', 34, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '17:50:21', '', '', ''),
(33, 'UA0000000033', 'U', 35, 'A', 35, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-02-28', '18:55:27', 'REQUESTED', '', ''),
(34, 'UA0000000034', 'U', 24, 'A', 36, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '09:49:08', '', '', ''),
(35, 'UA0000000035', 'U', 35, 'A', 37, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '11:32:45', '', '', ''),
(36, 'UA0000000036', 'U', 35, 'A', 38, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '11:40:11', 'REQUESTED', '', ''),
(37, 'UA0000000037', 'U', 35, 'A', 39, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '12:21:32', '', '', ''),
(38, 'UA0000000038', 'U', 29, 'A', 40, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '12:32:55', '', '', ''),
(39, 'UA0000000039', 'U', 29, 'A', 41, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '12:42:16', 'REQUESTED', '', ''),
(40, 'UA0000000040', 'U', 35, 'A', 42, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '12:52:42', '', '', ''),
(41, 'UA0000000041', 'U', 35, 'A', 43, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '14:49:52', 'REQUESTED', '', ''),
(42, 'UA0000000042', 'U', 35, 'A', 44, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '15:16:00', 'REQUESTED', '', ''),
(43, 'UA0000000043', 'U', 35, 'A', 45, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '15:28:58', 'REQUESTED', '', ''),
(44, 'UA0000000044', 'U', 35, 'A', 46, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '16:04:03', 'REQUESTED', '', ''),
(45, 'UA0000000045', 'U', 35, 'A', 47, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '16:26:19', 'REQUESTED', '', ''),
(46, 'UA0000000046', 'U', 35, 'A', 48, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '16:27:29', '', '', ''),
(47, 'UA0000000047', 'U', 35, 'A', 49, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '16:37:13', 'REQUESTED', '', ''),
(48, 'UA0000000048', 'U', 35, 'A', 50, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '16:42:48', 'REQUESTED', '', ''),
(49, 'UA0000000049', 'U', 35, 'A', 51, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '17:05:45', '', '', ''),
(50, 'UA0000000050', 'U', 35, 'A', 52, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '18:24:50', '', '', ''),
(51, 'UA0000000051', 'U', 42, 'A', 53, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-01', '19:21:02', 'REQUESTED', '', ''),
(52, 'UA0000000052', 'U', 35, 'A', 54, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '10:55:09', '', '', ''),
(53, 'UA0000000053', 'U', 29, 'A', 55, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '11:17:03', 'REQUESTED', '', ''),
(54, 'UA0000000054', 'U', 35, 'A', 56, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '11:24:50', '', '', ''),
(55, 'UA0000000055', 'U', 35, 'A', 57, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '11:27:56', '', '', ''),
(56, 'UA0000000056', 'U', 35, 'A', 58, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '11:44:01', '', '', ''),
(57, 'UA0000000057', 'U', 35, 'A', 59, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '12:02:35', '', '', ''),
(58, 'UA0000000058', 'U', 35, 'A', 60, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '12:57:06', '', '', ''),
(59, 'UA0000000059', 'U', 28, 'A', 61, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '13:18:31', 'REQUESTED', '', ''),
(60, 'UA0000000060', 'U', 28, 'A', 62, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '13:53:21', '', '', ''),
(61, 'UA0000000061', 'U', 35, 'A', 63, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:03:20', '', '', ''),
(62, 'UA0000000062', 'U', 35, 'A', 64, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:04:50', '', '', ''),
(63, 'UA0000000063', 'U', 35, 'A', 65, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:06:08', '', '', ''),
(64, 'UA0000000064', 'U', 35, 'A', 66, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:07:43', 'REQUESTED', '', ''),
(65, 'UA0000000065', 'U', 35, 'A', 67, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:07:43', 'REQUESTED', '', ''),
(66, 'UA0000000066', 'U', 35, 'A', 68, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:07:43', '', '', ''),
(67, 'UA0000000067', 'U', 24, 'A', 69, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '14:59:51', '', '', ''),
(68, 'UA0000000068', 'U', 24, 'A', 70, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-02', '15:03:43', '', '', ''),
(69, 'UA0000000069', 'U', 32, 'A', 71, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-04', '18:51:45', '', '', ''),
(70, 'UA0000000070', 'U', 65, 'A', 72, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-05', '15:08:10', 'REQUESTED', '', ''),
(71, 'UA0000000071', 'U', 65, 'A', 73, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-05', '15:08:11', 'REQUESTED', '', ''),
(72, 'UA0000000072', 'U', 65, 'A', 74, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-05', '15:08:11', 'DONE', '', ''),
(73, 'UA0000000073', 'U', 65, 'A', 75, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-05', '16:52:49', '', '', ''),
(74, 'UA0000000074', 'U', 70, 'A', 76, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:21:37', '', '', ''),
(75, 'UA0000000075', 'U', 70, 'A', 77, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:50:31', '', '', ''),
(76, 'UA0000000076', 'U', 70, 'A', 78, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:56:42', 'REQUESTED', '', ''),
(77, 'UA0000000077', 'U', 70, 'A', 79, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:56:43', 'REQUESTED', '', ''),
(78, 'UA0000000078', 'U', 70, 'A', 80, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:56:43', 'REQUESTED', '', ''),
(79, 'UA0000000079', 'U', 70, 'A', 81, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:56:43', '', '', ''),
(80, 'UA0000000080', 'U', 70, 'A', 82, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:57:08', '', '', ''),
(81, 'UA0000000081', 'U', 70, 'A', 83, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:57:27', '', '', ''),
(82, 'UA0000000082', 'U', 70, 'A', 84, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '13:57:46', '', '', ''),
(83, 'UA0000000083', 'U', 70, 'A', 85, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '14:01:18', '', '', ''),
(84, 'UA0000000084', 'U', 70, 'A', 86, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '14:01:44', '', '', ''),
(85, 'UA0000000085', 'U', 73, 'A', 87, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:19:07', '', '', ''),
(86, 'UA0000000086', 'U', 24, 'A', 88, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:40:22', '', '', ''),
(87, 'UA0000000087', 'U', 24, 'A', 89, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:41:08', '', '', ''),
(88, 'UA0000000088', 'U', 24, 'A', 90, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:42:19', '', '', ''),
(89, 'UA0000000089', 'U', 24, 'A', 91, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:43:08', '', '', ''),
(90, 'UA0000000090', 'U', 73, 'A', 92, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:48:42', 'REQUESTED', '', ''),
(91, 'UA0000000091', 'U', 73, 'A', 93, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:51:18', 'REQUESTED', '', ''),
(92, 'UA0000000092', 'U', 73, 'A', 94, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '17:51:23', 'REQUESTED', '', ''),
(93, 'UA0000000093', 'U', 73, 'A', 95, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-06', '18:09:45', 'REQUESTED', '', ''),
(94, 'UA0000000094', 'U', 46, 'A', 97, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-08', '01:23:43', 'REQUESTED', '', ''),
(95, 'UA0000000095', 'U', 67, 'A', 98, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-08', '02:50:58', 'REQUESTED', '', ''),
(96, 'UA0000000096', 'U', 78, 'A', 99, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-08', '10:47:51', '', '', ''),
(97, 'UA0000000097', 'U', 78, 'A', 100, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-08', '11:56:45', '', '', ''),
(98, 'UA0000000098', 'U', 67, 'A', 101, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-08', '12:00:46', '', '', ''),
(99, 'UA0000000099', 'U', 78, 'A', 102, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-08', '17:42:51', '', '', ''),
(100, 'UA0000000100', 'U', 78, 'A', 103, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-09', '12:23:07', 'REQUESTED', '', ''),
(101, 'UA0000000101', 'U', 78, 'A', 104, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-09', '12:23:08', 'REQUESTED', '', ''),
(102, 'UA0000000102', 'U', 78, 'A', 105, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-09', '12:23:08', '', '', ''),
(103, 'UA0000000103', 'U', 78, 'A', 106, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-09', '12:23:57', '', '', ''),
(104, 'UA0000000104', 'U', 78, 'A', 107, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-09', '12:24:46', '', '', ''),
(105, 'UA0000000105', 'U', 77, 'A', 108, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:28:06', '', '', ''),
(106, 'UA0000000106', 'U', 77, 'A', 109, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:30:59', '', '', ''),
(107, 'UA0000000107', 'U', 77, 'A', 110, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:31:35', 'DONE', '', ''),
(108, 'UA0000000108', 'U', 77, 'A', 111, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:54:20', 'REQUESTED', '', ''),
(109, 'UA0000000109', 'U', 77, 'A', 112, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:55:11', 'REQUESTED', '', ''),
(110, 'UA0000000110', 'U', 24, 'A', 113, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:58:06', 'REQUESTED', '', ''),
(111, 'UA0000000111', 'U', 24, 'A', 114, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '14:59:54', 'REQUESTED', '', ''),
(112, 'UA0000000112', 'U', 24, 'A', 115, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-10', '15:12:17', 'REQUESTED', '', ''),
(113, 'UA0000000113', 'U', 78, 'A', 116, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-11', '16:38:30', 'REQUESTED', '', ''),
(114, 'UA0000000114', 'U', 78, 'A', 117, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-11', '16:38:31', 'REQUESTED', '', ''),
(115, 'UA0000000115', 'U', 78, 'A', 118, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-11', '16:38:32', 'DONE', '', ''),
(116, 'UA0000000116', 'U', 78, 'A', 119, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '11:27:31', '', '', ''),
(117, 'UA0000000117', 'U', 66, 'A', 120, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '12:34:10', '', '', ''),
(118, 'UA0000000118', 'U', 66, 'A', 121, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '12:35:28', 'REQUESTED', '', ''),
(119, 'UA0000000119', 'U', 66, 'A', 122, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '12:40:08', 'REQUESTED', '', ''),
(120, 'UA0000000120', 'U', 77, 'A', 123, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '15:39:37', '', '', ''),
(121, 'UA0000000121', 'U', 24, 'A', 124, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '15:41:37', '', '', ''),
(122, 'UA0000000122', 'U', 30, 'A', 125, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '16:10:36', 'REQUESTED', '', ''),
(123, 'UA0000000123', 'U', 30, 'A', 126, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '16:12:44', 'REQUESTED', '', ''),
(124, 'UA0000000124', 'U', 30, 'A', 127, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '16:18:37', 'REQUESTED', '', ''),
(125, 'UA0000000125', 'U', 30, 'A', 128, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '16:28:38', 'REQUESTED', '', ''),
(126, 'UA0000000126', 'U', 78, 'A', 129, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '17:49:23', 'REQUESTED', '', ''),
(127, 'UA0000000127', 'U', 78, 'A', 130, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '17:53:24', '', '', ''),
(128, 'UA0000000128', 'U', 78, 'A', 131, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '17:53:54', '', '', ''),
(129, 'UA0000000129', 'U', 78, 'A', 132, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '17:55:50', 'REQUESTED', '', ''),
(130, 'UA0000000130', 'U', 78, 'A', 133, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '17:57:20', 'REQUESTED', '', ''),
(131, 'UA0000000131', 'U', 78, 'A', 134, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '18:00:42', 'REQUESTED', '', ''),
(132, 'UA0000000132', 'U', 78, 'A', 135, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '18:08:45', 'REQUESTED', '', ''),
(133, 'UA0000000133', 'U', 78, 'A', 136, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '18:21:24', 'REQUESTED', '', ''),
(134, 'UA0000000134', 'U', 78, 'A', 137, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '18:33:27', '', '', ''),
(135, 'UA0000000135', 'U', 78, 'A', 138, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '18:46:01', 'REQUESTED', '', ''),
(136, 'UA0000000136', 'U', 24, 'A', 139, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '18:51:20', 'REQUESTED', '', ''),
(137, 'UA0000000137', 'U', 67, 'A', 140, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-12', '19:44:35', '', '', ''),
(138, 'UA0000000138', 'U', 67, 'A', 141, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '11:42:57', 'REQUESTED', '', ''),
(139, 'UA0000000139', 'U', 67, 'A', 142, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '11:58:13', '', '', ''),
(140, 'UA0000000140', 'U', 78, 'A', 143, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '12:06:12', '', '', ''),
(141, 'UA0000000141', 'U', 78, 'A', 144, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '14:03:26', '', '', ''),
(142, 'UA0000000142', 'U', 78, 'A', 145, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '14:29:10', '', '', ''),
(143, 'UA0000000143', 'U', 78, 'A', 146, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '14:35:20', '', '', ''),
(144, 'UA0000000144', 'U', 24, 'A', 147, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '15:28:39', '', '', ''),
(145, 'UA0000000145', 'U', 24, 'A', 148, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '15:42:01', '', '', ''),
(146, 'UA0000000146', 'U', 24, 'A', 149, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '15:47:53', '', '', ''),
(147, 'UA0000000147', 'U', 24, 'A', 150, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-13', '18:13:12', '', '', ''),
(148, 'UA0000000148', 'U', 78, 'A', 151, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-14', '13:02:50', '', '', ''),
(149, 'UA0000000149', 'U', 78, 'A', 152, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-14', '17:08:07', '', '', ''),
(150, 'UA0000000150', 'U', 78, 'A', 153, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-14', '17:14:27', '', '', ''),
(151, 'UA0000000151', 'U', 78, 'A', 154, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-14', '18:31:11', '', '', ''),
(152, 'UA0000000152', 'U', 24, 'A', 155, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-15', '13:06:14', '', '', ''),
(153, 'UA0000000153', 'U', 78, 'A', 156, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-15', '13:07:24', 'REQUESTED', '', ''),
(154, 'UA0000000154', 'U', 24, 'A', 157, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-15', '13:07:25', '', '', ''),
(155, 'UA0000000155', 'U', 78, 'A', 158, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-15', '15:39:24', 'REQUESTED', '', ''),
(156, 'UA0000000156', 'U', 78, 'A', 159, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-16', '17:05:19', '', '', ''),
(157, 'UA0000000157', 'U', 78, 'A', 160, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-16', '17:32:05', '', '', ''),
(158, 'UA0000000158', 'U', 78, 'A', 161, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-18', '11:50:26', 'REQUESTED', '', ''),
(159, 'UA0000000159', 'U', 78, 'A', 162, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-23', '17:41:43', '', '', ''),
(160, 'UA0000000160', 'U', 78, 'A', 163, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-24', '17:16:28', '', '', ''),
(161, 'UA0000000161', 'U', 78, 'A', 164, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-24', '17:35:49', '', '', ''),
(162, 'UA0000000162', 'U', 78, 'A', 165, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '15:51:33', '', '', ''),
(163, 'UA0000000163', 'U', 78, 'A', 166, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:03:33', '', '', ''),
(164, 'UA0000000164', 'U', 78, 'A', 167, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:41:45', 'REQUESTED', '', ''),
(165, 'UA0000000165', 'U', 78, 'A', 168, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:42:11', 'REQUESTED', '', ''),
(166, 'UA0000000166', 'U', 78, 'A', 169, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:42:43', 'REQUESTED', '', ''),
(167, 'UA0000000167', 'U', 78, 'A', 170, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:43:01', 'REQUESTED', '', ''),
(168, 'UA0000000168', 'U', 78, 'A', 171, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:47:11', '', '', ''),
(169, 'UA0000000169', 'U', 78, 'A', 172, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:47:35', '', '', ''),
(170, 'UA0000000170', 'U', 78, 'A', 173, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:47:56', 'REQUESTED', '', ''),
(171, 'UA0000000171', 'U', 78, 'A', 174, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '16:57:57', 'REQUESTED', '', ''),
(172, 'UA0000000172', 'U', 78, 'A', 175, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '17:02:26', 'REQUESTED', '', ''),
(173, 'UA0000000173', 'U', 78, 'A', 176, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '17:19:00', 'REQUESTED', '', ''),
(174, 'UA0000000174', 'U', 78, 'A', 177, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '17:41:13', '', '', ''),
(175, 'UA0000000175', 'U', 78, 'A', 178, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '17:43:24', '', '', ''),
(176, 'UA0000000176', 'U', 78, 'A', 179, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '17:46:53', 'REQUESTED', '', ''),
(177, 'UA0000000177', 'U', 78, 'A', 180, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '17:57:25', 'REQUESTED', '', ''),
(178, 'UA0000000178', 'U', 78, 'A', 181, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-25', '18:14:38', 'REQUESTED', '', ''),
(179, 'UA0000000179', 'U', 28, 'A', 182, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '01:36:48', 'REQUESTED', '', ''),
(180, 'UA0000000180', 'U', 24, 'A', 183, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '11:09:06', '', '', ''),
(181, 'UA0000000181', 'U', 24, 'A', 184, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '11:40:46', 'REQUESTED', '', ''),
(182, 'UA0000000182', 'U', 78, 'A', 185, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '12:49:27', 'REQUESTED', '', ''),
(183, 'UA0000000183', 'U', 78, 'A', 186, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '13:00:50', 'REQUESTED', '', ''),
(184, 'UA0000000184', 'U', 78, 'A', 187, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '13:02:17', 'REQUESTED', '', ''),
(185, 'UA0000000185', 'U', 78, 'A', 188, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '14:36:37', 'REQUESTED', '', ''),
(186, 'UA0000000186', 'U', 78, 'A', 189, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '14:54:23', 'REQUESTED', '', ''),
(187, 'UA0000000187', 'U', 78, 'A', 190, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '14:55:57', 'REQUESTED', '', ''),
(188, 'UA0000000188', 'U', 78, 'A', 191, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '15:04:31', 'REQUESTED', '', ''),
(189, 'UA0000000189', 'U', 28, 'A', 192, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '15:09:32', 'REQUESTED', '', ''),
(190, 'UA0000000190', 'U', 78, 'A', 193, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '15:20:24', 'REQUESTED', '', ''),
(191, 'UA0000000191', 'U', 78, 'A', 194, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '15:20:33', 'REQUESTED', '', ''),
(192, 'UA0000000192', 'U', 78, 'A', 195, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '15:21:01', 'DONE', '', ''),
(193, 'UA0000000193', 'U', 78, 'A', 196, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '15:22:27', 'REQUESTED', '', ''),
(194, 'UA0000000194', 'U', 78, 'A', 197, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '16:30:52', 'DONE', '', ''),
(195, 'UA0000000195', 'U', 78, 'A', 198, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '16:31:02', 'REQUESTED', '', ''),
(196, 'UA0000000196', 'U', 78, 'A', 199, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '16:53:24', '', '', ''),
(197, 'UA0000000197', 'U', 78, 'A', 200, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '16:56:56', 'REQUESTED', '', ''),
(198, 'UA0000000198', 'U', 78, 'A', 201, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '16:57:06', 'REQUESTED', '', ''),
(199, 'UA0000000199', 'U', 78, 'A', 202, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '17:03:56', 'REQUESTED', '', ''),
(200, 'UA0000000200', 'U', 78, 'A', 203, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '17:04:05', 'REQUESTED', '', ''),
(201, 'UA0000000201', 'U', 24, 'A', 204, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '17:44:24', '', '', ''),
(202, 'UA0000000202', 'U', 24, 'A', 205, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '22:49:18', '', '', ''),
(203, 'UA0000000203', 'U', 24, 'A', 206, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '22:52:38', 'DONE', '', ''),
(204, 'UA0000000204', 'U', 24, 'A', 207, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '22:52:52', 'REQUESTED', '', ''),
(205, 'UA0000000205', 'U', 28, 'A', 208, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '23:24:00', 'REQUESTED', '', ''),
(206, 'UA0000000206', 'U', 28, 'A', 209, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-26', '23:26:50', '', '', ''),
(207, 'UA0000000207', 'U', 78, 'A', 210, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '12:09:44', '', '', ''),
(208, 'UA0000000208', 'U', 78, 'A', 211, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '12:12:10', '', '', ''),
(209, 'UA0000000209', 'U', 78, 'A', 212, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '12:12:43', 'DONE', '', ''),
(210, 'UA0000000210', 'U', 78, 'A', 213, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '12:12:52', 'REQUESTED', '', ''),
(211, 'UA0000000211', 'U', 78, 'A', 214, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:20:49', 'DONE', '', ''),
(212, 'UA0000000212', 'U', 78, 'A', 215, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:21:15', 'REQUESTED', '', ''),
(213, 'UA0000000213', 'U', 78, 'A', 216, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:35:54', 'REQUESTED', '', ''),
(214, 'UA0000000214', 'U', 78, 'A', 217, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:36:03', 'REQUESTED', '', ''),
(215, 'UA0000000215', 'U', 78, 'A', 218, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:36:16', 'REQUESTED', '', ''),
(216, 'UA0000000216', 'U', 78, 'A', 219, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:41:15', 'REQUESTED', '', ''),
(217, 'UA0000000217', 'U', 78, 'A', 220, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:41:22', 'REQUESTED', '', ''),
(218, 'UA0000000218', 'U', 78, 'A', 221, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:45:27', 'REQUESTED', '', ''),
(219, 'UA0000000219', 'U', 78, 'A', 222, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:45:42', 'REQUESTED', '', ''),
(220, 'UA0000000220', 'U', 78, 'A', 223, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-27', '13:54:57', 'REQUESTED', '', ''),
(221, 'UA0000000221', 'U', 28, 'A', 224, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '00:03:50', 'DONE', '', ''),
(222, 'UA0000000222', 'U', 28, 'A', 225, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '00:04:01', 'REQUESTED', '', ''),
(223, 'UA0000000223', 'U', 78, 'A', 226, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '11:36:06', 'DONE', '', ''),
(224, 'UA0000000224', 'U', 78, 'A', 227, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '11:36:12', 'REQUESTED', '', ''),
(225, 'UA0000000225', 'U', 78, 'A', 228, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '11:39:57', 'REQUESTED', '', ''),
(226, 'UA0000000226', 'U', 78, 'A', 229, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '11:40:11', 'REQUESTED', '', ''),
(227, 'UA0000000227', 'U', 78, 'A', 230, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '12:07:28', 'REQUESTED', '', ''),
(228, 'UA0000000228', 'U', 78, 'A', 231, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '12:08:47', 'REQUESTED', '', ''),
(229, 'UA0000000229', 'U', 24, 'A', 232, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '12:54:41', 'DONE', '', ''),
(230, 'UA0000000230', 'U', 24, 'A', 233, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '12:54:52', 'REQUESTED', '', ''),
(231, 'UA0000000231', 'U', 78, 'A', 234, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '13:03:40', 'DONE', '', ''),
(232, 'UA0000000232', 'U', 24, 'A', 235, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '13:34:41', 'DONE', '', ''),
(233, 'UA0000000233', 'U', 24, 'A', 236, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '13:35:12', 'REQUESTED', '', ''),
(234, 'UA0000000234', 'U', 78, 'A', 237, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '13:35:46', '', '', ''),
(235, 'UA0000000235', 'U', 28, 'A', 238, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '13:39:54', '', '', ''),
(236, 'UA0000000236', 'U', 78, 'A', 239, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '13:53:25', 'DONE', '', ''),
(237, 'UA0000000237', 'U', 24, 'A', 240, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '14:22:09', 'DONE', '', ''),
(238, 'UA0000000238', 'U', 78, 'A', 241, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '14:52:15', 'DONE', '', ''),
(239, 'UA0000000239', 'U', 78, 'A', 242, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '15:15:19', 'DONE', '', ''),
(240, 'UA0000000240', 'U', 78, 'A', 243, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '16:15:16', 'DONE', '', ''),
(241, 'UA0000000241', 'U', 28, 'A', 244, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-28', '17:21:20', '', '', ''),
(242, 'UA0000000242', 'U', 24, 'A', 245, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-30', '18:30:58', 'DONE', '', ''),
(243, 'UA0000000243', 'U', 85, 'A', 246, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-03-30', '23:46:52', '', '', ''),
(244, 'UA0000000244', 'U', 78, 'A', 247, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:12:52', 'REQUESTED', '', ''),
(245, 'UA0000000245', 'U', 78, 'A', 248, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:12:52', 'REQUESTED', '', ''),
(246, 'UA0000000246', 'U', 78, 'A', 249, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:12:52', 'REQUESTED', '', ''),
(247, 'UA0000000247', 'U', 78, 'A', 250, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:12:52', 'REQUESTED', '', ''),
(248, 'UA0000000248', 'U', 78, 'A', 251, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:12:52', 'REQUESTED', '', ''),
(249, 'UA0000000249', 'U', 78, 'A', 252, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:12:52', '', '', ''),
(250, 'UA0000000250', 'U', 78, 'A', 253, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:17:13', '', '', ''),
(251, 'UA0000000251', 'U', 78, 'A', 254, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:18:42', '', '', ''),
(252, 'UA0000000252', 'U', 78, 'A', 255, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:25:07', 'REQUESTED', '', ''),
(253, 'UA0000000253', 'U', 78, 'A', 256, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:27:17', 'REQUESTED', '', ''),
(254, 'UA0000000254', 'U', 78, 'A', 257, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:31:14', 'REQUESTED', '', ''),
(255, 'UA0000000255', 'U', 78, 'A', 258, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:32:52', '', '', ''),
(256, 'UA0000000256', 'U', 78, 'A', 259, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:33:32', 'DONE', '', ''),
(257, 'UA0000000257', 'U', 78, 'A', 260, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(258, 'UA0000000258', 'U', 78, 'A', 261, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(259, 'UA0000000259', 'U', 78, 'A', 262, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(260, 'UA0000000260', 'U', 78, 'A', 263, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(261, 'UA0000000261', 'U', 78, 'A', 264, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(262, 'UA0000000262', 'U', 78, 'A', 265, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(263, 'UA0000000263', 'U', 78, 'A', 266, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(264, 'UA0000000264', 'U', 78, 'A', 267, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(265, 'UA0000000265', 'U', 78, 'A', 268, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(266, 'UA0000000266', 'U', 78, 'A', 269, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(267, 'UA0000000267', 'U', 78, 'A', 270, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(268, 'UA0000000268', 'U', 78, 'A', 271, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(269, 'UA0000000269', 'U', 78, 'A', 272, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:52:09', 'REQUESTED', '', ''),
(270, 'UA0000000270', 'U', 78, 'A', 273, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '14:58:33', 'REQUESTED', '', ''),
(271, 'UA0000000271', 'U', 78, 'A', 274, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '15:07:10', '', '', ''),
(272, 'UA0000000272', 'U', 78, 'A', 275, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '15:14:11', 'REQUESTED', '', ''),
(273, 'UA0000000273', 'U', 78, 'A', 276, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '15:15:14', '', '', ''),
(274, 'UA0000000274', 'U', 78, 'A', 277, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '15:15:19', 'REQUESTED', '', ''),
(275, 'UA0000000275', 'U', 78, 'A', 278, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '15:16:15', 'REQUESTED', '', ''),
(276, 'UA0000000276', 'U', 78, 'A', 279, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '15:19:18', 'REQUESTED', '', ''),
(277, 'UA0000000277', 'U', 78, 'A', 280, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '17:35:58', 'DONE', '', ''),
(278, 'UA0000000278', 'U', 78, 'A', 281, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-01', '17:47:10', 'DONE', '', ''),
(279, 'UA0000000279', 'U', 78, 'A', 282, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '12:00:05', 'REQUESTED', '', ''),
(280, 'UA0000000280', 'U', 78, 'A', 283, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '12:00:24', 'REQUESTED', '', ''),
(281, 'UA0000000281', 'U', 78, 'A', 284, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '12:17:59', 'DONE', '', ''),
(282, 'UA0000000282', 'U', 78, 'A', 285, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '12:32:36', 'DONE', '', ''),
(283, 'UA0000000283', 'U', 78, 'A', 286, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '15:26:21', 'REQUESTED', '', ''),
(284, 'UA0000000284', 'U', 78, 'A', 287, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '15:26:39', 'REQUESTED', '', ''),
(285, 'UA0000000285', 'U', 78, 'A', 288, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '15:37:00', 'REQUESTED', '', ''),
(286, 'UA0000000286', 'U', 78, 'A', 289, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '15:51:02', 'REQUESTED', '', ''),
(287, 'UA0000000287', 'U', 78, 'A', 290, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '15:51:34', 'REQUESTED', '', ''),
(288, 'UA0000000288', 'U', 78, 'A', 291, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '15:59:55', 'REQUESTED', '', ''),
(289, 'UA0000000289', 'U', 78, 'A', 292, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '16:07:08', 'DONE', '', ''),
(290, 'UA0000000290', 'U', 78, 'A', 293, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-02', '16:40:29', 'REQUESTED', '', ''),
(291, 'UA0000000291', 'U', 78, 'A', 294, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '12:22:55', 'DONE', '', ''),
(292, 'UA0000000292', 'U', 78, 'A', 295, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '15:14:25', 'REQUESTED', '', ''),
(293, 'UA0000000293', 'U', 78, 'A', 296, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '15:18:35', 'REQUESTED', '', ''),
(294, 'UA0000000294', 'U', 78, 'A', 297, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '15:23:05', 'DONE', '', ''),
(295, 'UA0000000295', 'U', 78, 'A', 298, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '15:51:51', 'REQUESTED', '', ''),
(296, 'UA0000000296', 'U', 78, 'A', 299, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '15:58:54', 'DONE', '', ''),
(297, 'UA0000000297', 'U', 78, 'A', 300, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '16:14:46', 'REQUESTED', '', ''),
(298, 'UA0000000298', 'U', 78, 'A', 301, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '16:28:54', 'DONE', '', ''),
(299, 'UA0000000299', 'U', 78, 'A', 302, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-03', '17:16:36', 'DONE', '', ''),
(300, 'UA0000000300', 'U', 78, 'A', 303, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-04', '14:53:12', 'DONE', '', ''),
(301, 'UA0000000301', 'U', 78, 'A', 304, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-04', '16:08:44', 'DONE', '', ''),
(302, 'UA0000000302', 'U', 78, 'A', 305, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-04', '16:19:20', 'DONE', '', ''),
(303, 'UA0000000303', 'U', 78, 'A', 306, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-04', '16:28:51', 'DONE', '', ''),
(304, 'UA0000000304', 'U', 78, 'A', 307, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-04', '16:44:12', 'DONE', '', ''),
(305, 'UA0000000305', 'U', 24, 'A', 308, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-05', '17:51:29', 'REQUESTED', '', ''),
(306, 'UA0000000306', 'U', 24, 'A', 309, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-05', '17:52:00', '', '', ''),
(307, 'UA0000000307', 'U', 24, 'A', 310, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-08', '11:18:13', 'DONE', '', ''),
(308, 'UA0000000308', 'U', 32, 'A', 311, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-09', '17:59:59', 'DONE', '', ''),
(309, 'UA0000000309', 'U', 32, 'A', 312, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-09', '18:01:42', '', '', ''),
(310, 'UA0000000310', 'U', 78, 'A', 313, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-09', '18:30:21', '', '', ''),
(311, 'UA0000000311', 'U', 28, 'A', 314, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-10', '13:52:36', '', '', ''),
(312, 'UA0000000312', 'U', 28, 'A', 315, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-10', '19:01:02', '', '', ''),
(313, 'UA0000000313', 'U', 78, 'A', 316, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-12', '11:57:42', 'REQUESTED', '', ''),
(314, 'UA0000000314', 'U', 78, 'A', 317, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-12', '11:57:42', 'REQUESTED', '', ''),
(315, 'UA0000000315', 'U', 78, 'A', 318, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-12', '11:57:42', 'REQUESTED', '', ''),
(316, 'UA0000000316', 'U', 78, 'A', 319, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-12', '12:25:37', '', '', ''),
(317, 'UA0000000317', 'U', 32, 'A', 320, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-13', '14:03:24', 'REQUESTED', '', ''),
(318, 'UA0000000318', 'U', 78, 'A', 321, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-15', '16:08:12', 'REQUESTED', '', ''),
(319, 'UA0000000319', 'U', 78, 'A', 322, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-15', '16:19:14', 'DONE', '', ''),
(320, 'UA0000000320', 'U', 28, 'A', 323, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-15', '17:57:05', '', '', ''),
(321, 'UA0000000321', 'U', 78, 'A', 324, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-16', '12:00:52', '', '', ''),
(322, 'UA0000000322', 'U', 67, 'A', 325, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-16', '12:45:42', '', '', ''),
(323, 'UA0000000323', 'U', 67, 'A', 326, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-16', '12:55:31', '', '', ''),
(324, 'UA0000000324', 'U', 78, 'A', 327, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-18', '15:55:39', '', '', ''),
(325, 'UA0000000325', 'U', 78, 'A', 328, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-18', '15:58:08', '', '', ''),
(326, 'UA0000000326', 'U', 78, 'A', 329, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-18', '16:26:35', '', '', ''),
(327, 'UA0000000327', 'U', 78, 'A', 330, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-23', '13:07:51', '', '', ''),
(328, 'UA0000000328', 'U', 78, 'A', 331, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-23', '13:11:48', '', '', ''),
(329, 'UA0000000329', 'U', 28, 'A', 332, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-24', '16:22:15', '', '', ''),
(330, 'UA0000000330', 'U', 78, 'A', 333, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '12:44:00', 'DONE', '', ''),
(331, 'UA0000000331', 'U', 78, 'A', 334, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '13:13:40', 'REQUESTED', '', ''),
(332, 'UA0000000332', 'U', 78, 'A', 335, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '13:14:02', 'REQUESTED', '', ''),
(333, 'UA0000000333', 'U', 78, 'A', 336, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '13:17:01', 'REQUESTED', '', ''),
(334, 'UA0000000334', 'U', 78, 'A', 337, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '13:51:23', 'REQUESTED', '', ''),
(335, 'UA0000000335', 'U', 78, 'A', 338, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '13:54:11', 'DONE', '', ''),
(336, 'UA0000000336', 'U', 24, 'A', 339, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '19:33:58', '', '', ''),
(337, 'UA0000000337', 'U', 24, 'A', 340, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-25', '19:52:20', 'REQUESTED', '', ''),
(338, 'UA0000000338', 'U', 78, 'A', 341, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-30', '12:37:32', '', '', ''),
(339, 'UA0000000339', 'U', 78, 'A', 342, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-30', '14:55:21', '', '', ''),
(340, 'UA0000000340', 'U', 78, 'A', 343, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-30', '16:02:41', '', '', ''),
(341, 'UA0000000341', 'U', 78, 'A', 344, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-04-30', '16:04:05', '', '', ''),
(342, 'UA0000000342', 'U', 78, 'A', 345, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-02', '12:01:23', '', '', ''),
(343, 'UA0000000343', 'U', 78, 'A', 346, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-02', '12:03:38', '', '', ''),
(344, 'UA0000000344', 'U', 78, 'A', 347, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-02', '14:22:30', 'DONE', '', ''),
(345, 'UA0000000345', 'U', 78, 'A', 348, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-03', '10:48:48', 'DONE', '', ''),
(346, 'UA0000000346', 'U', 32, 'A', 349, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '2019-05-07', '12:25:20', '', '', ''),
(347, 'UA0000000347', 'U', 78, 'A', 350, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-08', '13:35:27', 'REQUESTED', '', ''),
(348, 'UA0000000348', 'U', 78, 'A', 351, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-08', '13:40:06', 'DONE', '', ''),
(349, 'UA0000000349', 'U', 46, 'A', 352, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '11:32:46', 'REQUESTED', '', ''),
(350, 'UA0000000350', 'U', 46, 'A', 353, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '11:44:20', 'REQUESTED', '', ''),
(351, 'UA0000000351', 'U', 46, 'A', 354, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '11:49:37', 'REQUESTED', '', ''),
(352, 'UA0000000352', 'U', 46, 'A', 355, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '12:06:10', 'REQUESTED', '', ''),
(353, 'UA0000000353', 'U', 46, 'A', 356, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '12:19:47', 'REQUESTED', '', ''),
(354, 'UA0000000354', 'U', 46, 'A', 357, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '12:20:46', 'REQUESTED', '', ''),
(355, 'UA0000000355', 'U', 46, 'A', 358, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '12:34:49', 'REQUESTED', '', ''),
(356, 'UA0000000356', 'U', 46, 'A', 359, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '12:40:04', 'REQUESTED', '', ''),
(357, 'UA0000000357', 'U', 46, 'A', 360, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '12:40:33', 'REQUESTED', '', ''),
(358, 'UA0000000358', 'U', 78, 'A', 361, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '13:52:28', 'REQUESTED', '', ''),
(359, 'UA0000000359', 'U', 78, 'A', 362, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '13:52:29', '', '', ''),
(360, 'UA0000000360', 'U', 78, 'A', 363, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '14:36:44', '', '', ''),
(361, 'UA0000000361', 'U', 78, 'A', 364, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '15:05:08', 'REQUESTED', '', ''),
(362, 'UA0000000362', 'U', 78, 'A', 365, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '15:08:06', 'DONE', '', ''),
(363, 'UA0000000363', 'U', 78, 'A', 366, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '15:56:58', 'DONE', '', ''),
(364, 'UA0000000364', 'U', 78, 'A', 367, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '16:01:40', 'DONE', '', ''),
(365, 'UA0000000365', 'U', 78, 'A', 368, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '16:11:19', 'DONE', '', ''),
(366, 'UA0000000366', 'U', 78, 'A', 369, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-14', '16:17:18', 'DONE', '', ''),
(367, 'UA0000000367', 'U', 32, 'A', 370, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-16', '11:11:14', 'DONE', '', ''),
(368, 'UA0000000368', 'U', 78, 'A', 371, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-16', '22:13:10', 'DONE', '', ''),
(369, 'UA0000000369', 'U', 78, 'A', 372, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-17', '18:06:23', 'DONE', '', ''),
(370, 'UA0000000370', 'U', 24, 'A', 373, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-19', '20:16:39', 'DONE', '', ''),
(371, 'UA0000000371', 'U', 24, 'A', 374, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-19', '20:19:39', '', '', ''),
(372, 'UA0000000372', 'U', 32, 'A', 375, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-19', '20:26:12', 'DONE', '', ''),
(373, 'UA0000000373', 'U', 78, 'A', 376, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-20', '11:27:12', '', '', ''),
(374, 'UA0000000374', 'U', 78, 'A', 377, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-20', '11:28:34', '', '', ''),
(375, 'UA0000000375', 'U', 78, 'A', 378, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-20', '11:33:49', 'DONE', '', ''),
(376, 'UA0000000376', 'U', 78, 'A', 379, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-20', '11:44:58', '', '', ''),
(377, 'UA0000000377', 'U', 78, 'A', 380, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-20', '11:45:38', '', '', ''),
(378, 'UA0000000378', 'U', 78, 'A', 381, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '15:32:53', 'DONE', '', ''),
(379, 'UA0000000379', 'U', 78, 'A', 382, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '15:37:32', 'DONE', '', ''),
(380, 'UA0000000380', 'U', 78, 'A', 383, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '16:17:23', 'DONE', '', ''),
(381, 'UA0000000381', 'U', 78, 'A', 384, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '16:33:06', 'REQUESTED', '', ''),
(382, 'UA0000000382', 'U', 78, 'A', 385, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '16:59:26', 'DONE', '', ''),
(383, 'UA0000000383', 'U', 78, 'A', 386, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '17:15:35', 'DONE', '', ''),
(384, 'UA0000000384', 'U', 78, 'A', 387, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '17:29:16', 'DONE', '', ''),
(385, 'UA0000000385', 'U', 78, 'A', 388, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '18:02:19', 'DONE', '', ''),
(386, 'UA0000000386', 'U', 78, 'A', 389, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '18:20:12', 'REQUESTED', '', ''),
(387, 'UA0000000387', 'U', 78, 'A', 390, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '18:20:37', 'DONE', '', ''),
(388, 'UA0000000388', 'U', 78, 'A', 391, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '18:27:08', 'DONE', '', ''),
(389, 'UA0000000389', 'U', 32, 'A', 392, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-22', '22:07:21', '', '', ''),
(390, 'UA0000000390', 'U', 78, 'A', 393, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-23', '12:46:19', '', '', ''),
(391, 'UA0000000391', 'U', 24, 'A', 394, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-26', '20:37:59', 'DONE', '', ''),
(392, 'UA0000000392', 'U', 32, 'A', 395, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-26', '20:43:06', 'DONE', '', ''),
(393, 'UA0000000393', 'U', 32, 'A', 396, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-27', '23:36:56', '', '', ''),
(394, 'UA0000000394', 'U', 32, 'A', 397, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-28', '04:56:32', '', '', ''),
(395, 'UA0000000395', 'U', 32, 'A', 398, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-05-30', '20:23:00', '', '', ''),
(396, 'UA0000000396', 'U', 78, 'A', 399, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-04', '16:30:47', '', '', ''),
(397, 'UA0000000397', 'U', 78, 'A', 400, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-06', '18:09:55', 'REQUESTED', '', ''),
(398, 'UA0000000398', 'U', 78, 'A', 401, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-07', '17:30:53', 'REQUESTED', '', ''),
(399, 'UA0000000399', 'U', 120, 'A', 402, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-17', '11:37:43', 'DONE', '', ''),
(400, 'UA0000000400', 'U', 78, 'A', 403, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-19', '11:55:50', 'DONE', '', ''),
(401, 'UA0000000401', 'U', 78, 'A', 404, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-19', '11:59:44', '', '', ''),
(402, 'UA0000000402', 'U', 78, 'A', 405, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-19', '12:19:50', 'DONE', '', ''),
(403, 'UA0000000403', 'U', 78, 'A', 406, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-19', '12:47:19', 'DONE', '', ''),
(404, 'UA0000000404', 'U', 93, 'A', 407, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-06-21', '01:30:11', 'REQUESTED', '', ''),
(405, 'UA0000000405', 'U', 93, 'A', 408, 1, 300.00, 0.00, 0.00, 300.00, 300.00, '2019-06-21', '01:32:25', '', '', ''),
(406, 'UA0000000406', 'U', 78, 'A', 409, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-21', '12:27:51', 'REQUESTED', '', ''),
(407, 'UA0000000407', 'U', 78, 'A', 410, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-21', '12:38:00', '', '', ''),
(408, 'UA0000000408', 'U', 78, 'A', 411, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-21', '12:41:18', 'DONE', '', ''),
(409, 'UA0000000409', 'U', 78, 'A', 412, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-21', '12:59:10', '', '', ''),
(410, 'UA0000000410', 'U', 78, 'A', 413, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-24', '10:52:52', '', '', ''),
(411, 'UA0000000411', 'U', 78, 'A', 414, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-25', '19:08:42', 'DONE', '', ''),
(412, 'UA0000000412', 'U', 78, 'A', 415, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-26', '14:54:09', '', '', ''),
(413, 'UA0000000413', 'U', 78, 'A', 416, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-26', '17:33:06', '', '', ''),
(414, 'UA0000000414', 'U', 78, 'A', 417, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-27', '17:40:19', 'REQUESTED', '', ''),
(415, 'UA0000000415', 'U', 78, 'A', 418, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-27', '17:43:25', '', '', ''),
(416, 'UA0000000416', 'U', 78, 'A', 419, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-06-29', '16:31:16', 'REQUESTED', '', ''),
(417, 'UA0000000417', 'U', 32, 'A', 420, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-01', '17:01:44', '', '', ''),
(418, 'UA0000000418', 'U', 108, 'A', 421, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-01', '17:29:00', '', '', ''),
(419, 'UA0000000419', 'U', 125, 'A', 422, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-01', '23:13:18', 'REQUESTED', '', ''),
(420, 'UA0000000420', 'U', 78, 'A', 423, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '11:19:59', '', '', ''),
(421, 'UA0000000421', 'U', 78, 'A', 424, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '12:27:26', 'REQUESTED', '', ''),
(422, 'UA0000000422', 'U', 32, 'A', 425, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '12:27:33', '', '', ''),
(423, 'UA0000000423', 'U', 78, 'A', 426, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '12:29:23', '', '', ''),
(424, 'UA0000000424', 'U', 78, 'A', 427, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '12:55:19', '', '', ''),
(425, 'UA0000000425', 'U', 78, 'A', 428, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '12:57:08', 'REQUESTED', '', ''),
(426, 'UA0000000426', 'U', 29, 'A', 429, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '13:06:01', 'REQUESTED', '', ''),
(427, 'UA0000000427', 'U', 78, 'A', 430, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '13:18:19', 'REQUESTED', '', ''),
(428, 'UA0000000428', 'U', 29, 'A', 431, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '13:19:35', 'REQUESTED', '', ''),
(429, 'UA0000000429', 'U', 78, 'A', 432, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '15:13:48', 'REQUESTED', '', ''),
(430, 'UA0000000430', 'U', 78, 'A', 433, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '15:21:09', '', '', ''),
(431, 'UA0000000431', 'U', 78, 'A', 434, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '15:29:17', 'REQUESTED', '', ''),
(432, 'UA0000000432', 'U', 78, 'A', 435, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '15:50:05', 'REQUESTED', '', '');
INSERT INTO `sm_order` (`ID`, `ORDER_ID`, `USER_TYPE`, `USER_ID`, `ITEM_TYPE`, `ITEM_ID`, `QTY`, `PRICE`, `TAX`, `DISCOUNT`, `SUB_TOTAL`, `TOTAL`, `DATE`, `TIME`, `PAYMENT_STATUS`, `PAYMENT_REF`, `REMARK`) VALUES
(433, 'UA0000000433', 'U', 78, 'A', 436, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '15:53:19', '', '', ''),
(434, 'UA0000000434', 'U', 78, 'A', 437, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '16:56:52', '', '', ''),
(435, 'UA0000000435', 'U', 78, 'A', 438, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '16:58:20', '', '', ''),
(436, 'UA0000000436', 'U', 78, 'A', 439, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '17:01:27', '', '', ''),
(437, 'UA0000000437', 'U', 78, 'A', 440, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '17:07:36', '', '', ''),
(438, 'UA0000000438', 'U', 78, 'A', 441, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '17:13:30', '', '', ''),
(439, 'UA0000000439', 'U', 78, 'A', 442, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-02', '17:14:12', 'DONE', '', ''),
(440, 'UA0000000440', 'U', 127, 'A', 443, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-07-04', '16:11:51', '', '', ''),
(441, 'UA0000000441', 'U', 78, 'A', 444, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-06', '08:40:19', '', '', ''),
(442, 'UA0000000442', 'U', 78, 'A', 445, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-06', '12:17:54', '', '', ''),
(443, 'UA0000000443', 'U', 78, 'A', 446, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-08', '12:43:49', '', '', ''),
(444, 'UA0000000444', 'U', 78, 'A', 447, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-08', '12:45:15', '', '', ''),
(445, 'UA0000000445', 'U', 78, 'A', 448, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-08', '15:12:28', '', '', ''),
(446, 'UA0000000446', 'U', 133, 'A', 449, 1, 300.00, 0.00, 0.00, 300.00, 300.00, '2019-07-15', '14:13:59', 'REQUESTED', '', ''),
(447, 'UA0000000447', 'U', 78, 'A', 450, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-20', '17:42:53', '', '', ''),
(448, 'UA0000000448', 'U', 78, 'A', 451, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-25', '20:24:52', '', '', ''),
(449, 'UA0000000449', 'U', 32, 'A', 452, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-31', '17:01:24', '', '', ''),
(450, 'UA0000000450', 'U', 32, 'A', 453, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-07-31', '17:01:46', '', '', ''),
(451, 'UA0000000451', 'U', 32, 'A', 454, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-08-01', '18:03:22', '', '', ''),
(452, 'UA0000000452', 'U', 32, 'A', 455, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-08-06', '17:10:29', '', '', ''),
(453, 'UA0000000453', 'U', 78, 'A', 456, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-08-07', '13:05:08', '', '', ''),
(454, 'UA0000000454', 'U', 32, 'A', 457, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-08-09', '06:42:38', '', '', ''),
(455, 'UA0000000455', 'U', 78, 'A', 458, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-08-09', '06:52:38', '', '', ''),
(456, 'UA0000000456', 'U', 32, 'A', 459, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-08-10', '19:30:35', '', '', ''),
(457, 'UA0000000457', 'U', 32, 'A', 460, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-08-12', '01:33:17', '', '', ''),
(458, 'UA0000000458', 'U', 32, 'A', 461, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-08-31', '07:03:58', '', '', ''),
(459, 'UA0000000459', 'U', 141, 'A', 462, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-08-31', '16:02:48', 'REQUESTED', '', ''),
(460, 'UA0000000460', 'U', 141, 'A', 463, 1, 500.00, 0.00, 0.00, 500.00, 500.00, '2019-08-31', '16:03:54', 'REQUESTED', '', ''),
(461, 'UA0000000461', 'U', 67, 'A', 464, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-09-10', '13:00:48', 'REQUESTED', '', ''),
(462, 'UA0000000462', 'U', 78, 'A', 465, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-09-10', '13:26:04', 'REQUESTED', '', ''),
(463, 'UA0000000463', 'U', 78, 'A', 466, 1, 1.00, 0.00, 0.00, 1.00, 1.00, '2019-09-10', '13:28:13', 'REQUESTED', '', ''),
(464, 'UA0000000464', 'U', 149, 'A', 467, 1, 300.00, 0.00, 0.00, 300.00, 300.00, '2026-08-21', '03:59:41', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `timing`
--

CREATE TABLE `timing` (
  `id` int(11) NOT NULL,
  `practice_id` int(11) NOT NULL,
  `user_type` enum('C','D','H') NOT NULL DEFAULT 'D',
  `user_id` int(11) NOT NULL,
  `M` int(1) DEFAULT NULL,
  `T` int(1) DEFAULT NULL,
  `W` int(1) DEFAULT NULL,
  `TH` int(1) DEFAULT NULL,
  `F` int(1) DEFAULT NULL,
  `SA` int(1) DEFAULT NULL,
  `S` int(1) DEFAULT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timing`
--

INSERT INTO `timing` (`id`, `practice_id`, `user_type`, `user_id`, `M`, `T`, `W`, `TH`, `F`, `SA`, `S`, `status`) VALUES
(1, 0, 'C', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(102, 0, 'H', 15, 1, 1, 0, 0, 0, 0, 1, '1'),
(40, 16, 'D', 13, 1, 1, 1, 1, 1, 1, 0, '1'),
(48, 0, 'C', 2, 0, 1, 1, 0, 0, 0, 0, '1'),
(113, 0, 'H', 13, 1, 1, 1, 1, 1, 1, 0, '1'),
(13, 6, 'D', 3, 1, 1, 1, 0, 0, 0, 0, '1'),
(47, 17, 'D', 13, 0, 1, 1, 0, 0, 0, 0, '1'),
(37, 14, 'D', 2, 1, 1, 1, 1, 1, 1, 0, '1'),
(45, 15, 'D', 3, 1, 1, 1, 0, 0, 0, 0, '1'),
(49, 21, 'D', 13, 1, 1, 0, 0, 0, 0, 0, '1'),
(60, 28, 'D', 27, 1, 1, 1, 0, 0, 0, 0, '1'),
(71, 33, 'D', 27, 1, 0, 0, 0, 0, 0, 0, '1'),
(76, 34, 'D', 27, 1, 0, 0, 0, 0, 0, 0, '1'),
(575, 0, 'C', 3, 1, 0, 0, 0, 0, 0, 0, '1'),
(894, 37, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(78, 42, 'D', 40, 1, 1, 0, 1, 0, 1, 0, '1'),
(247, 43, 'D', 40, 1, 1, 0, 0, 0, 0, 0, '1'),
(166, 0, 'H', 16, 1, 1, 1, 0, 0, 0, 0, '1'),
(85, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(86, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(87, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(88, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(89, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(90, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(91, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(92, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(93, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(94, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(95, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(96, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(97, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(98, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(99, 58, 'D', 44, 1, 1, 1, 0, 0, 0, 0, '1'),
(100, 59, 'D', 44, 1, 1, 0, 0, 0, 0, 0, '1'),
(125, 57, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(127, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(105, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(106, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(107, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(675, 0, 'C', 7, 1, 1, 1, 1, 1, 0, 0, '1'),
(167, 0, 'H', 13, 1, 1, 0, 0, 0, 0, 0, '1'),
(119, 67, 'D', 49, 1, 1, 1, 1, 1, 0, 0, '1'),
(131, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(130, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(132, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(142, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(141, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(136, 70, 'D', 27, 0, 0, 0, 0, 0, 1, 0, '1'),
(137, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(168, 92, 'D', 32, 1, 1, 1, 1, 1, 0, 0, '1'),
(246, 91, 'D', 40, 1, 1, 1, 1, 1, 0, 0, '1'),
(143, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(144, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(145, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(146, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(150, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(149, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(151, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(152, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(153, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(154, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(155, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(156, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(157, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(158, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(159, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(160, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(170, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(169, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(195, 97, 'D', 27, 1, 1, 0, 0, 0, 0, 0, '1'),
(171, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(172, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(173, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(174, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(175, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(176, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(177, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(178, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(179, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(180, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(181, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(182, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(183, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(184, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(185, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(186, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(187, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(188, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(189, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(190, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(191, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(192, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(197, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(196, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(198, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(199, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(200, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(201, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(202, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(203, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(204, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(205, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(206, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(207, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(208, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(209, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(210, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(211, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(212, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(213, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(214, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(215, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(216, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(217, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(218, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(219, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(220, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(221, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(222, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(223, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(224, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(225, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(226, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(227, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(228, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(229, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(230, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(231, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(232, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(233, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(234, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(235, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(236, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(237, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(238, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(239, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(240, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(241, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(242, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(243, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(249, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(248, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(250, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(251, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(252, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(253, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(254, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(255, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(256, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(257, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(258, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(259, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(260, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(261, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(262, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(263, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(264, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(265, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(266, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(267, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(268, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(269, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(270, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(271, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(272, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(273, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(274, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(275, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(276, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(277, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(278, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(279, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(280, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(281, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(282, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(283, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(284, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(285, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(286, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(287, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(288, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(289, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(290, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(291, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(292, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(293, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(294, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(295, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(296, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(297, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(298, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(299, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(300, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(301, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(302, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(303, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(304, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(305, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(306, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(307, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(308, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(309, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(310, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(311, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(312, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(313, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(314, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(315, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(316, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(317, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(318, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(319, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(320, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(321, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(322, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(323, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(324, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(325, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(326, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(327, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(328, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(329, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(330, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(331, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(332, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(333, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(334, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(335, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(336, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(337, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(338, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(339, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(340, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(341, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(342, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(343, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(347, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(346, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(348, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(349, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(350, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(351, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(352, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(353, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(354, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(355, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(356, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(357, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(358, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(359, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(360, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(361, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(362, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(363, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(364, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(365, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(366, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(367, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(368, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(369, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(370, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(371, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(372, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(373, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(374, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(375, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(376, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(377, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(378, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(379, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(380, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(381, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(382, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(383, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(384, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(385, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(386, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(387, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(388, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(389, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(390, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(391, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(392, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(393, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(394, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(395, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(396, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(397, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(398, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(399, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(400, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(401, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(402, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(403, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(404, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(405, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(406, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(407, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(408, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(409, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(410, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(411, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(412, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(413, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(414, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(415, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(416, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(417, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(418, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(419, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(420, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(421, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(422, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(423, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(424, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(425, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(426, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(427, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(428, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(429, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(430, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(431, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(432, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(433, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(434, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(435, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(436, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(437, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(438, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(439, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(440, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(441, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(442, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(443, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(444, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(445, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(446, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(447, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(448, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(449, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(450, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(451, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(452, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(453, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(454, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(455, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(456, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(457, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(458, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(459, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(460, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(461, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(462, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(463, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(464, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(465, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(466, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(467, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(468, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(469, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(470, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(471, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(472, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(473, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(474, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(475, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(476, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(477, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(478, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(479, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(480, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(481, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(482, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(483, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(484, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(485, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(486, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(487, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(488, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(489, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(490, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(491, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(492, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(493, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(494, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(495, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(496, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(497, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(498, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(499, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(500, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(501, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(502, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(503, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(504, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(505, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(506, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(507, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(508, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(509, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(510, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(511, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(512, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(513, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(514, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(515, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(516, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(517, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(518, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(519, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(520, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(521, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(522, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(523, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(524, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(525, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(526, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(527, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(528, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(529, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(530, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(531, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(532, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(533, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(534, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(535, 0, 'H', 1, 1, 1, 1, 1, 1, 0, 0, '1'),
(536, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(537, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(546, 0, 'H', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(540, 0, 'H', 13, 1, 1, 1, 1, 1, 1, 0, '1'),
(541, 0, 'H', 13, 1, 1, 0, 0, 0, 0, 0, '1'),
(547, 0, 'H', 1, 0, 1, 1, 1, 1, 0, 1, '1'),
(548, 0, 'H', 1, 0, 1, 1, 1, 1, 0, 1, '1'),
(549, 0, 'H', 1, 0, 1, 1, 1, 0, 1, 0, '1'),
(550, 0, 'H', 1, 0, 0, 0, 1, 0, 1, 0, '1'),
(551, 0, 'H', 1, 0, 1, 0, 0, 0, 0, 0, '1'),
(552, 0, 'H', 1, 1, 1, 0, 0, 0, 0, 0, '1'),
(553, 0, 'H', 1, 1, 0, 1, 0, 1, 0, 1, '1'),
(554, 0, 'H', 1, 0, 1, 0, 0, 1, 1, 0, '1'),
(555, 0, 'H', 1, 0, 0, 1, 0, 0, 0, 1, '1'),
(556, 0, 'H', 1, 0, 0, 0, 1, 1, 0, 0, '1'),
(557, 0, 'H', 1, 0, 0, 0, 0, 1, 1, 0, '1'),
(558, 0, 'H', 1, 0, 0, 0, 0, 0, 0, 1, '1'),
(559, 0, 'H', 1, 1, 0, 0, 1, 0, 0, 0, '1'),
(560, 0, 'H', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(561, 0, 'H', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(562, 0, 'H', 1, 0, 0, 0, 0, 0, 0, 1, '1'),
(563, 0, 'H', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(564, 0, 'H', 1, 0, 1, 0, 0, 0, 0, 0, '1'),
(565, 0, 'H', 1, 0, 1, 0, 0, 0, 1, 0, '1'),
(566, 0, 'H', 1, 0, 0, 1, 0, 0, 1, 0, '1'),
(567, 0, 'H', 1, 0, 0, 0, 1, 1, 1, 1, '1'),
(568, 0, 'H', 1, 0, 0, 0, 1, 1, 1, 1, '1'),
(569, 0, 'H', 1, 0, 1, 0, 1, 0, 1, 0, '1'),
(570, 0, 'H', 1, 0, 1, 0, 0, 1, 1, 0, '1'),
(572, 0, 'H', 1, 0, 0, 0, 1, 1, 1, 1, '1'),
(573, 0, 'H', 1, 1, 1, 1, 0, 0, 0, 0, '1'),
(574, 0, 'H', 29, 1, 1, 1, 1, 1, 1, 1, '1'),
(591, 0, 'C', 4, 1, 0, 0, 0, 0, 0, 0, '1'),
(587, 0, 'H', 1, 0, 0, 0, 1, 1, 1, 1, '1'),
(592, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(593, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(594, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(595, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(596, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(597, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(598, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(599, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(600, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(601, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(602, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(603, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(604, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(605, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(606, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(607, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(608, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(609, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(610, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(611, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(612, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(613, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(614, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(615, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(616, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(617, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(618, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(619, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(620, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(621, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(622, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(623, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(624, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(625, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(626, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(627, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(628, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(629, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(630, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(800, 165, 'D', 121, 0, 1, 0, 0, 0, 0, 0, '1'),
(632, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(633, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(634, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(635, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(636, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(637, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(638, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(639, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(663, 105, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(890, 0, 'H', 38, 1, 1, 1, 1, 1, 1, 1, '1'),
(646, 123, 'D', 76, 0, 0, 0, 1, 0, 0, 0, '1'),
(647, 124, 'D', 77, 0, 0, 0, 0, 0, 0, 1, '1'),
(648, 125, 'D', 78, 0, 0, 0, 0, 0, 0, 1, '1'),
(649, 126, 'D', 79, 0, 0, 0, 0, 0, 0, 1, '1'),
(650, 127, 'D', 80, 0, 0, 0, 0, 0, 0, 1, '1'),
(651, 128, 'D', 81, 0, 0, 0, 0, 0, 0, 1, '1'),
(652, 129, 'D', 83, 0, 0, 0, 0, 0, 0, 1, '1'),
(653, 130, 'D', 86, 0, 0, 0, 0, 0, 0, 0, '1'),
(654, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(655, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(656, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(657, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(658, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(659, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(660, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(689, 122, 'D', 75, 1, 1, 1, 1, 0, 1, 0, '1'),
(667, 0, 'H', 39, 1, 1, 1, 1, 1, 1, 1, '1'),
(802, 139, 'D', 98, 1, 1, 1, 0, 0, 0, 0, '1'),
(885, 0, 'H', 31, 1, 1, 1, 1, 1, 1, 1, '1'),
(807, 118, 'D', 27, 1, 1, 1, 1, 1, 1, 1, '1'),
(676, 0, 'C', 8, 1, 1, 1, 1, 1, 1, 0, '1'),
(677, 156, 'D', 98, 1, 1, 1, 1, 1, 1, 0, '1'),
(787, 0, 'H', 42, 1, 1, 1, 1, 1, 1, 0, '1'),
(690, 142, 'D', 89, 1, 1, 1, 1, 1, 1, 0, '1'),
(684, 146, 'D', 93, 1, 1, 1, 1, 1, 1, 0, '1'),
(691, 143, 'D', 90, 1, 1, 1, 1, 1, 1, 0, '1'),
(686, 145, 'D', 92, 1, 1, 1, 1, 1, 1, 0, '1'),
(687, 144, 'D', 91, 1, 1, 1, 1, 1, 1, 0, '1'),
(776, 135, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(699, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(700, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(701, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(702, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(703, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(704, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(705, 0, 'H', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(706, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(707, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(708, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(709, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(710, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(711, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(712, 0, 'H', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(713, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(714, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(715, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(716, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(717, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(718, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(719, 0, 'H', 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(720, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(721, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(722, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(723, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(724, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(725, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(726, 0, 'H', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(727, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(728, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(729, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(730, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(731, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(732, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(733, 0, 'H', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(734, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(735, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(736, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(737, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(738, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(739, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(740, 0, 'H', 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(741, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(742, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(743, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(744, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(745, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(746, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(747, 0, 'H', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(748, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(749, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(750, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(751, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(752, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(753, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(754, 0, 'H', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(755, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(756, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(757, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(758, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(759, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(760, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(761, 0, 'H', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(762, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(763, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(764, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(765, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(766, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(767, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(768, 0, 'H', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(769, 153, 'D', 103, 1, 1, 1, 1, 1, 1, 0, '1'),
(770, 149, 'D', 100, 1, 1, 1, 1, 1, 1, 0, '1'),
(771, 150, 'D', 99, 1, 1, 1, 1, 1, 1, 0, '1'),
(816, 151, 'D', 101, 1, 1, 1, 1, 1, 1, 0, '1'),
(785, 152, 'D', 102, 1, 1, 1, 1, 1, 1, 0, '1'),
(774, 154, 'D', 104, 1, 1, 1, 1, 1, 1, 0, '1'),
(775, 147, 'D', 94, 1, 1, 1, 1, 1, 1, 0, '1'),
(777, 117, 'D', 64, 1, 1, 1, 1, 1, 1, 1, '1'),
(778, 159, 'D', 67, 1, 1, 1, 1, 1, 1, 0, '1'),
(779, 159, 'D', 67, 0, 0, 0, 0, 0, 0, 1, '1'),
(782, 161, 'D', 113, 1, 1, 1, 1, 1, 1, 0, '1'),
(783, 160, 'D', 114, 1, 1, 1, 1, 1, 1, 0, '1'),
(814, 158, 'D', 10, 1, 1, 1, 1, 1, 1, 0, '1'),
(786, 163, 'D', 87, 1, 1, 1, 1, 1, 1, 0, '1'),
(788, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(789, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(790, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(791, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(792, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(793, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(794, 0, 'H', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(801, 164, 'D', 122, 0, 1, 0, 0, 0, 0, 0, '1'),
(799, 0, 'H', 55, 0, 1, 0, 0, 0, 0, 0, '1'),
(808, 167, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(887, 172, 'D', 27, 1, 1, 1, 1, 1, 0, 0, '1'),
(812, 0, 'H', 56, 0, 1, 0, 0, 0, 0, 0, '1'),
(813, 0, 'H', 56, 0, 0, 0, 0, 0, 0, 1, '1'),
(815, 170, 'D', 125, 1, 1, 1, 1, 1, 1, 0, '1'),
(886, 168, 'D', 27, 1, 1, 1, 1, 1, 1, 1, '1'),
(821, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(822, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(823, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(824, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(825, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(826, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(827, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(828, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(829, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(830, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(831, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(832, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(833, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(834, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(835, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(836, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(837, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(838, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(839, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(840, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(841, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(842, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(843, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(844, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(845, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(846, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(847, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(848, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(849, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(850, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(851, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(852, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(853, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(854, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(855, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(856, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(857, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(858, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(859, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(860, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(861, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(862, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(863, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(864, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(865, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(866, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(867, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(868, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(869, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(870, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(871, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(872, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(873, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(874, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 0, '1'),
(875, 39, 'D', 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(876, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(877, 39, 'D', 1, 0, 1, 0, 1, 1, 1, 1, '1'),
(878, 39, 'D', 1, 0, 0, 0, 0, 1, 0, 0, '1'),
(879, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(880, 39, 'D', 1, 1, 0, 0, 0, 0, 0, 0, '1'),
(881, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(882, 39, 'D', 1, 0, 0, 1, 0, 0, 0, 0, '1'),
(883, 39, 'D', 1, 0, 0, 0, 1, 0, 0, 0, '1'),
(884, 171, 'D', 134, 1, 1, 1, 1, 1, 1, 1, '1'),
(888, 177, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(889, 191, 'D', 27, 1, 1, 1, 1, 1, 1, 0, '1'),
(891, 0, 'H', 60, 1, 1, 1, 1, 1, 1, 0, '1'),
(892, 194, 'D', 159, 1, 1, 1, 1, 1, 1, 0, '1'),
(893, 192, 'D', 27, 1, 1, 1, 0, 0, 0, 0, '1'),
(895, 0, 'H', 62, 1, 1, 1, 1, 1, 1, 1, '1'),
(896, 0, 'H', 66, 1, 1, 1, 1, 1, 0, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `timing_session`
--

CREATE TABLE `timing_session` (
  `id` int(11) NOT NULL,
  `timing_id` int(11) NOT NULL,
  `from_timing` varchar(12) NOT NULL,
  `to_timing` varchar(12) NOT NULL,
  `max_patient` int(3) NOT NULL DEFAULT 5,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timing_session`
--

INSERT INTO `timing_session` (`id`, `timing_id`, `from_timing`, `to_timing`, `max_patient`, `status`) VALUES
(1, 1, '03:00:00', '05:45:00', 5, 1),
(225, 663, '00:15', '01:15', 5, 1),
(56, 48, '00:00', '03:45', 5, 1),
(55, 48, '12:45', '03:45', 5, 1),
(40, 40, '21:00', '15:30', 5, 1),
(16, 13, '09:00:00', '13:00:00', 5, 1),
(51, 45, '18:00', '21:00', 5, 1),
(34, 37, '12:00', '16:00', 5, 1),
(33, 37, '09:00', '11:00', 5, 1),
(39, 40, '06:00', '08:00', 5, 1),
(54, 47, '03:00', '03:30', 5, 1),
(180, 574, '12:00:00', '17:00:00', 5, 1),
(109, 102, '7:45PM', '3:41PM', 5, 1),
(50, 45, '09:00', '16:00', 5, 1),
(49, 45, '00:00', '01:00', 5, 1),
(57, 49, '04:15:00', '05:15:00', 5, 1),
(58, 49, '07:30:00', '09:15:00', 5, 1),
(78, 60, '05:00', '07:00', 5, 1),
(77, 60, '08:00', '10:00', 5, 1),
(106, 99, '04:30:00', '08:00:00', 5, 1),
(89, 71, '04:15', '05:00', 5, 1),
(96, 76, '04:30', '09:45', 5, 1),
(183, 575, '05:00', '20:45', 5, 1),
(358, 894, '06:00', '07:00', 5, 1),
(95, 76, '08:00', '09:15', 5, 1),
(98, 78, '09:00:00', '12:00:00', 5, 1),
(99, 78, '18:00:00', '20:00:00', 5, 1),
(169, 247, '09:00', '12:00', 5, 1),
(161, 166, '01:08PM', '01:08PM', 5, 1),
(107, 100, '04:30:00', '08:00:00', 5, 1),
(142, 125, '08:15', '10:00', 5, 1),
(250, 675, '09:15', '11:30', 5, 1),
(249, 675, '04:30', '09:00', 5, 1),
(126, 119, '11:45', '12:45', 5, 1),
(125, 119, '04:30', '09:00', 5, 1),
(182, 575, '03:45', '07:15', 5, 1),
(181, 575, '04:00', '07:00', 5, 1),
(141, 125, '07:00', '09:00', 5, 1),
(140, 125, '04:00', '08:00', 5, 1),
(357, 894, '20:00', '21:00', 5, 1),
(204, 591, '04:15', '06:45', 5, 1),
(168, 246, '10:00', '14:00', 5, 1),
(162, 168, '09:00', '13:00', 5, 1),
(165, 195, '12:00', '03:00', 5, 1),
(197, 587, '03:51PM', '03:51PM', 5, 1),
(224, 663, '08:00', '09:00', 5, 1),
(223, 663, '16:00', '18:00', 5, 1),
(350, 890, '00:00', '23:30', 5, 1),
(266, 690, '10:00:00', '15:00:00', 5, 1),
(265, 689, '10:00:00', '19:00:00', 5, 1),
(234, 667, '00:00:00', '23:30:00', 5, 1),
(311, 802, '01:00', '02:00', 5, 1),
(310, 802, '04:00', '06:00', 5, 1),
(344, 886, '00:00', '23:30', 5, 1),
(320, 807, '14:15', '16:15', 5, 1),
(319, 807, '07:00', '12:00', 5, 1),
(251, 676, '04:45:00', '05:30:00', 5, 1),
(252, 677, '04:30:00', '17:45:00', 5, 1),
(253, 677, '01:15:00', '01:45:00', 5, 1),
(287, 776, '00:00', '01:00', 5, 1),
(301, 787, '12:00', '15:00', 5, 1),
(260, 684, '11:00', '16:00', 50, 1),
(279, 769, '09:00:00', '16:00:00', 50, 1),
(267, 691, '10:00', '15:00', 50, 1),
(262, 686, '10:00:00', '15:00:00', 50, 1),
(263, 687, '10:00:00', '17:00:00', 50, 1),
(286, 776, '03:00', '04:00', 5, 1),
(280, 770, '10:00:00', '16:00:00', 5, 1),
(281, 771, '10:00:00', '18:00:00', 5, 1),
(334, 816, '12:00', '15:00', 5, 1),
(298, 785, '16:00', '20:00', 5, 1),
(284, 774, '16:00:00', '19:00:00', 5, 1),
(285, 775, '09:00:00', '14:00:00', 5, 1),
(288, 776, '08:00', '10:00', 5, 1),
(289, 777, '10:00:00', '13:00:00', 5, 1),
(290, 777, '18:30:00', '20:00:00', 5, 1),
(291, 778, '10:00:00', '14:00:00', 50, 1),
(292, 779, '10:00:00', '12:00:00', 50, 1),
(341, 884, '19:45:00', '20:45:00', 2, 1),
(295, 782, '11:00', '17:00', 50, 1),
(296, 783, '14:00:00', '16:00:00', 5, 1),
(332, 814, '12:00', '15:00', 50, 1),
(299, 786, '12:00:00', '15:00:00', 50, 1),
(300, 786, '19:00:00', '20:00:00', 10, 1),
(302, 787, '19:00', '20:00', 5, 1),
(308, 800, '10:00', '14:00', 500, 1),
(309, 801, '10:00', '14:00', 500, 1),
(307, 799, '10:00:00', '14:30:00', 5, 1),
(343, 885, '00:00', '00:30', 5, 1),
(321, 807, '04:00', '05:00', 5, 1),
(322, 808, '04:45:00', '07:00:00', 5, 1),
(323, 808, '14:00:00', '15:00:00', 5, 1),
(347, 888, '05:00:00', '06:00:00', 5, 1),
(346, 887, '05:00:00', '06:00:00', 5, 1),
(345, 886, '00:00', '01:00', 5, 1),
(330, 812, '14:00', '20:00', 5, 1),
(331, 813, '10:00', '17:00', 5, 1),
(333, 815, '13:00:00', '14:00:00', 50, 1),
(342, 884, '20:15:00', '20:45:00', 2, 1),
(348, 889, '04:00:00', '05:00:00', 5, 1),
(349, 889, '18:15:00', '19:15:00', 5, 1),
(351, 891, '10:00:00', '13:00:00', 5, 1),
(352, 891, '16:00:00', '20:00:00', 5, 1),
(353, 892, '10:00:00', '13:00:00', 50, 1),
(354, 892, '16:00:00', '20:00:00', 50, 1),
(355, 893, '04:30:00', '05:15:00', 5, 1),
(356, 893, '09:00:00', '10:00:00', 5, 1),
(359, 895, '00:00:00', '23:30:00', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `USERID` mediumint(9) NOT NULL,
  `EMAIL` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FBUID` varchar(55) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `LNAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `GENDER` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `IMAGE` varchar(100) NOT NULL,
  `PROFILEIMG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HEIGHT` varbinary(15) NOT NULL,
  `WEIGHT` varbinary(15) NOT NULL,
  `MOBILE` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `BGROUP` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DOB` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CART` text NOT NULL,
  `OTP` int(6) DEFAULT NULL,
  `APPROVED_BY` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COMPLETED_PROFLE` enum('0','1') NOT NULL DEFAULT '0',
  `APPROVED` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `ADDRESS_ID` int(11) NOT NULL,
  `STATUS` enum('0','1','2') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0-> initial otp sent , 1 verified , 2 blocked ',
  `REG_DATE` datetime DEFAULT current_timestamp(),
  `UPDATE_DATE` date NOT NULL,
  `UNSUBSCRIBE` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`USERID`, `EMAIL`, `PASSWORD`, `GUID`, `FBUID`, `FNAME`, `LNAME`, `GENDER`, `IMAGE`, `PROFILEIMG`, `HEIGHT`, `WEIGHT`, `MOBILE`, `BGROUP`, `DOB`, `CART`, `OTP`, `APPROVED_BY`, `COMPLETED_PROFLE`, `APPROVED`, `ADDRESS_ID`, `STATUS`, `REG_DATE`, `UPDATE_DATE`, `UNSUBSCRIBE`) VALUES
(24, 'anprt123456@gmail.com', 'a8a1ae74c4148178e1f1885c4465a9e6', '102384526365394260706', '', 'ANOOP', '', 'M', 'pic_76650680920190301.png', '2019032611491428', 0x36206674203020696e6368, 0x3736, '7235999099', 'O+', '05/06/1992', 'a:0:{}', 673468, '', '0', '1', 0, '1', '2019-02-21 00:00:00', '0000-00-00', '0'),
(26, 'er.atrikesh2526@gmail.com', 'c6bef04913c1efa36fff59580091aa4e', '', '', 'ATRIKESH', '', '', '', '', '', '', '7754865888', '', '', '', 475733, '', '0', '1', 0, '0', '2019-02-20 23:20:54', '0000-00-00', '0'),
(28, 'set@tex.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Amit', 'Kumar', 'Male', '', '2019042519423654', 0x35206674203720696e6368, 0x3738, '7080245777', 'O+', '25-4-2019', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-02-22 00:00:00', '0000-00-00', '0'),
(32, 'thebest.krishna@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'HITENDRA', '', 'Male', 'pic_79238581420190304.jpg', '2019031301322229', 0x35206674203720696e6368, 0x3734, '8009957777', 'A+ ', '12-12-2019', 'a:0:{}', 366612, '', '0', '1', 0, '1', '2019-02-27 04:59:41', '0000-00-00', '0'),
(36, 'khan02011992@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', 'waseem', 'khan', '', '', '', '', '', '8604972265', '', '', '', 872114, '', '0', '1', 0, '0', '2019-02-28 03:02:55', '0000-00-00', '0'),
(37, 'er.atrukesh2526@gmaul.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'atrukesh', '', '', '', '', '', '', '8707818547', '', '', '', 617245, '', '0', '1', 0, '0', '2019-02-28 08:42:25', '0000-00-00', '0'),
(38, 'pkthakur20009@gmail.com', '202cb962ac59075b964b07152d234b70', '', '', 'Pradeep', 'Kumar', '', '', '', '', '', '7833020069', '', '', '', 551268, '', '0', '1', 0, '0', '2019-03-01 04:06:19', '0000-00-00', '0'),
(42, 'hs085486@gmail.com', '6816f55a00620a2972838d13b9caeee8', '', '', 'Himanshu', 'Singh', 'M', '', '', '', '', '6392034758', '', '', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-03-01 00:00:00', '0000-00-00', '0'),
(46, 'azadhussain16@yahoo.in', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Azad', 'Hussain', '', '', '', '', '', '9431967158', '', '', 'a:0:{}', 883024, '', '0', '1', 0, '1', '2019-03-01 17:58:21', '0000-00-00', '0'),
(47, 'kuldipvns@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '', 'kuldeep', 'sonkar', '', '', '', '', '', '7309288586', '', '', '', 519156, '', '0', '1', 0, '1', '2019-03-02 01:20:25', '0000-00-00', '0'),
(66, 'upcharr@gmail.com', '', '104908238854277970882', '', 'Upchar Online Medical Appointm', 'solution', 'M', 'pic_8469184720190305.jpg', '', '', '', '9415204313', '', '29-04-1991', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-03-05 00:00:00', '0000-00-00', '0'),
(67, 'swati.varadwaj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Swati', NULL, 'F', 'pic_77308533920190308.jpg', '', '', '', '8630417034', '', '15/07/1992', 'a:0:{}', 652179, '', '0', '1', 0, '1', '2019-03-05 00:00:00', '0000-00-00', '0'),
(77, 'rohit.sonkar9454@gmail.com', 'db1f74d1391451109f93cf3f82dd7e75', '', '', 'Anoop2', NULL, 'M', 'pic_11140388520190307.png', '', '', '', '9454776802', '', '05/06/1992', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-03-07 00:00:00', '0000-00-00', '0'),
(78, 'dharmendrarajput128@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '104190809098110785529', '', 'Dharmendra', '', 'M', 'pic_74458461220190709.png', '2019052016284558', 0x35206674203720696e6368, 0x3537, '8393014240', 'AB+', '15-07-1996', 'a:0:{}', 493087, '', '0', '1', 0, '1', '2019-03-07 00:00:00', '0000-00-00', '0'),
(79, 'mahipalsingh093@gmail.com', 'da5496c7148c9bd797b664a78de9b646', '', '', 'Mohit', NULL, 'M', '', '', '', '', '8126551812', '', '', '', 975244, '', '0', '1', 0, '0', '2019-03-08 00:00:00', '0000-00-00', '0'),
(82, 'khandlesir@gmail.com', 'c12da8f562f5295dd15b951967524b75', '', '', 'khandle bhagwat', 'Ramrao', '', '', '', '', '', '9146404464', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-13 07:15:44', '0000-00-00', '0'),
(83, 'laljhabu@gmail.com', 'e614015488b30333703daa2768a00adc', '', '', 'Jhabu', 'Srivastava', '', '', '', '', '', '7355557471', '', '', '', 0, '', '0', '1', 0, '1', '2019-03-17 06:19:31', '0000-00-00', '0'),
(84, 'prabhatsaraste2000@gmail.com', '9fa010c90ee4ed4d3c7965e7bab55c11', '', '', 'Prabhat', 'Saraste', '', '', '', '', '', '9770568611', '', '', '', 679265, '', '0', '1', 0, '0', '2019-03-17 21:24:29', '0000-00-00', '0'),
(85, 'akki@gmail.com', 'b6a00aea843c4839d4f047a8c33a5d1c', '', '', 'Akki', NULL, 'M', 'pic_14548394120190617.jpg', '', '', '', '9910982600', '', '', 'a:0:{}', 942531, '', '0', '1', 0, '1', '2019-03-30 00:00:00', '0000-00-00', '0'),
(86, 'playstorecnx5@gmail.com', 'a393f9300e52adf29bffdc6377e7c054', '', '', 'Damien', '', '', '', '', '', '', '6364860720', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-08 13:44:42', '0000-00-00', '0'),
(87, 'rxplus2018rxplus2018@gmail.com', 'e8b1029cbb5023600ff30c2d2f318777', '', '', 'rxplus', '', '', '', '', '', '', '9559177512', '', '', '', 862402, '', '0', '1', 0, '0', '2019-04-11 22:20:52', '0000-00-00', '0'),
(88, 'aparajita.krishna04@gmail.com', '', '100268718283166578690', '', 'aparajita', 'sonkar', 'F', '', '', '', '', NULL, '', '', '', 803439, '', '0', '1', 0, '1', '2019-04-15 00:00:00', '0000-00-00', '0'),
(89, 'amit28010@gmail.com', '', '116811983798030104485', '', 'amit kumar', 'kumar', 'M', 'pic_832008020190423.JPG', '', '', '', '8998857777', '', '29-04-1991', '', NULL, '', '0', '1', 0, '1', '2019-04-23 00:00:00', '0000-00-00', '0'),
(90, 'Sonkar1965gyanchand@gmail.com', '9c940f8bd3146f1d8d944ff983bf4115', '', '', 'Gyanchand', 'sonkar', '', '', '2019042520393871', '', '', '8009857777', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-25 09:59:50', '0000-00-00', '0'),
(91, 'sbsingh2526@gmail.com', '4fd76224dec7c9c1bc6b6bec276f5a2a', '', '', 'atrikesh', 'sonkar', '', '', '', '', '', '8417005252', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-26 05:32:13', '0000-00-00', '0'),
(92, 'rameshji00098@gmail.com', '6ba0a5353fefc6891767281433eeee56', '', '', 'Ramesh', 'jaiswal', '', '', '', '', '', '9565814046', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-27 10:17:30', '0000-00-00', '0'),
(93, 'helloguruji98@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', '', 'Amitesh', 'Maurya', '', '', '', '', '', '8009742403', '', '', 'a:0:{}', 879964, '', '0', '1', 0, '1', '2019-04-27 22:59:17', '0000-00-00', '0'),
(94, 'dineshmoreya7@gmail.com', 'bf6d4c2487291ed1f084640fccd7cadc', '', '', 'Dinesh Kumar', 'Maurya', '', '', '', '', '', '9451228269', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-28 05:00:10', '0000-00-00', '0'),
(95, 'guptarachit773@gmail.com', 'f425fa151ff801825097f446dab55b6a', '', '', 'Rachit', 'gupta', '', '', '', '', '', '8840125571', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-28 09:18:58', '0000-00-00', '0'),
(96, 'vkvns0003@gmail.com', 'e535ab2108b1ed09c4f06be4ec21679c', '', '', '', 'vijay Rai.', '', '', '', '', '', '9795710003', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-28 09:25:05', '0000-00-00', '0'),
(97, 'dubeymanoj905@gmail.com', '1f2c891047df64e6cf82f47a335e5a01', '', '', 'manoj', 'dubey', '', '', '', '', '', '7479927437', '', '', '', 337801, '', '0', '1', 0, '0', '2019-04-28 10:10:40', '0000-00-00', '0'),
(98, 'sanjaykumar88@hotmail.com', 'cb0d409b113e754ae98c02c92f02041f', '', '', 'Sanjay Kumar', 'Sonker', '', '', '', '', '', '9029244337', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-28 11:35:48', '0000-00-00', '0'),
(99, 'deepaksingh9956@gmail.com', 'fc9705a9530a1c57291df0c31d0c2037', '', '', 'deepak kumar', 'singh', '', '', '', '', '', '7905702780', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-28 21:26:47', '0000-00-00', '0'),
(100, 'kuldeep01leo@gmail.com', '75161c6761209068d1ba56733f34665a', '', '', 'Kuldeep', 'Singh', '', '', '', '', '', '8285147490', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-30 03:41:15', '0000-00-00', '0'),
(101, 'manoj1973kumar24@gmail.com', '2eed4b4217b1e49779abf00dbf296528', '', '', 'manoj', '', '', '', '2019050100435596', '', '', '9598120030', '', '', '', 0, '', '0', '1', 0, '1', '2019-04-30 14:12:16', '0000-00-00', '0'),
(102, 'avinash6961@gmail.com', '14dd88f5294af5239ec7ed05b871f26e', '', '', 'Avinash', NULL, 'M', '', '', '', '', '8527809867', '', '', '', 400679, '', '0', '1', 0, '0', '2019-05-01 00:00:00', '0000-00-00', '0'),
(103, 'sonu037037@gmail.com', '', '101846193732393132681', '', 'DEVIL CLAN', 'PUBG', 'F', '', '', '', '', NULL, '', '', '', NULL, '', '0', '1', 0, '1', '2019-05-08 00:00:00', '0000-00-00', '0'),
(104, 'deshraj.delhi@gmail.com', 'a95087e64cafedf48445f6de929a2124', '', '', 'deshraj', '', '', '', '', '', '', '8383815293', '', '', '', 0, '', '0', '1', 0, '1', '2019-05-13 11:20:00', '0000-00-00', '0'),
(105, 'ak9113189@gmail.com', '2780136e85b506222aa19b89e7493262', '', '', 'Asif', 'Khan', 'M', '', '', '', '', '8005561254', '', '', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-05-14 00:00:00', '0000-00-00', '0'),
(106, 'as2281922@gmail.com', '', '112004470174520985626', '', 'Akash', 'Singh', 'F', '', '', '', '', NULL, '', '', '', NULL, '', '0', '1', 0, '1', '2019-05-15 00:00:00', '0000-00-00', '0'),
(107, 'ashwani2fun@gmail.com', '4b13fe59d042ef544a63a0265132999a', '', '', 'ashwani', 'kumar', '', '', '', '', '', '8459581651', '', '', '', 747612, '', '0', '1', 0, '1', '2019-05-16 13:13:12', '0000-00-00', '0'),
(108, 'danishakhtar.010@gmail.com', '', '103383284325145193099', '', 'Danish', 'Akhtar', 'F', '', '', '', '', NULL, '', '', '', NULL, '', '0', '1', 0, '1', '2019-05-23 00:00:00', '0000-00-00', '0'),
(109, 'uppalrahul7415@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'Rahul', 'Uppal', '', '', '', '', '', '7415864795', '', '', '', 0, '', '0', '1', 0, '1', '2019-06-03 07:00:07', '0000-00-00', '0'),
(110, 'kr.arvind14@gmail.com', '46e8501e382e25ba14ac6071c53a10a8', '', '', 'Arvindkumar', '', '', '', '', '', '', '9616746246', '', '', '', 0, '', '0', '1', 0, '1', '2019-06-03 11:47:13', '0000-00-00', '0'),
(114, 'rajubudha722@gmail.com', 'ba4d01d6203b402e78a789423e1f44d8', '', '', 'Raju Budha', 'Magar', '', '', '', '', '', '9840897695', '', '', '', 823913, '', '0', '1', 0, '0', '2019-06-11 01:43:18', '0000-00-00', '0'),
(119, 'nirmeshkumar106@gmail.com', '855a4512c292825a190df73cd9b97c65', '', '', 'nirmesh', 'sonkar', '', '', '', '', '', '9305379105', '', '', '', 0, '', '0', '1', 0, '1', '2019-06-14 12:27:29', '0000-00-00', '0'),
(120, 'anujmishravns30@gmail.com', 'ca348f79656b2a51ba0d889db336adeb', '', '', 'ANUJ', 'MISHRA', '', '', '', '', '', '9415831588', '', '', '', 0, '', '0', '1', 0, '1', '2019-06-17 01:03:59', '0000-00-00', '0'),
(121, 'qwe@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', 'dhxhx', '', '', '', '', '', '', '8324848454', '', '', '', 831648, '', '0', '1', 0, '0', '2019-06-25 21:06:42', '0000-00-00', '0'),
(123, 'raj@gmail.com', '9161d4be7b74bf400d83e3298fb63b3f', '', '', 'Raj', NULL, 'M', '', '', '', '', '9719164903', '', '', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-06-28 00:00:00', '0000-00-00', '0'),
(124, 'mohitbharti128@gmail.com', '9161d4be7b74bf400d83e3298fb63b3f', '', '', 'Mohit', NULL, 'M', '', '', '', '', '9536486620', '', '', '', 917463, '', '0', '1', 0, '0', '2019-06-29 00:00:00', '0000-00-00', '0'),
(125, 'upchar.developer@gmail.com', '86f500cd7b7d38e5d4ae6cde3920f589', '', '', 'Amit', 'Amit', 'M', '', '', '', '', '7978003492', '', '', 'a:0:{}', 995243, '', '0', '1', 0, '1', '2019-07-01 00:00:00', '0000-00-00', '0'),
(126, 'mohitupcharr@gmail.com', '4342b324522f1854e5bf538b5b79b53c', '', '', 'Mohit', NULL, 'M', '', '', '', '', '9911077446', '', '', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2019-07-02 00:00:00', '0000-00-00', '0'),
(127, 'sonu099099@gmail.com', '2f24c62a44aa52c9b1c27511771b9ef9', '', '', 'indra dev', 'singh', '', '', '', '', '', '8299043502', '', '', '', 158712, '', '0', '1', 0, '1', '2019-07-04 05:30:36', '0000-00-00', '0'),
(128, 'abdulhaseeb8948@gmail.com', 'b5729dc7e29287f461e4e46b33e880a2', '', '', 'Abdul', 'haseeb', '', '', '', '', '', '0532326845', '', '', '', 808391, '', '0', '1', 0, '0', '2019-07-07 08:44:17', '0000-00-00', '0'),
(129, 'admin@admin.com', '9161d4be7b74bf400d83e3298fb63b3f', '', '', 'Sdfh', NULL, 'M', '', '', '', '', '1234567890', '', '', '', 576702, '', '0', '1', 0, '0', '2019-07-08 00:00:00', '0000-00-00', '0'),
(130, 'kamlesh.tabiyar.8822@gmail.com', '', '111781926742136381765', '', 'Kamlesh', 'TABIYAR', 'F', '', '', '', '', NULL, '', '', '', NULL, '', '0', '1', 0, '1', '2019-07-10 00:00:00', '0000-00-00', '0'),
(131, 'testing@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '', '', 'Testing', NULL, 'M', '', '', '', '', '0987654321', '', '', '', 639063, '', '0', '1', 0, '0', '2019-07-13 00:00:00', '0000-00-00', '0'),
(132, 'pradeepkrai10@gmail.com', '9d3c2c9fd61c70b87fd134b4140d3e19', '', '', 'pradeep kumar', 'rai', '', '', '', '', '', '9026381986', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-14 05:39:39', '0000-00-00', '0'),
(133, 'lenovo.brij@gmail.com', 'c331e390994430e66e6d8f20c63fd367', '', '', 'BRIJENDRA', 'YADAV', '', '', '', '', '', '7905225054', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-15 03:41:07', '0000-00-00', '0'),
(134, 'janyapankaj1111@gmail.com', '96055f5b06bf9381ac43879351642cf5', '', '', 'janyapankaj', '', '', '', '', '', '', '7355182073', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-18 18:30:51', '0000-00-00', '0'),
(135, 'hassanzee96@gmail.com', 'd40e2e460c7a383a2facf148c7d3b55b', '', '', 'MD ZEESHAN', 'HASSAN', '', '', '', '', '', '9650567049', '', '', '', 0, '', '0', '1', 0, '1', '2019-07-26 16:23:56', '0000-00-00', '0'),
(136, 'Mehakdevi5510@gmail.com', '2d970966c75b773229e457c4216a8949', '', '', 'mehak', '', '', '', '', '', '', '9017068092', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-25 04:27:07', '0000-00-00', '0'),
(137, 'fineconsultant05@gmail.com', 'c885591e935856e7b551af91e234b64a', '', '', 'farman', 'ali', '', '', '', '', '', '9351795892', '', '', '', 736719, '', '0', '1', 0, '1', '2019-08-25 10:02:00', '0000-00-00', '0'),
(138, 'yogesharora02@gmail.com', 'a56918e33cf725c93de7f1b9cb74f1f2', '', '', 'YOGESH', 'ARORA', '', '', '', '', '', '9910575333', '', '', '', 0, '', '0', '1', 0, '1', '2019-08-27 14:07:46', '0000-00-00', '0'),
(140, 'gc1257@rediffmail.com', 'b90245d6d8bf3b0cad6765f13059ced9', '', '', 'Gian', 'chand', '', '', '', '', '', '7973911328', '', '', '', 662081, '', '0', '1', 0, '0', '2019-08-30 12:47:16', '0000-00-00', '0'),
(141, 'pkthakur2009@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'Kamlesh', '', 'Male', '', '2019083115484516', 0x35206674203920696e6368, 0x3535, '7018744265', 'A+ ', '19-8-1996', '', 0, '', '0', '1', 0, '1', '2019-08-31 05:05:42', '0000-00-00', '0'),
(142, 'hh@ril.com', '82fde846ee21e1c254e13b3a151b02df', '', '', 'Bdd', NULL, 'M', '', '', '', '', '7600140353', '', '', '', 867598, '', '0', '1', 0, '0', '2019-08-31 00:00:00', '0000-00-00', '0'),
(143, 'amarkumarbhattacharjee@gmail.com', '3a6352e81de8a6f62558fe2dabd7e219', '', '', 'AMAR KUMAR', 'BHATTACHARJEE', '', '', '', '', '', '9123068048', '', '', '', 170958, '', '0', '1', 0, '0', '2019-09-03 03:15:33', '0000-00-00', '0'),
(144, 'alok.singh3094@gmail.com', '1a6d39b19fc7b4222d56a56192711623', '', '', 'Alok', 'Singh', '', '', '', '', '', '9717231941', '', '', '', 0, '', '0', '1', 0, '1', '2019-09-07 00:23:59', '0000-00-00', '0'),
(145, 'prashant.k.pathak26@gmail.com', '09302d7da2fcaca008bb600c139d839e', '', '', 'Prashant', 'Pathak', '', '', '', '', '', '8130149110', '', '', '', 505405, '', '0', '1', 0, '0', '2019-09-14 23:20:02', '0000-00-00', '0'),
(146, 'pdbhatia28@gmail.com', 'c8746effb8f677a21ebae034851ebaa9', '', '', 'P.D', 'Bhatia', '', '', '', '', '', '9410918892', '', '', '', 733844, '', '0', '1', 0, '0', '2019-09-15 03:19:09', '0000-00-00', '0'),
(147, 'rinkichoudhary76@gimail.com', '553ce719546442d49334da70aafff4aa', '', '', 'Rinki', 'Choudhary', '', '', '', '', '', '8145627735', '', '', '', 600025, '', '0', '1', 0, '0', '2019-09-19 05:57:27', '0000-00-00', '0'),
(149, 'amitctu67@gmail.com', 'f4fc8a416f8be148db91d57412cc34a0', '', '', 'Amit', 'Kumar', 'M', '', '', '', '', '6393591977', '', '', 'a:0:{}', NULL, '', '0', '1', 0, '1', '2026-08-21 00:00:00', '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `address_id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL,
  `city` varchar(36) NOT NULL,
  `state` varchar(32) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `default_address` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_device`
--

CREATE TABLE `user_device` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(10) UNSIGNED NOT NULL,
  `USER_TYPE` enum('C','M','A') NOT NULL,
  `DEVICE_ID` text NOT NULL,
  `DEVICE_TYPE` enum('android','iOS') NOT NULL,
  `STATUS` enum('0','1') NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `biomedical`
--
ALTER TABLE `biomedical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chemistlogin`
--
ALTER TABLE `chemistlogin`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `MOBILE` (`MOBILE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clinic_claimed`
--
ALTER TABLE `clinic_claimed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorgallery`
--
ALTER TABLE `doctorgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `MOBILE` (`MOBILE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `dr_practice`
--
ALTER TABLE `dr_practice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dr_qualifications`
--
ALTER TABLE `dr_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dr_specialization`
--
ALTER TABLE `dr_specialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitalgallery`
--
ALTER TABLE `hospitalgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitallogin`
--
ALTER TABLE `hospitallogin`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `MOBILE` (`MOBILE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `instition_services`
--
ALTER TABLE `instition_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_category`
--
ALTER TABLE `master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_city`
--
ALTER TABLE `master_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_college`
--
ALTER TABLE `master_college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_council`
--
ALTER TABLE `master_council`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_degree`
--
ALTER TABLE `master_degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_locality`
--
ALTER TABLE `master_locality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_services`
--
ALTER TABLE `master_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_specialization`
--
ALTER TABLE `master_specialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicalgallery`
--
ALTER TABLE `medicalgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathdoctor`
--
ALTER TABLE `pathdoctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathdoctorlogin`
--
ALTER TABLE `pathdoctorlogin`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `MOBILE` (`MOBILE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `pathlab`
--
ALTER TABLE `pathlab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathlogin`
--
ALTER TABLE `pathlogin`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `MOBILE` (`MOBILE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `profile_chem`
--
ALTER TABLE `profile_chem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_dr`
--
ALTER TABLE `profile_dr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_path`
--
ALTER TABLE `profile_path`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_checkout`
--
ALTER TABLE `sm_checkout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sm_order`
--
ALTER TABLE `sm_order`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `timing`
--
ALTER TABLE `timing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timing_session`
--
ALTER TABLE `timing_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`USERID`),
  ADD UNIQUE KEY `MOBILE` (`MOBILE`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `user_device`
--
ALTER TABLE `user_device`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `biomedical`
--
ALTER TABLE `biomedical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `chemistlogin`
--
ALTER TABLE `chemistlogin`
  MODIFY `USERID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clinic_claimed`
--
ALTER TABLE `clinic_claimed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `doctorgallery`
--
ALTER TABLE `doctorgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorlogin`
--
ALTER TABLE `doctorlogin`
  MODIFY `USERID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `dr_practice`
--
ALTER TABLE `dr_practice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `dr_qualifications`
--
ALTER TABLE `dr_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `dr_specialization`
--
ALTER TABLE `dr_specialization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `hospitalgallery`
--
ALTER TABLE `hospitalgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hospitallogin`
--
ALTER TABLE `hospitallogin`
  MODIFY `USERID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `instition_services`
--
ALTER TABLE `instition_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_category`
--
ALTER TABLE `master_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_city`
--
ALTER TABLE `master_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `master_college`
--
ALTER TABLE `master_college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_council`
--
ALTER TABLE `master_council`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `master_degree`
--
ALTER TABLE `master_degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `master_locality`
--
ALTER TABLE `master_locality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `master_services`
--
ALTER TABLE `master_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `master_specialization`
--
ALTER TABLE `master_specialization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `medicalgallery`
--
ALTER TABLE `medicalgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pathdoctor`
--
ALTER TABLE `pathdoctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `pathdoctorlogin`
--
ALTER TABLE `pathdoctorlogin`
  MODIFY `USERID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `pathlab`
--
ALTER TABLE `pathlab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pathlogin`
--
ALTER TABLE `pathlogin`
  MODIFY `USERID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `profile_chem`
--
ALTER TABLE `profile_chem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profile_dr`
--
ALTER TABLE `profile_dr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `profile_path`
--
ALTER TABLE `profile_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_checkout`
--
ALTER TABLE `sm_checkout`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `sm_order`
--
ALTER TABLE `sm_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `timing`
--
ALTER TABLE `timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;

--
-- AUTO_INCREMENT for table `timing_session`
--
ALTER TABLE `timing_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `USERID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_device`
--
ALTER TABLE `user_device`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
