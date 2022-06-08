-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 07:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tution_centre`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_acntspayslip`
--

CREATE TABLE `app_acntspayslip` (
  `id` bigint(20) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `eno` varchar(100) NOT NULL,
  `hra` int(11) NOT NULL,
  `conveyns` varchar(100) NOT NULL,
  `tax` int(11) NOT NULL,
  `incentives` int(11) NOT NULL,
  `fromdate` date DEFAULT NULL,
  `todate` date DEFAULT NULL,
  `taxengine` varchar(100) NOT NULL,
  `incometax` int(11) NOT NULL,
  `uan` varchar(100) NOT NULL,
  `pf` int(11) NOT NULL,
  `esi` varchar(100) NOT NULL,
  `pro` varchar(100) NOT NULL,
  `leavesno` int(11) NOT NULL,
  `pf_tax` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `basictype` varchar(255) NOT NULL,
  `hratype` varchar(255) NOT NULL,
  `contype` varchar(255) NOT NULL,
  `protype` varchar(255) NOT NULL,
  `instype` varchar(255) NOT NULL,
  `deltype` varchar(255) NOT NULL,
  `leatype` varchar(255) NOT NULL,
  `pftype` varchar(255) NOT NULL,
  `esitype` varchar(255) NOT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_acntspayslip`
--

INSERT INTO `app_acntspayslip` (`id`, `basic_salary`, `eno`, `hra`, `conveyns`, `tax`, `incentives`, `fromdate`, `todate`, `taxengine`, `incometax`, `uan`, `pf`, `esi`, `pro`, `leavesno`, `pf_tax`, `delay`, `basictype`, `hratype`, `contype`, `protype`, `instype`, `deltype`, `leatype`, `pftype`, `esitype`, `batch_id`, `designation_id`, `user_id_id`) VALUES
(1, 10000, '', 20000, '500', 200, 200, '2022-02-15', '2022-03-20', '100', 100, '100', 1000, '', '', 1, 0, 1, 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Deduction for Employee', 'Deduction for Employee', 1, 2, 2),
(2, 10000, '', 100, '100', 0, 1000, '2022-06-03', '2022-04-12', '', 0, '', 100, '200', '', 100, 200, 200, 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Earning for Employee', 'Earning for Employee', 1, 2, 2),
(3, 10000, '', 100, '100', 0, 1000, '2022-06-03', '2022-04-12', '', 0, '', 100, '200', '', 100, 200, 200, 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Earning for Employee', 'Deduction for Employee', 'Deduction for Employee', 'Earning for Employee', 'Earning for Employee', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `app_attendance`
--

CREATE TABLE `app_attendance` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_attendance`
--

INSERT INTO `app_attendance` (`id`, `date`, `status`, `user_id`) VALUES
(1, '2022-03-09', 'present', 2),
(2, '2022-03-15', 'absent', 2),
(3, '2022-03-15', 'absent', 3),
(4, '2022-03-09', 'absent', 3),
(5, '2022-03-18', 'present', 3),
(6, '2022-03-09', 'present', 5),
(7, '2022-03-13', 'present', 6);

-- --------------------------------------------------------

--
-- Table structure for table `app_batch`
--

CREATE TABLE `app_batch` (
  `id` bigint(20) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_batch`
--

INSERT INTO `app_batch` (`id`, `batch`, `status`, `description`) VALUES
(1, 'Morning', '', ''),
(2, 'Evening', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_class_registration`
--

CREATE TABLE `app_class_registration` (
  `id` bigint(20) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `batch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_class_registration`
--

INSERT INTO `app_class_registration` (`id`, `class_name`, `description`, `batch_id`) VALUES
(2, '5', 'class5', 1),
(5, '10', 'mbn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_designation`
--

CREATE TABLE `app_designation` (
  `id` bigint(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_designation`
--

INSERT INTO `app_designation` (`id`, `designation`, `status`, `batch_id`, `files`) VALUES
(1, 'manager', '', 1, 'icons8-manager-90.png'),
(2, 'staff', '', 1, 'icons8-manager-90.png'),
(3, 'student', '', 1, 'icons8-manager-90.png'),
(4, 'account', '', 1, 'icons8-manager-90.png');

-- --------------------------------------------------------

--
-- Table structure for table `app_leave`
--

CREATE TABLE `app_leave` (
  `id` bigint(20) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` longtext NOT NULL,
  `leave_status` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `leaveapprovedstatus` varchar(200) NOT NULL,
  `leave_rejected_reason` varchar(300) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_leave`
--

INSERT INTO `app_leave` (`id`, `from_date`, `to_date`, `reason`, `leave_status`, `status`, `designation_id`, `leaveapprovedstatus`, `leave_rejected_reason`, `user_id`) VALUES
(1, '2022-03-09', '2022-03-10', 'reason1', '', '', '1', 'Approved', '', 1),
(2, '2022-03-29', '2022-03-29', 'new reason', 'half Day', 'pending', '1', 'Rejected', ' nm', NULL),
(3, '2022-03-09', '2022-03-10', 'reason11', '', '', '2', 'Approved', '', 2),
(4, '2022-03-31', '2022-03-31', 'resonssss', 'full Day', 'Rejected', '2', '', ' ttttt', 2),
(5, '2022-03-30', '2022-03-31', 'kjcml', 'full Day', 'pending', 'staffname', '', '', 3),
(6, '2022-03-29', '2022-03-29', 'dhkcjx', 'half Day', 'pending', 'staffname', '', '', 3),
(7, '2022-04-02', '2022-04-14', 'jhkslm', 'full Day', 'pending', '2', '', '', 2),
(8, '2022-04-05', '2022-04-05', 'khjl;', 'full Day', 'Rejected', '3', '', ' rejected 1', 3),
(9, '2022-03-29', '2022-03-29', 'qqqqqqq', 'half Day', 'pending', '2', '', '', 2),
(10, '2022-04-02', '2022-04-02', 'iooooi', 'half Day', 'pending', '2', '', '', 2),
(11, '2022-04-02', '2022-04-02', 'iooooi', 'half Day', 'Approved', '2', '', '', 2),
(12, '2022-03-31', '2022-04-07', 'knpfld,[x', 'full Day', 'Approved', '1', '', '', NULL),
(13, '2022-04-08', '2022-04-18', 'jbcjjkmkll', 'full Day', 'Rejected', '1', '', '', 1),
(14, '2022-04-01', '2022-04-01', 'ttttt', 'half Day', 'Approved', '4', '', '', 7),
(15, '2022-04-23', '2022-04-27', 'jbd,mc', 'full Day', 'Approved', '3', 'Approved', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_payment`
--

CREATE TABLE `app_payment` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `payment` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `account_no` varchar(240) DEFAULT NULL,
  `branch` varchar(100) NOT NULL,
  `ifsc` varchar(240) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_payment`
--

INSERT INTO `app_payment` (`id`, `date`, `payment`, `user_id`, `account_no`, `branch`, `ifsc`) VALUES
(1, '2022-03-15', '10000', 5, '985478965852', 'hmbxnk', 'fgdt45'),
(2, '2022-03-09', '30000', 4, '985478965852', 'hmbf', 'fgdt4565'),
(3, '2022-03-23', '50000', 3, '985478965852', 'hmbf', 'fgdt4565'),
(4, '2022-03-23', '100000', 6, '985478965852', 'hmbf', 'fgdt4565'),
(5, '2022-04-22', '20000', 4, '', '', ''),
(6, '2022-03-15', '10000', 2, '985478965852', 'hmbxnk', 'fgdt45');

-- --------------------------------------------------------

--
-- Table structure for table `app_progressreport`
--

CREATE TABLE `app_progressreport` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `subject` varchar(200) NOT NULL,
  `mark` varchar(200) NOT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_progressreport`
--

INSERT INTO `app_progressreport` (`id`, `date`, `subject`, `mark`, `designation_id`, `user_id`) VALUES
(1, '2022-03-21', 'English', '100', NULL, 1),
(2, '2022-03-17', 'english', '50', NULL, 4),
(3, '2022-03-22', 'jsadlx', '60', NULL, 3),
(4, '2022-03-14', 'maths', '50', NULL, 3),
(5, '2022-03-21', 'hindi', '80', NULL, 3),
(6, '2022-03-22', 'm', '10', NULL, 3),
(7, '2022-03-30', 'Physics', '80', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app_reported_issue`
--

CREATE TABLE `app_reported_issue` (
  `id` bigint(20) NOT NULL,
  `issue` longtext NOT NULL,
  `reported_date` date DEFAULT NULL,
  `reply` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `reported_to_id` bigint(20) DEFAULT NULL,
  `reporter_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_reported_issue`
--

INSERT INTO `app_reported_issue` (`id`, `issue`, `reported_date`, `reply`, `status`, `reported_to_id`, `reporter_id`) VALUES
(1, 'issue1', '2022-03-24', '', 'pending', 1, 1),
(6, 'issue2', '2022-03-24', ' issue reporting3', 'pending', 1, 1),
(7, 'issue2', '2022-03-24', ' issue1  reporting to manager', 'pending', 1, 1),
(8, 'issue3', '2022-03-24', ' issueto manager', 'pending', 1, 1),
(9, 'issue3', '2022-03-24', ' hgjklxzmclxkll;cx ;lk;klc x', 'pending', 2, 3),
(10, 'issue6', '2022-03-10', 'staff reply1', 'pending', 1, 2),
(11, 'issue7', '2022-03-25', '', 'pending', 1, 2),
(12, 'student issue1', '2022-03-28', 'student reply1', 'pending', NULL, 3),
(13, 'issue2', '2022-03-28', '', 'pending', NULL, 4),
(14, 'kl;cx', '2022-03-29', '', 'pending', 1, 7),
(15, 'student report111', '2022-03-29', '', 'pending', NULL, 3),
(16, 'jkbdncmx,', '2022-03-29', 'reply', 'pending', 1, 2),
(17, 'tttttt', '2022-03-30', 'replyttttt', 'pending', 1, 7),
(18, 'hkhgb', '2022-04-22', '', 'pending', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `app_subject`
--

CREATE TABLE `app_subject` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `Rate` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_subject`
--

INSERT INTO `app_subject` (`id`, `subject`, `batch_id`, `Rate`, `logo`) VALUES
(2, 'physics', NULL, '1000', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_user_registration`
--

CREATE TABLE `app_user_registration` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(240) DEFAULT NULL,
  `fathername` varchar(240) DEFAULT NULL,
  `mothername` varchar(240) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(240) DEFAULT NULL,
  `presentaddress1` varchar(240) DEFAULT NULL,
  `presentaddress2` varchar(240) DEFAULT NULL,
  `presentaddress3` varchar(240) DEFAULT NULL,
  `pincode` varchar(240) DEFAULT NULL,
  `district` varchar(240) DEFAULT NULL,
  `state` varchar(240) DEFAULT NULL,
  `country` varchar(240) DEFAULT NULL,
  `permanentaddress1` varchar(240) DEFAULT NULL,
  `permanentaddress2` varchar(240) DEFAULT NULL,
  `permanentaddress3` varchar(240) DEFAULT NULL,
  `permanentpincode` varchar(240) DEFAULT NULL,
  `permanentdistrict` varchar(240) DEFAULT NULL,
  `permanentstate` varchar(240) DEFAULT NULL,
  `permanentcountry` varchar(240) DEFAULT NULL,
  `mobile` varchar(240) DEFAULT NULL,
  `alternativeno` varchar(240) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `idproof` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `attitude` int(11) NOT NULL,
  `creativity` int(11) NOT NULL,
  `workperformance` int(11) NOT NULL,
  `joiningdate` date DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL,
  `batch_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `Std_id` int(11) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `account_no` varchar(200) DEFAULT NULL,
  `bank_branch` varchar(240) DEFAULT NULL,
  `bank_name` varchar(240) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `payment_balance` int(11) NOT NULL,
  `payment_status` varchar(200) DEFAULT NULL,
  `total_pay` int(11) NOT NULL,
  `class_registration_id` bigint(20) DEFAULT NULL,
  `dateofappointment` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_user_registration`
--

INSERT INTO `app_user_registration` (`id`, `fullname`, `fathername`, `mothername`, `dateofbirth`, `gender`, `presentaddress1`, `presentaddress2`, `presentaddress3`, `pincode`, `district`, `state`, `country`, `permanentaddress1`, `permanentaddress2`, `permanentaddress3`, `permanentpincode`, `permanentdistrict`, `permanentstate`, `permanentcountry`, `mobile`, `alternativeno`, `staff_id`, `student_id`, `email`, `password`, `idproof`, `photo`, `attitude`, `creativity`, `workperformance`, `joiningdate`, `startdate`, `enddate`, `status`, `batch_id`, `designation_id`, `Std_id`, `subject_id`, `account_no`, `bank_branch`, `bank_name`, `ifsc`, `payment_balance`, `payment_status`, `total_pay`, `class_registration_id`, `dateofappointment`) VALUES
(1, 'managername', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '897548596', '854789685', NULL, NULL, 'manager@gmail.com', '123', '', 'images/face4.jpg', 50, 50, 50, '2022-03-09', NULL, NULL, 'active', 1, 1, 0, NULL, '', '', '', '', 0, '', 0, NULL, NULL),
(2, 'staffname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '985784589', '854859678', 1, NULL, 'staff@gmail.com', '123', '', 'Ellipse1.png', 50, 60, 70, '2022-03-02', NULL, NULL, 'Active', 1, 2, 0, NULL, '6456335896', 'fds', 'sbi', 'dkjf', 0, '', 0, 2, '2022-03-17'),
(3, 'studentname', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9857485965', '8547859652', NULL, NULL, 'student@gmail.com', '123', '', 'images/face5_wtRnEog.jpg', 80, 40, 90, '2022-03-09', NULL, NULL, 'active', 1, 3, 0, 2, '', '', '', '', 0, '', 0, 5, NULL),
(4, 'student1', 'student1', 'student1', '2022-03-03', 'Male', 'student1', 'student1', 'student1', '6525', 'student1', 'student1', 'student1', 'student1', 'student1', 'student1', '6525', 'student1', 'student1', 'student1', '54531', '54321', 0, '222258', 'student1@gmail.com', '123', 'images/face2_yIbCgSv.jpg', 'images/face2_nk60Lvg.jpg', 50, 80, 70, '2022-03-18', NULL, NULL, 'active', 1, 3, 0, NULL, '', '', '', '', 0, '', 0, 2, NULL),
(5, 'staffname2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9857845895', '854859678', NULL, NULL, 'staff2@gmail.com', '123', '', 'Ellipse1.png', 50, 60, 70, '2022-03-02', NULL, NULL, 'Resign', 1, 2, 0, NULL, '58957456', 'kottayam', 'Federal', 'FDRL000', 1000, 'success', 1000, 2, NULL),
(6, 'student2', 'student1', 'student1', '2022-03-03', 'Male', 'student1', 'student1', 'student1', '6525', 'student1', 'student1', 'student1', 'student1', 'student1', 'student1', '6525', 'student1', 'student1', 'student1', '5453', '54321', 0, '255', 'student2@gmail.com', '123', 'images/face2_yIbCgSv.jpg', 'images/face2_nk60Lvg.jpg', 60, 70, 90, '2022-03-02', NULL, NULL, 'resign', 1, 3, 0, NULL, '', '', '', '', 0, '', 0, 2, NULL),
(7, 'account1', 'account1', 'account1', '2022-03-03', 'Male', 'account1', 'account1', 'account1', '6525', 'student1', 'student1', 'account1', 'account1', 'account1', 'account1', '6525', 'account1', 'account1', 'account1', '54531', '54321', 0, '', 'account1@gmail.com', '123', 'images/face2_yIbCgSv.jpg', 'images/face2_nk60Lvg.jpg', 50, 50, 50, NULL, NULL, NULL, 'active', 1, 4, 0, NULL, '', '', '', '', 0, '', 0, NULL, NULL),
(8, 'staffname1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '985784589', '854859678', 1, NULL, 'staff1@gmail.com', '123', '', 'Ellipse1.png', 50, 60, 70, '2022-03-02', NULL, NULL, 'Active', 1, 2, 0, NULL, '', 'fds', 'sbi', 'dkjf', 0, '', 0, 2, '2022-03-17'),
(9, 'hari', 'hari', 'hari', '2022-01-06', 'Male', 'ad1', 'ad2', 'ad3', '686652', 'n', 'n', 'n', 'ad1', 'ad2', 'ad3', '686652', 'n', 'n', 'n', '6432', '4312', 0, '', 'amalcs0006@gmail.com', NULL, 'images/Screenshot_735.png', 'images/face2_67hbavP.jpg', 0, 0, 0, NULL, NULL, NULL, '', 1, NULL, 0, NULL, '', '', '', '', 0, '', 0, NULL, NULL),
(10, 'n', 'n', 'n', '2022-01-28', 'Male', 'n', 'n', 'n', '6532', 'n', 'n', 'n', 'n', 'n', 'n', '6532', 'n', 'n', 'n', '4312', '5543', 0, '', 'amalcs0006@gmail.com', '89254', 'images/Ellipse1_gSfN1US.png', 'images/Ellipse1_08pLAGb.png', 0, 0, 0, NULL, NULL, NULL, '', 1, NULL, 0, NULL, '', '', '', '', 0, '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add batch', 7, 'add_batch'),
(26, 'Can change batch', 7, 'change_batch'),
(27, 'Can delete batch', 7, 'delete_batch'),
(28, 'Can view batch', 7, 'view_batch'),
(29, 'Can add designation', 8, 'add_designation'),
(30, 'Can change designation', 8, 'change_designation'),
(31, 'Can delete designation', 8, 'delete_designation'),
(32, 'Can view designation', 8, 'view_designation'),
(33, 'Can add user_registration', 9, 'add_user_registration'),
(34, 'Can change user_registration', 9, 'change_user_registration'),
(35, 'Can delete user_registration', 9, 'delete_user_registration'),
(36, 'Can view user_registration', 9, 'view_user_registration'),
(37, 'Can add attendance', 10, 'add_attendance'),
(38, 'Can change attendance', 10, 'change_attendance'),
(39, 'Can delete attendance', 10, 'delete_attendance'),
(40, 'Can view attendance', 10, 'view_attendance'),
(41, 'Can add reported_issue', 11, 'add_reported_issue'),
(42, 'Can change reported_issue', 11, 'change_reported_issue'),
(43, 'Can delete reported_issue', 11, 'delete_reported_issue'),
(44, 'Can view reported_issue', 11, 'view_reported_issue'),
(45, 'Can add subject', 12, 'add_subject'),
(46, 'Can change subject', 12, 'change_subject'),
(47, 'Can delete subject', 12, 'delete_subject'),
(48, 'Can view subject', 12, 'view_subject'),
(49, 'Can add leave', 13, 'add_leave'),
(50, 'Can change leave', 13, 'change_leave'),
(51, 'Can delete leave', 13, 'delete_leave'),
(52, 'Can view leave', 13, 'view_leave'),
(53, 'Can add class_registration', 14, 'add_class_registration'),
(54, 'Can change class_registration', 14, 'change_class_registration'),
(55, 'Can delete class_registration', 14, 'delete_class_registration'),
(56, 'Can view class_registration', 14, 'view_class_registration'),
(57, 'Can add progressreport', 15, 'add_progressreport'),
(58, 'Can change progressreport', 15, 'change_progressreport'),
(59, 'Can delete progressreport', 15, 'delete_progressreport'),
(60, 'Can view progressreport', 15, 'view_progressreport'),
(61, 'Can add payment', 16, 'add_payment'),
(62, 'Can change payment', 16, 'change_payment'),
(63, 'Can delete payment', 16, 'delete_payment'),
(64, 'Can view payment', 16, 'view_payment'),
(65, 'Can add acntspayslip', 17, 'add_acntspayslip'),
(66, 'Can change acntspayslip', 17, 'change_acntspayslip'),
(67, 'Can delete acntspayslip', 17, 'delete_acntspayslip'),
(68, 'Can view acntspayslip', 17, 'view_acntspayslip');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$7mXGc7NTANsJl3rtfs3ET3$tcCnpe2wYYZH3u3szKSp+9eCZI44QweOHtaAVMuj+mo=', '2022-03-26 06:33:08.971516', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-03-26 06:26:31.819802');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(17, 'app', 'acntspayslip'),
(10, 'app', 'attendance'),
(7, 'app', 'batch'),
(14, 'app', 'class_registration'),
(8, 'app', 'designation'),
(13, 'app', 'leave'),
(16, 'app', 'payment'),
(15, 'app', 'progressreport'),
(11, 'app', 'reported_issue'),
(12, 'app', 'subject'),
(9, 'app', 'user_registration'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-24 05:33:08.879532'),
(2, 'auth', '0001_initial', '2022-03-24 05:33:09.918085'),
(3, 'admin', '0001_initial', '2022-03-24 05:33:10.093604'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-24 05:33:10.122292'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-24 05:33:10.129312'),
(6, 'app', '0001_initial', '2022-03-24 05:33:10.624183'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-03-24 05:33:10.723711'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-03-24 05:33:10.830102'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-03-24 05:33:10.882477'),
(10, 'auth', '0004_alter_user_username_opts', '2022-03-24 05:33:10.901422'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-03-24 05:33:10.978216'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-03-24 05:33:10.985379'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-03-24 05:33:11.010308'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-03-24 05:33:11.054193'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-03-24 05:33:11.092090'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-03-24 05:33:11.130988'),
(17, 'auth', '0011_update_proxy_permissions', '2022-03-24 05:33:11.156918'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-03-24 05:33:11.191823'),
(19, 'sessions', '0001_initial', '2022-03-24 05:33:11.262601'),
(20, 'app', '0002_attendance', '2022-03-24 08:37:09.303970'),
(21, 'app', '0003_reported_issue', '2022-03-24 10:44:38.958941'),
(22, 'app', '0004_subject_user_registration_std_id_and_more', '2022-03-28 05:03:41.380521'),
(23, 'app', '0005_batch_description_subject_batch_and_more', '2022-03-28 07:01:20.401020'),
(24, 'app', '0006_subject_rate', '2022-03-28 08:22:21.013646'),
(25, 'app', '0007_subject_logo_progressreport_payment', '2022-03-28 14:21:04.468010'),
(26, 'app', '0008_payment_account_no_payment_branch_payment_ifsc', '2022-03-29 04:27:51.954472'),
(27, 'app', '0009_designation_files', '2022-03-30 08:04:45.990992'),
(28, 'app', '0010_user_registration_class_registration', '2022-03-30 08:21:42.638109'),
(29, 'app', '0011_user_registration_dateofappointment', '2022-03-30 08:38:40.087642'),
(30, 'app', '0012_acntspayslip', '2022-04-22 09:52:27.055900');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('89erp70rie6ccsxqfwfgxwo4o5vracnw', 'eyJzdF9pZCI6MiwidXNlcm5hbWV0czEiOiJzdGFmZm5hbWUifQ:1nXmiZ:OSxeanI3IVvz0I6Z5HBli8gVhLDJLnvnBbSxaafA7RM', '2022-04-08 16:23:15.519699'),
('8jksb40u6v9ovvwz0pihnc2r7jsr8hde', 'eyJhY2NfaWQiOjcsInVzZXJuYW1ldHMxIjoiYWNjb3VudDEifQ:1nibqS:MIXSdNbuBbDufEJQ9sNXiMdB_zc_kB7_lYeXJu99UCk', '2022-05-08 13:00:08.128337'),
('8trllnh78mft0mns1fxm7tbioiiqeddk', 'eyJTQWRtX2lkIjoxfQ:1nfcN3:xdfQuZKMXbCwog8uwUo0J_hE875zBrVaY_NfgPWDniU', '2022-04-30 06:57:25.775145'),
('de1yyojn1wu4i9irfxee5ubda2unomhn', 'eyJ1c2VybmFtZXRzMSI6Mywic3RkX2lkIjozfQ:1nhnKn:HcqLZLciJFT3f6is-J9ujQpu2EAG1iakWlqt1fdT2kM', '2022-05-06 07:04:05.307044'),
('iinm9ebdumttl9pr3ljq30ysjlbc60vb', 'eyJtX2lkIjoxLCJ1c2VybmFtZXRzMSI6ImFjY291bnQxIiwiYWNjX2lkIjo3fQ:1niXMN:X34yfx7kxtMtclBUGWY6D7dA5-EYgChAzPd26MVGKhM', '2022-05-08 08:12:47.362173'),
('jceccxgo8p7ciisdnk5wvohytge28ww7', 'eyJtX2lkIjoxLCJ1c2VybmFtZXRzMSI6Im1hbmFnZXJuYW1lIn0:1nbgRu:0FYJNOGkV--2oAz_cl76aSobNbQUsqgjSPqUldNqTvY', '2022-04-19 10:30:10.845275');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_acntspayslip`
--
ALTER TABLE `app_acntspayslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_acntspayslip_batch_id_7baeec9f_fk_app_batch_id` (`batch_id`),
  ADD KEY `app_acntspayslip_designation_id_05572076_fk_app_designation_id` (`designation_id`),
  ADD KEY `app_acntspayslip_user_id_id_ba716024_fk_app_user_registration_id` (`user_id_id`);

--
-- Indexes for table `app_attendance`
--
ALTER TABLE `app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_attendance_user_id_04a4a30c_fk_app_user_registration_id` (`user_id`);

--
-- Indexes for table `app_batch`
--
ALTER TABLE `app_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_class_registration`
--
ALTER TABLE `app_class_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_class_registration_batch_id_f8159913_fk_app_batch_id` (`batch_id`);

--
-- Indexes for table `app_designation`
--
ALTER TABLE `app_designation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_designation_batch_id_ac2e119e_fk_app_batch_id` (`batch_id`);

--
-- Indexes for table `app_leave`
--
ALTER TABLE `app_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_leave_user_id_e2a5747a_fk_app_user_registration_id` (`user_id`);

--
-- Indexes for table `app_payment`
--
ALTER TABLE `app_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_payment_user_id_0f781b98_fk_app_user_registration_id` (`user_id`);

--
-- Indexes for table `app_progressreport`
--
ALTER TABLE `app_progressreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_progressreport_designation_id_d6884dde_fk_app_designation_id` (`designation_id`),
  ADD KEY `app_progressreport_user_id_1b03cd66_fk_app_user_registration_id` (`user_id`);

--
-- Indexes for table `app_reported_issue`
--
ALTER TABLE `app_reported_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_reported_issue_reported_to_id_6ad21f15_fk_app_user_` (`reported_to_id`),
  ADD KEY `app_reported_issue_reporter_id_aefa92e2_fk_app_user_` (`reporter_id`);

--
-- Indexes for table `app_subject`
--
ALTER TABLE `app_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_subject_batch_id_5f837c7a_fk_app_batch_id` (`batch_id`);

--
-- Indexes for table `app_user_registration`
--
ALTER TABLE `app_user_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_user_registration_batch_id_4dd5dcd2_fk_app_batch_id` (`batch_id`),
  ADD KEY `app_user_registratio_designation_id_be0510c1_fk_app_desig` (`designation_id`),
  ADD KEY `app_user_registration_subject_id_8dcfbbb2_fk_app_subject_id` (`subject_id`),
  ADD KEY `app_user_registratio_class_registration_i_72e81044_fk_app_class` (`class_registration_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_acntspayslip`
--
ALTER TABLE `app_acntspayslip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_attendance`
--
ALTER TABLE `app_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_batch`
--
ALTER TABLE `app_batch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app_class_registration`
--
ALTER TABLE `app_class_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_designation`
--
ALTER TABLE `app_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_leave`
--
ALTER TABLE `app_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `app_payment`
--
ALTER TABLE `app_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `app_progressreport`
--
ALTER TABLE `app_progressreport`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_reported_issue`
--
ALTER TABLE `app_reported_issue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `app_subject`
--
ALTER TABLE `app_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_user_registration`
--
ALTER TABLE `app_user_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_acntspayslip`
--
ALTER TABLE `app_acntspayslip`
  ADD CONSTRAINT `app_acntspayslip_batch_id_7baeec9f_fk_app_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `app_batch` (`id`),
  ADD CONSTRAINT `app_acntspayslip_designation_id_05572076_fk_app_designation_id` FOREIGN KEY (`designation_id`) REFERENCES `app_designation` (`id`),
  ADD CONSTRAINT `app_acntspayslip_user_id_id_ba716024_fk_app_user_registration_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_user_registration` (`id`);

--
-- Constraints for table `app_attendance`
--
ALTER TABLE `app_attendance`
  ADD CONSTRAINT `app_attendance_user_id_04a4a30c_fk_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `app_user_registration` (`id`);

--
-- Constraints for table `app_class_registration`
--
ALTER TABLE `app_class_registration`
  ADD CONSTRAINT `app_class_registration_batch_id_f8159913_fk_app_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `app_batch` (`id`);

--
-- Constraints for table `app_designation`
--
ALTER TABLE `app_designation`
  ADD CONSTRAINT `app_designation_batch_id_ac2e119e_fk_app_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `app_batch` (`id`);

--
-- Constraints for table `app_leave`
--
ALTER TABLE `app_leave`
  ADD CONSTRAINT `app_leave_user_id_e2a5747a_fk_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `app_user_registration` (`id`);

--
-- Constraints for table `app_payment`
--
ALTER TABLE `app_payment`
  ADD CONSTRAINT `app_payment_user_id_0f781b98_fk_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `app_user_registration` (`id`);

--
-- Constraints for table `app_progressreport`
--
ALTER TABLE `app_progressreport`
  ADD CONSTRAINT `app_progressreport_designation_id_d6884dde_fk_app_designation_id` FOREIGN KEY (`designation_id`) REFERENCES `app_designation` (`id`),
  ADD CONSTRAINT `app_progressreport_user_id_1b03cd66_fk_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `app_user_registration` (`id`);

--
-- Constraints for table `app_reported_issue`
--
ALTER TABLE `app_reported_issue`
  ADD CONSTRAINT `app_reported_issue_reported_to_id_6ad21f15_fk_app_user_` FOREIGN KEY (`reported_to_id`) REFERENCES `app_user_registration` (`id`),
  ADD CONSTRAINT `app_reported_issue_reporter_id_aefa92e2_fk_app_user_` FOREIGN KEY (`reporter_id`) REFERENCES `app_user_registration` (`id`);

--
-- Constraints for table `app_subject`
--
ALTER TABLE `app_subject`
  ADD CONSTRAINT `app_subject_batch_id_5f837c7a_fk_app_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `app_batch` (`id`);

--
-- Constraints for table `app_user_registration`
--
ALTER TABLE `app_user_registration`
  ADD CONSTRAINT `app_user_registratio_class_registration_i_72e81044_fk_app_class` FOREIGN KEY (`class_registration_id`) REFERENCES `app_class_registration` (`id`),
  ADD CONSTRAINT `app_user_registratio_designation_id_be0510c1_fk_app_desig` FOREIGN KEY (`designation_id`) REFERENCES `app_designation` (`id`),
  ADD CONSTRAINT `app_user_registration_batch_id_4dd5dcd2_fk_app_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `app_batch` (`id`),
  ADD CONSTRAINT `app_user_registration_subject_id_8dcfbbb2_fk_app_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `app_subject` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
