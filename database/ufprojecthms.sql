-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 05:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ufprojecthms`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_level`
--

CREATE TABLE `access_level` (
  `id` int(11) NOT NULL,
  `create` tinyint(1) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `update` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `module_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `access_level`
--

INSERT INTO `access_level` (`id`, `create`, `read`, `update`, `delete`, `module_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 1, 0, '2019-01-31 14:59:13', '2019-02-01 10:14:06'),
(2, 1, 1, 1, 1, 1, 1, '2019-01-31 15:39:32', '2019-02-01 10:13:36'),
(3, 1, 1, 1, 1, 2, 1, '2019-01-31 15:39:51', '2019-01-31 15:43:57'),
(4, 1, 1, 1, 1, 3, 1, '2019-01-31 15:39:51', '2019-01-31 15:44:12'),
(5, 1, 1, 1, 1, 4, 1, '2019-01-31 15:39:51', '2019-01-31 16:22:26'),
(6, 1, 1, 1, 1, 5, 1, '2019-01-31 15:39:51', '2019-01-31 16:22:26'),
(7, 1, 1, 1, 1, 6, 1, '2019-01-31 15:39:51', '2019-01-31 16:22:26'),
(8, 1, 1, 1, 1, 7, 1, '2019-01-31 15:39:52', '2019-01-31 16:22:26'),
(9, 1, 1, 1, 1, 8, 1, '2019-01-31 15:39:52', '2019-01-31 16:22:26'),
(10, 1, 1, 1, 1, 9, 1, '2019-01-31 15:39:52', '2019-01-31 16:22:27'),
(11, 1, 1, 1, 1, 10, 1, '2019-01-31 15:39:52', '2019-01-31 16:22:27'),
(12, 0, 1, 0, 0, 1, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:04'),
(13, 0, 1, 0, 0, 2, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:05'),
(14, 0, 1, 0, 0, 3, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:05'),
(15, 0, 1, 0, 0, 4, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:07'),
(16, 0, 1, 0, 0, 5, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:08'),
(17, 0, 1, 0, 0, 6, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:08'),
(18, 0, 1, 0, 0, 7, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:09'),
(19, 0, 1, 0, 0, 8, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:10'),
(20, 0, 1, 0, 0, 9, 2, '2019-01-31 15:45:24', '2019-01-31 15:51:11'),
(21, 0, 1, 0, 0, 10, 2, '2019-01-31 15:45:25', '2019-01-31 15:51:12'),
(32, 1, 1, 1, 1, 11, 1, '2019-02-01 10:13:36', '2019-02-01 10:14:16'),
(33, 0, 0, 0, 0, 1, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(34, 0, 0, 0, 0, 2, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(35, 0, 0, 0, 0, 3, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(36, 0, 0, 0, 0, 4, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(37, 0, 0, 0, 0, 5, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(38, 0, 0, 0, 0, 6, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(39, 0, 0, 0, 0, 7, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(40, 0, 0, 0, 0, 8, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(41, 0, 0, 0, 0, 9, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(42, 0, 0, 0, 0, 10, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23'),
(43, 0, 0, 0, 0, 11, 7, '2019-02-01 10:37:23', '2019-02-01 10:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `bill_number` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `due_amount` double DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=show, 0=hide',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `patient_id`, `bill_number`, `amount`, `due_amount`, `bill_date`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, 'Bill-000002', 3500, 3500, '2019-02-02', '2019-02-02', 1, '2019-02-02 00:42:34', '2019-02-02 12:03:08'),
(3, 6, 'Bill-000003', 3800, 3800, '2019-02-02', '2019-02-03', 1, '2019-02-02 00:46:51', '2019-02-02 23:04:06'),
(4, 7, 'Bill-000004', 1800, 1800, '2019-02-02', '2019-02-03', 1, '2019-02-02 00:50:15', '2019-02-02 23:12:05'),
(5, 8, 'Bill-000005', 4800, 4800, '2019-02-02', '2019-02-03', 1, '2019-02-02 00:56:50', '2019-02-02 23:08:03'),
(6, 9, 'Bill-000006', 1800, 1800, '2019-02-03', '2019-02-03', 1, '2019-02-02 00:59:34', '2019-02-02 23:13:30'),
(7, 10, 'Bill-000007', 1800, 1800, '2019-02-04', '2019-02-03', 1, '2019-02-02 01:02:12', '2019-02-02 23:16:03'),
(8, 11, 'Bill-000008', 1800, 1800, '2019-02-05', '2019-02-03', 1, '2019-02-02 01:07:51', '2019-02-02 23:41:48'),
(9, 12, 'Bill-000009', 3800, 3800, '2019-02-02', '2019-02-03', 1, '2019-02-02 01:11:44', '2019-02-02 23:43:57'),
(10, 13, 'Bill-000010', 500, 500, '2019-02-02', '2019-02-02', 1, '2019-02-02 01:18:01', '2019-02-02 01:18:01'),
(11, 14, 'Bill-000011', 1500, 1500, '2019-02-03', '2019-02-03', 1, '2019-02-03 05:26:08', '2019-02-03 05:30:40'),
(12, 15, 'Bill-000012', 2500, 1500, '2019-02-03', '2019-02-03', 1, '2019-02-03 05:45:14', '2019-02-03 06:08:02'),
(13, 16, 'Bill-000013', 1000, 800, '2019-02-03', '2019-02-03', 1, '2019-02-03 06:23:00', '2019-02-03 06:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `bill_entry`
--

CREATE TABLE `bill_entry` (
  `id` int(11) NOT NULL,
  `bill_id` int(10) DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `prescription_id` int(10) DEFAULT NULL,
  `amount` int(30) NOT NULL,
  `date` date NOT NULL,
  `bill_type` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_entry`
--

INSERT INTO `bill_entry` (`id`, `bill_id`, `test_id`, `prescription_id`, `amount`, `date`, `bill_type`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, NULL, 500, '2019-02-02', 'Doctor Visit', '2019-02-02 00:42:34', '2019-02-02 00:42:34'),
(3, 3, NULL, NULL, 500, '2019-02-02', 'Doctor Visit', '2019-02-02 00:46:51', '2019-02-02 00:46:51'),
(4, 4, NULL, NULL, 500, '2019-02-02', 'Doctor Visit', '2019-02-02 00:50:15', '2019-02-02 00:50:15'),
(5, 5, NULL, NULL, 500, '2019-02-02', 'Doctor Visit', '2019-02-02 00:56:50', '2019-02-02 00:56:50'),
(6, 6, NULL, NULL, 500, '2019-02-03', 'Doctor Visit', '2019-02-02 00:59:34', '2019-02-02 00:59:34'),
(7, 7, NULL, NULL, 500, '2019-02-04', 'Doctor Visit', '2019-02-02 01:02:12', '2019-02-02 01:02:12'),
(8, 8, NULL, NULL, 500, '2019-02-05', 'Doctor Visit', '2019-02-02 01:07:51', '2019-02-02 01:07:51'),
(9, 9, NULL, NULL, 500, '2019-02-02', 'Doctor Visit', '2019-02-02 01:11:44', '2019-02-02 01:11:44'),
(10, 10, NULL, NULL, 500, '2019-02-02', 'Doctor Visit', '2019-02-02 01:18:01', '2019-02-02 01:18:01'),
(12, 2, NULL, NULL, 3000, '2019-02-02', 'Test Charge', '2019-02-02 12:03:08', '2019-02-02 12:03:08'),
(13, 3, NULL, NULL, 3300, '2019-02-03', 'Test Charge', '2019-02-02 23:04:06', '2019-02-02 23:04:06'),
(14, 5, NULL, NULL, 4300, '2019-02-03', 'Test Charge', '2019-02-02 23:08:03', '2019-02-02 23:08:03'),
(15, 4, NULL, NULL, 1300, '2019-02-03', 'Test Charge', '2019-02-02 23:12:05', '2019-02-02 23:12:05'),
(16, 6, NULL, NULL, 1300, '2019-02-03', 'Test Charge', '2019-02-02 23:13:30', '2019-02-02 23:13:30'),
(17, 7, NULL, NULL, 1300, '2019-02-03', 'Test Charge', '2019-02-02 23:16:03', '2019-02-02 23:16:03'),
(18, 8, NULL, NULL, 1300, '2019-02-03', 'Test Charge', '2019-02-02 23:41:48', '2019-02-02 23:41:48'),
(19, 9, NULL, NULL, 3300, '2019-02-03', 'Test Charge', '2019-02-02 23:43:57', '2019-02-02 23:43:57'),
(20, 11, NULL, NULL, 1000, '2019-02-03', 'Doctor Visit', '2019-02-03 05:26:08', '2019-02-03 05:26:08'),
(21, 11, NULL, NULL, 500, '2019-02-03', 'Test Charge', '2019-02-03 05:30:40', '2019-02-03 05:30:40'),
(22, 12, NULL, NULL, 1000, '2019-02-03', 'Doctor Visit', '2019-02-03 05:45:14', '2019-02-03 05:45:14'),
(23, 12, NULL, NULL, 500, '2019-02-03', 'Test Charge', '2019-02-03 06:08:02', '2019-02-03 06:08:02'),
(24, 13, NULL, NULL, 500, '2019-02-03', 'Doctor Visit', '2019-02-03 06:23:00', '2019-02-03 06:23:00'),
(25, 13, NULL, NULL, 300, '2019-02-03', 'Test Charge', '2019-02-03 06:26:39', '2019-02-03 06:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch_name`, `branch_description`, `created_at`, `updated_at`, `location`) VALUES
(1, 'Head Office', 'Head Office in Dhanmondi', '2016-07-10 03:25:53', '1994-04-05 22:41:20', 'Dhanmondi 2');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `mobile` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `branch_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', NULL, NULL),
(2, 'Sunday', NULL, NULL),
(3, 'Monday', NULL, NULL),
(4, 'Tuesday', NULL, NULL),
(5, 'Wednesday', NULL, NULL),
(6, 'Thursday', NULL, NULL),
(7, 'Friday', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` text,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Deactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Neurology', NULL, 1, '2018-10-12 04:39:20', '0000-00-00 00:00:00'),
(2, 'Hematology', '', 0, '2019-01-24 17:49:39', '2019-01-24 17:49:39'),
(3, 'Emergency Medicine', '', 1, '2019-02-01 22:35:48', '2019-02-01 22:35:48'),
(4, 'Microbiology and Infection Control', '', 1, '2019-02-01 22:51:54', '2019-02-01 22:51:54'),
(5, 'Microbiology', '', 1, '2019-02-01 22:53:48', '2019-02-01 22:53:48'),
(6, 'Ophthalmology', '', 1, '2019-02-01 22:55:46', '2019-02-01 22:55:46'),
(7, 'Dental Surgery & Orthodontics', '', 1, '2019-02-01 23:05:16', '2019-02-01 23:05:16'),
(8, 'Dental & Maxillofacial Surgery', '', 1, '2019-02-01 23:25:52', '2019-02-01 23:25:52'),
(9, 'Clinical Oncology & Radiotherapy', '', 1, '2019-02-01 23:33:01', '2019-02-01 23:33:01'),
(10, 'Oncology', '', 1, '2019-02-01 23:49:39', '2019-02-01 23:49:39'),
(11, 'Medicine ', '', 1, '2019-02-02 00:05:07', '2019-02-02 00:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=Duty Doctor, 2=Supervice Doctor',
  `department_id` int(10) DEFAULT NULL,
  `specialization` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Male, 1=Female',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=active, 1=deactive',
  `visit` int(10) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `email`, `mobile`, `degree`, `designation`, `doctor_type`, `department_id`, `specialization`, `gender`, `status`, `visit`, `address`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Dr. Sufia Nasrin Rita', 'nasrinrita@gmail.com', '01740301580', 'BDS, FCPS', 'Orthodontics & Dentofacial Orthopedics', '2', 7, 'Consultant, Dental Surgery & Orthodontics', 0, 0, 1000, '18/F, Bir Uttam  Qazi Nuruzzaman Sarak, West Panthapath,Dhaka 1205', 'doctor/1549084894Dr. Sufia Nasrin Rita.JPG', NULL, '2019-02-01 23:21:34', '2019-02-02 10:59:20'),
(6, 'Dr. S. M. Anwar Sadat', 'sadat@gmail.com', '01740301582', 'BDS, MCPS (Dental Surgery), FCPS (Oral & Maxillofacial Surgery), MS (Oral & Maxillofacial Surgery)', 'MCPS', '2', 8, 'Consultant', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549085339Dr. S. M. Anwar Sadat.JPG', NULL, '2019-02-01 23:28:59', '2019-02-02 23:37:49'),
(7, 'Prof. Syed Md. Akram Hussain', 'akramhussain@gmail.com', '01740301583', 'MBBS, FCPS, FRCP (Glasgow), FRCP (Edinburgh), FACP (USA), MRCR (UK)', 'MBBS', '1', 9, 'Consultant, Clinical Oncology & Radiotherapy', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549086152Prof. Syed Md. Akram Hussain.jpg', NULL, '2019-02-01 23:42:32', '2019-02-01 23:42:32'),
(8, 'Dr. Md. Salim Reza', 'salimreza@gmail.com', '01740301584', 'MBBS, DMRT, FCPS', 'MBBS', '1', 10, 'Consultant, Oncology', 0, 0, 499, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549086710Dr. Md. Salim Reza.JPG', NULL, '2019-02-01 23:51:50', '2019-02-01 23:51:50'),
(9, 'Dr. Arunangshu Das', 'arunangshudas@gmail.com', '01740301585', 'MBBS, FCPS', '', '1', 10, 'Associate Consultant - Oncology', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549086836Dr. Arunangshu Das.png', NULL, '2019-02-01 23:53:56', '2019-02-01 23:53:56'),
(10, 'Dr. Md. Mazharul Islam', 'mazharulislam@gmail.com', '01740301586', 'MBBS, FCPS (Eye) Trained in Phaco, Laser & Medical Retina (BIRDEM Academy)', 'MBBS', '2', 6, 'Associate Consultant-Ophthalmology', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549087012Dr. Md. Mazharul Islam.jpg', NULL, '2019-02-01 23:56:52', '2019-02-01 23:56:52'),
(11, 'Lt. Col. Dr. Md. Sajedur Rahman', 'sajedurrahman@gmail.com', '01740301587', 'MBBS, DO, MD, FIRL, Fellow Ratina & Laser (German), Specilized in Laser, Phaco & Vitreo Retinal Surgery', 'MBBS', '1', 6, 'Consultant, Ophthalmology', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549087212Lt. Col. Dr. Md. Sajedur Rahman.JPG', NULL, '2019-02-02 00:00:12', '2019-02-02 00:00:12'),
(12, 'Prof. Dr. Shah Alam', 'shahalam@gmail.com', '01740301588', 'MBBS, FCPS', 'MBBS', '1', 6, 'Consultant, Ophthalmology', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549087333Prof. Dr. Shah Alam.JPG', NULL, '2019-02-02 00:02:13', '2019-02-02 00:02:13'),
(13, 'Dr. Mirza Nazim Uddin', 'nazimuddin@gmail.com', '01740301590', 'MBBS, MRCP (UK)', 'MBBS', '1', 11, 'Consultant, Internal Medicine & Intensivist (ICU)', 0, 0, 1000, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549087621Dr. Mirza Nazim Uddin.JPG', NULL, '2019-02-02 00:07:01', '2019-02-02 00:07:01'),
(14, 'Dr. Raihan Rabbani', 'raihanrabbani@gmail.com', '01740301591', 'MBBS, FCPS, US Board Certified in Internal Medicine', '', '1', 11, 'Consultant, Internal Medicine', 0, 0, 500, '18/F, Bir Uttam \r\nQazi Nuruzzaman Sarak,\r\nWest Panthapath,Dhaka 1205', 'doctor/1549087733Dr. Raihan Rabbani.JPG', NULL, '2019-02-02 00:08:53', '2019-02-02 00:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_chamber_days`
--

CREATE TABLE `doctor_chamber_days` (
  `id` int(11) NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `day_id` int(10) DEFAULT NULL,
  `shift` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=morning, 1=evening',
  `start_time` varchar(30) NOT NULL,
  `end_time` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_chamber_days`
--

INSERT INTO `doctor_chamber_days` (`id`, `doctor_id`, `day_id`, `shift`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(14, 7, 2, 0, '09:00', '12:00', '2019-02-01 23:42:32', '2019-02-01 23:42:32'),
(15, 8, 2, 1, '18:00', '21:00', '2019-02-01 23:51:51', '2019-02-01 23:51:51'),
(16, 9, 3, 0, '09:00', '12:00', '2019-02-01 23:53:56', '2019-02-01 23:53:56'),
(17, 10, 3, 1, '18:00', '21:00', '2019-02-01 23:56:52', '2019-02-01 23:56:52'),
(18, 11, 3, 0, '09:00', '12:00', '2019-02-02 00:00:12', '2019-02-02 00:00:12'),
(19, 11, 1, 1, '18:00', '21:00', '2019-02-02 00:00:12', '2019-02-02 00:00:12'),
(20, 12, 4, 0, '06:00', '12:00', '2019-02-02 00:02:13', '2019-02-02 00:02:13'),
(21, 13, 4, 0, '09:00', '12:00', '2019-02-02 00:07:01', '2019-02-02 00:07:01'),
(22, 14, 5, 0, '09:00', '12:00', '2019-02-02 00:08:53', '2019-02-02 00:08:53'),
(24, 5, 1, 0, '09:00', '12:00', '2019-02-02 10:59:20', '2019-02-02 10:59:20'),
(25, 6, 1, 0, '18:00', '21:00', '2019-02-02 23:37:49', '2019-02-02 23:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_visit_histories`
--

CREATE TABLE `doctor_visit_histories` (
  `id` int(11) NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `summary` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_visit_histories`
--

INSERT INTO `doctor_visit_histories` (`id`, `patient_id`, `doctor_id`, `summary`, `created_at`, `updated_at`) VALUES
(4, 5, 10, 'doctor_visit', '2019-02-02 00:42:34', '2019-02-02 00:42:34'),
(5, 6, 10, 'doctor_visit', '2019-02-02 00:46:51', '2019-02-02 00:46:51'),
(6, 7, 10, 'doctor_visit', '2019-02-02 00:50:15', '2019-02-02 00:50:15'),
(7, 8, 10, 'doctor_visit', '2019-02-02 00:56:50', '2019-02-02 00:56:50'),
(8, 9, 10, 'doctor_visit', '2019-02-02 00:59:34', '2019-02-02 00:59:34'),
(9, 10, 10, 'doctor_visit', '2019-02-02 01:02:12', '2019-02-02 01:02:12'),
(10, 11, 10, 'doctor_visit', '2019-02-02 01:07:51', '2019-02-02 01:07:51'),
(11, 12, 10, 'doctor_visit', '2019-02-02 01:11:44', '2019-02-02 01:11:44'),
(12, 13, 10, 'doctor_visit', '2019-02-02 01:18:01', '2019-02-02 01:18:01'),
(13, 14, 5, 'doctor_visit', '2019-02-03 05:26:08', '2019-02-03 05:26:08'),
(14, 15, 5, 'doctor_visit', '2019-02-03 05:45:14', '2019-02-03 05:45:14'),
(15, 16, 6, 'doctor_visit', '2019-02-03 06:23:00', '2019-02-03 06:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(10) NOT NULL,
  `to` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `to`, `subject`, `details`, `file`, `created_at`, `updated_at`) VALUES
(6, 'suman777333@gmail.com', 'PID - 000001', 'Please Check the Attachment', '5c58f96276a40.pdf', '2019-02-04 20:48:02', '2019-02-04 20:48:02'),
(7, 'suman777333@gmail.com', 'PID - 000001', 'Please Check the Attachment', '5c58fc751c862.pdf', '2019-02-04 21:01:10', '2019-02-04 21:01:10'),
(8, 'suman777333@gmail.com', 'PID - 000001', 'Please Check the Attachment', '5c58fc9657e3d.pdf', '2019-02-04 21:01:42', '2019-02-04 21:01:42'),
(9, 'suman777333@gmail.com', 'PID - 000003', 'Please Check the Attachment', '5c594bc979cc1.pdf', '2019-02-05 02:39:39', '2019-02-05 02:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `headertemplate`
--

CREATE TABLE `headertemplate` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headerType` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `headertemplate`
--

INSERT INTO `headertemplate` (`id`, `file_url`, `headerType`, `created_at`, `updated_at`) VALUES
(1, 'uploads/template/banner.png', 1, '2018-12-05 13:34:15', '2019-02-02 10:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `id` int(11) NOT NULL,
  `report_no` varchar(30) NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `test_category_id` int(10) NOT NULL,
  `taking_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `pathologist_id` int(10) UNSIGNED NOT NULL,
  `reference_doctor_id` int(10) UNSIGNED DEFAULT NULL,
  `blood_group` varchar(30) DEFAULT NULL,
  `amikacin` varchar(30) DEFAULT NULL,
  `organism_isolated` varchar(30) DEFAULT NULL,
  `hemoglobin` varchar(30) DEFAULT NULL,
  `white_blood_sell` varchar(30) DEFAULT NULL,
  `red_blood_sell` varchar(30) DEFAULT NULL,
  `neutrophil` varchar(30) DEFAULT NULL,
  `basophil` varchar(30) DEFAULT NULL,
  `mpv` varchar(30) DEFAULT NULL,
  `mcv` varchar(30) DEFAULT NULL,
  `mch` varchar(30) DEFAULT NULL,
  `pdw` varchar(30) DEFAULT NULL,
  `summary` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_reports`
--

INSERT INTO `lab_reports` (`id`, `report_no`, `test_id`, `test_category_id`, `taking_date`, `delivery_date`, `pathologist_id`, `reference_doctor_id`, `blood_group`, `amikacin`, `organism_isolated`, `hemoglobin`, `white_blood_sell`, `red_blood_sell`, `neutrophil`, `basophil`, `mpv`, `mcv`, `mch`, `pdw`, `summary`, `created_at`, `updated_at`) VALUES
(4, '000002', 5, 1, '2019-02-03', '2019-02-03', 1, 6, '0+', '0.1', '0.5', '0.3', '2.33', '0.3', '0.6', '2', '0.3', '0.8', '0.3', '0.3', '', '2019-02-03 01:50:05', '2019-02-03 01:50:05'),
(5, '000003', 8, 1, '2019-02-03', '2019-02-03', 1, 9, '0+', '0.1', '0.5', '0.3', '2.33', '0.3', '0.6', '2', '0.3', '0.8', '0.3', '0.3', '', '2019-02-03 01:50:44', '2019-02-03 01:50:44'),
(6, '000004', 23, 1, '2019-02-03', '2019-02-03', 1, 5, 'AB(+)', '25', '30', '80', '80', '20', '75', '25', '25', '00', '00', '00', '00', '2019-02-03 05:32:14', '2019-02-03 05:32:14'),
(7, '000005', 26, 1, '2019-02-03', '2019-02-04', 1, 6, 'B(+)', '25', '20', '70', '40', '15', '60', '20', '20', '00', '00', '00', 'obarol valo', '2019-02-03 06:34:08', '2019-02-03 06:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_taking_schedules`
--

CREATE TABLE `medicine_taking_schedules` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=Tablet, 2=Capsule, 3=Injection, 4=Syrup',
  `serial` varchar(30) NOT NULL,
  `schedule` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_taking_schedules`
--

INSERT INTO `medicine_taking_schedules` (`id`, `type`, `serial`, `schedule`, `created_at`, `update_at`) VALUES
(1, 1, '111', '1-1-1', NULL, NULL),
(2, 1, '100', '1-0-0', NULL, NULL),
(3, 1, '010', '0-1-0', NULL, NULL),
(4, 1, '001', '0-0-1', NULL, NULL),
(5, 1, '101', '1-0-1', NULL, NULL),
(6, 1, '011', '0-1-1', NULL, NULL),
(7, 1, '110', '1-1-0', NULL, NULL),
(8, 2, '111', '1-1-1', NULL, NULL),
(9, 2, '100', '1-0-0', NULL, NULL),
(10, 2, '010', '0-1-0', NULL, NULL),
(11, 2, '001', '0-0-1', NULL, NULL),
(12, 2, '101', '1-0-1', NULL, NULL),
(13, 2, '011', '0-1-1', NULL, NULL),
(14, 2, '110', '1-1-0', NULL, NULL),
(15, 4, '111', '1-1-1', NULL, NULL),
(16, 4, '100', '1-0-0', NULL, NULL),
(17, 4, '010', '0-1-0', NULL, NULL),
(18, 4, '001', '0-0-1', NULL, NULL),
(19, 4, '101', '1-0-1', NULL, NULL),
(20, 4, '011', '0-1-1', NULL, NULL),
(21, 4, '110', '1-1-0', NULL, NULL),
(22, 3, '1', 'IM', NULL, NULL),
(23, 3, '2', 'IV', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(8, '2018_02_06_185049_create_contact_table', 2),
(9, '2018_10_07_225958_create_patients_table', 2),
(10, '2018_10_07_230014_create_doctors_table', 2),
(11, '2018_10_07_230024_create_tests_table', 2),
(12, '2018_10_07_230043_create_prescriptions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_prefix`, `created_at`, `updated_at`) VALUES
(1, 'Bill', 'bill', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(2, 'Department', 'department', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(3, 'Doctor', 'doctor', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(4, 'Patient Bill', 'patient/bill', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(5, 'Lab', 'lab', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(6, 'Patient', 'patient', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(7, 'Prescription', 'prescription', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(8, 'Stuff', 'stuff', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(9, 'Test', 'test', '1973-04-15 13:24:06', '1970-02-17 21:40:51'),
(10, 'Test Category', 'test/test-category', '2018-01-26 18:00:00', '2018-01-26 18:00:00'),
(11, 'Stuff Type', 'stuff-type', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization_profiles`
--

CREATE TABLE `organization_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `etin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organization_profiles`
--

INSERT INTO `organization_profiles` (`id`, `logo`, `display_name`, `company_name`, `street`, `city`, `state`, `country`, `zip_code`, `website`, `contact_number`, `email`, `created_at`, `updated_at`, `etin`, `vat_number`) VALUES
(1, 'logo.png', 'Hospital Management System', 'HMS', 'Dhanmondi Rd.No. 2', 'Dhaka', 'Dhaka', 'Bangladesh', '1200', 'http://hms.hairworldbd.com', '01740301579', 'info@hms.hairworldbd.com', '2006-01-27 09:08:38', '2019-02-02 22:29:10', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Male, 1=Female',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_pressure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `serial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admit_status` tinyint(4) DEFAULT NULL COMMENT '1=admitted, 2=Discharged',
  `ward_id` int(11) DEFAULT NULL,
  `bed_id` int(11) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `supervise_doctor_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `prescription_id` int(10) UNSIGNED DEFAULT NULL,
  `patient_current_status_id` int(10) UNSIGNED DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `gender`, `email`, `mobile`, `problem`, `blood_pressure`, `weight`, `serial`, `admit_status`, `ward_id`, `bed_id`, `admission_date`, `discharge_date`, `supervise_doctor_id`, `test_id`, `prescription_id`, `patient_current_status_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Suparna Hoque', 21, 0, 'suprnahuqe@gmail.com', '01740301593', 'Muscle aches', '120/140', 45, '000002', 1, 2, 10, '2019-02-02', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549089753patients.jpg', NULL, '2019-02-02 00:42:34', '2019-02-02 22:36:47'),
(6, 'Shahazan Shahid', 25, 0, 'shahid@gmail.com', '01740301595', 'Fever', '140/160', 55, '000003', 1, 2, 20, '2019-02-02', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549168733Fever2.jpg', NULL, '2019-02-02 00:46:51', '2019-02-02 22:50:32'),
(7, 'Jakir Hossain', 23, 0, 'Jakirhossien@gmail.com', '01740601596', 'Diarrhea', '120/140', 40, '000004', NULL, NULL, NULL, '2019-02-02', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549168869Diarrhea.jpg', NULL, '2019-02-02 00:50:15', '2019-02-02 22:41:09'),
(8, 'Roni Islam', 25, 0, 'roni@gmail.com', '01740301599', 'Coughing', '120/140', 55, '000005', 1, 2, 11, '2019-02-02', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549168939Coughing.jpg', NULL, '2019-02-02 00:56:50', '2019-02-02 22:42:19'),
(9, 'Hamidur Rahaman', 24, 0, 'hamidur@gmail.com', '01740301598', 'Diarrhea', '120/140', 56, '000006', 1, 2, 12, '2019-02-03', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549168971Diarrhea.jpg', NULL, '2019-02-02 00:59:34', '2019-02-02 22:42:51'),
(10, 'Sahal Ibna', 25, 0, 'shahal@gmail.com', '01740301594', 'Diarrhea', '120/140', 56, '000007', 1, 2, 13, '2019-02-04', '2019-02-28', 10, NULL, NULL, NULL, 'patient/1549169023Diarrhea2.jpg', NULL, '2019-02-02 01:02:12', '2019-02-02 23:14:53'),
(11, 'MD Niloy Hasan Mamun', 27, 0, 'mamun@gmail.com', '01740301597', 'Fever', '160/180', 60, '000008', NULL, 1, NULL, '2019-02-05', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549169081Fever3.jpg', NULL, '2019-02-02 01:07:51', '2019-02-02 22:44:41'),
(12, 'Saburuzzaman Shantu', 25, 0, 'shantu@gmail.com', '01740301591', 'Diarrhea', '120/140', 50, '000009', 1, 2, 22, '2019-02-02', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549169143Diarrhea3.jpg', NULL, '2019-02-02 01:11:44', '2019-02-02 22:51:48'),
(13, 'Mamun Khan', 30, 0, 'manunkhan@gmail.com', '01740301590', 'Coughing', '120/140', 60, '000010', 1, 2, 21, '2019-02-02', '2019-02-03', 10, NULL, NULL, NULL, 'patient/1549169207Coughing2.jpg', NULL, '2019-02-02 01:18:01', '2019-02-02 23:45:29'),
(14, 'Rajfique', 28, 0, 'mhadiullah@gmail.com', '01617296777', 'cold', '150/90', 60, '000011', 1, 2, 23, '2019-02-03', NULL, 5, NULL, NULL, NULL, NULL, NULL, '2019-02-03 05:26:08', '2019-02-03 05:26:08'),
(15, 'happy majumder', 26, 0, 'simul.csediu@gmail.com', '01773736418', 'pata vatha jor ', '120/90', 62, '000012', 1, 2, 25, '2019-02-03', NULL, 5, NULL, NULL, NULL, NULL, NULL, '2019-02-03 05:45:14', '2019-02-03 05:45:14'),
(16, 'hadiull', 26, 0, 'hassankabid@gmail.com', '01617296777', 'jor', '120/95', 50, '000013', 1, 2, 24, '2019-02-03', '2019-02-03', 6, NULL, NULL, NULL, NULL, NULL, '2019-02-03 06:23:00', '2019-02-03 06:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `patient_current_status`
--

CREATE TABLE `patient_current_status` (
  `id` int(11) NOT NULL,
  `symptom` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `patient_id` int(10) UNSIGNED DEFAULT NULL,
  `prescription_id` int(10) UNSIGNED DEFAULT NULL,
  `doctor_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_current_status`
--

INSERT INTO `patient_current_status` (`id`, `symptom`, `status`, `patient_id`, `prescription_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(22, 'Fatigue', '', 5, NULL, NULL, '2019-02-02 22:36:47', '2019-02-02 22:36:47'),
(34, '', '', 6, NULL, NULL, '2019-02-02 22:50:32', '2019-02-02 22:50:32'),
(37, '', '', 8, NULL, NULL, '2019-02-02 23:06:54', '2019-02-02 23:06:54'),
(38, '', '', 7, NULL, NULL, '2019-02-02 23:08:50', '2019-02-02 23:08:50'),
(39, '', '', 9, NULL, NULL, '2019-02-02 23:13:00', '2019-02-02 23:13:00'),
(40, 'Fever', '', 10, NULL, NULL, '2019-02-02 23:14:53', '2019-02-02 23:14:53'),
(42, 'Fever', '', 11, NULL, NULL, '2019-02-02 23:40:51', '2019-02-02 23:40:51'),
(44, 'Fever', '', 12, NULL, NULL, '2019-02-02 23:43:10', '2019-02-02 23:43:10'),
(45, 'Fever', '', 13, NULL, 610, '2019-02-02 23:45:29', '2019-02-02 23:45:29'),
(48, 'blood with cough', 'Serious  ', 14, NULL, 65, '2019-02-03 05:26:08', '2019-02-03 05:26:08'),
(49, 'jor', 'normal', 15, NULL, 65, '2019-02-03 05:45:14', '2019-02-03 05:45:14'),
(52, 'jor', 'Serious  ', 16, NULL, NULL, '2019-02-03 06:24:06', '2019-02-03 06:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `summary` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `date`, `patient_id`, `doctor_id`, `test_id`, `summary`, `created_at`, `updated_at`) VALUES
(2, '2019-02-02', 5, 6, NULL, '', '2019-02-02 12:03:08', '2019-02-02 12:03:08'),
(3, '2019-02-03', 6, 7, NULL, '', '2019-02-02 23:04:06', '2019-02-02 23:04:06'),
(4, '2019-02-03', 8, 6, NULL, '', '2019-02-02 23:08:03', '2019-02-02 23:08:03'),
(5, '2019-02-03', 7, 6, NULL, '', '2019-02-02 23:12:05', '2019-02-02 23:12:05'),
(6, '2019-02-03', 9, 6, NULL, '', '2019-02-02 23:13:30', '2019-02-02 23:13:30'),
(7, '2019-02-03', 10, 6, NULL, '', '2019-02-02 23:16:03', '2019-02-02 23:16:03'),
(8, '2019-02-03', 11, 10, NULL, '', '2019-02-02 23:41:48', '2019-02-02 23:41:48'),
(9, '2019-02-03', 12, 10, NULL, '', '2019-02-02 23:43:57', '2019-02-02 23:43:57'),
(14, '2019-02-03', 14, 5, NULL, 'Follow this prescription', '2019-02-03 05:30:40', '2019-02-03 05:30:40'),
(15, '2019-02-03', 15, 5, NULL, 'sokala hatetay hoba.', '2019-02-03 06:08:02', '2019-02-03 06:08:02'),
(16, '2019-02-03', 15, 5, NULL, '', '2019-02-03 06:10:01', '2019-02-03 06:10:01'),
(17, '2019-02-03', 16, 6, NULL, 'ghnvgbnfv', '2019-02-03 06:26:39', '2019-02-03 06:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicines`
--

CREATE TABLE `prescription_medicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `prescription_id` int(10) DEFAULT NULL,
  `medicine_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine_type` tinyint(4) NOT NULL COMMENT '1=tablet, 2=capsule, 3=injection, 4=saline, 5=syrup',
  `dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taking_schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advise` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescription_medicines`
--

INSERT INTO `prescription_medicines` (`id`, `prescription_id`, `medicine_name`, `medicine_type`, `dose`, `taking_schedule`, `duration`, `date`, `advise`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 2, 'Renitid', 1, NULL, '1', '2 weeks', '2019-02-02', 'Before dinar', NULL, '2019-02-02 12:03:08', '2019-02-02 12:03:08'),
(3, 3, 'Aspirin', 1, NULL, '5', '', '2019-02-03', '', NULL, '2019-02-02 23:04:06', '2019-02-02 23:04:06'),
(4, 4, 'Adovas', 4, NULL, '15', '', '2019-02-03', '', NULL, '2019-02-02 23:08:03', '2019-02-02 23:08:03'),
(5, 5, 'loperamide ', 1, NULL, '5', '2 Weeks', '2019-02-03', '', NULL, '2019-02-02 23:12:05', '2019-02-02 23:12:05'),
(6, 6, 'loperamide ', 1, NULL, '5', '2 Weeks', '2019-02-03', '', NULL, '2019-02-02 23:13:30', '2019-02-02 23:13:30'),
(7, 7, 'Parasitamol', 1, NULL, '1', '2 Weeks', '2019-02-03', '', NULL, '2019-02-02 23:16:03', '2019-02-02 23:16:03'),
(8, 8, 'Parasitamol', 1, NULL, '1', '2 Weeks', '2019-02-03', '', NULL, '2019-02-02 23:41:48', '2019-02-02 23:41:48'),
(9, 9, 'Parasitamol', 1, NULL, '1', '2 Weeks', '2019-02-03', 'Take Medicine Just Time', NULL, '2019-02-02 23:43:57', '2019-02-02 23:43:57'),
(12, 14, 'Losectil', 2, NULL, '8', '1 weeks', '2019-02-03', 'before meal', NULL, '2019-02-03 05:30:40', '2019-02-03 05:30:40'),
(13, 14, 'Ace+', 1, NULL, '1', '1', '2019-02-03', 'after meal', NULL, '2019-02-03 05:30:40', '2019-02-03 05:30:40'),
(14, 15, 'napa ', 1, NULL, '1', '7 din', '2019-02-03', 'kabarpor', NULL, '2019-02-03 06:08:02', '2019-02-03 06:08:02'),
(15, 15, 'Bost ', 1, NULL, '2', '1din', '2019-02-03', 'khabarpor', NULL, '2019-02-03 06:08:02', '2019-02-03 06:08:02'),
(16, 16, 'MOTEGUT', 1, NULL, '6', '7 din', '2019-02-03', 'after meal', NULL, '2019-02-03 06:10:01', '2019-02-03 06:10:01'),
(17, 17, 'bitnal', 1, NULL, '1', '7 din', '2019-02-03', 'kabarpor', NULL, '2019-02-03 06:26:39', '2019-02-03 06:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Est voluptas eum itaque est. Aliquam animi ut accusamus excepturi aliquid. Repellendus quisquam corporis sint nemo facere magnam.', '1988-03-14 11:54:05', '2004-05-10 09:31:57'),
(2, 'Staff', 'Id eum id est eos. Distinctio rem ut fugiat sequi perspiciatis voluptatem nostrum. Et excepturi iusto veritatis ut ut. Eum nihil veritatis dolore qui qui ut.', '2004-02-22 19:07:54', '2016-03-06 16:07:19'),
(3, 'Employee', 'Sint expedita eaque nemo quis. Ut nobis esse nobis et delectus a maiores ducimus. Inventore debitis error earum reprehenderit laudantium.', '1991-12-30 07:12:04', '2003-03-16 12:57:58'),
(4, 'Patient', 'Patient role', '2019-01-31 16:00:03', '2019-01-31 16:00:03'),
(7, 'Security Gurd', 'sdfksdjlfsd', '2019-02-01 10:37:23', '2019-02-01 10:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `stuffs`
--

CREATE TABLE `stuffs` (
  `id` int(11) NOT NULL,
  `stuff_type_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `nid` varchar(50) DEFAULT NULL,
  `degree` varchar(50) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `image` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuffs`
--

INSERT INTO `stuffs` (`id`, `stuff_type_id`, `name`, `mobile`, `age`, `gender`, `nid`, `degree`, `joining_date`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Siam khan', '01617296777', 33, 1, '14525489645', 'Medical Test', '2019-02-02', NULL, '2019-02-01 20:24:27', '2019-02-01 20:24:27'),
(2, 2, 'Selina Zaman', '01520505050', 33, 2, '12345321545', 'Nurse', '2019-02-02', 'stuff/1549196101man.png', '2019-02-02 10:19:34', '2019-02-03 06:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `stuff_type`
--

CREATE TABLE `stuff_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `summary` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuff_type`
--

INSERT INTO `stuff_type` (`id`, `name`, `salary`, `summary`, `created_at`, `updated_at`) VALUES
(2, 'Accountant', 20000, '', '2019-01-24 17:06:58', '2019-01-24 17:14:41'),
(3, 'Receiptionist', 2000, '', '2019-02-01 20:08:06', '2019-02-01 20:08:06'),
(4, 'Pathologist', 15000, '', '2019-02-01 10:14:53', '2019-02-01 10:14:53'),
(5, 'Nurse', 150000, NULL, '2019-02-01 21:49:10', '2019-02-01 21:49:10'),
(6, 'Securiy Guard', 10000, NULL, '2019-02-01 21:49:10', '2019-02-01 21:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED DEFAULT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_category_id` int(10) DEFAULT NULL,
  `prescription_id` int(10) DEFAULT NULL,
  `charge` double NOT NULL,
  `body_part` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Initialize, 2=Taken, 3=Report Ready',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `patient_id`, `doctor_id`, `test_name`, `test_category_id`, `prescription_id`, `charge`, `body_part`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 5, 6, '', 1, 2, 1000, '', 1, NULL, '2019-02-02 12:03:08', '2019-02-02 12:03:08'),
(4, 5, 6, '', 1, 2, 2000, '', 1, NULL, '2019-02-02 12:03:08', '2019-02-02 12:03:08'),
(5, 6, 7, '', 1, 3, 500, '', 3, NULL, '2019-02-02 23:04:06', '2019-02-03 06:15:44'),
(6, 6, 7, '', 1, 3, 800, '', 1, NULL, '2019-02-02 23:04:06', '2019-02-02 23:04:06'),
(7, 6, 7, '', 3, 3, 2000, '', 1, NULL, '2019-02-02 23:04:06', '2019-02-02 23:04:06'),
(8, 8, 6, '', 1, 4, 500, '', 3, NULL, '2019-02-02 23:08:03', '2019-02-03 01:50:49'),
(9, 8, 6, '', 2, 4, 1000, '', 1, NULL, '2019-02-02 23:08:03', '2019-02-02 23:08:03'),
(10, 8, 6, '', 3, 4, 2000, '', 1, NULL, '2019-02-02 23:08:03', '2019-02-02 23:08:03'),
(11, 8, 6, '', 4, 4, 800, '', 1, NULL, '2019-02-02 23:08:03', '2019-02-02 23:08:03'),
(12, 7, 6, '', 1, 5, 500, '', 1, NULL, '2019-02-02 23:12:05', '2019-02-02 23:12:05'),
(13, 7, 6, '', 4, 5, 800, '', 1, NULL, '2019-02-02 23:12:05', '2019-02-02 23:12:05'),
(14, 9, 6, '', 1, 6, 500, '', 1, NULL, '2019-02-02 23:13:30', '2019-02-02 23:13:30'),
(15, 9, 6, '', 4, 6, 800, '', 1, NULL, '2019-02-02 23:13:30', '2019-02-02 23:13:30'),
(16, 10, 6, '', 1, 7, 500, '', 1, NULL, '2019-02-02 23:16:03', '2019-02-02 23:16:03'),
(17, 10, 6, '', 4, 7, 800, '', 1, NULL, '2019-02-02 23:16:03', '2019-02-02 23:16:03'),
(18, 11, 10, '', 1, 8, 500, '', 1, NULL, '2019-02-02 23:41:48', '2019-02-02 23:41:48'),
(19, 11, 10, '', 4, 8, 800, '', 1, NULL, '2019-02-02 23:41:48', '2019-02-02 23:41:48'),
(20, 12, 10, '', 1, 9, 500, '', 1, NULL, '2019-02-02 23:43:57', '2019-02-02 23:43:57'),
(21, 12, 10, '', 4, 9, 800, '', 1, NULL, '2019-02-02 23:43:57', '2019-02-02 23:43:57'),
(22, 12, 10, '', 3, 9, 2000, '', 1, NULL, '2019-02-02 23:43:57', '2019-02-02 23:43:57'),
(23, 14, 5, 'xxx', 1, 14, 500, 'From hand', 3, NULL, '2019-02-03 05:30:40', '2019-02-03 05:32:23'),
(24, 15, 5, 'Grupe ', 1, 15, 500, 'hand', 1, NULL, '2019-02-03 06:08:02', '2019-02-03 06:08:02'),
(25, 15, 5, 'hand', 2, 15, 1000, 'bellow wrest ', 1, NULL, '2019-02-03 06:08:02', '2019-02-03 06:08:02'),
(26, 16, 6, 'grup', 1, 17, 500, 'hand', 3, NULL, '2019-02-03 06:26:39', '2019-02-03 06:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `test_categories`
--

CREATE TABLE `test_categories` (
  `id` int(10) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` varchar(30) NOT NULL,
  `summary` text,
  `image` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_categories`
--

INSERT INTO `test_categories` (`id`, `name`, `price`, `summary`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Blood', '500', 'Blood Test', NULL, '2019-02-01 09:34:15', '2019-02-02 11:03:40'),
(2, 'X-ray', '1000', 'X-ray Test', NULL, '2019-02-01 09:40:40', '2019-02-02 11:03:56'),
(3, 'ECG', '2000', 'ECG Test', NULL, NULL, NULL),
(4, 'Urine ', '800', 'Urine  Test', NULL, NULL, NULL),
(5, 'Eco', '1500', '', NULL, '2019-02-03 06:13:11', '2019-02-03 06:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `contact` int(30) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `note`, `role_id`, `branch_id`, `contact`, `image`, `name`, `remember_token`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$uGVQmpGVG3gnav6YoUbKVeu31ilT8r9ENInQAwFhOCELzi6AhXddG', NULL, NULL, NULL, '', 1, NULL, 1740301579, 'PhotoOfZaman_9fc8f114ad6537a4fef0557bef2714e3598fbe62.jpg', 'Syed Zaman Mostafiz', 'DfBN3PEPrREgEWvh80JrZbjEV7yWOgLch3dtAF1phYuIMFyhCEBmRbzh0SWO', NULL, '2018-10-10 17:22:23', '2019-03-11 16:16:32'),
(2, 'rahim@gmail.com', '$2y$10$jyf07tW6DqHEEIBJcwPHV.RLDyTER6sX2Hpq31B5.FWi7tjJDhZ5m', NULL, NULL, NULL, 'note', 2, 1, 1520252525, 'user.jpg', 'Rahim', 'd7c3WVgzqHcKkLoVC3rS8bFTKAkhzwQoIPaONENqIDyrn2txwpW7KUZHb6ii', NULL, '2019-01-31 15:49:03', '2019-02-01 13:07:19'),
(3, 'zamancsediue44@gmail.com', '$2y$10$kPDbqB3yurLWFQcC0FCgNu83lHyuYyQXOVtb8ktDtC3KX3g6V.z8C', NULL, NULL, NULL, '', 2, 1, 1740301579, 'Zaman_87fe3c4222caf918ee2598ba4b4fa7f7409e024b.jpg', 'Syed Zaman Mostafiz', 'T15PBRdGfymRgigNnR2T2Yarlb3r7jzjop4P3QKg6wWa2f3WfpZh1p6f6rMQ', NULL, '2019-02-02 22:31:19', '2019-02-02 22:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_activations`
--

CREATE TABLE `user_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_activations`
--

INSERT INTO `user_activations` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'd587e3049b65f5f366b7d50818caf965315e151f05c3d3f2fd2bdc34f10e6575', '2019-01-08 14:04:58', '2019-01-08 14:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` int(11) NOT NULL,
  `ward_no` varchar(30) NOT NULL,
  `department_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `ward_no`, `department_id`, `created_at`, `update_at`) VALUES
(1, '1', 1, '2019-01-08 06:00:00', '2019-01-29 06:00:00'),
(2, '2', 2, '2019-01-27 06:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ward_beds`
--

CREATE TABLE `ward_beds` (
  `id` int(11) NOT NULL,
  `bed_no` varchar(30) NOT NULL,
  `ward_id` int(11) NOT NULL,
  `daily_charge` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_beds`
--

INSERT INTO `ward_beds` (`id`, `bed_no`, `ward_id`, `daily_charge`, `created_at`, `update_at`) VALUES
(1, '101', 1, 500, '2019-01-26 04:49:25', '0000-00-00 00:00:00'),
(2, '102', 1, 500, '2019-01-26 04:49:21', '0000-00-00 00:00:00'),
(3, '103', 1, 500, '2019-01-26 04:49:14', '0000-00-00 00:00:00'),
(9, '104', 1, 500, '2019-02-02 10:36:33', '0000-00-00 00:00:00'),
(10, '201', 2, 500, '2019-02-01 21:46:55', '0000-00-00 00:00:00'),
(11, '202', 2, 500, '2019-02-01 21:46:55', '0000-00-00 00:00:00'),
(12, '203', 2, 500, '2019-02-01 21:46:55', '0000-00-00 00:00:00'),
(13, '204', 2, 500, '2019-02-01 21:46:55', '0000-00-00 00:00:00'),
(14, '105', 1, 500, '2019-02-02 10:38:28', '0000-00-00 00:00:00'),
(15, '106', 1, 500, '2019-02-02 10:38:28', '0000-00-00 00:00:00'),
(16, '107', 1, 500, '2019-02-02 10:38:28', '0000-00-00 00:00:00'),
(17, '108', 1, 500, '2019-02-02 10:38:28', '0000-00-00 00:00:00'),
(18, '109', 1, 500, '2019-02-02 10:38:28', '0000-00-00 00:00:00'),
(19, '110', 1, 500, '2019-02-02 10:38:28', '0000-00-00 00:00:00'),
(20, '205', 2, 500, '2019-02-02 10:40:26', '0000-00-00 00:00:00'),
(21, '206', 2, 500, '2019-02-02 10:40:26', '0000-00-00 00:00:00'),
(22, '207', 2, 500, '2019-02-02 10:40:26', '0000-00-00 00:00:00'),
(23, '208', 2, 500, '2019-02-02 10:40:26', '0000-00-00 00:00:00'),
(24, '209', 2, 500, '2019-02-02 10:40:26', '0000-00-00 00:00:00'),
(25, '210', 2, 500, '2019-02-02 10:40:26', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_level`
--
ALTER TABLE `access_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access_level_module_id_foreign` (`module_id`),
  ADD KEY `access_level_role_id_foreign` (`role_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `bill_entry`
--
ALTER TABLE `bill_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_entry_bill_id_foreign` (`bill_id`),
  ADD KEY `bill_entry_test_id_foreign` (`test_id`),
  ADD KEY `bill_entry_prescription_id_foreign` (`prescription_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branch_location_unique` (`location`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_department_id_foreign` (`department_id`);

--
-- Indexes for table `doctor_chamber_days`
--
ALTER TABLE `doctor_chamber_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_chamber_days_doctor_id` (`doctor_id`),
  ADD KEY `doctor_chamber_days_day_id_foreign` (`day_id`);

--
-- Indexes for table `doctor_visit_histories`
--
ALTER TABLE `doctor_visit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_visit_histories_patient_id_foreign` (`patient_id`),
  ADD KEY `doctor_visit_histories_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headertemplate`
--
ALTER TABLE `headertemplate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lab_reports_test_id_foreign` (`test_id`),
  ADD KEY `lab_reports_test_category_id_foreign` (`test_category_id`),
  ADD KEY `lab_reports_reference_doctor_id_foreign` (`reference_doctor_id`);

--
-- Indexes for table `medicine_taking_schedules`
--
ALTER TABLE `medicine_taking_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_ward_id_foreign` (`ward_id`),
  ADD KEY `patients_bed_id_foreign` (`bed_id`),
  ADD KEY `patients_supervise_doctor_id_foreign` (`supervise_doctor_id`);

--
-- Indexes for table `patient_current_status`
--
ALTER TABLE `patient_current_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_current_status_patient_id_foreign` (`patient_id`),
  ADD KEY `patient_current_status_prescriptions_id_foreign` (`prescription_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescriptions_patient_id_foreign` (`patient_id`),
  ADD KEY `prescriptions_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescription_medicines_prescription_id_foreign` (`prescription_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stuffs`
--
ALTER TABLE `stuffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stuffs_stuff_type_id_foreign` (`stuff_type_id`);

--
-- Indexes for table `stuff_type`
--
ALTER TABLE `stuff_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_patient_id_foreign` (`patient_id`),
  ADD KEY `tests_test_category_id_foreign` (`test_category_id`),
  ADD KEY `tests_doctor_id_foreign` (`doctor_id`),
  ADD KEY ` tests_prescription_id_foreign` (`prescription_id`);

--
-- Indexes for table `test_categories`
--
ALTER TABLE `test_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activations`
--
ALTER TABLE `user_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activations_token_index` (`token`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wards_department_id_foreign` (`department_id`);

--
-- Indexes for table `ward_beds`
--
ALTER TABLE `ward_beds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ward_beds_ward_id_foreign` (`ward_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_level`
--
ALTER TABLE `access_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bill_entry`
--
ALTER TABLE `bill_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctor_chamber_days`
--
ALTER TABLE `doctor_chamber_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `doctor_visit_histories`
--
ALTER TABLE `doctor_visit_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `headertemplate`
--
ALTER TABLE `headertemplate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicine_taking_schedules`
--
ALTER TABLE `medicine_taking_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `patient_current_status`
--
ALTER TABLE `patient_current_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stuffs`
--
ALTER TABLE `stuffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stuff_type`
--
ALTER TABLE `stuff_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `test_categories`
--
ALTER TABLE `test_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_activations`
--
ALTER TABLE `user_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ward_beds`
--
ALTER TABLE `ward_beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
