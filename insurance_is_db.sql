-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 12:45 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance_is_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `r_accident_details`
--

CREATE TABLE `r_accident_details` (
  `a_id` int(10) NOT NULL,
  `a_ref_ai_id` int(10) UNSIGNED NOT NULL,
  `a_ref_h_id` int(10) UNSIGNED NOT NULL,
  `a_ref_pol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_accident_details`
--

INSERT INTO `r_accident_details` (`a_id`, `a_ref_ai_id`, `a_ref_h_id`, `a_ref_pol_id`) VALUES
(2, 1, 1, 4),
(6, 1, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `r_accident_info_details`
--

CREATE TABLE `r_accident_info_details` (
  `ai_id` int(10) UNSIGNED NOT NULL,
  `ai_accidentdate` varchar(100) DEFAULT NULL,
  `ai_accidenttime` varchar(100) DEFAULT NULL,
  `ai_accidentplace` varchar(100) DEFAULT NULL,
  `ai_accidentcause` varchar(500) DEFAULT NULL,
  `ai_accidentextent` varchar(100) DEFAULT NULL,
  `ai_accidentdetails` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_accident_info_details`
--

INSERT INTO `r_accident_info_details` (`ai_id`, `ai_accidentdate`, `ai_accidenttime`, `ai_accidentplace`, `ai_accidentcause`, `ai_accidentextent`, `ai_accidentdetails`) VALUES
(1, '10/16/2018', '18:30', 'Quezon City', 'Car crash', '', 'Head injury');

-- --------------------------------------------------------

--
-- Table structure for table `r_approval_status_details`
--

CREATE TABLE `r_approval_status_details` (
  `as_id` int(10) UNSIGNED NOT NULL,
  `as_completion` varchar(100) DEFAULT NULL,
  `as_status` varchar(100) DEFAULT NULL,
  `as_datecompleted` varchar(100) DEFAULT NULL,
  `as_messagestatus` varchar(100) NOT NULL DEFAULT 'Send Message'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_approval_status_details`
--

INSERT INTO `r_approval_status_details` (`as_id`, `as_completion`, `as_status`, `as_datecompleted`, `as_messagestatus`) VALUES
(1, 'Pending', 'Issued', '2018-10-22 02:19', 'Send Message'),
(2, 'Pending', 'Issued', '2018-10-22 02:19', 'Send Message'),
(3, 'Pending', 'Pending', NULL, 'Send Message'),
(4, 'Pending', 'Pending', NULL, 'Send Message'),
(5, 'Pending', 'Pending', NULL, 'Send Message'),
(6, 'Pending', 'Pending', NULL, 'Send Message'),
(7, 'Completed', 'Issued', '2018-10-25 10:00', 'Send Message'),
(8, 'Pending', 'Pending', NULL, 'Send Message'),
(9, 'Completed', 'Issued', '2018-10-25 10:00', 'Send Message'),
(10, 'Completed', 'Issued', '2018-10-25 09:38', 'Send Message'),
(11, 'Completed', 'Declined', '2018-10-25 09:53', 'Send Message'),
(12, 'Completed', 'Issued', '2018-10-25 09:53', 'Send Message'),
(13, 'Pending', 'Pending', NULL, 'Send Message');

-- --------------------------------------------------------

--
-- Table structure for table `r_audit_trail_details`
--

CREATE TABLE `r_audit_trail_details` (
  `at_id` int(10) UNSIGNED NOT NULL,
  `at_activity` varchar(500) DEFAULT NULL,
  `at_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `at_ref_sud_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_audit_trail_details`
--

INSERT INTO `r_audit_trail_details` (`at_id`, `at_activity`, `at_datetime`, `at_ref_sud_id`) VALUES
(1, 'Login', '2018-10-24 08:38:32', 14),
(3, 'Login', '2018-10-24 09:27:00', 14),
(5, 'Login', '2018-10-24 10:40:04', 7),
(6, 'Login', '2018-10-24 22:46:18', 1),
(7, 'Login', '2018-10-24 23:14:16', 1),
(8, 'Login', '2018-10-24 23:24:11', 14),
(9, 'Added application number00011', '2018-10-24 23:31:08', 14),
(10, 'Updated requirements of an application', '2018-10-24 23:32:25', 14),
(11, 'Updated requirements of an application', '2018-10-24 23:32:48', 14),
(12, 'Proceeded an application in Medical Department', '2018-10-24 23:32:58', 14),
(13, 'Login', '2018-10-24 23:33:22', 12),
(14, 'Login', '2018-10-24 23:35:13', 14),
(15, 'Login', '2018-10-24 23:47:27', 12),
(16, 'Login', '2018-10-24 23:50:30', 14),
(17, 'Login', '2018-10-24 23:56:02', 14),
(18, 'Login', '2018-10-25 00:34:40', 8),
(19, 'Login', '2018-10-25 00:50:19', 6),
(20, 'Login', '2018-10-25 00:55:47', 6),
(21, 'Login', '2018-10-25 00:56:27', 8),
(22, 'Proceeded a claim in Legal Department', '2018-10-25 01:01:36', 8),
(23, 'Proceeded a claim in Legal Department', '2018-10-25 01:01:43', 8),
(24, 'Login', '2018-10-25 01:04:32', 10),
(25, 'Login', '2018-10-25 01:08:07', 10),
(26, 'Mark claim as Completed in Legal', '2018-10-25 01:08:32', 10),
(27, 'Login', '2018-10-25 01:09:32', 8),
(28, 'Login', '2018-10-25 01:13:33', 7),
(29, 'Login', '2018-10-25 01:29:56', 14),
(30, 'Added application number00013', '2018-10-25 01:33:42', 14),
(31, 'Updated requirements of an application', '2018-10-25 01:34:02', 14),
(32, 'Updated requirements of an application', '2018-10-25 01:34:24', 14),
(33, 'Updated requirements of an application', '2018-10-25 01:34:36', 14),
(34, 'Proceeded an application in Medical Department', '2018-10-25 01:34:45', 14),
(35, 'Login', '2018-10-25 01:35:06', 12),
(36, 'Login', '2018-10-25 01:36:25', 14),
(37, 'Approved an application', '2018-10-25 01:38:13', 14),
(38, 'Added application number00014', '2018-10-25 01:42:15', 14),
(39, 'Added application number00015', '2018-10-25 01:44:24', 14),
(40, 'Updated requirements of an application', '2018-10-25 01:47:37', 14),
(41, 'Updated requirements of an application', '2018-10-25 01:47:51', 14),
(42, 'Proceeded an application in Medical Department', '2018-10-25 01:48:40', 14),
(43, 'Proceeded an application in Medical Department', '2018-10-25 01:49:48', 14),
(44, 'Login', '2018-10-25 01:50:07', 12),
(45, 'Login', '2018-10-25 01:52:56', 14),
(46, 'Declined an application', '2018-10-25 01:53:10', 14),
(47, 'Approved an application', '2018-10-25 01:53:24', 14),
(48, 'Updated requirements of an application', '2018-10-25 01:57:18', 14),
(49, 'Updated requirements of an application', '2018-10-25 01:57:45', 14),
(50, 'Proceeded an application in Medical Department', '2018-10-25 01:57:56', 14),
(51, 'Proceeded an application in Medical Department', '2018-10-25 01:58:03', 14),
(52, 'Login', '2018-10-25 01:58:19', 12),
(53, 'Login', '2018-10-25 01:59:59', 14),
(54, 'Approved an application', '2018-10-25 02:00:15', 14),
(55, 'Approved an application', '2018-10-25 02:00:22', 14),
(56, 'Login', '2018-10-25 02:05:33', 8),
(57, 'Login', '2018-10-25 02:09:16', 1),
(58, 'Login', '2018-10-25 02:35:49', 14),
(59, 'Login', '2018-10-25 03:17:58', 14),
(60, 'Login', '2018-10-25 03:20:14', 8),
(61, 'Login', '2018-10-25 03:23:13', 10),
(62, 'Login', '2018-10-25 03:24:33', 7),
(63, 'Login', '2018-10-25 03:27:51', 1),
(64, 'Login', '2018-10-25 05:01:05', 14),
(65, 'Login', '2018-10-25 05:32:43', 14),
(66, 'Updated requirements of an application', '2018-10-25 05:47:53', 14),
(67, 'Updated requirements of an application', '2018-10-25 05:48:19', 14),
(68, 'Login', '2018-10-25 05:49:20', 12),
(69, 'Login', '2018-10-25 05:50:52', 14),
(70, 'Login', '2018-10-25 05:52:47', 12),
(71, 'Login', '2018-10-25 05:55:10', 14),
(72, 'Login', '2018-10-25 06:05:27', 14),
(73, 'Login', '2018-10-25 06:38:45', 12),
(74, 'Login', '2018-10-25 06:39:52', 14),
(75, 'Proceeded an application in Medical Department', '2018-10-25 06:41:10', 14),
(76, 'Login', '2018-10-25 06:42:09', 12),
(77, 'Login', '2018-10-25 06:59:08', 14),
(78, 'Login', '2018-10-25 07:00:35', 8),
(79, 'Login', '2018-10-25 07:02:54', 14),
(80, 'Login', '2018-10-25 07:10:11', 8),
(81, 'Updated the requirements of a claim', '2018-10-25 07:29:22', 8),
(82, 'Updated the requirements of a claim', '2018-10-25 07:29:34', 8),
(83, 'Login', '2018-10-25 07:30:50', 10),
(84, 'Login', '2018-10-25 07:31:31', 8),
(85, 'Proceeded a claim in Legal Department', '2018-10-25 07:32:42', 8),
(86, 'Login', '2018-10-25 08:19:28', 10),
(87, 'Login', '2018-10-25 10:30:35', 14),
(88, 'Login', '2018-10-25 10:32:26', 8),
(89, 'Login', '2018-10-25 10:35:15', 14),
(90, 'Login', '2018-10-25 10:37:45', 1),
(91, 'Login', '2018-10-25 15:08:46', 6),
(92, 'Login', '2018-10-25 15:22:05', 7),
(93, 'Login', '2018-10-25 21:59:29', 14),
(94, 'Login', '2018-10-25 22:00:05', 8),
(95, 'Login', '2018-10-26 10:17:40', 10),
(96, 'Approved a claim', '2018-10-26 10:28:40', 10),
(97, 'Mark claim as Completed in Legal', '2018-10-26 10:29:01', 10),
(98, 'Mark claim as Completed in Legal', '2018-10-26 10:29:11', 10),
(99, 'Declined a claim', '2018-10-26 10:29:24', 10),
(100, 'Mark claim as Completed in Legal', '2018-10-26 10:29:51', 10),
(101, 'Declined a claim', '2018-10-26 10:30:03', 10),
(102, 'Mark claim as Completed in Legal', '2018-10-26 10:30:18', 10),
(103, 'Login', '2019-01-16 00:47:40', 14),
(104, 'Login', '2019-01-17 00:39:59', 14),
(105, 'Login', '2019-01-18 00:42:41', 14),
(106, 'Added application number00100', '2019-01-18 01:02:27', 14),
(107, 'Login', '2019-01-18 01:02:37', 14),
(108, 'Login', '2019-01-18 04:18:55', 14),
(109, 'Login', '2019-01-18 04:39:46', 1),
(110, 'Login', '2019-01-18 07:43:52', 1),
(111, 'Login', '2019-01-27 23:24:59', 14),
(112, 'Login', '2019-01-27 23:34:57', 14),
(113, 'Login', '2019-01-27 23:42:10', 14),
(114, 'Login', '2019-01-27 23:43:15', 14),
(115, 'Login', '2019-01-27 23:44:19', 14),
(116, 'Login', '2019-01-27 23:44:54', 14),
(117, 'Login', '2019-01-27 23:46:41', 14),
(118, 'Login', '2019-01-27 23:47:38', 14),
(119, 'Login', '2019-01-27 23:51:29', 14),
(120, 'Login', '2019-01-28 01:00:09', 14),
(121, 'Login', '2019-02-02 03:52:00', 14),
(122, 'Login', '2019-02-02 03:59:49', 1),
(123, 'Login', '2019-02-02 04:01:56', 14),
(124, 'Login', '2019-02-02 05:40:38', 8),
(125, 'Added Claim Form - Death Claim', '2019-02-02 05:50:11', 8),
(126, 'Updated the requirements of a claim', '2019-02-02 05:50:24', 8),
(127, 'Login', '2019-02-02 07:15:11', 14),
(128, 'Login', '2019-02-02 07:47:11', 14),
(129, 'Login', '2019-02-02 07:47:47', 14),
(130, 'Login', '2019-02-02 07:52:48', 10),
(131, 'Approved a claim', '2019-02-02 07:54:06', 10),
(132, 'Approved a claim', '2019-02-02 07:56:27', 10),
(133, 'Login', '2019-02-02 07:58:29', 8);

-- --------------------------------------------------------

--
-- Table structure for table `r_beneficiary_details`
--

CREATE TABLE `r_beneficiary_details` (
  `b_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(100) DEFAULT NULL,
  `b_birthdate` varchar(100) DEFAULT NULL,
  `b_gender` varchar(100) DEFAULT NULL,
  `b_reltoinsured` varchar(100) DEFAULT NULL,
  `b_share` varchar(100) DEFAULT NULL,
  `b_typeofbeneficiary` varchar(100) DEFAULT NULL,
  `b_beneficiarydesignation` varchar(100) DEFAULT NULL,
  `b_placeofbirth` varchar(100) DEFAULT NULL,
  `b_nationality` varchar(100) DEFAULT NULL,
  `b_presentaddress` varchar(100) DEFAULT NULL,
  `b_country` varchar(100) DEFAULT NULL,
  `b_zipcode` varchar(100) DEFAULT NULL,
  `b_ref_lid_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_beneficiary_details`
--

INSERT INTO `r_beneficiary_details` (`b_id`, `b_name`, `b_birthdate`, `b_gender`, `b_reltoinsured`, `b_share`, `b_typeofbeneficiary`, `b_beneficiarydesignation`, `b_placeofbirth`, `b_nationality`, `b_presentaddress`, `b_country`, `b_zipcode`, `b_ref_lid_id`) VALUES
(1, 'John Doe', '2018-10-01', 'Male', 'Son', '100', 'Primary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', 'Philippines', '', 1),
(2, 'Jane Doe', '2018-10-22', 'Female', '', '100', 'Secodary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', 'Philippines', '', 1),
(3, 'Jodeth Paler', '2018-10-08', 'Female', 'Daughter', '100', 'Primary', 'Revocable', 'Quzon City', 'Filipino', 'Quezon City', 'Philippines', '', 2),
(4, 'Jed Paler', '2018-10-06', 'Male', 'Son', '100', 'Secodary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', 'Philippines', '', 2),
(5, 'Gara Ronquillo', '2018-10-21', 'Female', 'Daughter', '100', 'Primary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', 'Philippines', '', 3),
(6, 'Lance Ronquillo', '2018-10-21', 'Male', 'Son', '100', 'Secodary', 'Revocable', 'Quzon City', 'Filipino', 'Quezon City', 'Philippines', '', 3),
(11, 'Maylene Asinero', '', 'Female', 'Mother', '100', 'Primary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', 'Philippines', '', 6),
(12, 'Shanela Cagulang', '2018-10-08', 'Female', 'Sister', '100', 'Secodary', 'Revocable', 'Quezon City', '', 'Quezon City', 'Philippines', '', 6),
(13, 'Jasper Montano', '2018-10-07', 'Male', 'son', '100', 'Primary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', '', '', 7),
(14, 'Jasslyn Montano', '2018-10-08', 'Female', 'Daughter', '100', 'Secodary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', '', '', 7),
(15, 'Lorna Catap', '2018-10-07', 'Female', 'Sister', '100', 'Primary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', '', '', 8),
(16, 'Lowell Catap', '2018-10-04', 'Male', 'Brother', '100', 'Secodary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', '', '', 8),
(17, 'Christian Gungab', '2018-10-07', 'Male', 'Sister', '100', 'Primary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', '', '', 9),
(18, 'Christy Gungab', '2018-10-07', 'Female', 'Sister', '100', 'Secodary', 'Revocable', 'Quezon City', 'Filipino', 'Quezon City', '', '', 9),
(19, 'Marielle Valencia', '2018-10-01', 'Female', 'Sister', '100', 'Primary', 'Revocable', 'Quezon CIty', 'Filipino', 'Quezon CIty', '', '', 10),
(20, 'Alyana App', '2018-10-01', 'Female', 'SIster', '100', 'Secodary', 'Revocable', 'Quezon CIty', 'Filipino', 'Quezon CIty', '', '', 10),
(21, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 11),
(22, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 11),
(23, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 12),
(24, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 12),
(25, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 13),
(26, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 13),
(27, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 14),
(28, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 14),
(29, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 15),
(30, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 15),
(31, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 16),
(32, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 16),
(33, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 17),
(34, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 17),
(35, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 18),
(36, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 18),
(37, '', '', 'null', '', '100', 'Primary', '', '', '', '', '', '', 19),
(38, '', '', 'null', '', '100', 'Secodary', '', '', '', '', '', '', 19);

-- --------------------------------------------------------

--
-- Table structure for table `r_benefit_details`
--

CREATE TABLE `r_benefit_details` (
  `benefit_id` int(10) UNSIGNED NOT NULL,
  `benefit_name` varchar(100) NOT NULL,
  `benefit_amount` varchar(100) NOT NULL,
  `benefit_ref_pi_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_benefit_details`
--

INSERT INTO `r_benefit_details` (`benefit_id`, `benefit_name`, `benefit_amount`, `benefit_ref_pi_id`) VALUES
(1, 'Intensive Care Unit Benefit', '10000', 1),
(2, 'Surgical Expense Benefit', '10000', 1),
(3, 'Intensive Care Unit Benefit', '20000', 2),
(4, 'Surgical Expense Benefit', '20000', 2),
(5, 'Life Care Plus', '10000', 3),
(6, 'Life Care Waiver', '10000', 3),
(7, 'Crisis Cover Benefit', '25000', 4),
(8, 'Payor Term Benefit', '25000', 4),
(9, 'Mulitple Life Cycle Plus', '10000', 5),
(10, 'Surgical Expense Benefit', '10000', 5),
(11, 'Surgical Expense Benefit', '30000', 6),
(12, 'Long-term Hospitalization Benefit', '30000', 6),
(13, 'Surgical Expense Benefit', '20000', 7),
(14, 'Surgical Expense Benefit', '20000', 8),
(15, 'Long-term Hospitalization Benefit', '30000', 8),
(16, 'Surgical Expense Benefit', '30000', 9),
(17, 'Long-term Hospitalization Benefit', '30000', 9),
(18, 'Accelerated Total and Permanent Disability', '20000', 14),
(19, 'Accidental Death and Disablement Benefit', '20000', 14);

-- --------------------------------------------------------

--
-- Table structure for table `r_claiming_or_details`
--

CREATE TABLE `r_claiming_or_details` (
  `cod_id` int(10) UNSIGNED NOT NULL,
  `cod_status` varchar(100) NOT NULL,
  `cod_ref_c_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_claiming_requirements_details`
--

CREATE TABLE `r_claiming_requirements_details` (
  `cr_id` int(10) UNSIGNED NOT NULL,
  `cr_requirement` varchar(100) DEFAULT NULL,
  `cr_description` varchar(100) DEFAULT NULL,
  `cr_type` varchar(100) NOT NULL,
  `cr_dateadded` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cr_datelastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cr_addedby` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_claiming_requirements_details`
--

INSERT INTO `r_claiming_requirements_details` (`cr_id`, `cr_requirement`, `cr_description`, `cr_type`, `cr_dateadded`, `cr_datelastmodified`, `cr_addedby`) VALUES
(1, 'Death Certificate', '', 'Death Claim', '2018-10-22 16:36:01', '2018-10-22 16:36:01', 'Remmel Ocay'),
(2, 'Valid ID', 'Passport, Drivers License, Postal ID, SSS ID', 'All types of claim', '2018-10-22 16:52:36', '2018-10-22 16:52:36', 'Remmel Ocay'),
(3, 'Policy Contract', '', 'All types of claim', '2018-10-22 16:53:06', '2018-10-22 16:53:06', 'Remmel Ocay'),
(4, 'Valid ID of Policyowner', 'These must be clear photocopies with 3 specimen signatures.', 'All types of claim', '2018-10-22 16:54:06', '2018-10-22 16:54:06', 'Remmel Ocay'),
(5, 'Attending Physicians Statement', 'This must be duly accomplished by the Physician', 'Critical Illness', '2018-10-22 16:54:51', '2018-10-22 16:54:51', 'Remmel Ocay'),
(6, 'Medical Records', 'This must be duly certified by the issuing hospital/institution.', 'Critical Illness', '2018-10-22 16:55:30', '2018-10-22 16:55:30', 'Remmel Ocay'),
(7, 'Medical Records', 'This must be duly certified by the issuing hospital/institution.', 'Accident', '2018-10-22 16:56:06', '2018-10-22 16:56:06', 'Remmel Ocay');

-- --------------------------------------------------------

--
-- Table structure for table `r_claim_approval_status_details`
--

CREATE TABLE `r_claim_approval_status_details` (
  `cas_id` int(10) UNSIGNED NOT NULL,
  `cas_completion` varchar(100) DEFAULT NULL,
  `cas_status` varchar(100) DEFAULT NULL,
  `cas_datecompleted` varchar(100) DEFAULT NULL,
  `cas_messagestatus` varchar(100) NOT NULL DEFAULT 'Send Message'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_claim_approval_status_details`
--

INSERT INTO `r_claim_approval_status_details` (`cas_id`, `cas_completion`, `cas_status`, `cas_datecompleted`, `cas_messagestatus`) VALUES
(1, 'Completed', 'Approved', '2018-10-24 12:30', 'Send Message'),
(2, 'Pending', 'Pending', '', 'Send Message'),
(3, 'Pending', 'Pending', '', 'Send Message'),
(4, 'Pending', 'Pending', '', 'Send Message'),
(5, 'Pending', 'Pending', '', 'Send Message'),
(6, 'Pending', 'Pending', '', 'Send Message'),
(7, 'Pending', 'Pending', '', 'Send Message'),
(8, 'Pending', 'Pending', NULL, 'Send Message');

-- --------------------------------------------------------

--
-- Table structure for table `r_claim_form_status_details`
--

CREATE TABLE `r_claim_form_status_details` (
  `cfs_id` int(10) UNSIGNED NOT NULL,
  `cfs_completion` varchar(100) DEFAULT NULL,
  `cfs_datecompleted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_claim_form_status_details`
--

INSERT INTO `r_claim_form_status_details` (`cfs_id`, `cfs_completion`, `cfs_datecompleted`) VALUES
(1, 'Completed', '2018-10-23 00:43:39'),
(2, 'Completed', '2018-10-23 00:43:39'),
(3, 'Completed', '2018-10-23 00:43:39'),
(4, 'Completed', '2018-10-23 00:43:39'),
(10, 'Completed', '2018-10-23 15:45:24'),
(11, 'Completed', '2018-10-23 16:30:10'),
(12, 'Completed', '2018-10-23 17:09:54'),
(13, 'Completed', '2019-02-02 05:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `r_claim_legal_status_details`
--

CREATE TABLE `r_claim_legal_status_details` (
  `cls_id` int(10) UNSIGNED NOT NULL,
  `cls_completion` varchar(100) DEFAULT NULL,
  `cls_status` varchar(100) DEFAULT NULL,
  `cls_remarks` varchar(500) DEFAULT NULL,
  `cls_dateproceededinlegal` varchar(100) DEFAULT NULL,
  `cls_datecompleted` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_claim_legal_status_details`
--

INSERT INTO `r_claim_legal_status_details` (`cls_id`, `cls_completion`, `cls_status`, `cls_remarks`, `cls_dateproceededinlegal`, `cls_datecompleted`) VALUES
(1, 'Completed', 'Approved in Legal', 'WEWWE', '2018-10-25 09:01', '2018-10-26 18:29'),
(2, 'Completed', 'Approved in Legal', 'CLAIMING', '2018-10-25 15:32', '2018-10-26 18:29'),
(3, 'Completed', 'Declined in Legal', 'null', '2018-10-25 15:32', '2018-10-26 18:29'),
(4, 'Completed', 'Declined in Legal', 'null', '2018-10-25 09:01', '2018-10-26 18:30'),
(5, 'In Legal Department', 'Pending', NULL, '2018-10-25 09:01', NULL),
(6, 'In Legal Department', 'Pending', NULL, '2018-10-25 09:01', NULL),
(7, 'In Legal Department', 'Pending', NULL, '2018-10-25 09:01', NULL),
(8, 'Pending', 'Pending', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `r_claim_requirements_checklist_details`
--

CREATE TABLE `r_claim_requirements_checklist_details` (
  `crc_id` int(10) UNSIGNED NOT NULL,
  `crc_req` varchar(100) DEFAULT NULL,
  `crc_status` varchar(100) DEFAULT NULL,
  `crc_ref_crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_claim_requirements_checklist_details`
--

INSERT INTO `r_claim_requirements_checklist_details` (`crc_id`, `crc_req`, `crc_status`, `crc_ref_crs_id`) VALUES
(1, 'Death Certificate', 'checked', 1),
(2, 'Valid ID', 'checked', 1),
(3, 'Policy Contract', 'checked', 1),
(4, 'Valid ID of Policyowner', 'checked', 1),
(5, 'Death Certificate', 'checked', 2),
(6, 'Valid ID', 'checked', 2),
(7, 'Policy Contract', 'checked', 2),
(8, 'Valid ID of Policyowner', 'checked', 2),
(9, 'Valid ID', '', 3),
(10, 'Policy Contract', 'checked', 3),
(11, 'Valid ID of Policyowner', 'checked', 3),
(12, 'Attending Physicians Statement', 'checked', 3),
(13, 'Medical Records', '', 3),
(14, 'Valid ID', '', 4),
(15, 'Policy Contract', '', 4),
(16, 'Valid ID of Policyowner', '', 4),
(17, 'Medical Records', '', 4),
(18, 'Death Certificate', '', 6),
(19, 'Valid ID', '', 6),
(20, 'Policy Contract', '', 6),
(21, 'Valid ID of Policyowner', '', 6),
(22, 'Valid ID', '', 7),
(23, 'Policy Contract', '', 7),
(24, 'Valid ID of Policyowner', '', 7),
(25, 'Attending Physicians Statement', '', 7),
(26, 'Medical Records', '', 7),
(27, 'Valid ID', '', 8),
(28, 'Policy Contract', '', 8),
(29, 'Valid ID of Policyowner', '', 8),
(30, 'Medical Records', '', 8),
(31, 'Death Certificate', '', 9),
(32, 'Valid ID', '', 9),
(33, 'Policy Contract', 'checked', 9),
(34, 'Valid ID of Policyowner', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `r_claim_requirements_status_details`
--

CREATE TABLE `r_claim_requirements_status_details` (
  `crs_id` int(10) UNSIGNED NOT NULL,
  `crs_completion` varchar(100) DEFAULT NULL,
  `crs_status` varchar(100) DEFAULT NULL,
  `crs_datereqcompleted` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_claim_requirements_status_details`
--

INSERT INTO `r_claim_requirements_status_details` (`crs_id`, `crs_completion`, `crs_status`, `crs_datereqcompleted`) VALUES
(1, 'Completed', 'Pending', '2018-10-23 16:34'),
(2, 'Completed', 'Pending', '2018-10-25 15:29'),
(3, 'Pending', 'Pending', ''),
(4, 'Pending', 'Pending', ''),
(6, 'Pending', 'Pending', NULL),
(7, 'Pending', 'Pending', NULL),
(8, 'Pending', 'Pending', NULL),
(9, 'Pending', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `r_critical_illness_details`
--

CREATE TABLE `r_critical_illness_details` (
  `ci_id` int(10) NOT NULL,
  `ci_ref_hl_id` int(10) UNSIGNED NOT NULL,
  `ci_ref_h_id` int(10) UNSIGNED NOT NULL,
  `ci_ref_pol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_critical_illness_details`
--

INSERT INTO `r_critical_illness_details` (`ci_id`, `ci_ref_hl_id`, `ci_ref_h_id`, `ci_ref_pol_id`) VALUES
(1, 1, 1, 3),
(2, 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `r_death_claim_details`
--

CREATE TABLE `r_death_claim_details` (
  `dc_id` int(10) NOT NULL,
  `dc_ref_d_id` int(10) UNSIGNED NOT NULL,
  `dc_ref_h_id` int(10) UNSIGNED NOT NULL,
  `dc_ref_pol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_death_claim_details`
--

INSERT INTO `r_death_claim_details` (`dc_id`, `dc_ref_d_id`, `dc_ref_h_id`, `dc_ref_pol_id`) VALUES
(1, 4, 2, 1),
(2, 4, 3, 2),
(3, 4, 2, 6),
(4, 5, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `r_death_details`
--

CREATE TABLE `r_death_details` (
  `d_id` int(10) UNSIGNED NOT NULL,
  `d_causeofdeath` varchar(100) DEFAULT NULL,
  `d_dateofdeath` varchar(100) DEFAULT NULL,
  `d_timeofdeath` varchar(100) DEFAULT NULL,
  `d_placeofdeath` varchar(100) DEFAULT NULL,
  `d_doctorcertifyingdeath` varchar(100) DEFAULT NULL,
  `d_doctorcontactnumber` varchar(100) DEFAULT NULL,
  `d_doctoraddress` varchar(100) DEFAULT NULL,
  `d_assistantcertifyingdeath` varchar(100) DEFAULT NULL,
  `d_assistantcontactnumber` varchar(100) DEFAULT NULL,
  `d_assistantaddress` varchar(100) DEFAULT NULL,
  `d_buriedorcremate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_death_details`
--

INSERT INTO `r_death_details` (`d_id`, `d_causeofdeath`, `d_dateofdeath`, `d_timeofdeath`, `d_placeofdeath`, `d_doctorcertifyingdeath`, `d_doctorcontactnumber`, `d_doctoraddress`, `d_assistantcertifyingdeath`, `d_assistantcontactnumber`, `d_assistantaddress`, `d_buriedorcremate`) VALUES
(2, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', ''),
(3, 'Anemia', '10/23/2018', 'null', 'Quezon City', 'John Doe', '09142941924', 'null', 'Jane Doe', '0972381381', 'Quezon City', ''),
(4, 'Bone Disease', '10/08/2018', 'null', 'Quezon City', 'John Doe', '09713811871', 'null', 'Jane Doe', '0973811838', 'Quezon City', ''),
(5, 'Heart attck', '02/18/2019', 'null', 'Philippines', 'Jon Doe', '09123891239', 'null', 'Jane Doe', '0972378178`', '123 Ajdjhajd', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_file_details`
--

CREATE TABLE `r_file_details` (
  `f_id` int(10) UNSIGNED NOT NULL,
  `f_file` longblob,
  `f_name` varchar(200) DEFAULT NULL,
  `f_description` varchar(500) DEFAULT NULL,
  `f_type` varchar(100) NOT NULL,
  `f_dateuploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `f_ref_pol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_form_status_details`
--

CREATE TABLE `r_form_status_details` (
  `fs_id` int(10) UNSIGNED NOT NULL,
  `fs_completion` varchar(100) DEFAULT 'Completed',
  `fs_dateformcompleted` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_form_status_details`
--

INSERT INTO `r_form_status_details` (`fs_id`, `fs_completion`, `fs_dateformcompleted`) VALUES
(1, 'Completed', '2018-10-22 00:56'),
(2, 'Completed', '2018-10-22 01:35'),
(3, 'Completed', '2018-10-22 01:52'),
(4, 'Completed', '2018-10-22 01:56'),
(5, 'Completed', '2018-10-22 02:01'),
(6, 'Completed', '2018-10-22 02:05'),
(7, 'Completed', '2018-10-22 02:09'),
(8, 'Completed', '2018-10-24 16:58'),
(9, 'Completed', '2018-10-25 07:31'),
(10, 'Completed', '2018-10-25 09:33'),
(11, 'Completed', '2018-10-25 09:42'),
(12, 'Completed', '2018-10-25 09:44'),
(13, 'Completed', '2019-01-18 09:02');

-- --------------------------------------------------------

--
-- Table structure for table `r_health_details`
--

CREATE TABLE `r_health_details` (
  `hl_id` int(10) UNSIGNED NOT NULL,
  `hl_detailsofillness` varchar(500) DEFAULT NULL,
  `hl_firstconsultation` varchar(100) DEFAULT NULL,
  `hl_symptomsexperienced` varchar(500) DEFAULT NULL,
  `hl_symptomsbegin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_health_details`
--

INSERT INTO `r_health_details` (`hl_id`, `hl_detailsofillness`, `hl_firstconsultation`, `hl_symptomsexperienced`, `hl_symptomsbegin`) VALUES
(1, 'Dehydration, Diarrhea, Loose Bowel Movement', '2018-10-25 09:01', 'Stomachache, Vomitting', '2018-10-25 09:01');

-- --------------------------------------------------------

--
-- Table structure for table `r_hospitalization_details`
--

CREATE TABLE `r_hospitalization_details` (
  `h_id` int(10) UNSIGNED NOT NULL,
  `h_hospitalname` varchar(100) DEFAULT NULL,
  `h_hospitaladdress` varchar(100) DEFAULT NULL,
  `h_dateofadmission` varchar(100) DEFAULT NULL,
  `h_admissionnumber` varchar(100) DEFAULT NULL,
  `h_daysofconfinement` varchar(100) DEFAULT NULL,
  `h_dateofdischarge` varchar(100) DEFAULT NULL,
  `h_roomnumber` varchar(100) DEFAULT NULL,
  `h_finaldiagnosis` varchar(100) DEFAULT NULL,
  `h_doctorincharge` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_hospitalization_details`
--

INSERT INTO `r_hospitalization_details` (`h_id`, `h_hospitalname`, `h_hospitaladdress`, `h_dateofadmission`, `h_admissionnumber`, `h_daysofconfinement`, `h_dateofdischarge`, `h_roomnumber`, `h_finaldiagnosis`, `h_doctorincharge`) VALUES
(1, 'UST Hospital', 'España Blvd, Sampaloc, Manila, 1008 Metro Manila', '10/02/2018', '0001', '3', '10/21/2018', 'A4-003', 'Cancer', 'Cancer'),
(2, 'University of Santo Tomas Hospital', 'España Blvd, Sampaloc, Manila, 1008 Metro Manila', '10/01/2018', '00005', '30', '10/15/2018', 'A4-09', 'Bone Cancer', 'John Doe'),
(3, 'University of Santo Tomas Hospital', 'España Blvd, Sampaloc, Manila, 1008 Metro Manila', '10/10/2018', '00006', '20', '10/22/2018', 'A4-01', 'Cancer', 'John Doe'),
(4, 'University of Santo Tomas Hospital', 'España Blvd, Sampaloc, Manila, 1008 Metro Manila', '10/01/2018', '00007', '30', '10/20/2018', 'AI-06', 'null', 'John Doe'),
(5, 'General Hospital', '134 hsjjsd', '02/01/2019', '9012390', '20', '02/05/2019', '019', '', 'John Doe');

-- --------------------------------------------------------

--
-- Table structure for table `r_life_insured_details`
--

CREATE TABLE `r_life_insured_details` (
  `lid_id` int(10) UNSIGNED NOT NULL,
  `lid_ref_li_id` int(10) UNSIGNED NOT NULL,
  `lid_ref_nmid_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_life_insured_details`
--

INSERT INTO `r_life_insured_details` (`lid_id`, `lid_ref_li_id`, `lid_ref_nmid_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19);

-- --------------------------------------------------------

--
-- Table structure for table `r_life_insured_personal_details`
--

CREATE TABLE `r_life_insured_personal_details` (
  `li_id` int(10) UNSIGNED NOT NULL,
  `li_surname` varchar(100) DEFAULT NULL,
  `li_givenname` varchar(100) DEFAULT NULL,
  `li_middlename` varchar(100) DEFAULT NULL,
  `li_alias` varchar(100) DEFAULT NULL,
  `li_gender` varchar(10) DEFAULT NULL,
  `li_civilstatus` varchar(100) DEFAULT NULL,
  `li_salutation` varchar(100) DEFAULT NULL,
  `li_birthdate` varchar(100) DEFAULT '0000-00-00',
  `li_nationality` varchar(100) DEFAULT NULL,
  `li_placeofbirth` varchar(100) DEFAULT NULL,
  `li_occupation` varchar(100) DEFAULT NULL,
  `li_natureofwork` varchar(100) DEFAULT NULL,
  `li_employer` varchar(100) DEFAULT NULL,
  `li_natureofemployer` varchar(100) DEFAULT NULL,
  `li_annualincome` varchar(20) DEFAULT NULL,
  `li_networth` varchar(20) DEFAULT NULL,
  `li_sourceoffunds` varchar(100) DEFAULT NULL,
  `li_mobilenumber` varchar(100) DEFAULT NULL,
  `li_telephonenumber` varchar(100) DEFAULT NULL,
  `li_emailaddress` varchar(100) DEFAULT NULL,
  `li_presentaddress` varchar(100) DEFAULT NULL,
  `li_presentcountry` varchar(100) DEFAULT NULL,
  `li_presentzipcode` varchar(100) DEFAULT NULL,
  `li_permanentaddress` varchar(100) DEFAULT NULL,
  `li_permanentcountry` varchar(100) DEFAULT NULL,
  `li_permanentzipcode` varchar(100) DEFAULT NULL,
  `li_businessaddress` varchar(100) DEFAULT NULL,
  `li_businesscountry` varchar(100) DEFAULT NULL,
  `li_businesszipcode` varchar(100) DEFAULT NULL,
  `li_rel_to_policyowner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_life_insured_personal_details`
--

INSERT INTO `r_life_insured_personal_details` (`li_id`, `li_surname`, `li_givenname`, `li_middlename`, `li_alias`, `li_gender`, `li_civilstatus`, `li_salutation`, `li_birthdate`, `li_nationality`, `li_placeofbirth`, `li_occupation`, `li_natureofwork`, `li_employer`, `li_natureofemployer`, `li_annualincome`, `li_networth`, `li_sourceoffunds`, `li_mobilenumber`, `li_telephonenumber`, `li_emailaddress`, `li_presentaddress`, `li_presentcountry`, `li_presentzipcode`, `li_permanentaddress`, `li_permanentcountry`, `li_permanentzipcode`, `li_businessaddress`, `li_businesscountry`, `li_businesszipcode`, `li_rel_to_policyowner`) VALUES
(1, 'Labayen', 'Raven', '', '', 'Female', 'Single', '', '2018-10-02', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '0998765432', '', 'rjlabayen@gmail.com', 'Quezon City', 'Philippines', '', '', '', '', '', '', '', 'Employee'),
(2, 'Paler', 'Jade', '', '', 'Female', 'Single', '', '2018-10-15', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '09123456789', '', 'jedpaler@gmail.com', 'Quezon City', 'Philippines', '', '', '', '', '', '', '', 'Employee'),
(3, 'Ronquillo', 'Chesca', '', '', 'Female', 'Single', '', '2018-10-14', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '0998765432', '', 'chesca@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Employee'),
(6, 'Cagulang', 'Anne Nicole', '', '', 'Female', 'Single', '', '2018-10-14', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '0992831912', '', 'annekim@gmail.com', 'Quezon City', 'Philippines', '', '', '', '', '', '', '', 'Employee'),
(7, 'Montano', 'Jasmin', '', '', 'Female', 'Single', '', '2018-10-09', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '0939249842', '', 'jasminmontano@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Employee'),
(8, 'Catap', 'Lowie', '', '', 'Male', 'Single', '', '2018-10-08', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '09713287182', '', 'lowiecatap@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Employee'),
(9, 'Gungab', 'Crystal', '', '', 'Female', 'Single', '', '2018-10-07', '', 'Quezon City', '', '', '', '', '', '', '', '0931837182', '', 'crystalgungab@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Employee'),
(10, 'Bernal', 'Keith', '', '', 'Female', 'Single', '', '2018-10-14', 'Filipino', 'Quezon CIty', '', '', '', '', '', '', '', '0928781272', '02376371', 'kethbernal@gmail.com', 'Quezon CIty', '', '', '', '', '', '', '', '', 'Emplyee'),
(11, '', '', '', '', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '', '', '', '', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '', '', '', '', 'null', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'Asusula', 'Mary Joy', '', '', 'Female', 'Married', '', '2018-10-23', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '', '097263183', 'maryasusula@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Employee'),
(15, 'Andress', 'Mariette', '', '', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 'Geronimo', 'Janae ', '', '', 'Female', 'Single', '', '2018-10-08', 'Filipino', '', '', '', '', '', '', '', '', '', '098738271', 'janae@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Sister'),
(17, 'Gayton', 'Sergio ', '', '', 'Male', 'Single', '', '2018-10-10', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '', '0923871832', 'sergiogayton@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '', 'Brother'),
(18, 'Bing', 'Oda ', '', '', 'Female', 'Single', '', '2018-10-15', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '', '0972818731', 'odabing@gmail.cm', 'Quezon City', '', '', '', '', '', '', '', '', 'Sister'),
(19, 'Bautista', 'Sara', '', '', 'Female', 'Single', '', '2019-01-06', 'American', 'Novaliches, QC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_medical_status_details`
--

CREATE TABLE `r_medical_status_details` (
  `ms_id` int(10) UNSIGNED NOT NULL,
  `ms_completion` varchar(100) DEFAULT NULL,
  `ms_status` varchar(100) DEFAULT NULL,
  `ms_remarks` varchar(500) DEFAULT NULL,
  `ms_dateproceededinmedical` varchar(100) DEFAULT '',
  `ms_datecompletedmedical` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_medical_status_details`
--

INSERT INTO `r_medical_status_details` (`ms_id`, `ms_completion`, `ms_status`, `ms_remarks`, `ms_dateproceededinmedical`, `ms_datecompletedmedical`) VALUES
(1, 'Completed', 'In good health', 'Approve By Medical Department\nThis person is healthy', '2018-10-22 02:16', '2018-10-22 02:19'),
(2, 'Completed', 'In good health', 'This person is healthy\nApproved in medical dept', '2018-10-22 02:16', '2018-10-22 02:19'),
(3, 'In Medical Department', 'In good health', 'Approved in Medical', '2018-10-25 07:32', ''),
(4, 'Pending', 'Pending', '', '', ''),
(5, 'Pending', 'Pending', '', '', ''),
(6, 'In Medical Department', 'Pending', '', '2018-10-25 14:41', ''),
(7, 'Completed', 'In good health', 'Approved in Med dept', '2018-10-25 09:57', '2018-10-25 09:59'),
(8, 'Pending', 'Pending', '', '', ''),
(9, 'Completed', 'In good health', 'Approved in med dept', '2018-10-25 09:58', '2018-10-25 09:59'),
(10, 'Completed', 'In good health', 'Approved in Medical Dept\n', '2018-10-25 09:34', '2018-10-25 09:36'),
(11, 'Completed', 'In poor health', 'Poor health', '2018-10-25 09:48', '2018-10-25 09:52'),
(12, 'Completed', 'In good health', 'In good health\nApproved in medical department', '2018-10-25 09:49', '2018-10-25 09:52'),
(13, 'Pending', 'Pending', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_non_medical_information_details`
--

CREATE TABLE `r_non_medical_information_details` (
  `nmid_id` int(10) UNSIGNED NOT NULL,
  `nmid_height` varchar(100) DEFAULT NULL,
  `nmid_weight` varchar(100) DEFAULT NULL,
  `nmid_1` varchar(100) DEFAULT NULL,
  `nmid_1details` varchar(500) DEFAULT NULL,
  `nmid_2` varchar(100) DEFAULT NULL,
  `nmid_2details` varchar(500) DEFAULT NULL,
  `nmid_3` varchar(100) DEFAULT NULL,
  `nmid_3details` varchar(500) DEFAULT NULL,
  `nmid_4` varchar(100) DEFAULT NULL,
  `nmid_4details` varchar(500) DEFAULT NULL,
  `nmid_5` varchar(100) DEFAULT NULL,
  `nmid_5details` varchar(500) DEFAULT NULL,
  `nmid_6` varchar(100) DEFAULT NULL,
  `nmid_6details` varchar(500) DEFAULT NULL,
  `nmid_7` varchar(100) DEFAULT NULL,
  `nmid_7details` varchar(500) DEFAULT NULL,
  `nmid_8` varchar(100) DEFAULT NULL,
  `nmid_8details` varchar(500) DEFAULT NULL,
  `nmid_9` varchar(100) DEFAULT NULL,
  `nmid_9details` varchar(500) DEFAULT NULL,
  `nmid_10` varchar(100) DEFAULT NULL,
  `nmid_10details` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_non_medical_information_details`
--

INSERT INTO `r_non_medical_information_details` (`nmid_id`, `nmid_height`, `nmid_weight`, `nmid_1`, `nmid_1details`, `nmid_2`, `nmid_2details`, `nmid_3`, `nmid_3details`, `nmid_4`, `nmid_4details`, `nmid_5`, `nmid_5details`, `nmid_6`, `nmid_6details`, `nmid_7`, `nmid_7details`, `nmid_8`, `nmid_8details`, `nmid_9`, `nmid_9details`, `nmid_10`, `nmid_10details`) VALUES
(1, '170', '100', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(2, '160', '90', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(3, '150', '80', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(6, '160', '40', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(7, '170', '150', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(8, '180', '200', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(9, '150', '40', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(10, '160', '100', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(11, '', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', ''),
(12, '', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', ''),
(13, '', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', '', 'null', ''),
(14, '170', '120', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(15, '170', '90', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(16, '180', '100', 'No', '', 'No', '', 'No', '', 'Yes', 'Weekly', 'Yes', 'Everyday', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(17, '170', '100', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(18, '170', '100', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', ''),
(19, '150', '50', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '', 'No', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_plan_details`
--

CREATE TABLE `r_plan_details` (
  `plan_id` int(10) UNSIGNED NOT NULL,
  `plan_name` varchar(100) NOT NULL,
  `plan_description` varchar(500) DEFAULT NULL,
  `plan_period` int(10) DEFAULT NULL,
  `plan_dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plan_datelastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `plan_addedby` varchar(100) DEFAULT NULL,
  `plan_activeflag` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_plan_details`
--

INSERT INTO `r_plan_details` (`plan_id`, `plan_name`, `plan_description`, `plan_period`, `plan_dateadded`, `plan_datelastmodified`, `plan_addedby`, `plan_activeflag`) VALUES
(1, 'La Vie Health Protect', 'La Vie Health Protect', 4, '2018-10-15 16:06:45', '2018-10-17 13:36:27', 'Remmel Ocay', b'1'),
(2, 'La Vie Max Life', 'La Vie Max Life', 8, '2018-10-16 16:06:45', '2018-10-17 13:36:38', 'Remmel Ocay', b'1'),
(3, 'La Vie Assurance', 'La Vie Assurance', 7, '2018-10-25 00:02:40', '2018-10-25 00:02:40', 'Remmel Ocay', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `r_policyowner_details`
--

CREATE TABLE `r_policyowner_details` (
  `p_id` int(10) UNSIGNED NOT NULL,
  `p_clientnumber` varchar(100) NOT NULL,
  `p_surname` varchar(100) DEFAULT NULL,
  `p_givenname` varchar(100) DEFAULT NULL,
  `p_middlename` varchar(100) DEFAULT NULL,
  `p_alias` varchar(100) DEFAULT NULL,
  `p_gender` varchar(10) DEFAULT NULL,
  `p_civilstatus` varchar(10) DEFAULT NULL,
  `p_salutation` varchar(100) DEFAULT NULL,
  `p_birthdate` varchar(100) DEFAULT NULL,
  `p_nationality` varchar(100) DEFAULT NULL,
  `p_placeofbirth` varchar(100) DEFAULT NULL,
  `p_occupation` varchar(100) DEFAULT NULL,
  `p_natureofwork` varchar(100) DEFAULT NULL,
  `p_employer` varchar(100) DEFAULT NULL,
  `p_natureofemployer` varchar(100) DEFAULT NULL,
  `p_annualincome` varchar(20) DEFAULT NULL,
  `p_networth` varchar(20) DEFAULT NULL,
  `p_sourceoffunds` varchar(10) DEFAULT NULL,
  `p_mobilenumber` varchar(100) DEFAULT NULL,
  `p_telephonenumber` varchar(100) DEFAULT NULL,
  `p_emailaddress` varchar(100) DEFAULT NULL,
  `p_presentaddress` varchar(100) DEFAULT NULL,
  `p_presentcountry` varchar(100) DEFAULT NULL,
  `p_presentzipcode` varchar(100) DEFAULT NULL,
  `p_permanentaddress` varchar(100) DEFAULT NULL,
  `p_permanentcountry` varchar(100) DEFAULT NULL,
  `p_permanentzipcode` varchar(100) DEFAULT NULL,
  `p_businessaddress` varchar(100) DEFAULT NULL,
  `p_businesscountry` varchar(100) DEFAULT NULL,
  `p_businesszipcode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_policyowner_details`
--

INSERT INTO `r_policyowner_details` (`p_id`, `p_clientnumber`, `p_surname`, `p_givenname`, `p_middlename`, `p_alias`, `p_gender`, `p_civilstatus`, `p_salutation`, `p_birthdate`, `p_nationality`, `p_placeofbirth`, `p_occupation`, `p_natureofwork`, `p_employer`, `p_natureofemployer`, `p_annualincome`, `p_networth`, `p_sourceoffunds`, `p_mobilenumber`, `p_telephonenumber`, `p_emailaddress`, `p_presentaddress`, `p_presentcountry`, `p_presentzipcode`, `p_permanentaddress`, `p_permanentcountry`, `p_permanentzipcode`, `p_businessaddress`, `p_businesscountry`, `p_businesszipcode`) VALUES
(1, 'CLIENT-001', 'Mape', 'Sheena Mae', '', 'null', 'Female', 'Single', '', '2018-10-05', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '09987654321', '', 'sheenmape09@gmail.com', 'Quezon City', 'Philippines', '', '', '', '', '', '', ''),
(3, 'CLIENT-002', 'Ocay', 'Remmel', '', 'null', 'Male', 'Single', '', '2018-10-07', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '0998634672', '', 'remmelocay@gmail.com', 'Quezon City', '', '', '', '', '', '', '', ''),
(4, 'CLIENT-004', 'Andress', 'Mariette', '', 'null', 'Female', 'Single', '', '2018-10-08', 'Filipino', 'Quezon City', '', '', '', '', '', '', '', '', '0932831823', 'mariette@gmail.com', 'Quezon City', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `r_policyowner_login_details`
--

CREATE TABLE `r_policyowner_login_details` (
  `pl_id` int(10) UNSIGNED NOT NULL,
  `pl_password` varchar(100) DEFAULT NULL,
  `pl_ref_p_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_policyowner_login_details`
--

INSERT INTO `r_policyowner_login_details` (`pl_id`, `pl_password`, `pl_ref_p_id`) VALUES
(1, 'LqLJweprh4nXXSuKOf', 1),
(3, 'S4YjDtC7zSO7jJRVqC', 3),
(4, '7LHLTmlirSvt4UndEp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `r_policy_information_details`
--

CREATE TABLE `r_policy_information_details` (
  `pi_id` int(10) UNSIGNED NOT NULL,
  `pi_ref_plan_id` int(10) UNSIGNED DEFAULT NULL,
  `pi_sumassured` varchar(20) DEFAULT NULL,
  `pi_annualizedpremium` varchar(50) DEFAULT NULL,
  `pi_initialpremiumpaid` varchar(50) DEFAULT NULL,
  `pi_modeofpayment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_policy_information_details`
--

INSERT INTO `r_policy_information_details` (`pi_id`, `pi_ref_plan_id`, `pi_sumassured`, `pi_annualizedpremium`, `pi_initialpremiumpaid`, `pi_modeofpayment`) VALUES
(1, 2, '1000000', '950000', '5000', 'Quarterly'),
(2, 2, '500000', '450000', '5000', 'Monthly'),
(3, 2, '100000', '900000', '10000', 'Quarterly'),
(4, 2, '300000', '250000', '5000', 'Monthly'),
(5, 2, '600000', '550000', '5000', 'Quarterly'),
(6, 2, '500000', '450000', '3000', 'Quarterly'),
(7, 1, '100000', '90000', '2000', 'Monthly'),
(8, 2, '100000', '980000', '10000', 'Quarterly'),
(9, 2, '700000', '670000', '5000', 'Quarterly'),
(10, 3, '200000', '190000', '2000', 'Monthly'),
(11, 3, '200000', '190000', '2000', 'Monthly'),
(12, 3, '200000', '190000', '2000', 'Monthly'),
(13, 1, '200000', '190000', '2000', 'Monthly'),
(14, 1, '1500000', '1000000', '50000', 'Quarterly');

-- --------------------------------------------------------

--
-- Table structure for table `r_requirements_checklist_details`
--

CREATE TABLE `r_requirements_checklist_details` (
  `rc_id` int(10) UNSIGNED NOT NULL,
  `rc_req` varchar(100) DEFAULT NULL,
  `rc_status` varchar(100) DEFAULT NULL,
  `rc_ref_rs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_requirements_checklist_details`
--

INSERT INTO `r_requirements_checklist_details` (`rc_id`, `rc_req`, `rc_status`, `rc_ref_rs_id`) VALUES
(1, '2 Valid IDs', 'checked', 1),
(2, 'NSO or Birth Certificate', '', 1),
(3, 'ID with Address or Proof of Billing', '', 1),
(4, 'Medical Examination Result', '', 1),
(5, 'Try me', '', 1),
(6, '2 Valid IDs', 'checked', 2),
(7, 'NSO or Birth Certificate', 'checked', 2),
(8, 'ID with Address or Proof of Billing', 'checked', 2),
(9, 'Medical Examination Result', 'checked', 2),
(10, '2 Valid IDs', 'checked', 3),
(11, 'NSO or Birth Certificate', 'checked', 3),
(12, 'ID with Address or Proof of Billing', 'checked', 3),
(13, 'Medical Examination Result', 'checked', 3),
(14, '2 Valid IDs', 'checked', 4),
(15, 'NSO or Birth Certificate', 'checked', 4),
(16, 'ID with Address or Proof of Billing', '', 4),
(17, 'Medical Examination Result', '', 4),
(18, '2 Valid IDs', '', 5),
(19, 'NSO or Birth Certificate', '', 5),
(20, 'ID with Address or Proof of Billing', '', 5),
(21, 'Medical Examination Result', '', 5),
(22, '2 Valid IDs', 'checked', 6),
(23, 'NSO or Birth Certificate', 'checked', 6),
(24, 'ID with Address or Proof of Billing', 'checked', 6),
(25, 'Medical Examination Result', 'checked', 6),
(26, '2 Valid IDs', 'checked', 7),
(27, 'NSO or Birth Certificate', 'checked', 7),
(28, 'ID with Address or Proof of Billing', 'checked', 7),
(29, 'Medical Examination Result', 'checked', 7),
(30, '2 Valid IDs', '', 8),
(31, 'NSO or Birth Certificate', '', 8),
(32, 'ID with Address or Proof of Billing', '', 8),
(33, 'Medical Examination Result', '', 8),
(34, '2 Valid IDs', 'checked', 9),
(35, 'NSO or Birth Certificate', 'checked', 9),
(36, 'ID with Address or Proof of Billing', 'checked', 9),
(37, 'Medical Examination Result', 'checked', 9),
(38, '2 Valid IDs', 'checked', 10),
(39, 'NSO or Birth Certificate', 'checked', 10),
(40, 'ID with Address or Proof of Billing', 'checked', 10),
(41, 'Medical Examination Result', 'checked', 10),
(42, '2 Valid IDs', 'checked', 11),
(43, 'NSO or Birth Certificate', 'checked', 11),
(44, 'ID with Address or Proof of Billing', 'checked', 11),
(45, 'Medical Examination Result', 'checked', 11),
(46, '2 Valid IDs', 'checked', 12),
(47, 'NSO or Birth Certificate', 'checked', 12),
(48, 'ID with Address or Proof of Billing', 'checked', 12),
(49, 'Medical Examination Result', 'checked', 12),
(50, '2 Valid IDs', '', 13),
(51, 'NSO or Birth Certificate', '', 13),
(52, 'ID with Address or Proof of Billing', '', 13),
(53, 'Medical Examination Result', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `r_requirements_details`
--

CREATE TABLE `r_requirements_details` (
  `req_id` int(10) UNSIGNED NOT NULL,
  `req_name` varchar(100) DEFAULT NULL,
  `req_description` varchar(500) DEFAULT NULL,
  `req_dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `req_datelastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `req_addedby` varchar(100) DEFAULT NULL,
  `req_activeflag` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_requirements_details`
--

INSERT INTO `r_requirements_details` (`req_id`, `req_name`, `req_description`, `req_dateadded`, `req_datelastmodified`, `req_addedby`, `req_activeflag`) VALUES
(4, '2 Valid IDs', 'Company ID, SSS, TIN, Passport, Drivers License', '2018-10-17 04:32:03', '2018-10-17 04:32:03', 'Remmel Ocay', b'1'),
(5, 'NSO or Birth Certificate', '', '2018-10-17 04:33:25', '2018-10-17 13:43:55', 'Remmel Ocay', b'1'),
(6, 'ID with Address or Proof of Billing', 'Water Bill, Electric Bill,  Internet Bill, Phone Bill', '2018-10-17 04:36:16', '2018-10-17 04:36:16', 'Remmel Ocay', b'1'),
(7, 'Medical Examination Result', '', '2018-10-17 04:36:58', '2018-10-17 13:43:46', 'Remmel Ocay', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `r_requirements_status_details`
--

CREATE TABLE `r_requirements_status_details` (
  `rs_id` int(10) UNSIGNED NOT NULL,
  `rs_completion` varchar(100) DEFAULT NULL,
  `rs_datereqcompleted` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_requirements_status_details`
--

INSERT INTO `r_requirements_status_details` (`rs_id`, `rs_completion`, `rs_datereqcompleted`) VALUES
(1, 'Pending', NULL),
(2, 'Pending', NULL),
(3, 'Pending', NULL),
(4, 'Pending', NULL),
(5, 'Pending', NULL),
(6, 'Pending', NULL),
(7, 'Pending', NULL),
(8, 'Pending', NULL),
(9, 'Pending', NULL),
(10, 'Pending', NULL),
(11, 'Pending', NULL),
(12, 'Pending', NULL),
(13, 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `r_system_user_details`
--

CREATE TABLE `r_system_user_details` (
  `sud_id` int(10) UNSIGNED NOT NULL,
  `sud_department` varchar(100) DEFAULT NULL,
  `sud_usertype` varchar(100) DEFAULT NULL,
  `sud_ref_supd_id` int(10) UNSIGNED NOT NULL,
  `sud_ref_suld_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_system_user_details`
--

INSERT INTO `r_system_user_details` (`sud_id`, `sud_department`, `sud_usertype`, `sud_ref_supd_id`, `sud_ref_suld_id`) VALUES
(1, 'Maintenance', 'Admin', 1, 1),
(3, 'Maintenance', 'Admin', 3, 3),
(5, 'Agent', 'Agent', 5, 5),
(6, 'Cashier', 'Manager', 6, 6),
(7, 'Cash Disbursement', 'Manager', 7, 7),
(8, 'Claiming', 'Manager', 8, 8),
(9, 'Claiming', 'Claiming Officer', 9, 9),
(10, 'Legal', 'Manager', 10, 10),
(11, 'Legal', 'Legal Staff', 11, 11),
(12, 'Medical', 'Manager', 12, 12),
(13, 'Medical', 'Medical Staff', 13, 13),
(14, 'Underwriting', 'Manager', 14, 14),
(15, 'Underwriting', 'Underwriter', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `r_system_user_login_details`
--

CREATE TABLE `r_system_user_login_details` (
  `suld_id` int(10) UNSIGNED NOT NULL,
  `suld_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_system_user_login_details`
--

INSERT INTO `r_system_user_login_details` (`suld_id`, `suld_password`) VALUES
(1, '31MRI1HJ7FW8YSIVTA'),
(2, 'eQT7HjA6eQ45Jio6dC'),
(3, 'rLdCGkNamd432L0WgH'),
(4, 'lsM1vswxcWn1ZSrRog'),
(5, 'JfutCqhJNd7T4Pf3X4'),
(6, 'NsfEYZvUsgpcg5qsQ5'),
(7, 'gyUM6Sjkm8XsSAzQsq'),
(8, 'C0WBCZijqilXGNzE7O'),
(9, 'peE7Gypu97gK1ISDFW'),
(10, '9TT0sBiCHlIuW6s531'),
(11, 'dhxzF9okGh26ZOY54O'),
(12, 'mx6JfWlptPPOjom8vO'),
(13, 'EFPcBaBZ6ThpiVSsZh'),
(14, 's3cgPpZZAPupILDEVI'),
(15, 'jNl2mrQhpNpL6uiYs5');

-- --------------------------------------------------------

--
-- Table structure for table `r_system_user_log_details`
--

CREATE TABLE `r_system_user_log_details` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_ref_sud_id` int(10) UNSIGNED NOT NULL,
  `log_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_system_user_log_details`
--

INSERT INTO `r_system_user_log_details` (`log_id`, `log_ref_sud_id`, `log_time`) VALUES
(2, 1, '2018-10-10 00:00:00'),
(3, 1, '2018-10-15 00:13:59'),
(4, 1, '2018-10-15 00:14:45'),
(5, 1, '2018-10-15 00:19:56'),
(6, 1, '2018-10-15 00:20:12'),
(7, 1, '2018-10-15 18:14:20'),
(8, 1, '2018-10-15 20:54:43'),
(9, 1, '2018-10-16 18:09:56'),
(10, 1, '2018-10-16 18:28:28'),
(11, 1, '2018-10-16 19:57:23'),
(12, 1, '2018-10-16 23:55:45'),
(13, 1, '2018-10-17 11:57:07'),
(14, 1, '2018-10-17 12:16:39'),
(15, 1, '2018-10-17 12:53:15'),
(16, 1, '2018-10-17 13:18:33'),
(17, 14, '2018-10-17 13:19:19'),
(18, 14, '2018-10-17 13:21:31'),
(19, 14, '2018-10-17 13:21:46'),
(20, 14, '2018-10-17 15:00:38'),
(21, 14, '2018-10-17 15:00:38'),
(22, 14, '2018-10-17 16:37:59'),
(23, 1, '2018-10-17 21:12:53'),
(24, 1, '2018-10-17 22:28:59'),
(25, 1, '2018-10-17 22:48:45'),
(26, 14, '2018-10-18 00:44:44'),
(27, 1, '2018-10-18 01:36:27'),
(28, 14, '2018-10-18 14:01:29'),
(29, 14, '2018-10-18 14:42:25'),
(30, 14, '2018-10-18 15:11:11'),
(31, 14, '2018-10-18 17:16:21'),
(32, 14, '2018-10-18 21:58:21'),
(33, 14, '2018-10-19 00:19:15'),
(34, 14, '2018-10-19 00:45:05'),
(35, 14, '2018-10-19 01:05:01'),
(36, 14, '2018-10-19 03:48:41'),
(37, 14, '2018-10-19 03:57:56'),
(38, 12, '2018-10-19 03:58:31'),
(39, 12, '2018-10-19 04:08:35'),
(40, 14, '2018-10-19 04:08:54'),
(41, 12, '2018-10-19 05:24:26'),
(42, 12, '2018-10-19 11:47:10'),
(43, 12, '2018-10-19 12:13:44'),
(44, 12, '2018-10-20 00:33:26'),
(45, 14, '2018-10-20 02:24:27'),
(46, 14, '2018-10-20 15:10:22'),
(47, 14, '2018-10-20 15:15:57'),
(48, 14, '2018-10-20 18:12:10'),
(49, 14, '2018-10-20 18:53:22'),
(50, 14, '2018-10-20 19:32:57'),
(51, 14, '2018-10-20 20:10:27'),
(52, 14, '2018-10-20 20:46:45'),
(53, 14, '2018-10-20 22:15:55'),
(54, 14, '2018-10-20 23:02:30'),
(55, 14, '2018-10-20 23:51:35'),
(56, 14, '2018-10-21 20:09:44'),
(57, 14, '2018-10-21 21:15:53'),
(58, 12, '2018-10-21 21:56:18'),
(59, 12, '2018-10-21 22:05:54'),
(60, 14, '2018-10-21 22:06:23'),
(61, 12, '2018-10-21 22:09:18'),
(62, 14, '2018-10-21 23:27:17'),
(63, 14, '2018-10-22 00:48:38'),
(64, 12, '2018-10-22 02:17:20'),
(65, 14, '2018-10-22 02:19:36'),
(66, 6, '2018-10-22 02:30:13'),
(67, 8, '2018-10-22 16:52:54'),
(68, 1, '2018-10-22 23:57:19'),
(69, 1, '2018-10-23 00:19:47'),
(70, 1, '2018-10-23 01:19:13'),
(71, 8, '2018-10-23 01:47:28'),
(72, 8, '2018-10-23 02:17:14'),
(73, 8, '2018-10-23 08:18:38'),
(74, 8, '2018-10-23 08:53:45'),
(75, 8, '2018-10-23 09:14:59'),
(76, 8, '2018-10-23 09:28:33'),
(77, 8, '2018-10-23 15:53:04'),
(78, 10, '2018-10-23 16:21:33'),
(79, 8, '2018-10-23 16:25:11'),
(80, 8, '2018-10-23 16:25:41'),
(81, 8, '2018-10-23 16:27:37'),
(82, 10, '2018-10-23 16:35:43'),
(83, 10, '2018-10-23 20:21:03'),
(84, 8, '2018-10-23 20:31:31'),
(85, 8, '2018-10-23 23:08:51'),
(86, 8, '2018-10-24 01:16:59'),
(87, 10, '2018-10-24 01:19:14'),
(88, 10, '2018-10-24 09:37:44'),
(89, 8, '2018-10-24 10:33:13'),
(90, 10, '2018-10-24 10:33:44'),
(91, 8, '2018-10-24 11:43:45'),
(92, 8, '2018-10-24 13:04:54'),
(93, 8, '2018-10-24 13:05:06'),
(94, 6, '2018-10-24 15:44:34'),
(95, 6, '2018-10-24 15:48:07'),
(96, 6, '2018-10-24 15:53:11'),
(97, 7, '2018-10-24 15:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `r_system_user_personal_details`
--

CREATE TABLE `r_system_user_personal_details` (
  `supd_id` int(10) UNSIGNED NOT NULL,
  `supd_employeenumber` varchar(100) DEFAULT NULL,
  `supd_name` varchar(100) DEFAULT NULL,
  `supd_appointmentdate` date DEFAULT NULL,
  `supd_gender` varchar(100) DEFAULT NULL,
  `supd_civilstatus` varchar(100) DEFAULT NULL,
  `supd_emailaddress` varchar(100) DEFAULT NULL,
  `supd_address` varchar(500) DEFAULT NULL,
  `supd_telephonenumber` varchar(100) DEFAULT NULL,
  `supd_mobilenumber` varchar(100) DEFAULT NULL,
  `supd_addedby` varchar(100) DEFAULT NULL,
  `supd_dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supd_datelastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `supd_activeflag` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_system_user_personal_details`
--

INSERT INTO `r_system_user_personal_details` (`supd_id`, `supd_employeenumber`, `supd_name`, `supd_appointmentdate`, `supd_gender`, `supd_civilstatus`, `supd_emailaddress`, `supd_address`, `supd_telephonenumber`, `supd_mobilenumber`, `supd_addedby`, `supd_dateadded`, `supd_datelastmodified`, `supd_activeflag`) VALUES
(1, 'ADMIN-001', 'Remmel Ocay', '2018-10-02', 'Male', 'Single', 'remmelocay2000@gmail.com', 'Quezon City', '021234567', '09123456789', 'Administrator', '2018-10-11 10:02:45', '2018-10-17 16:06:29', b'1'),
(3, 'ADMIN-002', 'Jade Paler', '2018-10-02', 'Female', '', 'jadepaler@gmail..com', 'Quezon City', '027654321', '09987654321', 'Remmel Ocay', '2018-10-15 10:43:20', '2018-10-17 15:59:07', b'1'),
(4, 'ADMIN-003', 'Sheena Mae Mape', '2018-10-02', 'Female', 'Single', 'shen@gamil.com', '#123 Qwert Street', '029876543', '09987654321', 'Remmel Ocay', '2018-10-16 10:29:29', '2018-10-16 10:29:29', b'1'),
(5, 'AGENT-001', 'Malene Dizon', '2018-10-02', 'Female', 'Single', 'malene@gmail.com', '#123 Qwerty', '02234567', '09987654321', 'Remmel Ocay', '2018-10-16 12:18:16', '2018-10-16 12:18:16', b'1'),
(6, 'CASHIER-001', 'Sheena Mape', '2018-10-02', 'Female', 'Single', 'sheenmape@gmail.com', '#098 Asdfghj', '029876543', '09987654321', 'Remmel Ocay', '2018-10-16 12:37:01', '2018-10-16 12:37:01', b'1'),
(7, 'CASHIER-002', 'Anne Kim', '2018-10-09', 'Female', 'Single', 'annekim@gmail.com', '#456 New Zealand', '02989784', '0922334872', 'Remmel Ocay', '2018-10-16 12:54:32', '2018-10-16 12:54:32', b'1'),
(8, 'CLAIMING-001', 'Raven Labayen', '2018-10-01', 'Female', '', 'ravenlabayen@gmail.com', '#777 Quezon City', '023344556', '09223344556', 'Remmel Ocay', '2018-10-16 13:04:50', '2018-10-16 13:05:10', b'1'),
(9, 'CLAIMING-002', 'Jade Paler', '2018-10-01', 'Female', 'Single', 'jedplr@gmail.com', '#333 Fairview Dahlia QC', '02112233', '09112288877', 'Remmel Ocay', '2018-10-16 13:06:23', '2018-10-16 13:06:23', b'1'),
(10, 'LEGAL-001', 'Chesca Ronquillo', '2018-09-04', 'Female', 'Single', 'chescaronq@gmail.com', '#123 North Fairview', '028877334', '09192837433', 'Remmel Ocay', '2018-10-16 13:10:30', '2018-10-16 13:10:30', b'1'),
(11, 'LEGAL-002', 'Sara Bautista', '2018-09-11', 'Female', 'Married', 'sarabautista@gmail.com', '#001 Novaliches Bayan', '02134568', '0997688321', 'Remmel Ocay', '2018-10-16 13:11:43', '2018-10-16 13:11:43', b'1'),
(12, 'MEDICAL-001', 'Remmel Ocay', '2018-10-07', 'Male', 'Single', 'remmelocay@gmail.com', '#888 Quezon City', '', '0922377682', 'Remmel Ocay', '2018-10-16 13:14:24', '2018-10-16 13:14:24', b'1'),
(13, 'MEDICAL-002', 'John Rey Diesta', '2018-10-12', 'Male', 'Single', 'johnrey@gmail.com', '#003 Quezon City', '', '09934552611', 'Remmel Ocay', '2018-10-16 13:15:19', '2018-10-16 13:15:19', b'1'),
(14, 'UNDERWRITING-001', 'John Doe', '2018-10-08', 'Male', '', 'johndoe@gmail.com', '#123 New York City', '', '09887653422', 'Remmel Ocay', '2018-10-16 13:18:21', '2018-10-16 13:18:21', b'1'),
(15, 'UNDERWRITING-002', 'Jane Doe', '2018-10-05', 'Female', 'Single', 'janedoe@gmail.com', '#123 New York City', '', '09776523621', 'Remmel Ocay', '2018-10-16 13:19:16', '2018-10-16 13:19:16', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `t_application_form_details`
--

CREATE TABLE `t_application_form_details` (
  `af_id` int(10) UNSIGNED NOT NULL,
  `af_applicationnumber` varchar(20) DEFAULT NULL,
  `af_dateapplied` varchar(20) DEFAULT NULL,
  `af_ref_pol_id` int(10) UNSIGNED NOT NULL,
  `af_ref_sud_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_application_form_details`
--

INSERT INTO `t_application_form_details` (`af_id`, `af_applicationnumber`, `af_dateapplied`, `af_ref_pol_id`, `af_ref_sud_id`) VALUES
(1, '00001', '2018-10-22', 1, 14),
(2, '00002', '2018-10-22', 2, 14),
(3, '00003', '2018-10-22', 3, 14),
(4, '00004', '2018-10-22', 4, 14),
(5, '00005', '2018-10-21', 5, 14),
(6, '00006', '2018-10-22', 6, 14),
(7, '00007', '2018-10-22', 7, 14),
(8, '00010', '2018-10-24', 8, 14),
(9, '00011', '2018-10-16', 9, 14),
(10, '00013', '2018-10-23', 10, 14),
(11, '00014', '2018-10-22', 11, 14),
(12, '00015', '2018-10-24', 12, 14),
(13, '00100', '2019-01-18', 13, 14);

-- --------------------------------------------------------

--
-- Table structure for table `t_claiming_details`
--

CREATE TABLE `t_claiming_details` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `c_ref_dc_id` int(10) DEFAULT NULL,
  `c_ref_ci_id` int(10) DEFAULT NULL,
  `c_ref_a_id` int(10) DEFAULT NULL,
  `c_typeofclaim` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_claiming_details`
--

INSERT INTO `t_claiming_details` (`c_id`, `c_ref_dc_id`, `c_ref_ci_id`, `c_ref_a_id`, `c_typeofclaim`) VALUES
(1, 1, NULL, NULL, 'Death Claim'),
(2, 2, NULL, NULL, 'Death Claim'),
(3, NULL, 1, NULL, 'Critical Illness'),
(4, NULL, NULL, 2, 'Accident'),
(5, 3, NULL, NULL, 'Death Claim'),
(7, NULL, 2, NULL, 'Critical Illness'),
(8, NULL, NULL, 6, 'Accident'),
(9, 4, NULL, NULL, 'Death Claim');

-- --------------------------------------------------------

--
-- Table structure for table `t_claim_status_details`
--

CREATE TABLE `t_claim_status_details` (
  `cs_id` int(10) UNSIGNED NOT NULL,
  `cs_ref_c_id` int(10) UNSIGNED NOT NULL,
  `cs_ref_cfs_id` int(10) UNSIGNED NOT NULL,
  `cs_ref_crs_id` int(10) UNSIGNED NOT NULL,
  `cs_ref_cls_id` int(10) UNSIGNED NOT NULL,
  `cs_ref_cas_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_claim_status_details`
--

INSERT INTO `t_claim_status_details` (`cs_id`, `cs_ref_c_id`, `cs_ref_cfs_id`, `cs_ref_crs_id`, `cs_ref_cls_id`, `cs_ref_cas_id`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3),
(4, 4, 4, 4, 4, 4),
(5, 5, 10, 6, 5, 5),
(6, 7, 11, 7, 6, 6),
(7, 8, 12, 8, 7, 7),
(8, 9, 13, 9, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `t_payment_details`
--

CREATE TABLE `t_payment_details` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_amount` varchar(100) DEFAULT NULL,
  `payment_due_date` varchar(100) DEFAULT NULL,
  `payment_date_of_payment` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `payment_ref_pol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_payment_details`
--

INSERT INTO `t_payment_details` (`payment_id`, `payment_amount`, `payment_due_date`, `payment_date_of_payment`, `payment_method`, `payment_status`, `payment_ref_pol_id`) VALUES
(1, '237500', '2019-01-31', '2018-10-24 15:47', 'Paypal', 'Paid', 1),
(2, '237500', '2019-04-30', '2018-10-25 08:54', 'Paypal', 'Paid', 1),
(3, '237500', '2019-07-31', NULL, '', 'Pending', 1),
(4, '237500', '2019-10-31', NULL, '', 'Pending', 1),
(5, '37500', '2018-10-31', NULL, '', 'Pending', 2),
(6, '37500', '2018-11-30', NULL, '', 'Pending', 2),
(7, '37500', '2018-12-31', NULL, '', 'Pending', 2),
(8, '37500', '2019-01-31', NULL, '', 'Pending', 2),
(9, '37500', '2019-02-28', NULL, '', 'Pending', 2),
(10, '37500', '2019-03-31', NULL, '', 'Pending', 2),
(11, '37500', '2019-04-30', NULL, '', 'Pending', 2),
(12, '37500', '2019-05-31', NULL, '', 'Pending', 2),
(13, '37500', '2019-06-30', NULL, '', 'Pending', 2),
(14, '37500', '2019-07-31', NULL, '', 'Pending', 2),
(15, '37500', '2019-08-31', NULL, '', 'Pending', 2),
(16, '37500', '2019-09-30', NULL, '', 'Pending', 2),
(17, '15833', '2018-10-31', NULL, '', 'Pending', 10),
(18, '15833', '2018-11-30', NULL, '', 'Pending', 10),
(19, '15833', '2018-12-31', NULL, '', 'Pending', 10),
(20, '15833', '2019-01-31', NULL, '', 'Pending', 10),
(21, '15833', '2019-02-28', NULL, '', 'Pending', 10),
(22, '15833', '2019-03-31', NULL, '', 'Pending', 10),
(23, '15833', '2019-04-30', NULL, '', 'Pending', 10),
(24, '15833', '2019-05-31', NULL, '', 'Pending', 10),
(25, '15833', '2019-06-30', NULL, '', 'Pending', 10),
(26, '15833', '2019-07-31', NULL, '', 'Pending', 10),
(27, '15833', '2019-08-31', NULL, '', 'Pending', 10),
(28, '15833', '2019-09-30', NULL, '', 'Pending', 10),
(29, '15833', '2018-10-31', NULL, '', 'Pending', 12),
(30, '15833', '2018-11-30', NULL, '', 'Pending', 12),
(31, '15833', '2018-12-31', NULL, '', 'Pending', 12),
(32, '15833', '2019-01-31', NULL, '', 'Pending', 12),
(33, '15833', '2019-02-28', NULL, '', 'Pending', 12),
(34, '15833', '2019-03-31', NULL, '', 'Pending', 12),
(35, '15833', '2019-04-30', NULL, '', 'Pending', 12),
(36, '15833', '2019-05-31', NULL, '', 'Pending', 12),
(37, '15833', '2019-06-30', NULL, '', 'Pending', 12),
(38, '15833', '2019-07-31', NULL, '', 'Pending', 12),
(39, '15833', '2019-08-31', NULL, '', 'Pending', 12),
(40, '15833', '2019-09-30', NULL, '', 'Pending', 12),
(41, '7500', '2018-10-31', NULL, '', 'Pending', 7),
(42, '7500', '2018-11-30', NULL, '', 'Pending', 7),
(43, '7500', '2018-12-31', NULL, '', 'Pending', 7),
(44, '7500', '2019-01-31', NULL, '', 'Pending', 7),
(45, '7500', '2019-02-28', NULL, '', 'Pending', 7),
(46, '7500', '2019-03-31', NULL, '', 'Pending', 7),
(47, '7500', '2019-04-30', NULL, '', 'Pending', 7),
(48, '7500', '2019-05-31', NULL, '', 'Pending', 7),
(49, '7500', '2019-06-30', NULL, '', 'Pending', 7),
(50, '7500', '2019-07-31', NULL, '', 'Pending', 7),
(51, '7500', '2019-08-31', NULL, '', 'Pending', 7),
(52, '7500', '2019-09-30', NULL, '', 'Pending', 7),
(53, '167500', '2019-01-31', NULL, '', 'Pending', 9),
(54, '167500', '2019-04-30', NULL, '', 'Pending', 9),
(55, '167500', '2019-07-31', NULL, '', 'Pending', 9),
(56, '167500', '2019-10-31', NULL, '', 'Pending', 9);

-- --------------------------------------------------------

--
-- Table structure for table `t_policy_details`
--

CREATE TABLE `t_policy_details` (
  `pol_id` int(10) UNSIGNED NOT NULL,
  `pol_ref_ai_id` int(10) UNSIGNED DEFAULT NULL,
  `pol_ref_li_id` int(10) UNSIGNED NOT NULL,
  `pol_ref_p_id` int(10) UNSIGNED NOT NULL,
  `pol_ref_pi_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_policy_details`
--

INSERT INTO `t_policy_details` (`pol_id`, `pol_ref_ai_id`, `pol_ref_li_id`, `pol_ref_p_id`, `pol_ref_pi_id`) VALUES
(1, 5, 1, 1, 1),
(2, 5, 2, 1, 2),
(3, 5, 3, 1, 3),
(4, 5, 6, 1, 4),
(5, 5, 7, 3, 5),
(6, 5, 8, 1, 6),
(7, 5, 9, 3, 7),
(8, 5, 10, 3, 8),
(9, 5, 14, 3, 9),
(10, 5, 15, 4, 10),
(11, 5, 16, 4, 11),
(12, 5, 17, 4, 12),
(13, 5, 19, 4, 14);

-- --------------------------------------------------------

--
-- Table structure for table `t_policy_status_details`
--

CREATE TABLE `t_policy_status_details` (
  `ps_id` int(10) UNSIGNED NOT NULL,
  `ps_ref_fs_id` int(10) UNSIGNED NOT NULL,
  `ps_ref_rs_id` int(10) UNSIGNED NOT NULL,
  `ps_ref_ms_id` int(10) UNSIGNED NOT NULL,
  `ps_ref_as_id` int(10) UNSIGNED NOT NULL,
  `ps_ref_pol_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_policy_status_details`
--

INSERT INTO `t_policy_status_details` (`ps_id`, `ps_ref_fs_id`, `ps_ref_rs_id`, `ps_ref_ms_id`, `ps_ref_as_id`, `ps_ref_pol_id`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3),
(4, 4, 4, 4, 4, 4),
(5, 5, 5, 5, 5, 5),
(6, 6, 6, 6, 6, 6),
(7, 7, 7, 7, 7, 7),
(8, 8, 8, 8, 8, 8),
(9, 9, 9, 9, 9, 9),
(10, 10, 10, 10, 10, 10),
(11, 11, 11, 11, 11, 11),
(12, 12, 12, 12, 12, 12),
(13, 13, 13, 13, 13, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `r_accident_details`
--
ALTER TABLE `r_accident_details`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `a_ref_pol_id` (`a_ref_pol_id`),
  ADD KEY `a_ref_ai_id` (`a_ref_ai_id`),
  ADD KEY `a_ref_h_id` (`a_ref_h_id`);

--
-- Indexes for table `r_accident_info_details`
--
ALTER TABLE `r_accident_info_details`
  ADD PRIMARY KEY (`ai_id`);

--
-- Indexes for table `r_approval_status_details`
--
ALTER TABLE `r_approval_status_details`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `r_audit_trail_details`
--
ALTER TABLE `r_audit_trail_details`
  ADD PRIMARY KEY (`at_id`),
  ADD KEY `at_ref_sud_id` (`at_ref_sud_id`);

--
-- Indexes for table `r_beneficiary_details`
--
ALTER TABLE `r_beneficiary_details`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `b_ref_li_id` (`b_ref_lid_id`);

--
-- Indexes for table `r_benefit_details`
--
ALTER TABLE `r_benefit_details`
  ADD PRIMARY KEY (`benefit_id`),
  ADD KEY `r_benefit_details_ibfk_1` (`benefit_ref_pi_id`);

--
-- Indexes for table `r_claiming_or_details`
--
ALTER TABLE `r_claiming_or_details`
  ADD PRIMARY KEY (`cod_id`),
  ADD KEY `cod_ref_c_id` (`cod_ref_c_id`);

--
-- Indexes for table `r_claiming_requirements_details`
--
ALTER TABLE `r_claiming_requirements_details`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `r_claim_approval_status_details`
--
ALTER TABLE `r_claim_approval_status_details`
  ADD PRIMARY KEY (`cas_id`);

--
-- Indexes for table `r_claim_form_status_details`
--
ALTER TABLE `r_claim_form_status_details`
  ADD PRIMARY KEY (`cfs_id`);

--
-- Indexes for table `r_claim_legal_status_details`
--
ALTER TABLE `r_claim_legal_status_details`
  ADD PRIMARY KEY (`cls_id`);

--
-- Indexes for table `r_claim_requirements_checklist_details`
--
ALTER TABLE `r_claim_requirements_checklist_details`
  ADD PRIMARY KEY (`crc_id`),
  ADD KEY `crc_ref_crs_id` (`crc_ref_crs_id`);

--
-- Indexes for table `r_claim_requirements_status_details`
--
ALTER TABLE `r_claim_requirements_status_details`
  ADD PRIMARY KEY (`crs_id`);

--
-- Indexes for table `r_critical_illness_details`
--
ALTER TABLE `r_critical_illness_details`
  ADD PRIMARY KEY (`ci_id`),
  ADD KEY `ci_ref_cih_id` (`ci_ref_h_id`),
  ADD KEY `ci_ref_pol_id` (`ci_ref_pol_id`),
  ADD KEY `ci_ref_hl_id` (`ci_ref_hl_id`);

--
-- Indexes for table `r_death_claim_details`
--
ALTER TABLE `r_death_claim_details`
  ADD PRIMARY KEY (`dc_id`),
  ADD KEY `dc_ref_pol_id` (`dc_ref_pol_id`),
  ADD KEY `dc_ref_d_id` (`dc_ref_d_id`),
  ADD KEY `dc_ref_h_id` (`dc_ref_h_id`);

--
-- Indexes for table `r_death_details`
--
ALTER TABLE `r_death_details`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `r_file_details`
--
ALTER TABLE `r_file_details`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `f_ref_c_id` (`f_ref_pol_id`);

--
-- Indexes for table `r_form_status_details`
--
ALTER TABLE `r_form_status_details`
  ADD PRIMARY KEY (`fs_id`);

--
-- Indexes for table `r_health_details`
--
ALTER TABLE `r_health_details`
  ADD PRIMARY KEY (`hl_id`);

--
-- Indexes for table `r_hospitalization_details`
--
ALTER TABLE `r_hospitalization_details`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `r_life_insured_details`
--
ALTER TABLE `r_life_insured_details`
  ADD PRIMARY KEY (`lid_id`),
  ADD KEY `lid_ref_li_id` (`lid_ref_li_id`),
  ADD KEY `lid_ref_nmid_id` (`lid_ref_nmid_id`);

--
-- Indexes for table `r_life_insured_personal_details`
--
ALTER TABLE `r_life_insured_personal_details`
  ADD PRIMARY KEY (`li_id`);

--
-- Indexes for table `r_medical_status_details`
--
ALTER TABLE `r_medical_status_details`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `r_non_medical_information_details`
--
ALTER TABLE `r_non_medical_information_details`
  ADD PRIMARY KEY (`nmid_id`);

--
-- Indexes for table `r_plan_details`
--
ALTER TABLE `r_plan_details`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `r_policyowner_details`
--
ALTER TABLE `r_policyowner_details`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `r_policyowner_login_details`
--
ALTER TABLE `r_policyowner_login_details`
  ADD PRIMARY KEY (`pl_id`),
  ADD KEY `cl_ref_c_id` (`pl_ref_p_id`);

--
-- Indexes for table `r_policy_information_details`
--
ALTER TABLE `r_policy_information_details`
  ADD PRIMARY KEY (`pi_id`),
  ADD KEY `pi_ref_plan_id` (`pi_ref_plan_id`);

--
-- Indexes for table `r_requirements_checklist_details`
--
ALTER TABLE `r_requirements_checklist_details`
  ADD PRIMARY KEY (`rc_id`),
  ADD KEY `rc_ref_rs_id` (`rc_ref_rs_id`);

--
-- Indexes for table `r_requirements_details`
--
ALTER TABLE `r_requirements_details`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `r_requirements_status_details`
--
ALTER TABLE `r_requirements_status_details`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `r_system_user_details`
--
ALTER TABLE `r_system_user_details`
  ADD PRIMARY KEY (`sud_id`),
  ADD KEY `sud_ref_supd_id` (`sud_ref_supd_id`),
  ADD KEY `sud_ref_suld_id` (`sud_ref_suld_id`);

--
-- Indexes for table `r_system_user_login_details`
--
ALTER TABLE `r_system_user_login_details`
  ADD PRIMARY KEY (`suld_id`);

--
-- Indexes for table `r_system_user_log_details`
--
ALTER TABLE `r_system_user_log_details`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_ref_sud_id` (`log_ref_sud_id`);

--
-- Indexes for table `r_system_user_personal_details`
--
ALTER TABLE `r_system_user_personal_details`
  ADD PRIMARY KEY (`supd_id`);

--
-- Indexes for table `t_application_form_details`
--
ALTER TABLE `t_application_form_details`
  ADD PRIMARY KEY (`af_id`),
  ADD KEY `af_ref_pol_id` (`af_ref_pol_id`),
  ADD KEY `af_ref_sud_id` (`af_ref_sud_id`);

--
-- Indexes for table `t_claiming_details`
--
ALTER TABLE `t_claiming_details`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `cf_ref_dcf_id` (`c_ref_dc_id`),
  ADD KEY `cf_ref_cif_id` (`c_ref_ci_id`),
  ADD KEY `cf_ref_caf_id` (`c_ref_a_id`);

--
-- Indexes for table `t_claim_status_details`
--
ALTER TABLE `t_claim_status_details`
  ADD PRIMARY KEY (`cs_id`),
  ADD KEY `cs_ref_c_id` (`cs_ref_c_id`),
  ADD KEY `cs_ref_cfs_id` (`cs_ref_cfs_id`),
  ADD KEY `cs_ref_crs_id` (`cs_ref_crs_id`),
  ADD KEY `cs_ref_cls_id` (`cs_ref_cls_id`),
  ADD KEY `cs_ref_cas_id` (`cs_ref_cas_id`);

--
-- Indexes for table `t_payment_details`
--
ALTER TABLE `t_payment_details`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_ref_c_id` (`payment_ref_pol_id`);

--
-- Indexes for table `t_policy_details`
--
ALTER TABLE `t_policy_details`
  ADD PRIMARY KEY (`pol_id`),
  ADD KEY `c_ref_ai_id` (`pol_ref_ai_id`),
  ADD KEY `c_ref_li_id` (`pol_ref_li_id`),
  ADD KEY `c_ref_pi_id` (`pol_ref_pi_id`),
  ADD KEY `c_ref_p_id` (`pol_ref_p_id`);

--
-- Indexes for table `t_policy_status_details`
--
ALTER TABLE `t_policy_status_details`
  ADD PRIMARY KEY (`ps_id`),
  ADD KEY `ps_ref_pol_id` (`ps_ref_pol_id`),
  ADD KEY `ps_ref_as_id` (`ps_ref_as_id`),
  ADD KEY `ps_ref_fs_id` (`ps_ref_fs_id`),
  ADD KEY `ps_ref_ms_id` (`ps_ref_ms_id`),
  ADD KEY `ps_ref_rs_id` (`ps_ref_rs_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `r_accident_details`
--
ALTER TABLE `r_accident_details`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `r_accident_info_details`
--
ALTER TABLE `r_accident_info_details`
  MODIFY `ai_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `r_approval_status_details`
--
ALTER TABLE `r_approval_status_details`
  MODIFY `as_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `r_audit_trail_details`
--
ALTER TABLE `r_audit_trail_details`
  MODIFY `at_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `r_beneficiary_details`
--
ALTER TABLE `r_beneficiary_details`
  MODIFY `b_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `r_benefit_details`
--
ALTER TABLE `r_benefit_details`
  MODIFY `benefit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `r_claiming_or_details`
--
ALTER TABLE `r_claiming_or_details`
  MODIFY `cod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_claiming_requirements_details`
--
ALTER TABLE `r_claiming_requirements_details`
  MODIFY `cr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `r_claim_approval_status_details`
--
ALTER TABLE `r_claim_approval_status_details`
  MODIFY `cas_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `r_claim_form_status_details`
--
ALTER TABLE `r_claim_form_status_details`
  MODIFY `cfs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `r_claim_legal_status_details`
--
ALTER TABLE `r_claim_legal_status_details`
  MODIFY `cls_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `r_claim_requirements_checklist_details`
--
ALTER TABLE `r_claim_requirements_checklist_details`
  MODIFY `crc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `r_claim_requirements_status_details`
--
ALTER TABLE `r_claim_requirements_status_details`
  MODIFY `crs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `r_critical_illness_details`
--
ALTER TABLE `r_critical_illness_details`
  MODIFY `ci_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `r_death_claim_details`
--
ALTER TABLE `r_death_claim_details`
  MODIFY `dc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `r_death_details`
--
ALTER TABLE `r_death_details`
  MODIFY `d_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `r_file_details`
--
ALTER TABLE `r_file_details`
  MODIFY `f_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_form_status_details`
--
ALTER TABLE `r_form_status_details`
  MODIFY `fs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `r_health_details`
--
ALTER TABLE `r_health_details`
  MODIFY `hl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `r_hospitalization_details`
--
ALTER TABLE `r_hospitalization_details`
  MODIFY `h_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `r_life_insured_details`
--
ALTER TABLE `r_life_insured_details`
  MODIFY `lid_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `r_life_insured_personal_details`
--
ALTER TABLE `r_life_insured_personal_details`
  MODIFY `li_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `r_medical_status_details`
--
ALTER TABLE `r_medical_status_details`
  MODIFY `ms_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `r_non_medical_information_details`
--
ALTER TABLE `r_non_medical_information_details`
  MODIFY `nmid_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `r_plan_details`
--
ALTER TABLE `r_plan_details`
  MODIFY `plan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `r_policyowner_details`
--
ALTER TABLE `r_policyowner_details`
  MODIFY `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `r_policyowner_login_details`
--
ALTER TABLE `r_policyowner_login_details`
  MODIFY `pl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `r_policy_information_details`
--
ALTER TABLE `r_policy_information_details`
  MODIFY `pi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `r_requirements_checklist_details`
--
ALTER TABLE `r_requirements_checklist_details`
  MODIFY `rc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `r_requirements_details`
--
ALTER TABLE `r_requirements_details`
  MODIFY `req_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `r_requirements_status_details`
--
ALTER TABLE `r_requirements_status_details`
  MODIFY `rs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `r_system_user_details`
--
ALTER TABLE `r_system_user_details`
  MODIFY `sud_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `r_system_user_login_details`
--
ALTER TABLE `r_system_user_login_details`
  MODIFY `suld_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `r_system_user_log_details`
--
ALTER TABLE `r_system_user_log_details`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `r_system_user_personal_details`
--
ALTER TABLE `r_system_user_personal_details`
  MODIFY `supd_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_application_form_details`
--
ALTER TABLE `t_application_form_details`
  MODIFY `af_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_claiming_details`
--
ALTER TABLE `t_claiming_details`
  MODIFY `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_claim_status_details`
--
ALTER TABLE `t_claim_status_details`
  MODIFY `cs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_payment_details`
--
ALTER TABLE `t_payment_details`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `t_policy_details`
--
ALTER TABLE `t_policy_details`
  MODIFY `pol_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_policy_status_details`
--
ALTER TABLE `t_policy_status_details`
  MODIFY `ps_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `r_accident_details`
--
ALTER TABLE `r_accident_details`
  ADD CONSTRAINT `r_accident_details_ibfk_2` FOREIGN KEY (`a_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`),
  ADD CONSTRAINT `r_accident_details_ibfk_3` FOREIGN KEY (`a_ref_ai_id`) REFERENCES `r_accident_info_details` (`ai_id`),
  ADD CONSTRAINT `r_accident_details_ibfk_4` FOREIGN KEY (`a_ref_h_id`) REFERENCES `r_hospitalization_details` (`h_id`);

--
-- Constraints for table `r_audit_trail_details`
--
ALTER TABLE `r_audit_trail_details`
  ADD CONSTRAINT `r_audit_trail_details_ibfk_1` FOREIGN KEY (`at_ref_sud_id`) REFERENCES `r_system_user_details` (`sud_id`);

--
-- Constraints for table `r_beneficiary_details`
--
ALTER TABLE `r_beneficiary_details`
  ADD CONSTRAINT `r_beneficiary_details_ibfk_1` FOREIGN KEY (`b_ref_lid_id`) REFERENCES `r_life_insured_details` (`lid_id`);

--
-- Constraints for table `r_benefit_details`
--
ALTER TABLE `r_benefit_details`
  ADD CONSTRAINT `r_benefit_details_ibfk_1` FOREIGN KEY (`benefit_ref_pi_id`) REFERENCES `r_policy_information_details` (`pi_id`);

--
-- Constraints for table `r_claiming_or_details`
--
ALTER TABLE `r_claiming_or_details`
  ADD CONSTRAINT `r_claiming_or_details_ibfk_1` FOREIGN KEY (`cod_ref_c_id`) REFERENCES `t_claiming_details` (`c_id`);

--
-- Constraints for table `r_claim_requirements_checklist_details`
--
ALTER TABLE `r_claim_requirements_checklist_details`
  ADD CONSTRAINT `r_claim_requirements_checklist_details_ibfk_1` FOREIGN KEY (`crc_ref_crs_id`) REFERENCES `r_claim_requirements_status_details` (`crs_id`),
  ADD CONSTRAINT `r_claim_requirements_checklist_details_ibfk_2` FOREIGN KEY (`crc_ref_crs_id`) REFERENCES `r_claim_requirements_status_details` (`crs_id`);

--
-- Constraints for table `r_critical_illness_details`
--
ALTER TABLE `r_critical_illness_details`
  ADD CONSTRAINT `r_critical_illness_details_ibfk_1` FOREIGN KEY (`ci_ref_h_id`) REFERENCES `r_hospitalization_details` (`h_id`),
  ADD CONSTRAINT `r_critical_illness_details_ibfk_2` FOREIGN KEY (`ci_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`),
  ADD CONSTRAINT `r_critical_illness_details_ibfk_3` FOREIGN KEY (`ci_ref_hl_id`) REFERENCES `r_health_details` (`hl_id`);

--
-- Constraints for table `r_death_claim_details`
--
ALTER TABLE `r_death_claim_details`
  ADD CONSTRAINT `r_death_claim_details_ibfk_2` FOREIGN KEY (`dc_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`),
  ADD CONSTRAINT `r_death_claim_details_ibfk_3` FOREIGN KEY (`dc_ref_d_id`) REFERENCES `r_death_details` (`d_id`),
  ADD CONSTRAINT `r_death_claim_details_ibfk_4` FOREIGN KEY (`dc_ref_h_id`) REFERENCES `r_hospitalization_details` (`h_id`);

--
-- Constraints for table `r_file_details`
--
ALTER TABLE `r_file_details`
  ADD CONSTRAINT `r_file_details_ibfk_1` FOREIGN KEY (`f_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`);

--
-- Constraints for table `r_life_insured_details`
--
ALTER TABLE `r_life_insured_details`
  ADD CONSTRAINT `r_life_insured_details_ibfk_1` FOREIGN KEY (`lid_ref_li_id`) REFERENCES `r_life_insured_personal_details` (`li_id`),
  ADD CONSTRAINT `r_life_insured_details_ibfk_2` FOREIGN KEY (`lid_ref_nmid_id`) REFERENCES `r_non_medical_information_details` (`nmid_id`);

--
-- Constraints for table `r_policyowner_login_details`
--
ALTER TABLE `r_policyowner_login_details`
  ADD CONSTRAINT `r_policyowner_login_details_ibfk_1` FOREIGN KEY (`pl_ref_p_id`) REFERENCES `r_policyowner_details` (`p_id`);

--
-- Constraints for table `r_policy_information_details`
--
ALTER TABLE `r_policy_information_details`
  ADD CONSTRAINT `r_policy_information_details_ibfk_1` FOREIGN KEY (`pi_ref_plan_id`) REFERENCES `r_plan_details` (`plan_id`);

--
-- Constraints for table `r_requirements_checklist_details`
--
ALTER TABLE `r_requirements_checklist_details`
  ADD CONSTRAINT `r_requirements_checklist_details_ibfk_1` FOREIGN KEY (`rc_ref_rs_id`) REFERENCES `r_requirements_status_details` (`rs_id`);

--
-- Constraints for table `r_system_user_details`
--
ALTER TABLE `r_system_user_details`
  ADD CONSTRAINT `r_system_user_details_ibfk_1` FOREIGN KEY (`sud_ref_suld_id`) REFERENCES `r_system_user_login_details` (`suld_id`),
  ADD CONSTRAINT `r_system_user_details_ibfk_2` FOREIGN KEY (`sud_ref_supd_id`) REFERENCES `r_system_user_personal_details` (`supd_id`);

--
-- Constraints for table `r_system_user_log_details`
--
ALTER TABLE `r_system_user_log_details`
  ADD CONSTRAINT `r_system_user_log_details_ibfk_1` FOREIGN KEY (`log_ref_sud_id`) REFERENCES `r_system_user_details` (`sud_id`);

--
-- Constraints for table `t_application_form_details`
--
ALTER TABLE `t_application_form_details`
  ADD CONSTRAINT `t_application_form_details_ibfk_1` FOREIGN KEY (`af_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`),
  ADD CONSTRAINT `t_application_form_details_ibfk_2` FOREIGN KEY (`af_ref_sud_id`) REFERENCES `r_system_user_details` (`sud_id`);

--
-- Constraints for table `t_claiming_details`
--
ALTER TABLE `t_claiming_details`
  ADD CONSTRAINT `t_claiming_details_ibfk_1` FOREIGN KEY (`c_ref_a_id`) REFERENCES `r_accident_details` (`a_id`),
  ADD CONSTRAINT `t_claiming_details_ibfk_2` FOREIGN KEY (`c_ref_ci_id`) REFERENCES `r_critical_illness_details` (`ci_id`),
  ADD CONSTRAINT `t_claiming_details_ibfk_3` FOREIGN KEY (`c_ref_dc_id`) REFERENCES `r_death_claim_details` (`dc_id`);

--
-- Constraints for table `t_claim_status_details`
--
ALTER TABLE `t_claim_status_details`
  ADD CONSTRAINT `t_claim_status_details_ibfk_1` FOREIGN KEY (`cs_ref_c_id`) REFERENCES `t_claiming_details` (`c_id`),
  ADD CONSTRAINT `t_claim_status_details_ibfk_2` FOREIGN KEY (`cs_ref_cfs_id`) REFERENCES `r_claim_form_status_details` (`cfs_id`),
  ADD CONSTRAINT `t_claim_status_details_ibfk_3` FOREIGN KEY (`cs_ref_crs_id`) REFERENCES `r_claim_requirements_status_details` (`crs_id`),
  ADD CONSTRAINT `t_claim_status_details_ibfk_4` FOREIGN KEY (`cs_ref_cls_id`) REFERENCES `r_claim_legal_status_details` (`cls_id`),
  ADD CONSTRAINT `t_claim_status_details_ibfk_5` FOREIGN KEY (`cs_ref_cas_id`) REFERENCES `r_claim_approval_status_details` (`cas_id`);

--
-- Constraints for table `t_payment_details`
--
ALTER TABLE `t_payment_details`
  ADD CONSTRAINT `t_payment_details_ibfk_1` FOREIGN KEY (`payment_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`);

--
-- Constraints for table `t_policy_details`
--
ALTER TABLE `t_policy_details`
  ADD CONSTRAINT `t_policy_details_ibfk_1` FOREIGN KEY (`pol_ref_ai_id`) REFERENCES `r_system_user_details` (`sud_id`),
  ADD CONSTRAINT `t_policy_details_ibfk_2` FOREIGN KEY (`pol_ref_li_id`) REFERENCES `r_life_insured_details` (`lid_id`),
  ADD CONSTRAINT `t_policy_details_ibfk_3` FOREIGN KEY (`pol_ref_pi_id`) REFERENCES `r_policy_information_details` (`pi_id`),
  ADD CONSTRAINT `t_policy_details_ibfk_4` FOREIGN KEY (`pol_ref_p_id`) REFERENCES `r_policyowner_details` (`p_id`);

--
-- Constraints for table `t_policy_status_details`
--
ALTER TABLE `t_policy_status_details`
  ADD CONSTRAINT `t_policy_status_details_ibfk_1` FOREIGN KEY (`ps_ref_as_id`) REFERENCES `r_approval_status_details` (`as_id`),
  ADD CONSTRAINT `t_policy_status_details_ibfk_2` FOREIGN KEY (`ps_ref_fs_id`) REFERENCES `r_form_status_details` (`fs_id`),
  ADD CONSTRAINT `t_policy_status_details_ibfk_3` FOREIGN KEY (`ps_ref_ms_id`) REFERENCES `r_medical_status_details` (`ms_id`),
  ADD CONSTRAINT `t_policy_status_details_ibfk_4` FOREIGN KEY (`ps_ref_pol_id`) REFERENCES `t_policy_details` (`pol_id`),
  ADD CONSTRAINT `t_policy_status_details_ibfk_5` FOREIGN KEY (`ps_ref_rs_id`) REFERENCES `r_requirements_status_details` (`rs_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
