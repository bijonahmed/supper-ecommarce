-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 07:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lottery`
--

-- --------------------------------------------------------

--
-- Table structure for table `annual_pay`
--

CREATE TABLE `annual_pay` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annual_pay`
--

INSERT INTO `annual_pay` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Registered Nurse', 1, 1),
(2, 'Software Developer', 1, 1),
(3, 'Marketing Manager', 1, 1),
(4, 'Financial Analyst', 1, 1),
(5, 'Mechanical Engineer', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(11) NOT NULL,
  `job_publish_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_address` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `candidate_num` varchar(255) DEFAULT NULL,
  `total_year_exp` varchar(255) DEFAULT NULL,
  `educa_qualifcation` text DEFAULT NULL,
  `skill_set` text DEFAULT NULL,
  `expeted_salary` varchar(255) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`id`, `job_publish_id`, `job_title`, `candidate_name`, `candidate_address`, `candidate_email`, `candidate_num`, `total_year_exp`, `educa_qualifcation`, `skill_set`, `expeted_salary`, `files`, `application_date`, `remarks`, `status`, `entry_by`, `created_at`) VALUES
(2, 2, 'Senior BI Engineer', 'Bijon', 'Dhaka', 'mdbijon@gmail.com', '01915728982', '7 Yrs 5 Months', 'MSC', 'Soft Dev.', '5000', '/backend/files/JnT9wFEZM8JeK1gLjq4X.doc', '2023-08-29', '', 8, 1, '2023-08-29 10:44:24'),
(3, 2, 'Senior BI Engineer', 'Kabir', 'Dhaka', 'kabir@gmail.com', '01915728983', '10 Yrs', 'MSC', 'TEST', '1050', '/backend/files/mURkiEiAo1NR9wFEJ2No.pdf', '2023-08-29', '', 2, 1, '2023-08-29 10:45:32'),
(4, 2, 'Senior BI Engineer', 'Jannat', 'DHK', 'jannat@gmail.com', '01915728984', '10 Yrs', 'TEST', 'Computer', '50000', '/backend/files/FHSfhhsLtpUDx5w1yGaX.doc', '2023-08-29', NULL, 8, NULL, '2023-08-29 10:46:47'),
(5, 1, 'Software Engineer', 'Kabir ahmed', 'DHK', 'karim@gmail.com', '01915728985', '10 Yrs', 'TEST', 'DK', '50000', '/backend/files/BEMMoAGUMb0lFvg49YPF.pdf', '2023-08-29', NULL, NULL, NULL, '2023-08-29 11:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_at`, `updated_at`, `entry_by`) VALUES
(1, 'size', 1, '2023-10-14 10:28:05', '2023-10-14 16:28:05', 1),
(2, 'color', 1, '2023-10-14 10:30:19', '2023-10-14 16:30:19', 1),
(3, 'capacity', 1, '2023-10-14 10:30:43', '2023-10-14 16:30:43', 1),
(4, 'sleeve length', 1, '2023-10-14 10:31:01', '2023-10-14 16:31:01', 1),
(5, 'neckline', 1, '2023-10-14 10:31:23', '2023-10-14 16:31:23', 1),
(6, 'closure type', 1, '2023-10-14 10:31:45', '2023-10-14 16:31:45', 1),
(7, 'material', 1, '2023-10-14 10:32:02', '2023-10-14 16:32:02', 1),
(8, 'brand', 1, '2023-10-14 10:32:29', '2023-10-14 16:32:29', 1),
(9, 'weight', 1, '2023-10-14 10:32:52', '2023-10-14 16:32:52', 1),
(10, 'gender', 1, '2023-10-14 10:33:05', '2023-10-14 16:33:05', 1),
(11, 'style', 1, '2023-10-14 10:33:25', '2023-10-14 16:33:25', 1),
(12, 'pattern', 1, '2023-10-14 10:33:42', '2023-10-14 16:33:42', 1),
(13, 'fit', 1, '2023-10-14 10:33:58', '2023-10-14 16:33:58', 1),
(14, 'type', 1, '2023-10-14 10:34:14', '2023-10-14 16:34:14', 1),
(15, 'occasion', 1, '2023-10-14 10:34:27', '2023-10-14 16:34:27', 1),
(16, 'season', 1, '2023-10-14 10:34:40', '2023-10-14 16:34:40', 1),
(17, 'features', 1, '2023-10-14 10:34:56', '2023-10-14 16:34:56', 1),
(18, 'compatibility', 1, '2023-10-14 10:35:12', '2023-10-14 16:35:12', 1),
(19, 'resolution', 1, '2023-10-14 10:35:43', '2023-10-14 16:35:43', 1),
(20, 'warranty', 1, '2023-10-14 10:35:58', '2023-10-14 16:35:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributes_values`
--

CREATE TABLE `attributes_values` (
  `id` int(11) NOT NULL,
  `attributes_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'HSBC BANK', 1, 1),
(2, 'BARCLAYS BANK', 1, 1),
(3, 'SANTANDER BANK', 1, 1),
(4, 'HALIFAX BANK', 1, 1),
(5, 'NATWEST BANK', 1, 1),
(6, 'LLOYDS BANK', 1, 1),
(7, 'TSB BANK', 1, 1),
(8, 'TESCO BANK', 1, 1),
(9, 'CO-OPERATIVE BANK', 1, 1),
(10, 'BANK OF SCOTLAND', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_short_code`
--

CREATE TABLE `bank_short_code` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_short_code`
--

INSERT INTO `bank_short_code` (`id`, `bank_id`, `name`, `status`, `entry_by`) VALUES
(1, 9, '56854', 1, 1),
(2, 2, '11545', 1, 1),
(3, 2, '165586', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `sort_order`, `file`, `status`, `mobile_view_class`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Software', 'software', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-cloud-arrow-down', 1, NULL, NULL, '2023-11-12 13:21:59', '2023-11-12 13:21:59'),
(2, 'Games', 'games', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-gamepad', 1, NULL, NULL, '2023-11-12 13:22:20', '2023-11-12 13:22:20'),
(3, 'Movies', 'movies', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-video', 1, NULL, NULL, '2023-11-12 13:22:30', '2023-11-12 13:22:30'),
(4, 'Courses', 'courses', NULL, NULL, NULL, NULL, 0, 0, 'fa-solid fa-code', 1, NULL, NULL, '2023-11-12 13:22:49', '2023-11-12 13:22:49'),
(5, 'Adobe All Series', 'adobe-all-series', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:24:48', '2023-11-12 13:24:48'),
(6, 'Antivirus', 'antivirus', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:23', '2023-11-12 13:25:23'),
(7, 'Browsers', 'browsers', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:34', '2023-11-12 13:25:34'),
(8, 'Developers Tools', 'developers-tools', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:44', '2023-11-12 13:25:44'),
(9, 'Microsoft Office', 'microsoft-office', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:25:55', '2023-11-12 13:25:55'),
(10, 'Multimedia Software', 'multimedia-software', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:05', '2023-11-12 13:26:05'),
(11, 'Operating System', 'operating-system', NULL, 'Operating System', 'Operating System', 'Operating System', 1, 0, '', 1, 'null', 'null', '2023-11-12 13:26:16', '2023-11-27 10:24:39'),
(12, 'Others Software', 'others-software', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:25', '2023-11-12 13:26:25'),
(13, 'Utility Software', 'utility-software', NULL, NULL, NULL, NULL, 1, 0, '', 1, NULL, NULL, '2023-11-12 13:26:36', '2023-11-12 13:26:36'),
(14, 'Android Games', 'android-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:30:20', '2023-11-12 13:30:20'),
(15, 'Kids Games', 'kids-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:30:42', '2023-11-12 13:30:42'),
(16, 'Racing Games', 'racing-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:30:54', '2023-11-12 13:30:54'),
(17, 'Strategy Games', 'strategy-games', NULL, NULL, NULL, NULL, 2, 0, '', 1, NULL, NULL, '2023-11-12 13:31:05', '2023-11-12 13:31:05'),
(18, '3D', '3d', NULL, 'null', 'null', 'null', 3, 0, '', 1, 'null', 'null', '2023-11-12 13:39:14', '2023-11-27 11:39:00'),
(19, '4K', '4k', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:39:26', '2023-11-12 13:39:26'),
(20, 'Animated', 'animated', NULL, 'null', 'null', 'null', 3, 0, '', 1, 'null', 'null', '2023-11-12 13:39:35', '2023-11-12 13:39:55'),
(21, 'Anime', 'anime', NULL, NULL, NULL, NULL, 3, 0, '', 0, NULL, NULL, '2023-11-12 13:40:12', '2023-11-12 13:40:12'),
(22, 'Bangla', 'bangla', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:23', '2023-11-12 13:40:23'),
(23, 'Chiness Movies', 'chiness-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:33', '2023-11-12 13:40:33'),
(24, 'Documentaries', 'documentaries', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:43', '2023-11-12 13:40:43'),
(25, 'Dual Audio', 'dual-audio', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:40:56', '2023-11-12 13:40:56'),
(26, 'Koriean Movies', 'koriean-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:41:12', '2023-11-12 13:41:12'),
(27, 'Others Foreign Moves', 'others-foreign-moves', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:41:30', '2023-11-12 13:41:30'),
(28, 'Pakstani Movies', 'pakstani-movies', NULL, NULL, NULL, NULL, 3, 0, '', 0, NULL, NULL, '2023-11-12 13:41:44', '2023-11-12 13:41:44'),
(29, 'Punjabi Movies', 'punjabi-movies', NULL, NULL, NULL, NULL, 3, 0, '', 0, NULL, NULL, '2023-11-12 13:41:56', '2023-11-12 13:41:56'),
(30, 'South India (Dubbed Hindi)', 'south-india-dubbed-hindi-', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:07', '2023-11-12 13:42:07'),
(31, 'South Indian Movies', 'south-indian-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:18', '2023-11-12 13:42:18'),
(32, 'English Movies', 'english-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:27', '2023-11-12 13:42:27'),
(33, 'Exclusive HD Movies', 'exclusive-hd-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:42', '2023-11-12 13:42:42'),
(34, 'Japanese Movies', 'japanese-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:42:52', '2023-11-12 13:42:52'),
(35, 'Hindin Movies', 'hindin-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:43:04', '2023-11-12 13:43:04'),
(36, 'Indonesian Movies', 'indonesian-movies', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-11-12 13:43:13', '2023-11-12 13:43:13'),
(37, 'Udemy', 'udemy', NULL, NULL, NULL, NULL, 4, 0, '', 1, NULL, NULL, '2023-11-12 13:43:38', '2023-11-12 13:43:38'),
(38, 'Mac', 'mac', NULL, 'Mac', 'Mac', NULL, 1, 0, '', 1, NULL, NULL, '2023-11-25 11:05:30', '2023-11-25 11:05:30'),
(39, 'Popular Software', 'popular-software', NULL, 'Popular Software', NULL, 'Popular, Software,', 1, 0, '', 1, NULL, NULL, '2023-11-29 14:19:37', '2023-11-29 14:19:37'),
(40, 'Lynda', 'lynda', NULL, NULL, NULL, NULL, 4, 0, '', 1, NULL, NULL, '2023-12-03 17:47:09', '2023-12-03 17:47:09'),
(41, 'Tutsplus', 'tutsplus', NULL, NULL, NULL, NULL, 4, 0, '', 1, NULL, NULL, '2023-12-04 05:24:36', '2023-12-04 05:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `circumstances`
--

CREATE TABLE `circumstances` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circumstances`
--

INSERT INTO `circumstances` (`id`, `employe_id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 6, 7, 6, 'Mrs. Jan Ahmed', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Mrs.', 'Jan', 'Ahmed', 'sdfsdf', 'Widow', 10, 'FULL TIME', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:22:16', 1),
(2, 5, 3, 4, 'Mr. Bijon Ahmed', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'Mr.', 'Bijon', 'Ahmed', 'dsff1111', 'Single', 4, 'FULL TIME', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 23:38:09', 1),
(3, 3, 8, 4, 'Mrs. Raheem Ahmd', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'Mrs.', 'Raheem', 'Ahmd', '11122233445', 'Single', 9, 'LEFT', '0000-00-00', '0000-00-00', '0000-00-00', 'Test', 'Test', 'Test', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', '2023-08-23', '2023-08-31', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', '5', 'Pay Group', '4', 'null', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'Pay Group', '11', '10', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'No', 'Pay Group', 'Pay Group', '3', 'Pay Group', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'Pay Group', 'Pay Group', '5', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'null', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'Pay Group', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-16 14:13:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL,
  `status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`, `status`) VALUES
(1, 'ABW', 'Aruba', 'AW', 1),
(2, 'AFG', 'Afghanistan', 'AF', 1),
(3, 'AGO', 'Angola', 'AO', 1),
(4, 'AIA', 'Anguilla', 'AI', 1),
(5, 'ALA', 'Åland', 'AX', 1),
(6, 'ALB', 'Albania', 'AL', 1),
(7, 'AND', 'Andorra', 'AD', 1),
(8, 'ARE', 'United Arab Emirates', 'AE', 1),
(9, 'ARG', 'Argentina', 'AR', 1),
(10, 'ARM', 'Armenia', 'AM', 1),
(11, 'ASM', 'American Samoa', 'AS', 1),
(12, 'ATA', 'Antarctica', 'AQ', 1),
(13, 'ATF', 'French Southern Territories', 'TF', 1),
(14, 'ATG', 'Antigua and Barbuda', 'AG', 1),
(15, 'AUS', 'Australia', 'AU', 1),
(16, 'AUT', 'Austria', 'AT', 1),
(17, 'AZE', 'Azerbaijan', 'AZ', 1),
(18, 'BDI', 'Burundi', 'BI', 1),
(19, 'BEL', 'Belgium', 'BE', 1),
(20, 'BEN', 'Benin', 'BJ', 1),
(21, 'BES', 'Bonaire', 'BQ', 1),
(22, 'BFA', 'Burkina Faso', 'BF', 1),
(23, 'BGD', 'Bangladesh', 'BD', 1),
(24, 'BGR', 'Bulgaria', 'BG', 1),
(25, 'BHR', 'Bahrain', 'BH', 1),
(26, 'BHS', 'Bahamas', 'BS', 1),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA', 1),
(28, 'BLM', 'Saint Barthélemy', 'BL', 1),
(29, 'BLR', 'Belarus', 'BY', 1),
(30, 'BLZ', 'Belize', 'BZ', 1),
(31, 'BMU', 'Bermuda', 'BM', 1),
(32, 'BOL', 'Bolivia', 'BO', 1),
(33, 'BRA', 'Brazil', 'BR', 1),
(34, 'BRB', 'Barbados', 'BB', 1),
(35, 'BRN', 'Brunei', 'BN', 1),
(36, 'BTN', 'Bhutan', 'BT', 1),
(37, 'BVT', 'Bouvet Island', 'BV', 1),
(38, 'BWA', 'Botswana', 'BW', 1),
(39, 'CAF', 'Central African Republic', 'CF', 1),
(40, 'CAN', 'Canada', 'CA', 1),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC', 1),
(42, 'CHE', 'Switzerland', 'CH', 1),
(43, 'CHL', 'Chile', 'CL', 1),
(44, 'CHN', 'China', 'CN', 1),
(45, 'CIV', 'Ivory Coast', 'CI', 1),
(46, 'CMR', 'Cameroon', 'CM', 1),
(47, 'COD', 'Democratic Republic of the Congo', 'CD', 1),
(48, 'COG', 'Republic of the Congo', 'CG', 1),
(49, 'COK', 'Cook Islands', 'CK', 1),
(50, 'COL', 'Colombia', 'CO', 1),
(51, 'COM', 'Comoros', 'KM', 1),
(52, 'CPV', 'Cape Verde', 'CV', 1),
(53, 'CRI', 'Costa Rica', 'CR', 1),
(54, 'CUB', 'Cuba', 'CU', 1),
(55, 'CUW', 'Curacao', 'CW', 1),
(56, 'CXR', 'Christmas Island', 'CX', 1),
(57, 'CYM', 'Cayman Islands', 'KY', 1),
(58, 'CYP', 'Cyprus', 'CY', 1),
(59, 'CZE', 'Czech Republic', 'CZ', 1),
(60, 'DEU', 'Germany', 'DE', 1),
(61, 'DJI', 'Djibouti', 'DJ', 1),
(62, 'DMA', 'Dominica', 'DM', 1),
(63, 'DNK', 'Denmark', 'DK', 1),
(64, 'DOM', 'Dominican Republic', 'DO', 1),
(65, 'DZA', 'Algeria', 'DZ', 1),
(66, 'ECU', 'Ecuador', 'EC', 1),
(67, 'EGY', 'Egypt', 'EG', 1),
(68, 'ERI', 'Eritrea', 'ER', 1),
(69, 'ESH', 'Western Sahara', 'EH', 1),
(70, 'ESP', 'Spain', 'ES', 1),
(71, 'EST', 'Estonia', 'EE', 1),
(72, 'ETH', 'Ethiopia', 'ET', 1),
(73, 'FIN', 'Finland', 'FI', 1),
(74, 'FJI', 'Fiji', 'FJ', 1),
(75, 'FLK', 'Falkland Islands', 'FK', 1),
(76, 'FRA', 'France', 'FR', 1),
(77, 'FRO', 'Faroe Islands', 'FO', 1),
(78, 'FSM', 'Micronesia', 'FM', 1),
(79, 'GAB', 'Gabon', 'GA', 1),
(80, 'GBR', 'United Kingdom', 'GB', 1),
(81, 'GEO', 'Georgia', 'GE', 1),
(82, 'GGY', 'Guernsey', 'GG', 1),
(83, 'GHA', 'Ghana', 'GH', 1),
(84, 'GIB', 'Gibraltar', 'GI', 1),
(85, 'GIN', 'Guinea', 'GN', 1),
(86, 'GLP', 'Guadeloupe', 'GP', 1),
(87, 'GMB', 'Gambia', 'GM', 1),
(88, 'GNB', 'Guinea-Bissau', 'GW', 1),
(89, 'GNQ', 'Equatorial Guinea', 'GQ', 1),
(90, 'GRC', 'Greece', 'GR', 1),
(91, 'GRD', 'Grenada', 'GD', 1),
(92, 'GRL', 'Greenland', 'GL', 1),
(93, 'GTM', 'Guatemala', 'GT', 1),
(94, 'GUF', 'French Guiana', 'GF', 1),
(95, 'GUM', 'Guam', 'GU', 1),
(96, 'GUY', 'Guyana', 'GY', 1),
(97, 'HKG', 'Hong Kong', 'HK', 1),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM', 1),
(99, 'HND', 'Honduras', 'HN', 1),
(100, 'HRV', 'Croatia', 'HR', 1),
(101, 'HTI', 'Haiti', 'HT', 1),
(102, 'HUN', 'Hungary', 'HU', 1),
(103, 'IDN', 'Indonesia', 'ID', 1),
(104, 'IMN', 'Isle of Man', 'IM', 1),
(105, 'IND', 'India', 'IN', 1),
(106, 'IOT', 'British Indian Ocean Territory', 'IO', 1),
(107, 'IRL', 'Ireland', 'IE', 1),
(108, 'IRN', 'Iran', 'IR', 1),
(109, 'IRQ', 'Iraq', 'IQ', 1),
(110, 'ISL', 'Iceland', 'IS', 1),
(111, 'ISR', 'Israel', 'IL', 1),
(112, 'ITA', 'Italy', 'IT', 1),
(113, 'JAM', 'Jamaica', 'JM', 1),
(114, 'JEY', 'Jersey', 'JE', 1),
(115, 'JOR', 'Jordan', 'JO', 1),
(116, 'JPN', 'Japan', 'JP', 1),
(117, 'KAZ', 'Kazakhstan', 'KZ', 1),
(118, 'KEN', 'Kenya', 'KE', 1),
(119, 'KGZ', 'Kyrgyzstan', 'KG', 1),
(120, 'KHM', 'Cambodia', 'KH', 1),
(121, 'KIR', 'Kiribati', 'KI', 1),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN', 1),
(123, 'KOR', 'South Korea', 'KR', 1),
(124, 'KWT', 'Kuwait', 'KW', 1),
(125, 'LAO', 'Laos', 'LA', 1),
(126, 'LBN', 'Lebanon', 'LB', 1),
(127, 'LBR', 'Liberia', 'LR', 1),
(128, 'LBY', 'Libya', 'LY', 1),
(129, 'LCA', 'Saint Lucia', 'LC', 1),
(130, 'LIE', 'Liechtenstein', 'LI', 1),
(131, 'LKA', 'Sri Lanka', 'LK', 1),
(132, 'LSO', 'Lesotho', 'LS', 1),
(133, 'LTU', 'Lithuania', 'LT', 1),
(134, 'LUX', 'Luxembourg', 'LU', 1),
(135, 'LVA', 'Latvia', 'LV', 1),
(136, 'MAC', 'Macao', 'MO', 1),
(137, 'MAF', 'Saint Martin', 'MF', 1),
(138, 'MAR', 'Morocco', 'MA', 1),
(139, 'MCO', 'Monaco', 'MC', 1),
(140, 'MDA', 'Moldova', 'MD', 1),
(141, 'MDG', 'Madagascar', 'MG', 1),
(142, 'MDV', 'Maldives', 'MV', 1),
(143, 'MEX', 'Mexico', 'MX', 1),
(144, 'MHL', 'Marshall Islands', 'MH', 1),
(145, 'MKD', 'Macedonia', 'MK', 1),
(146, 'MLI', 'Mali', 'ML', 1),
(147, 'MLT', 'Malta', 'MT', 1),
(148, 'MMR', 'Myanmar [Burma]', 'MM', 1),
(149, 'MNE', 'Montenegro', 'ME', 1),
(150, 'MNG', 'Mongolia', 'MN', 1),
(151, 'MNP', 'Northern Mariana Islands', 'MP', 1),
(152, 'MOZ', 'Mozambique', 'MZ', 1),
(153, 'MRT', 'Mauritania', 'MR', 1),
(154, 'MSR', 'Montserrat', 'MS', 1),
(155, 'MTQ', 'Martinique', 'MQ', 1),
(156, 'MUS', 'Mauritius', 'MU', 1),
(157, 'MWI', 'Malawi', 'MW', 1),
(158, 'MYS', 'Malaysia', 'MY', 1),
(159, 'MYT', 'Mayotte', 'YT', 1),
(160, 'NAM', 'Namibia', 'NA', 1),
(161, 'NCL', 'New Caledonia', 'NC', 1),
(162, 'NER', 'Niger', 'NE', 1),
(163, 'NFK', 'Norfolk Island', 'NF', 1),
(164, 'NGA', 'Nigeria', 'NG', 1),
(165, 'NIC', 'Nicaragua', 'NI', 1),
(166, 'NIU', 'Niue', 'NU', 1),
(167, 'NLD', 'Netherlands', 'NL', 1),
(168, 'NOR', 'Norway', 'NO', 1),
(169, 'NPL', 'Nepal', 'NP', 1),
(170, 'NRU', 'Nauru', 'NR', 1),
(171, 'NZL', 'New Zealand', 'NZ', 1),
(172, 'OMN', 'Oman', 'OM', 1),
(173, 'PAK', 'Pakistan', 'PK', 1),
(174, 'PAN', 'Panama', 'PA', 1),
(175, 'PCN', 'Pitcairn Islands', 'PN', 1),
(176, 'PER', 'Peru', 'PE', 1),
(177, 'PHL', 'Philippines', 'PH', 1),
(178, 'PLW', 'Palau', 'PW', 1),
(179, 'PNG', 'Papua New Guinea', 'PG', 1),
(180, 'POL', 'Poland', 'PL', 1),
(181, 'PRI', 'Puerto Rico', 'PR', 1),
(182, 'PRK', 'North Korea', 'KP', 1),
(183, 'PRT', 'Portugal', 'PT', 1),
(184, 'PRY', 'Paraguay', 'PY', 1),
(185, 'PSE', 'Palestine', 'PS', 1),
(186, 'PYF', 'French Polynesia', 'PF', 1),
(187, 'QAT', 'Qatar', 'QA', 1),
(188, 'REU', 'Réunion', 'RE', 1),
(189, 'ROU', 'Romania', 'RO', 1),
(190, 'RUS', 'Russia', 'RU', 1),
(191, 'RWA', 'Rwanda', 'RW', 1),
(192, 'SAU', 'Saudi Arabia', 'SA', 1),
(193, 'SDN', 'Sudan', 'SD', 1),
(194, 'SEN', 'Senegal', 'SN', 1),
(195, 'SGP', 'Singapore', 'SG', 1),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS', 1),
(197, 'SHN', 'Saint Helena', 'SH', 1),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ', 1),
(199, 'SLB', 'Solomon Islands', 'SB', 1),
(200, 'SLE', 'Sierra Leone', 'SL', 1),
(201, 'SLV', 'El Salvador', 'SV', 1),
(202, 'SMR', 'San Marino', 'SM', 1),
(203, 'SOM', 'Somalia', 'SO', 1),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM', 1),
(205, 'SRB', 'Serbia', 'RS', 1),
(206, 'SSD', 'South Sudan', 'SS', 1),
(207, 'STP', 'São Tomé and Príncipe', 'ST', 1),
(208, 'SUR', 'Suriname', 'SR', 1),
(209, 'SVK', 'Slovakia', 'SK', 1),
(210, 'SVN', 'Slovenia', 'SI', 1),
(211, 'SWE', 'Sweden', 'SE', 1),
(212, 'SWZ', 'Swaziland', 'SZ', 1),
(213, 'SXM', 'Sint Maarten', 'SX', 1),
(214, 'SYC', 'Seychelles', 'SC', 1),
(215, 'SYR', 'Syria', 'SY', 1),
(216, 'TCA', 'Turks and Caicos Islands', 'TC', 1),
(217, 'TCD', 'Chad', 'TD', 1),
(218, 'TGO', 'Togo', 'TG', 1),
(219, 'THA', 'Thailand', 'TH', 1),
(220, 'TJK', 'Tajikistan', 'TJ', 1),
(221, 'TKL', 'Tokelau', 'TK', 1),
(222, 'TKM', 'Turkmenistan', 'TM', 1),
(223, 'TLS', 'East Timor', 'TL', 1),
(224, 'TON', 'Tonga', 'TO', 1),
(225, 'TTO', 'Trinidad and Tobago', 'TT', 1),
(226, 'TUN', 'Tunisia', 'TN', 1),
(227, 'TUR', 'Turkey', 'TR', 1),
(228, 'TUV', 'Tuvalu', 'TV', 1),
(229, 'TWN', 'Taiwan', 'TW', 1),
(230, 'TZA', 'Tanzania', 'TZ', 1),
(231, 'UGA', 'Uganda', 'UG', 1),
(232, 'UKR', 'Ukraine', 'UA', 1),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM', 1),
(234, 'URY', 'Uruguay', 'UY', 1),
(235, 'USA', 'United States', 'US', 1),
(236, 'UZB', 'Uzbekistan', 'UZ', 1),
(237, 'VAT', 'Vatican City', 'VA', 1),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC', 1),
(239, 'VEN', 'Venezuela', 'VE', 1),
(240, 'VGB', 'British Virgin Islands', 'VG', 1),
(241, 'VIR', 'U.S. Virgin Islands', 'VI', 1),
(242, 'VNM', 'Vietnam', 'VN', 1),
(243, 'VUT', 'Vanuatu', 'VU', 1),
(244, 'WLF', 'Wallis and Futuna', 'WF', 1),
(245, 'WSM', 'Samoa', 'WS', 1),
(246, 'XKX', 'Kosovo', 'XK', 1),
(247, 'YEM', 'Yemen', 'YE', 1),
(248, 'ZAF', 'South Africa', 'ZA', 1),
(249, 'ZMB', 'Zambia', 'ZM', 1),
(250, 'ZWE', 'Zimbabwe', 'ZW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Research and development', 1, 1, '2023-07-15 21:33:10'),
(2, 'Operations', 1, 1, '2023-07-15 21:33:24'),
(3, 'fhfghfghfgh1111', 1, 1, '2023-07-16 09:57:04'),
(4, 'Marketing and sales', 1, 1, '2023-07-16 09:57:51'),
(5, 'Human resources', 1, 1, '2023-07-16 09:57:58'),
(6, 'Customer service', 1, 1, '2023-07-16 09:58:07'),
(7, 'Accounting and finance', 1, 1, '2023-07-16 09:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `status`, `entry_by`, `created_at`) VALUES
(1, 'Chairman', 1, 1, '2023-07-15 21:56:25'),
(2, 'Director', 1, 1, '2023-07-15 22:01:20'),
(3, 'Managing Director', 1, 1, '2023-07-16 09:54:43'),
(4, 'Chief Executive Officer (CEO)', 1, 1, '2023-07-16 09:54:51'),
(5, 'Chief Financial Officer (CFO)', 1, 1, '2023-07-16 09:55:05'),
(6, 'Secretary', 1, 1, '2023-07-16 09:55:12'),
(7, 'Chief Operating Officer (COO)', 1, 1, '2023-07-16 09:55:23'),
(8, 'Chief Technology Officer (CTO)', 1, 1, '2023-07-16 09:55:30'),
(9, 'Vice President', 1, 1, '2023-07-16 09:55:37'),
(10, 'Manager', 1, 1, '2023-07-16 09:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `joning_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `type_of_doc` text DEFAULT NULL,
  `passport_upload_docs` text DEFAULT NULL,
  `visa_upload_documents` text DEFAULT NULL,
  `euss_upload_documents` text DEFAULT NULL,
  `nid_upload_documents` text DEFAULT NULL,
  `other_upload_documents` text DEFAULT NULL,
  `employee_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ni_no` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `date_of_confirmation` date DEFAULT NULL,
  `contact_start_date` date DEFAULT NULL,
  `contact_end_date` date DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `reporting_authority` varchar(255) DEFAULT NULL,
  `leave_sanction_auth` varchar(255) DEFAULT NULL,
  `education_details` text DEFAULT NULL,
  `job_details` text DEFAULT NULL,
  `key_respons` text DEFAULT NULL,
  `training_details` varchar(255) DEFAULT NULL,
  `emger_contact_name` varchar(255) DEFAULT NULL,
  `emger_email` varchar(255) DEFAULT NULL,
  `emger_contact_no` varchar(255) DEFAULT NULL,
  `emger_address` varchar(255) DEFAULT NULL,
  `certifi_title` varchar(255) DEFAULT NULL,
  `certifi_license_number` varchar(255) DEFAULT NULL,
  `certifi_start_date` date DEFAULT NULL,
  `certifi_end_date` date DEFAULT NULL,
  `contact_info_post_code` varchar(255) DEFAULT NULL,
  `contact_info_address` varchar(255) DEFAULT NULL,
  `contact_info_address_1` varchar(255) DEFAULT NULL,
  `contact_info_address_2` varchar(255) DEFAULT NULL,
  `contact_info_address_3` varchar(255) DEFAULT NULL,
  `contact_info_city_country` varchar(255) DEFAULT NULL,
  `contact_info_country_id` varchar(255) DEFAULT NULL,
  `pass_no` varchar(255) DEFAULT NULL,
  `pass_nationality` varchar(255) DEFAULT NULL,
  `pass_place_birth` varchar(255) DEFAULT NULL,
  `pass_issued_by` varchar(255) DEFAULT NULL,
  `pass_date` date DEFAULT NULL,
  `pass_expire_date` date DEFAULT NULL,
  `pass_review_date` date DEFAULT NULL,
  `visa_brp_np` varchar(255) DEFAULT NULL,
  `visa_nationality` varchar(255) DEFAULT NULL,
  `visa_country_residence` varchar(255) DEFAULT NULL,
  `visa_issuedby` varchar(255) DEFAULT NULL,
  `visa_issued_date` date DEFAULT NULL,
  `visa_expire_date` date DEFAULT NULL,
  `visa_eligbible_review_date` date DEFAULT NULL,
  `visa_current_yesno` varchar(255) DEFAULT NULL,
  `visa_remarks` text DEFAULT NULL,
  `ess_ref_no` varchar(255) DEFAULT NULL,
  `ess_nationality` varchar(255) DEFAULT NULL,
  `ess_issued_by` varchar(255) DEFAULT NULL,
  `ess_issued_date` date DEFAULT NULL,
  `ess_expire_date` date DEFAULT NULL,
  `ess_eligible_review_date` date DEFAULT NULL,
  `ess_current_visa` varchar(255) DEFAULT NULL,
  `ess_remarks` varchar(255) DEFAULT NULL,
  `nid_number` text DEFAULT NULL,
  `nid_nationality` varchar(255) DEFAULT NULL,
  `nid_country_residence` varchar(255) DEFAULT NULL,
  `nid_issue_date` date DEFAULT NULL,
  `nid_expire_date` date DEFAULT NULL,
  `nid_eli_review_date` date DEFAULT NULL,
  `nid_current_visa` varchar(255) DEFAULT NULL,
  `nid_remarks` varchar(255) DEFAULT NULL,
  `others_doc_name` varchar(255) DEFAULT NULL,
  `others_ref_name` varchar(255) DEFAULT NULL,
  `others_nationality` varchar(255) DEFAULT NULL,
  `others_issue_date` date DEFAULT NULL,
  `others_expire_date` date DEFAULT NULL,
  `others_eligb_review_date` date DEFAULT NULL,
  `others_visa_sts` varchar(255) DEFAULT NULL,
  `others_remarks` varchar(255) DEFAULT NULL,
  `pay_group` varchar(255) DEFAULT NULL,
  `pay_annual_pay` varchar(255) DEFAULT NULL,
  `pay_wedges_pay_mode` varchar(255) DEFAULT NULL,
  `pay_payment_type` varchar(255) DEFAULT NULL,
  `pay_basic_daily_wedges` varchar(255) DEFAULT NULL,
  `pay_min_working_hour` varchar(255) DEFAULT NULL,
  `pay_tax_code` varchar(255) DEFAULT NULL,
  `pay_tax_ref` varchar(200) DEFAULT NULL,
  `pay_percentage` varchar(200) DEFAULT NULL,
  `pay_payment_mode` varchar(200) DEFAULT NULL,
  `pay_bank_name` varchar(200) DEFAULT NULL,
  `pay_branch_name` varchar(200) DEFAULT NULL,
  `pay_account_no` text DEFAULT NULL,
  `pay_sort_code` text DEFAULT NULL,
  `pay_remarks` text DEFAULT NULL,
  `payment_da` text DEFAULT NULL,
  `payment_hra` text DEFAULT NULL,
  `payment_conven_ta` text DEFAULT NULL,
  `payment_perfomance` text DEFAULT NULL,
  `payment_monthly_al` text DEFAULT NULL,
  `ni_dedu_da` text DEFAULT NULL,
  `ni_dedu_hra` text DEFAULT NULL,
  `ni_dedu_conven_ta` text DEFAULT NULL,
  `ni_dedu_perfomance` text DEFAULT NULL,
  `ni_dedu_monthly_al` text DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `designation_id`, `department_id`, `name`, `email`, `age`, `gender`, `address`, `salary`, `phone`, `joning_date`, `date_of_birth`, `image`, `type_of_doc`, `passport_upload_docs`, `visa_upload_documents`, `euss_upload_documents`, `nid_upload_documents`, `other_upload_documents`, `employee_code`, `first_name`, `middle_name`, `last_name`, `ni_no`, `marital_status`, `country_id`, `employee_type`, `date_of_confirmation`, `contact_start_date`, `contact_end_date`, `job_location`, `reporting_authority`, `leave_sanction_auth`, `education_details`, `job_details`, `key_respons`, `training_details`, `emger_contact_name`, `emger_email`, `emger_contact_no`, `emger_address`, `certifi_title`, `certifi_license_number`, `certifi_start_date`, `certifi_end_date`, `contact_info_post_code`, `contact_info_address`, `contact_info_address_1`, `contact_info_address_2`, `contact_info_address_3`, `contact_info_city_country`, `contact_info_country_id`, `pass_no`, `pass_nationality`, `pass_place_birth`, `pass_issued_by`, `pass_date`, `pass_expire_date`, `pass_review_date`, `visa_brp_np`, `visa_nationality`, `visa_country_residence`, `visa_issuedby`, `visa_issued_date`, `visa_expire_date`, `visa_eligbible_review_date`, `visa_current_yesno`, `visa_remarks`, `ess_ref_no`, `ess_nationality`, `ess_issued_by`, `ess_issued_date`, `ess_expire_date`, `ess_eligible_review_date`, `ess_current_visa`, `ess_remarks`, `nid_number`, `nid_nationality`, `nid_country_residence`, `nid_issue_date`, `nid_expire_date`, `nid_eli_review_date`, `nid_current_visa`, `nid_remarks`, `others_doc_name`, `others_ref_name`, `others_nationality`, `others_issue_date`, `others_expire_date`, `others_eligb_review_date`, `others_visa_sts`, `others_remarks`, `pay_group`, `pay_annual_pay`, `pay_wedges_pay_mode`, `pay_payment_type`, `pay_basic_daily_wedges`, `pay_min_working_hour`, `pay_tax_code`, `pay_tax_ref`, `pay_percentage`, `pay_payment_mode`, `pay_bank_name`, `pay_branch_name`, `pay_account_no`, `pay_sort_code`, `pay_remarks`, `payment_da`, `payment_hra`, `payment_conven_ta`, `payment_perfomance`, `payment_monthly_al`, `ni_dedu_da`, `ni_dedu_hra`, `ni_dedu_conven_ta`, `ni_dedu_perfomance`, `ni_dedu_monthly_al`, `entry_by`, `created_at`, `status`) VALUES
(1, 8, 4, 'Employee-1', 'bijon@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-001', NULL, NULL, NULL, NULL, NULL, NULL, 'CONTRACTUAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-07-16 11:11:49', 1),
(2, 4, 5, 'Ibraheem', 'Ibraheem@gmail.com', '2', '1', 'Dhaka , Bangladesh', 50000.00, '112233456', '2023-07-28', '2023-07-27', '/backend/files/0HjRR3tDHvFgdwr00NAB.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-002', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', NULL, '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:12:51', 0),
(3, 8, 4, 'Raheem', 'Raheem@gmail.com', '32 Yrs', '1', 'Dhaka , Bangladesh', 120000.00, '01915728982', '2023-07-07', '2023-07-21', '/backend/files/n3ZCXWhTKIWVi4TZfHto.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-003', 'null', 'null', 'null', 'null', 'null', 0, 'CONTRACTUAL', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '', '', '', '', '', '', '', '', '', '', 1, '2023-07-16 11:11:49', 0),
(4, 6, 6, 'Employee-3', 'we2022@gmail.com', '444', '1', '333', 34343.00, '343434', '2023-08-08', '2023-08-08', '/backend/files/ESzCAGIDj20ZJNLXthmy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'EMP-004', 'Md.', 'Gazi', 'Uddin', '343434', 'Married', 8, 'CONTRACTUAL', '2023-08-29', '2023-08-17', '2023-08-18', 'fdg', 'dfg', 'dfg', 'dfg', 'dfg', 'dfgdfgdfg', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', '', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', '0000-00-00', '0000-00-00', '0000-00-00', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', NULL, 'null', 'null', 'null', 'null', 1, '2023-08-08 09:55:34', 0),
(5, 3, 4, 'Employee-4', 'onlinesoft@gmail.com', '33f1111', '1', 'fgfdgf1111', 330000.00, 'sdff1111', '2023-08-10', '2023-08-24', '/backend/files/yLueQNQHCDh4PEdlOmzf.jpg', '/backend/files/mK9pawBkTAUCnlnLLVZ8.jpg', '/backend/files/qtjiMkUrXLvCpHnPXfot.jpg', '/backend/files/ackvh94E74xeWVcqbHPt.jpg', '/backend/files/aGTivb3cUepDtHEyj9dm.jpg', '/backend/files/08gLujAFSq6VKfQTbuKi.jpg', NULL, 'EMP-005', 'df1111', 'sdff1111', 'sdff1111', 'dsff1111', 'Single', 4, 'SUSPEND', '2023-08-16', '2023-08-23', '2023-08-31', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgf1111', 'dfgf1111', 'dfgf1111', 'dfgdfgf1111', 'dfgdfgdfg111111', 'dfgdfg@gmail.comf1111', '353434f1111', 'sdfsdff1111', 'sdfsdff1111', 'sdfsdf111111', '2023-08-24', '2023-08-17', 'wewerf1111', 'werwer111111', 'dsfsdfsdf', 'dfdfdsf', 'dsfsdfsdf', '2023-08-31', '6', 'sdfsdf111111', '3', '2023-08-23', 'sdfsdf111111', '2023-08-18', '2023-08-24', '2023-08-25', 'sdf111111', '9', '5', 'sdfsdfsdf111111', '2023-08-22', '2023-08-16', '2023-08-24', 'Yes', '111111111111111111111111', 'sdfsdf11111', '11', 'sdfsdfsdf', '2023-08-31', '2023-08-16', '2023-08-25', 'Yes', 'asdasdf11111f11111f11111', '216548748', '2', '2', '2023-08-24', '2023-08-31', '2023-08-31', 'Yes', 'asdasdf11111f11111f11111', 'asd', 'sadasdasd', '2', '2023-08-17', '2023-08-23', '2023-08-23', 'Yes', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'Cash', 'sdf', 'sdf', 'sdf', 'sdf', 'sdfsdf', 'true', 'true', 'false', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 1, '2023-08-15 11:10:11', 1),
(6, 7, 6, 'Employee6 Six Emp', 'OnlinessSit2221@gmail.com', 'eed', '1', 'fsdfsdf', 34234234.00, '324234', '2023-08-30', '2023-08-16', '/backend/files/I0ZYJ7wmwlVnZ1ZEe6Z9.jpg', '/backend/files/3iJXaelLRTTkIHBlVNq2.jpg', '/backend/files/sWe1DbkAU7lBaLTLQq57.jpg', '/backend/files/3Gqsx9Qm9HWakp3GoJDE.jpg', '/backend/files/kJDdkiRXW3igzULbs1RZ.jpg', NULL, '/backend/files/qQRq3ozkjgiEnkX2pTnl.jpg', 'EMP-006', 'Employee6', 'Six', 'Emp', 'sdfsdf', 'Widow', 10, 'SUSPEND', '2023-08-17', '2023-08-10', '2023-08-17', 'sdfs', '', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 's@gmail.com', 's', 'sdf', 'sfs', 'sdf', '2023-08-21', '2023-08-27', 'asdd', 'fsdf', 'sdf', 'sdf', 'sdfsdf', '2023-08-17', '2', 'dgdfg', '3', '2023-08-24', '3245', '0000-00-00', '0000-00-00', '0000-00-00', 'sdf', '3', '4', 'sdfsdf', '2023-08-17', '2023-08-18', '2023-08-17', '', '', 'sdfs', '6', '234234', '2023-08-21', '2023-08-24', '2023-08-25', 'No', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'undefined', '', '', '', '', '', '', '', '', '', '', '', '', 1, '2023-08-15 21:39:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE `employee_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL COMMENT 'primary key of employee table',
  `title` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_docs`
--

INSERT INTO `employee_docs` (`id`, `emp_id`, `title`, `note`, `doc_name`, `doc`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Title-1', 'Note', NULL, '/backend/files/0LtHc43MXnbUgWIXk2KX.sql', 1, 1, '2023-07-13 04:41:50', '2023-07-28 04:42:07'),
(2, 1, 'Documents of bijon', 'Documents of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijonDocuments of bijon', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:33:22', '2023-07-28 04:33:22'),
(3, 3, 'Raheem122', 'RaheemRaheemRaheem', NULL, '/backend/files/K9jKMJLLg7gBS5tMEdmT.sql', 1, 1, '2023-07-28 04:45:56', '2023-07-28 04:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_holidays`
--

CREATE TABLE `employee_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL COMMENT 'PK Of employees table',
  `holiday` varchar(255) NOT NULL,
  `used_holiday` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_holidays`
--

INSERT INTO `employee_holidays` (`id`, `employee_id`, `holiday`, `used_holiday`, `created_at`, `updated_at`) VALUES
(1, 80, '28', 0, '2023-07-21 11:42:56', '2023-07-21 11:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_request`
--

CREATE TABLE `employee_leave_request` (
  `id` int(11) NOT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `date_of_application` date DEFAULT NULL,
  `no_of_leave` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=pending,\r\n1=Approved 2=Reject. 	',
  `remarks` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_leave_request`
--

INSERT INTO `employee_leave_request` (`id`, `employe_id`, `leave_type_id`, `frm_date`, `to_date`, `date_of_application`, `no_of_leave`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 15:06:15'),
(2, 5, 1, '2023-09-02', '2023-09-07', '2023-09-02', '200', 1, 'xddd', '2023-09-02 19:43:31', '2023-09-03 13:47:43'),
(3, 3, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(4, 6, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(5, 5, 1, '2023-09-02', '2023-09-07', '2023-09-02', '2', 1, NULL, '2023-09-02 19:43:31', '2023-09-02 19:43:31'),
(6, 5, 2, '2023-09-04', '2023-09-21', '2023-09-03', '44', 0, 'kk', '2023-09-03 13:35:14', '2023-09-03 13:35:14'),
(7, 5, 4, '2023-09-01', '2023-09-28', '2023-09-03', '27', 0, 'ddd', '2023-09-03 13:57:44', '2023-09-03 13:58:37'),
(8, 5, 2, '2023-09-01', '2023-09-02', '2023-09-03', '1', 0, NULL, '2023-09-03 13:58:05', '2023-09-03 13:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'FULL TIME', 1, 1),
(2, 'CONTRACTUAL', 1, 1),
(3, 'SUSPEND', 1, 1),
(4, 'PART TIME', 1, 1),
(5, 'LEFT', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year\'s Day', 1, NULL, NULL),
(2, 'Good Friday', 1, NULL, NULL),
(3, 'Early May Bank Holiday', 1, NULL, NULL),
(4, 'Spring Bank Holiday', 1, NULL, NULL),
(5, 'Christmas Day', 1, NULL, NULL),
(6, 'Boxing Day', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_allocation`
--

CREATE TABLE `leave_allocation` (
  `id` int(11) NOT NULL,
  `employee_type` varchar(255) DEFAULT NULL,
  `employe_id` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `maximum_no_annual` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `leave_in_hand` varchar(255) DEFAULT NULL,
  `effective_year` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_allocation`
--

INSERT INTO `leave_allocation` (`id`, `employee_type`, `employe_id`, `year`, `maximum_no_annual`, `leave_type`, `leave_in_hand`, `effective_year`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FULL TIME', 6, '2024', '265', 'Unauthorised Absence', '65', '22222222222', 1, '2023-08-30 17:47:18', '2023-08-31 03:27:51'),
(2, 'FULL TIME', 6, '2021', '265', 'Unauthorised Absence', '5', '2021', 1, '2023-08-30 17:47:18', '2023-08-30 17:47:18'),
(3, 'FULL TIME', 6, '2026', '265', 'Unauthorised Absence', '70', '2022', 1, '2023-08-30 18:12:00', '2023-08-30 18:12:00'),
(4, 'FULL TIME', 5, '2021', '265', 'Unauthorised Absence', '10', '2022', 1, '2023-08-31 03:34:26', '2023-08-31 03:34:26'),
(5, 'FULL TIME', 5, '2023', '265', 'Unauthorised Absence', '5', '2023', 1, '2023-08-31 03:35:16', '2023-08-31 03:35:16'),
(7, 'LEFT', 3, '2026', '150', 'Unauthorised Absence', '5', '2026', 1, '2023-08-31 03:48:27', '2023-08-31 03:48:27'),
(8, 'LEFT', 3, '2024', '150', 'Unauthorised Absence', '145', '2014', 1, '2023-08-31 03:48:59', '2023-08-31 03:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 = Casual Leave, 2 = Medical Leave',
  `application_date` date NOT NULL,
  `start_date` date NOT NULL,
  `previous_start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `previous_end_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `dp_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Approved, 3 = Declined',
  `dp_approved_by` tinyint(4) DEFAULT NULL,
  `dp_approved_date` date DEFAULT NULL,
  `hr_status` tinyint(4) DEFAULT NULL,
  `hr_approved_by` tinyint(4) DEFAULT NULL,
  `hr_approved_date` date DEFAULT NULL,
  `application_date_changed_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_list`
--

CREATE TABLE `leave_list` (
  `id` int(11) NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `no_of_days` varchar(255) DEFAULT NULL,
  `holiday_description` varchar(255) DEFAULT NULL,
  `holiday_type_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_list`
--

INSERT INTO `leave_list` (`id`, `day`, `frm_date`, `to_date`, `no_of_days`, `holiday_description`, `holiday_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Friday', '2023-08-03', '2023-08-31', '434', 'Description-1', 3, 1, '2023-08-30 05:57:54', '2023-08-30 06:54:51'),
(2, 'thrusday', '2023-08-30', '2023-09-27', '3', 'Description-2', 3, 1, '2023-08-30 05:59:11', '2023-08-30 05:59:11'),
(3, 'tuesday', '2023-08-24', '2023-08-31', '33', 'Description-3', 5, 1, '2023-08-30 06:07:15', '2023-08-30 06:07:15'),
(4, 'sunday', '2023-08-24', '2023-08-31', '333', 'Description-4', 4, 1, '2023-08-30 06:08:00', '2023-08-30 06:08:00'),
(5, 'monday', '2023-08-01', '2023-08-17', '16', 'Description-5', 3, 1, '2023-08-30 06:20:10', '2023-08-30 06:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `leave_rule`
--

CREATE TABLE `leave_rule` (
  `id` int(11) NOT NULL,
  `employee_type_id` int(11) DEFAULT NULL,
  `leave_type_id` int(11) DEFAULT NULL,
  `maximum_no_annual` varchar(150) DEFAULT NULL,
  `effective_from` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_rule`
--

INSERT INTO `leave_rule` (`id`, `employee_type_id`, `leave_type_id`, `maximum_no_annual`, `effective_from`, `effective_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '265', '2023-01-01', '2023-12-31', 2, '2023-08-30 13:01:21', '2023-09-02 15:05:11'),
(2, 2, 7, '160', '2023-01-01', '2023-12-31', 1, '2023-08-30 13:02:06', '2023-08-30 16:40:26'),
(3, 5, 1, '150', '2024-01-01', '2024-12-31', 1, '2023-08-31 03:48:09', '2023-08-31 03:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Unauthorised Absence', 'U', 1, '2023-08-30 11:37:29', '2023-08-30 11:51:33'),
(2, 'Paternity Leave', 'PT', 1, '2023-08-30 11:39:39', '2023-08-30 11:51:40'),
(3, 'Holiday', 'H', 1, '2023-08-30 11:51:54', '2023-08-30 11:51:54'),
(4, 'Parental Leave', 'PL', 1, '2023-08-30 11:52:06', '2023-08-30 11:52:06'),
(5, 'Public Duties', 'P', 1, '2023-08-30 11:52:17', '2023-08-30 11:52:17'),
(6, 'Maternity Leave', 'M', 1, '2023-08-30 11:52:28', '2023-08-30 11:52:28'),
(7, 'Jury Service', 'J', 1, '2023-08-30 11:52:41', '2023-08-30 11:52:41'),
(8, 'Bereavement Leave', 'B', 1, '2023-08-30 11:52:50', '2023-08-30 11:52:50'),
(9, 'Antenatal', 'AN', 1, '2023-08-30 11:53:01', '2023-08-30 11:53:01'),
(10, 'Adoption Leave', 'AL', 1, '2023-08-30 11:53:11', '2023-08-30 11:53:11'),
(11, 'Authorised Absence', 'A', 1, '2023-08-30 11:53:25', '2023-08-30 11:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Payment_type',
  `working_hour` varchar(255) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `name`, `working_hour`, `rate`, `status`, `entry_by`) VALUES
(1, 'Bank', '120', 100.00, 1, 1),
(2, 'Bank', '12', 15.00, 1, 1),
(3, 'Bank', '12', 30.00, 1, 1),
(4, 'Crypto', '6', 40.00, 1, 1),
(5, 'Crypto', '120', 100.00, 1, 1),
(6, 'TT', '33', 3333.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_pay_item`
--

CREATE TABLE `payroll_pay_item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Head',
  `in_percent` varchar(255) DEFAULT NULL,
  `in_rupees` varchar(255) DEFAULT NULL,
  `min_value` varchar(255) DEFAULT NULL,
  `max_value` varchar(255) DEFAULT NULL,
  `effective_frm` date DEFAULT NULL,
  `effective_to` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_pay_item`
--

INSERT INTO `payroll_pay_item` (`id`, `name`, `in_percent`, `in_rupees`, `min_value`, `max_value`, `effective_frm`, `effective_to`, `status`, `entry_by`) VALUES
(1, 'Test', '5', 'Yes', '15', '254', '2023-08-27', '2023-08-27', 1, 1),
(2, '213333', 'sdfsdf', '34', '33', '33', '2023-08-24', '2023-08-31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pay_group`
--

CREATE TABLE `pay_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_group`
--

INSERT INTO `pay_group` (`id`, `name`, `status`, `entry_by`) VALUES
(1, 'Administrative Staff', 1, 1),
(2, 'Technical Team', 1, 1),
(3, 'Sales Team', 1, 1),
(4, 'Customer Service', 1, 1),
(5, 'Management', 1, 1),
(6, 'Production Workers', 1, 1),
(7, 'Finance and Accounting', 1, 1),
(8, 'Marketing and Communications', 1, 1),
(9, 'Research and Development (R&D)', 1, 1),
(10, 'Operations and Logistics', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`) VALUES
(1, 'dfgdfg', 'dd'),
(2, '1.95', 'ssdf'),
(3, 'sdfsdfsdf', 'ss'),
(4, 'zxc', 'pop'),
(5, 'Beef tozo', 'l;;l;'),
(6, 'xcv', 'xcvxcv');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `product_tag` varchar(255) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `download_link` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `discount_status` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `free_shopping` int(11) DEFAULT NULL,
  `flat_rate_status` int(11) DEFAULT NULL,
  `flat_rate_price` double(10,5) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vat_status` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_status` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `year`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(1, 'VIP Plate-1', 'ableton-live-11-2-5', 'As of my last update in January 2022', '', '', '', 'Ableton', NULL, NULL, NULL, NULL, 150.00, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/file/oLlQGDya#_RS0ZL8A0vNilEAqFIs1ZK7y28zGtvIMXGvrV1xZEvg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/Kf2aZ1i8VHTeyrohOcIa.png', 1, 1, NULL, NULL, NULL),
(2, 'VIP Plate-2', '4k-video-to-mp3-3-0-1-full-macos', 'As of my last update in January 2022', '', '', '', '', NULL, NULL, NULL, NULL, 250.00, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/file/5GUDGQZQ#0GE5bNZQYhQ1CFtywUi6YqsWLfAS6F0HFR1bF17egTw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/03YTZxCvLMSgBLEZZ4F9.png', 1, 1, 7500, NULL, '2023-12-03 12:08:23'),
(3, 'VIP Plate-3', '4k-tokkit-pro-1-4-1-free-download-2', 'As of my last update in January 2022', '4K-Tokkit-Pro-1.4.1-Free-Download-2', '', '', '', NULL, NULL, NULL, NULL, 350.00, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/file/QLUkAA6a#6vZctDs4-7CEWhL9O1UasBcDh_L-ys84J6dNECOamg8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/ddn8kwFgv22c6ZZqPc5t.png', 1, 1, 1250, NULL, '2023-11-27 07:52:48'),
(4, 'VIP Plate-4', 'adobe-acrobat-pro-dc', 'As of my last update in January 2022', 'Adobe Acrobat Pro DC', '', '', '', NULL, NULL, NULL, NULL, 450.00, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/file/hasQyZDK#uIasyxtavgbQNfJ3nshlRqIIV_kXhhdr-igPCqYI66E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/whxM9CNMLrI6aR5wd9Kb.png', 1, 1, 5000, NULL, '2023-11-27 18:48:42'),
(5, 'VIP Plate-5', 'adobe-animate-cc-2019-v19-1-349-pre-cracked', 'As of my last update in January 2022', '', '', '', '', NULL, NULL, NULL, NULL, 500.00, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/file/AH1VCaKK#jLsWoSfMoCJKOddKo6wRxzMiUarFdiq7I99nb5iUWJk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/5Kk8BceD5MuBA9zljzPn.png', 1, 1, 6250, NULL, '2023-12-05 05:30:35'),
(6, 'VIP Plate-6', 'adobe-animate-2020-pre-activated', 'As of my last update in January 2022', 'Adobe Animate (2020) Pre-Activated', '', '', '', NULL, NULL, NULL, NULL, 680.00, NULL, NULL, NULL, NULL, NULL, 'https://mega.nz/file/5P1UiTbJ#n5shl2Kg4N1b1-dExTAEh6ZbJi3imJlFvT6nFLhQfCk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/backend/files/hQ1WQ7PO2A189iGlDrJe.png', 1, 1, 2500, NULL, '2023-11-27 15:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attributes_id` int(11) NOT NULL,
  `attr_status` int(11) NOT NULL COMMENT '0=delete action off\r\n1=delete action on \r\nwhen matching product_variants table then action working',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes_values_history`
--

CREATE TABLE `product_attributes_values_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `product_attribute_id` int(11) DEFAULT NULL,
  `product_att_value_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pro_attr_val_his_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants_history`
--

CREATE TABLE `product_variants_history` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pro_varient_id` int(11) NOT NULL,
  `pro_attr_val_his_id` int(11) NOT NULL,
  `varient_name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produc_categories`
--

CREATE TABLE `produc_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produc_categories`
--

INSERT INTO `produc_categories` (`id`, `product_id`, `category_id`, `parent_id`) VALUES
(1, 1, 38, '1,38'),
(14, 14, 8, '1,8'),
(15, 15, 38, '1,38'),
(16, 1, 38, '1,38'),
(17, 2, 38, '1,38'),
(18, 3, 38, '1,38'),
(19, 4, 38, '1,38'),
(22, 7, 6, '1,6'),
(23, 8, 6, '1,6'),
(24, 9, 6, '1,6'),
(25, 10, 7, '1,7'),
(26, 11, 7, '1,7'),
(27, 12, 7, '1,7'),
(28, 13, 8, '1,8'),
(29, 14, 8, '1,8'),
(30, 15, 14, '2,14'),
(31, 16, 14, '2,14'),
(32, 17, 14, '2,14'),
(33, 18, 15, '2,15'),
(34, 19, 15, '2,15'),
(35, 20, 15, '2,15'),
(36, 21, 16, '2,16'),
(37, 22, 16, '2,16'),
(38, 23, 16, '2,16'),
(39, 24, 17, '2,17'),
(40, 25, 17, '2,17'),
(41, 26, 17, '2,17'),
(42, 27, 17, '2,17'),
(43, 28, 17, '2,17'),
(44, 29, 17, '2,17'),
(45, 30, 9, '1,9'),
(46, 31, 9, '1,9'),
(47, 32, 9, '1,9'),
(48, 33, 10, '1,10'),
(49, 34, 10, '1,10'),
(50, 35, 10, '1,10'),
(51, 36, 1, '1'),
(52, 37, 1, '1'),
(63, 47, 18, '3,18'),
(64, 48, 18, '3,18'),
(65, 49, 18, '3,18'),
(66, 50, 3, '3'),
(67, 50, 18, '3,18'),
(92, 75, 7, '1,7'),
(94, 77, 7, '1,7'),
(95, 78, 7, '1,7'),
(96, 79, 7, '1,7'),
(97, 80, 8, '1,8'),
(98, 81, 8, '1,8'),
(99, 72, 6, '1,6'),
(100, 73, 6, '1,6'),
(101, 74, 6, '1,6'),
(102, 82, 8, '1,8'),
(103, 83, 8, '1,8'),
(104, 84, 8, '1,8'),
(105, 85, 8, '1,8'),
(106, 86, 8, '1,8'),
(107, 87, 8, '1,8'),
(108, 88, 8, '1,8'),
(109, 89, 8, '1,8'),
(110, 90, 8, '1,8'),
(111, 91, 8, '1,8'),
(112, 92, 8, '1,8'),
(113, 93, 9, '1,9'),
(114, 94, 9, '1,9'),
(115, 95, 9, '1,9'),
(116, 96, 9, '1,9'),
(117, 97, 9, '1,9'),
(118, 98, 9, '1,9'),
(119, 71, 5, '1,5'),
(120, 70, 5, '1,5'),
(121, 69, 5, '1,5'),
(122, 67, 5, '1,5'),
(123, 68, 5, '1,5'),
(124, 66, 5, '1,5'),
(125, 65, 5, '1,5'),
(126, 64, 5, '1,5'),
(127, 63, 5, '1,5'),
(128, 62, 5, '1,5'),
(129, 61, 5, '1,5'),
(130, 60, 5, '1,5'),
(131, 59, 5, '1,5'),
(132, 58, 5, '1,5'),
(133, 57, 5, '1,5'),
(134, 56, 5, '1,5'),
(135, 55, 5, '1,5'),
(136, 54, 5, '1,5'),
(137, 53, 5, '1,5'),
(138, 52, 5, '1,5'),
(139, 51, 5, '1,5'),
(140, 6, 5, '1,5'),
(141, 5, 5, '1,5'),
(142, 4, 5, '1,5'),
(143, 99, 14, '2,14'),
(144, 100, 14, '2,14'),
(145, 101, 14, '2,14'),
(146, 102, 14, '2,14'),
(147, 103, 14, '2,14'),
(148, 104, 14, '2,14'),
(149, 105, 14, '2,14'),
(150, 106, 14, '2,14'),
(151, 107, 14, '2,14'),
(152, 108, 14, '2,14'),
(153, 109, 14, '2,14'),
(154, 110, 14, '2,14'),
(155, 111, 14, '2,14'),
(156, 112, 14, '2,14'),
(157, 113, 14, '2,14'),
(158, 114, 14, '2,14'),
(159, 115, 14, '2,14'),
(160, 116, 14, '2,14'),
(161, 117, 14, '2,14'),
(162, 118, 14, '2,14'),
(163, 119, 14, '2,14'),
(164, 120, 14, '2,14'),
(165, 121, 14, '2,14'),
(166, 122, 14, '2,14'),
(167, 123, 14, '2,14'),
(168, 124, 14, '2,14'),
(169, 125, 14, '2,14'),
(170, 126, 14, '2,14'),
(171, 127, 14, '2,14'),
(172, 128, 15, '2,15'),
(173, 129, 15, '2,15'),
(174, 130, 15, '2,15'),
(175, 131, 15, '2,15'),
(176, 132, 15, '2,15'),
(177, 133, 15, '2,15'),
(178, 134, 15, '2,15'),
(179, 135, 15, '2,15'),
(180, 136, 15, '2,15'),
(181, 137, 15, '2,15'),
(182, 138, 15, '2,15'),
(183, 139, 15, '2,15'),
(184, 140, 15, '2,15'),
(185, 141, 15, '2,15'),
(186, 142, 16, '2,16'),
(187, 143, 16, '2,16'),
(188, 144, 16, '2,16'),
(189, 145, 16, '2,16'),
(190, 146, 16, '2,16'),
(191, 147, 16, '2,16'),
(192, 148, 16, '2,16'),
(193, 149, 16, '2,16'),
(194, 150, 16, '2,16'),
(195, 151, 16, '2,16'),
(196, 152, 16, '2,16'),
(197, 153, 10, '1,10'),
(198, 154, 10, '1,10'),
(199, 155, 10, '1,10'),
(200, 156, 10, '1,10'),
(201, 157, 10, '1,10'),
(202, 158, 10, '1,10'),
(203, 159, 10, '1,10'),
(204, 160, 10, '1,10'),
(205, 161, 10, '1,10'),
(206, 162, 10, '1,10'),
(207, 163, 10, '1,10'),
(208, 164, 10, '1,10'),
(209, 165, 10, '1,10'),
(210, 166, 10, '1,10'),
(211, 167, 10, '1,10'),
(212, 168, 10, '1,10'),
(213, 169, 10, '1,10'),
(214, 170, 10, '1,10'),
(215, 171, 10, '1,10'),
(216, 172, 10, '1,10'),
(217, 173, 10, '1,10'),
(218, 174, 10, '1,10'),
(219, 175, 10, '1,10'),
(220, 176, 10, '1,10'),
(221, 177, 10, '1,10'),
(222, 178, 10, '1,10'),
(223, 179, 10, '1,10'),
(224, 180, 10, '1,10'),
(225, 181, 10, '1,10'),
(226, 182, 10, '1,10'),
(227, 183, 10, '1,10'),
(228, 184, 10, '1,10'),
(229, 185, 10, '1,10'),
(230, 186, 10, '1,10'),
(231, 187, 10, '1,10'),
(232, 188, 10, '1,10'),
(233, 189, 10, '1,10'),
(234, 190, 11, '1,11'),
(235, 191, 11, '1,11'),
(236, 192, 11, '1,11'),
(237, 193, 11, '1,11'),
(238, 194, 11, '1,11'),
(239, 195, 11, '1,11'),
(240, 196, 11, '1,11'),
(241, 197, 11, '1,11'),
(242, 198, 11, '1,11'),
(243, 199, 11, '1,11'),
(244, 200, 11, '1,11'),
(245, 201, 11, '1,11'),
(246, 202, 11, '1,11'),
(247, 203, 11, '1,11'),
(248, 204, 11, '1,11'),
(249, 205, 11, '1,11'),
(250, 206, 11, '1,11'),
(251, 207, 11, '1,11'),
(252, 208, 11, '1,11'),
(294, 249, 39, '1,39'),
(295, 250, 39, '1,39'),
(296, 251, 39, '1,39'),
(297, 252, 39, '1,39'),
(298, 253, 39, '1,39'),
(299, 254, 39, '1,39'),
(300, 255, 39, '1,39'),
(301, 256, 39, '1,39'),
(302, 257, 39, '1,39'),
(303, 258, 39, '1,39'),
(304, 259, 39, '1,39'),
(305, 260, 39, '1,39'),
(306, 261, 39, '1,39'),
(307, 262, 39, '1,39'),
(308, 263, 39, '1,39'),
(309, 264, 39, '1,39'),
(310, 265, 39, '1,39'),
(311, 266, 39, '1,39'),
(312, 267, 39, '1,39'),
(313, 268, 39, '1,39'),
(314, 269, 39, '1,39'),
(315, 270, 39, '1,39'),
(316, 271, 39, '1,39'),
(317, 272, 39, '1,39'),
(318, 273, 39, '1,39'),
(319, 274, 39, '1,39'),
(320, 275, 39, '1,39'),
(321, 276, 39, '1,39'),
(322, 277, 39, '1,39'),
(323, 278, 39, '1,39'),
(324, 279, 39, '1,39'),
(325, 280, 39, '1,39'),
(326, 281, 39, '1,39'),
(327, 282, 39, '1,39'),
(328, 283, 39, '1,39'),
(329, 284, 39, '1,39'),
(330, 285, 39, '1,39'),
(331, 286, 39, '1,39'),
(332, 287, 39, '1,39'),
(333, 288, 39, '1,39'),
(334, 289, 39, '1,39'),
(335, 290, 39, '1,39'),
(336, 291, 39, '1,39'),
(337, 292, 39, '1,39'),
(338, 293, 39, '1,39'),
(339, 294, 39, '1,39'),
(340, 295, 39, '1,39'),
(341, 296, 39, '1,39'),
(342, 297, 39, '1,39'),
(343, 298, 39, '1,39'),
(344, 299, 39, '1,39'),
(345, 300, 39, '1,39'),
(346, 301, 39, '1,39'),
(347, 302, 39, '1,39'),
(348, 303, 39, '1,39'),
(349, 304, 39, '1,39'),
(350, 305, 39, '1,39'),
(351, 306, 39, '1,39'),
(352, 307, 39, '1,39'),
(353, 308, 39, '1,39'),
(354, 309, 39, '1,39'),
(355, 310, 39, '1,39'),
(356, 311, 39, '1,39'),
(357, 312, 39, '1,39'),
(358, 313, 39, '1,39'),
(359, 314, 39, '1,39'),
(360, 315, 39, '1,39'),
(361, 316, 39, '1,39'),
(362, 317, 39, '1,39'),
(363, 318, 39, '1,39'),
(364, 319, 39, '1,39'),
(365, 320, 39, '1,39'),
(366, 321, 39, '1,39'),
(367, 322, 39, '1,39'),
(368, 323, 39, '1,39'),
(369, 324, 39, '1,39'),
(370, 325, 39, '1,39'),
(371, 326, 39, '1,39'),
(372, 327, 39, '1,39'),
(373, 328, 39, '1,39'),
(374, 329, 39, '1,39'),
(375, 330, 39, '1,39'),
(376, 331, 39, '1,39'),
(377, 332, 39, '1,39'),
(378, 333, 39, '1,39'),
(379, 334, 39, '1,39'),
(380, 335, 39, '1,39'),
(381, 336, 39, '1,39'),
(382, 337, 39, '1,39'),
(383, 338, 39, '1,39'),
(384, 339, 39, '1,39'),
(385, 340, 39, '1,39'),
(386, 341, 39, '1,39'),
(387, 342, 39, '1,39'),
(388, 343, 39, '1,39'),
(389, 344, 39, '1,39'),
(390, 345, 39, '1,39'),
(391, 346, 39, '1,39'),
(392, 347, 39, '1,39'),
(393, 348, 39, '1,39'),
(394, 349, 39, '1,39'),
(395, 350, 39, '1,39'),
(396, 351, 39, '1,39'),
(397, 352, 39, '1,39'),
(398, 353, 39, '1,39'),
(399, 354, 39, '1,39'),
(400, 355, 39, '1,39'),
(401, 356, 39, '1,39'),
(402, 76, 7, '1,7'),
(403, 76, 39, '1,39'),
(404, 357, 39, '1,39'),
(405, 358, 39, '1,39'),
(406, 359, 39, '1,39'),
(407, 360, 39, '1,39'),
(408, 361, 39, '1,39'),
(409, 362, 39, '1,39'),
(410, 363, 39, '1,39'),
(411, 364, 39, '1,39'),
(412, 365, 39, '1,39'),
(413, 366, 39, '1,39'),
(414, 367, 39, '1,39'),
(415, 368, 39, '1,39'),
(416, 369, 39, '1,39'),
(417, 370, 39, '1,39'),
(418, 371, 39, '1,39'),
(419, 372, 39, '1,39'),
(420, 373, 39, '1,39'),
(421, 374, 39, '1,39'),
(422, 375, 39, '1,39'),
(423, 376, 39, '1,39'),
(424, 377, 39, '1,39'),
(425, 378, 39, '1,39'),
(426, 379, 39, '1,39'),
(427, 380, 39, '1,39'),
(428, 381, 39, '1,39'),
(429, 382, 39, '1,39'),
(430, 383, 39, '1,39'),
(431, 384, 39, '1,39'),
(432, 385, 39, '1,39'),
(433, 386, 39, '1,39'),
(434, 387, 39, '1,39'),
(435, 388, 39, '1,39'),
(436, 389, 39, '1,39'),
(437, 390, 39, '1,39'),
(438, 391, 39, '1,39'),
(439, 392, 39, '1,39'),
(440, 393, 39, '1,39'),
(441, 394, 39, '1,39'),
(442, 395, 39, '1,39'),
(443, 396, 39, '1,39'),
(444, 397, 39, '1,39'),
(445, 398, 39, '1,39'),
(446, 399, 39, '1,39'),
(447, 400, 39, '1,39'),
(448, 401, 39, '1,39'),
(449, 402, 7, '1,7'),
(450, 402, 39, '1,39'),
(451, 403, 39, '1,39'),
(452, 404, 39, '1,39'),
(453, 405, 10, '1,10'),
(454, 405, 39, '1,39'),
(455, 406, 39, '1,39'),
(456, 407, 7, '1,7'),
(457, 407, 39, '1,39'),
(458, 408, 39, '1,39'),
(459, 409, 7, '1,7'),
(460, 409, 39, '1,39'),
(461, 410, 39, '1,39'),
(462, 411, 39, '1,39'),
(463, 412, 10, '1,10'),
(464, 412, 39, '1,39'),
(465, 413, 10, '1,10'),
(466, 413, 39, '1,39'),
(467, 414, 39, '1,39'),
(468, 415, 39, '1,39'),
(469, 416, 39, '1,39'),
(470, 417, 39, '1,39'),
(471, 418, 39, '1,39'),
(472, 419, 39, '1,39'),
(473, 420, 39, '1,39'),
(474, 421, 39, '1,39'),
(475, 422, 39, '1,39'),
(476, 423, 39, '1,39'),
(477, 424, 10, '1,10'),
(478, 424, 39, '1,39'),
(479, 425, 39, '1,39'),
(480, 426, 39, '1,39'),
(481, 427, 39, '1,39'),
(482, 428, 7, '1,7'),
(483, 428, 39, '1,39'),
(484, 429, 38, '1,38'),
(485, 430, 38, '1,38'),
(486, 431, 38, '1,38'),
(487, 432, 38, '1,38'),
(488, 433, 38, '1,38'),
(489, 434, 38, '1,38'),
(490, 435, 38, '1,38'),
(491, 436, 38, '1,38'),
(492, 437, 38, '1,38'),
(493, 438, 38, '1,38'),
(494, 439, 38, '1,38'),
(495, 440, 38, '1,38'),
(496, 441, 38, '1,38'),
(497, 442, 38, '1,38'),
(498, 443, 38, '1,38'),
(499, 444, 38, '1,38'),
(500, 445, 38, '1,38'),
(501, 446, 38, '1,38'),
(502, 447, 38, '1,38'),
(503, 448, 38, '1,38'),
(504, 449, 38, '1,38'),
(505, 450, 38, '1,38'),
(506, 451, 38, '1,38'),
(507, 452, 38, '1,38'),
(508, 453, 38, '1,38'),
(509, 454, 38, '1,38'),
(510, 455, 38, '1,38'),
(511, 456, 38, '1,38'),
(512, 457, 38, '1,38'),
(513, 458, 38, '1,38'),
(514, 459, 38, '1,38'),
(515, 460, 38, '1,38'),
(516, 461, 38, '1,38'),
(517, 462, 38, '1,38'),
(518, 463, 38, '1,38'),
(519, 464, 38, '1,38'),
(520, 465, 38, '1,38'),
(521, 466, 38, '1,38'),
(522, 467, 38, '1,38'),
(523, 468, 38, '1,38'),
(524, 469, 38, '1,38'),
(525, 470, 38, '1,38'),
(526, 471, 38, '1,38'),
(527, 472, 38, '1,38'),
(528, 473, 38, '1,38'),
(529, 474, 38, '1,38'),
(530, 475, 38, '1,38'),
(531, 476, 38, '1,38'),
(532, 477, 38, '1,38'),
(533, 478, 38, '1,38'),
(534, 479, 38, '1,38'),
(535, 480, 38, '1,38'),
(536, 481, 38, '1,38'),
(537, 482, 38, '1,38'),
(538, 483, 38, '1,38'),
(539, 484, 38, '1,38'),
(540, 485, 38, '1,38'),
(541, 486, 38, '1,38'),
(542, 487, 38, '1,38'),
(543, 488, 38, '1,38'),
(544, 489, 38, '1,38'),
(545, 490, 38, '1,38'),
(546, 491, 38, '1,38'),
(547, 492, 38, '1,38'),
(548, 493, 38, '1,38'),
(549, 494, 38, '1,38'),
(550, 495, 38, '1,38'),
(551, 496, 38, '1,38'),
(552, 497, 38, '1,38'),
(553, 498, 38, '1,38'),
(554, 499, 38, '1,38'),
(555, 500, 38, '1,38'),
(556, 501, 38, '1,38'),
(557, 502, 38, '1,38'),
(558, 503, 38, '1,38'),
(559, 504, 38, '1,38'),
(560, 505, 38, '1,38'),
(561, 506, 38, '1,38'),
(562, 507, 38, '1,38'),
(563, 508, 38, '1,38'),
(564, 509, 38, '1,38'),
(565, 510, 38, '1,38'),
(566, 511, 38, '1,38'),
(567, 512, 38, '1,38'),
(568, 513, 38, '1,38'),
(569, 514, 38, '1,38'),
(570, 515, 38, '1,38'),
(571, 516, 38, '1,38'),
(572, 517, 38, '1,38'),
(573, 518, 38, '1,38'),
(574, 519, 38, '1,38'),
(575, 520, 38, '1,38'),
(576, 521, 38, '1,38'),
(577, 522, 38, '1,38'),
(578, 523, 38, '1,38'),
(579, 524, 38, '1,38'),
(580, 525, 38, '1,38'),
(581, 526, 38, '1,38'),
(582, 527, 38, '1,38'),
(583, 528, 38, '1,38'),
(584, 529, 38, '1,38'),
(585, 530, 38, '1,38'),
(586, 531, 38, '1,38'),
(587, 532, 38, '1,38'),
(588, 533, 38, '1,38'),
(589, 534, 38, '1,38'),
(590, 535, 38, '1,38'),
(591, 536, 38, '1,38'),
(592, 537, 38, '1,38'),
(593, 538, 38, '1,38'),
(594, 539, 38, '1,38'),
(595, 540, 38, '1,38'),
(596, 541, 38, '1,38'),
(597, 542, 38, '1,38'),
(598, 543, 38, '1,38'),
(599, 544, 38, '1,38'),
(600, 545, 38, '1,38'),
(601, 546, 38, '1,38'),
(602, 547, 38, '1,38'),
(603, 548, 38, '1,38'),
(604, 549, 38, '1,38'),
(605, 550, 38, '1,38'),
(606, 551, 38, '1,38'),
(607, 552, 38, '1,38'),
(608, 553, 38, '1,38'),
(609, 554, 38, '1,38'),
(610, 555, 38, '1,38'),
(611, 556, 38, '1,38'),
(612, 557, 38, '1,38'),
(613, 558, 38, '1,38'),
(614, 559, 38, '1,38'),
(615, 560, 38, '1,38'),
(616, 561, 38, '1,38'),
(617, 562, 38, '1,38'),
(618, 563, 38, '1,38'),
(619, 564, 38, '1,38'),
(620, 565, 38, '1,38'),
(621, 566, 38, '1,38'),
(622, 567, 38, '1,38'),
(623, 568, 38, '1,38'),
(624, 569, 38, '1,38'),
(625, 570, 38, '1,38'),
(626, 571, 38, '1,38'),
(627, 572, 38, '1,38'),
(628, 573, 38, '1,38'),
(629, 574, 38, '1,38'),
(630, 575, 38, '1,38'),
(631, 576, 38, '1,38'),
(632, 577, 38, '1,38'),
(633, 578, 38, '1,38'),
(634, 579, 38, '1,38'),
(635, 580, 38, '1,38'),
(636, 581, 38, '1,38'),
(637, 582, 38, '1,38'),
(638, 583, 38, '1,38'),
(639, 584, 38, '1,38'),
(640, 585, 38, '1,38'),
(641, 586, 38, '1,38'),
(642, 587, 38, '1,38'),
(643, 588, 38, '1,38'),
(644, 589, 38, '1,38'),
(645, 590, 38, '1,38'),
(646, 591, 38, '1,38'),
(647, 592, 38, '1,38'),
(648, 593, 38, '1,38'),
(649, 594, 38, '1,38'),
(650, 595, 38, '1,38'),
(651, 596, 38, '1,38'),
(652, 597, 38, '1,38'),
(653, 598, 38, '1,38'),
(654, 599, 38, '1,38'),
(655, 600, 38, '1,38'),
(656, 601, 38, '1,38'),
(657, 602, 38, '1,38'),
(658, 603, 38, '1,38'),
(659, 604, 38, '1,38'),
(660, 605, 38, '1,38'),
(661, 606, 38, '1,38'),
(662, 607, 38, '1,38'),
(663, 608, 38, '1,38'),
(664, 609, 38, '1,38'),
(665, 610, 38, '1,38'),
(666, 611, 38, '1,38'),
(667, 612, 38, '1,38'),
(668, 613, 38, '1,38'),
(669, 614, 38, '1,38'),
(670, 615, 38, '1,38'),
(671, 616, 38, '1,38'),
(672, 617, 38, '1,38'),
(673, 618, 38, '1,38'),
(674, 619, 38, '1,38'),
(675, 620, 38, '1,38'),
(676, 621, 38, '1,38'),
(677, 622, 38, '1,38'),
(678, 623, 38, '1,38'),
(679, 624, 38, '1,38'),
(680, 625, 38, '1,38'),
(681, 626, 38, '1,38'),
(682, 627, 38, '1,38'),
(683, 628, 38, '1,38'),
(684, 629, 38, '1,38'),
(685, 630, 38, '1,38'),
(686, 631, 38, '1,38'),
(687, 632, 38, '1,38'),
(688, 633, 38, '1,38'),
(689, 634, 38, '1,38'),
(690, 635, 38, '1,38'),
(691, 636, 38, '1,38'),
(692, 637, 38, '1,38'),
(693, 638, 38, '1,38'),
(694, 639, 38, '1,38'),
(695, 640, 38, '1,38'),
(696, 641, 38, '1,38'),
(697, 642, 38, '1,38'),
(698, 643, 38, '1,38'),
(699, 644, 38, '1,38'),
(700, 645, 38, '1,38'),
(701, 646, 38, '1,38'),
(702, 647, 38, '1,38'),
(703, 648, 38, '1,38'),
(704, 649, 38, '1,38'),
(705, 650, 38, '1,38'),
(706, 651, 38, '1,38'),
(707, 652, 38, '1,38'),
(708, 653, 38, '1,38'),
(709, 654, 38, '1,38'),
(710, 655, 38, '1,38'),
(711, 656, 38, '1,38'),
(712, 657, 38, '1,38'),
(713, 658, 38, '1,38'),
(714, 659, 38, '1,38'),
(715, 660, 38, '1,38'),
(716, 661, 38, '1,38'),
(717, 662, 38, '1,38'),
(718, 663, 38, '1,38'),
(719, 664, 38, '1,38'),
(720, 665, 38, '1,38'),
(721, 666, 38, '1,38'),
(722, 667, 38, '1,38'),
(723, 668, 38, '1,38'),
(724, 669, 38, '1,38'),
(725, 670, 38, '1,38'),
(726, 671, 38, '1,38'),
(727, 672, 38, '1,38'),
(728, 673, 38, '1,38'),
(729, 674, 38, '1,38'),
(730, 675, 38, '1,38'),
(731, 676, 38, '1,38'),
(732, 677, 38, '1,38'),
(733, 678, 38, '1,38'),
(734, 679, 38, '1,38'),
(735, 680, 38, '1,38'),
(736, 681, 38, '1,38'),
(737, 682, 38, '1,38'),
(738, 683, 38, '1,38'),
(739, 684, 38, '1,38'),
(740, 685, 38, '1,38'),
(741, 686, 38, '1,38'),
(742, 687, 38, '1,38'),
(743, 688, 38, '1,38'),
(744, 689, 38, '1,38'),
(745, 690, 38, '1,38'),
(746, 691, 38, '1,38'),
(747, 692, 38, '1,38'),
(748, 693, 38, '1,38'),
(749, 694, 38, '1,38'),
(750, 695, 38, '1,38'),
(751, 696, 38, '1,38'),
(752, 697, 38, '1,38'),
(753, 698, 38, '1,38'),
(754, 699, 38, '1,38'),
(755, 700, 38, '1,38'),
(756, 701, 38, '1,38'),
(757, 702, 38, '1,38'),
(758, 703, 38, '1,38'),
(759, 704, 38, '1,38'),
(760, 705, 38, '1,38'),
(761, 706, 38, '1,38'),
(762, 707, 38, '1,38'),
(763, 708, 38, '1,38'),
(764, 709, 38, '1,38'),
(765, 710, 38, '1,38'),
(766, 711, 38, '1,38'),
(767, 712, 40, '4,40'),
(768, 713, 40, '4,40'),
(790, 735, 37, '4,37'),
(791, 734, 37, '4,37'),
(792, 732, 37, '4,37'),
(793, 736, 37, '4,37'),
(794, 737, 37, '4,37'),
(795, 738, 37, '4,37'),
(796, 739, 37, '4,37'),
(797, 740, 37, '4,37'),
(798, 741, 37, '4,37'),
(799, 742, 37, '4,37'),
(800, 743, 37, '4,37'),
(801, 744, 37, '4,37'),
(802, 745, 37, '4,37'),
(803, 746, 37, '4,37'),
(805, 748, 37, '4,37'),
(806, 749, 37, '4,37'),
(807, 750, 37, '4,37'),
(808, 751, 37, '4,37'),
(809, 752, 37, '4,37'),
(810, 753, 37, '4,37'),
(811, 754, 37, '4,37'),
(812, 755, 37, '4,37'),
(813, 756, 37, '4,37'),
(814, 757, 37, '4,37'),
(815, 758, 37, '4,37'),
(816, 759, 37, '4,37'),
(817, 760, 37, '4,37'),
(818, 761, 37, '4,37'),
(819, 762, 37, '4,37'),
(820, 763, 37, '4,37'),
(821, 764, 37, '4,37'),
(822, 765, 37, '4,37'),
(823, 766, 37, '4,37'),
(824, 767, 37, '4,37'),
(825, 768, 37, '4,37'),
(826, 769, 37, '4,37'),
(827, 770, 37, '4,37'),
(828, 771, 37, '4,37'),
(829, 772, 37, '4,37'),
(830, 773, 37, '4,37'),
(831, 774, 37, '4,37'),
(832, 775, 37, '4,37'),
(833, 776, 37, '4,37'),
(834, 777, 37, '4,37'),
(835, 778, 37, '4,37'),
(837, 780, 37, '4,37'),
(838, 781, 37, '4,37'),
(839, 782, 37, '4,37'),
(840, 783, 37, '4,37'),
(841, 784, 37, '4,37'),
(842, 785, 37, '4,37'),
(843, 786, 37, '4,37'),
(844, 787, 37, '4,37'),
(845, 788, 37, '4,37'),
(846, 789, 37, '4,37'),
(847, 790, 37, '4,37'),
(848, 791, 37, '4,37'),
(849, 792, 37, '4,37'),
(850, 793, 37, '4,37'),
(851, 794, 37, '4,37'),
(852, 795, 37, '4,37'),
(853, 796, 37, '4,37'),
(854, 797, 37, '4,37'),
(855, 798, 37, '4,37'),
(856, 799, 37, '4,37'),
(857, 800, 37, '4,37'),
(858, 801, 37, '4,37'),
(859, 802, 37, '4,37'),
(860, 803, 37, '4,37'),
(861, 804, 37, '4,37'),
(862, 805, 37, '4,37'),
(863, 806, 37, '4,37'),
(864, 807, 37, '4,37'),
(865, 808, 37, '4,37'),
(866, 809, 37, '4,37'),
(867, 810, 37, '4,37'),
(868, 811, 37, '4,37'),
(869, 812, 37, '4,37'),
(870, 813, 37, '4,37'),
(871, 814, 37, '4,37'),
(872, 815, 37, '4,37'),
(873, 816, 37, '4,37'),
(874, 817, 37, '4,37'),
(875, 818, 37, '4,37'),
(876, 819, 37, '4,37'),
(877, 820, 37, '4,37'),
(878, 821, 37, '4,37'),
(879, 822, 37, '4,37'),
(880, 823, 37, '4,37'),
(881, 824, 37, '4,37'),
(882, 825, 37, '4,37'),
(883, 826, 37, '4,37'),
(884, 827, 37, '4,37'),
(885, 828, 37, '4,37'),
(886, 829, 37, '4,37'),
(887, 830, 37, '4,37'),
(888, 831, 37, '4,37'),
(889, 832, 37, '4,37'),
(890, 833, 37, '4,37'),
(892, 835, 37, '4,37'),
(893, 836, 37, '4,37'),
(894, 837, 37, '4,37'),
(895, 838, 37, '4,37'),
(896, 839, 37, '4,37'),
(897, 840, 37, '4,37'),
(898, 841, 37, '4,37'),
(899, 842, 37, '4,37'),
(900, 843, 37, '4,37'),
(901, 844, 37, '4,37'),
(902, 845, 37, '4,37'),
(903, 846, 37, '4,37'),
(904, 847, 37, '4,37'),
(905, 848, 37, '4,37'),
(906, 849, 37, '4,37'),
(907, 850, 37, '4,37'),
(908, 851, 37, '4,37'),
(909, 852, 37, '4,37'),
(910, 853, 37, '4,37'),
(911, 854, 37, '4,37'),
(912, 855, 37, '4,37'),
(913, 856, 37, '4,37'),
(914, 857, 37, '4,37'),
(915, 858, 37, '4,37'),
(916, 859, 37, '4,37'),
(917, 860, 37, '4,37'),
(918, 861, 37, '4,37'),
(919, 862, 37, '4,37'),
(920, 863, 37, '4,37'),
(921, 864, 37, '4,37'),
(922, 865, 37, '4,37'),
(923, 866, 37, '4,37'),
(924, 867, 37, '4,37'),
(925, 868, 37, '4,37'),
(926, 869, 37, '4,37'),
(927, 870, 37, '4,37'),
(928, 871, 37, '4,37'),
(929, 872, 37, '4,37'),
(930, 873, 37, '4,37'),
(931, 874, 37, '4,37'),
(932, 875, 37, '4,37'),
(933, 876, 37, '4,37'),
(934, 877, 37, '4,37'),
(935, 878, 37, '4,37'),
(936, 879, 37, '4,37'),
(937, 880, 37, '4,37'),
(938, 881, 37, '4,37'),
(939, 882, 37, '4,37'),
(940, 883, 37, '4,37'),
(941, 884, 37, '4,37'),
(942, 885, 37, '4,37'),
(943, 886, 37, '4,37'),
(944, 887, 37, '4,37'),
(945, 888, 37, '4,37'),
(946, 889, 37, '4,37'),
(947, 890, 37, '4,37'),
(948, 891, 37, '4,37'),
(949, 892, 37, '4,37'),
(950, 893, 37, '4,37'),
(951, 894, 37, '4,37'),
(952, 895, 37, '4,37'),
(953, 896, 37, '4,37'),
(954, 897, 37, '4,37'),
(955, 898, 37, '4,37'),
(956, 899, 37, '4,37'),
(957, 900, 37, '4,37'),
(958, 901, 37, '4,37'),
(959, 902, 37, '4,37'),
(960, 903, 37, '4,37'),
(961, 904, 37, '4,37'),
(962, 905, 37, '4,37'),
(963, 906, 37, '4,37'),
(964, 907, 37, '4,37'),
(965, 908, 37, '4,37'),
(966, 909, 37, '4,37'),
(967, 910, 37, '4,37'),
(968, 911, 37, '4,37'),
(969, 912, 37, '4,37'),
(970, 913, 37, '4,37'),
(971, 914, 37, '4,37'),
(972, 915, 37, '4,37'),
(973, 916, 37, '4,37'),
(974, 917, 37, '4,37'),
(975, 918, 37, '4,37'),
(976, 919, 37, '4,37'),
(977, 920, 37, '4,37'),
(978, 921, 37, '4,37'),
(979, 922, 37, '4,37'),
(980, 923, 37, '4,37'),
(981, 924, 37, '4,37'),
(982, 925, 37, '4,37'),
(983, 926, 37, '4,37'),
(984, 927, 37, '4,37'),
(985, 928, 37, '4,37'),
(986, 929, 37, '4,37'),
(987, 930, 37, '4,37'),
(988, 931, 37, '4,37'),
(989, 932, 37, '4,37'),
(990, 933, 37, '4,37'),
(991, 934, 37, '4,37'),
(992, 935, 37, '4,37'),
(993, 936, 37, '4,37'),
(994, 937, 37, '4,37'),
(995, 938, 37, '4,37'),
(996, 939, 37, '4,37'),
(997, 940, 37, '4,37'),
(998, 941, 37, '4,37'),
(999, 942, 37, '4,37'),
(1000, 943, 37, '4,37'),
(1001, 944, 37, '4,37'),
(1002, 945, 37, '4,37'),
(1003, 946, 37, '4,37'),
(1004, 947, 37, '4,37'),
(1005, 948, 37, '4,37'),
(1006, 949, 37, '4,37'),
(1007, 950, 37, '4,37'),
(1008, 951, 37, '4,37'),
(1009, 952, 37, '4,37'),
(1010, 953, 37, '4,37'),
(1011, 954, 37, '4,37'),
(1012, 955, 37, '4,37'),
(1013, 956, 37, '4,37'),
(1014, 957, 37, '4,37'),
(1015, 958, 37, '4,37'),
(1016, 959, 37, '4,37'),
(1017, 960, 37, '4,37'),
(1018, 961, 37, '4,37'),
(1019, 962, 37, '4,37'),
(1020, 963, 37, '4,37'),
(1021, 964, 37, '4,37'),
(1022, 965, 37, '4,37'),
(1023, 966, 37, '4,37'),
(1024, 967, 37, '4,37'),
(1025, 968, 37, '4,37'),
(1026, 969, 37, '4,37'),
(1027, 970, 37, '4,37'),
(1028, 971, 37, '4,37'),
(1029, 972, 37, '4,37'),
(1030, 973, 37, '4,37'),
(1031, 974, 37, '4,37'),
(1032, 975, 37, '4,37'),
(1033, 42, 12, '1,12'),
(1034, 976, 37, '4,37'),
(1035, 977, 37, '4,37'),
(1036, 978, 37, '4,37'),
(1037, 979, 37, '4,37'),
(1038, 980, 37, '4,37'),
(1039, 981, 37, '4,37'),
(1040, 982, 37, '4,37'),
(1041, 983, 37, '4,37'),
(1042, 224, 12, '1,12'),
(1043, 984, 37, '4,37'),
(1044, 985, 37, '4,37'),
(1045, 986, 37, '4,37'),
(1046, 987, 37, '4,37'),
(1047, 988, 37, '4,37'),
(1048, 989, 37, '4,37'),
(1049, 990, 37, '4,37'),
(1050, 991, 37, '4,37'),
(1051, 992, 37, '4,37'),
(1052, 993, 37, '4,37'),
(1053, 994, 37, '4,37'),
(1054, 995, 37, '4,37'),
(1055, 996, 37, '4,37'),
(1056, 997, 37, '4,37'),
(1057, 998, 37, '4,37'),
(1058, 999, 37, '4,37'),
(1059, 1000, 37, '4,37'),
(1060, 1001, 37, '4,37'),
(1061, 1002, 37, '4,37'),
(1062, 1003, 37, '4,37'),
(1063, 1004, 37, '4,37'),
(1064, 1005, 37, '4,37'),
(1065, 1006, 37, '4,37'),
(1066, 1007, 37, '4,37'),
(1067, 1008, 37, '4,37'),
(1068, 1009, 37, '4,37'),
(1069, 1010, 37, '4,37'),
(1070, 1011, 37, '4,37'),
(1071, 1012, 37, '4,37'),
(1072, 1013, 37, '4,37'),
(1073, 1014, 37, '4,37'),
(1074, 1015, 37, '4,37'),
(1075, 1016, 37, '4,37'),
(1076, 1017, 37, '4,37'),
(1077, 1018, 37, '4,37'),
(1078, 1019, 37, '4,37'),
(1079, 1020, 37, '4,37'),
(1080, 1021, 37, '4,37'),
(1081, 1022, 37, '4,37'),
(1082, 1023, 37, '4,37'),
(1083, 1024, 37, '4,37'),
(1084, 1025, 37, '4,37'),
(1085, 1026, 37, '4,37'),
(1086, 1027, 37, '4,37'),
(1087, 1028, 37, '4,37'),
(1088, 1029, 37, '4,37'),
(1089, 1030, 37, '4,37'),
(1090, 1031, 37, '4,37'),
(1091, 1032, 37, '4,37'),
(1092, 1033, 37, '4,37'),
(1093, 1034, 37, '4,37'),
(1094, 1035, 37, '4,37'),
(1095, 1036, 37, '4,37'),
(1096, 1037, 37, '4,37'),
(1097, 1038, 37, '4,37'),
(1098, 1039, 37, '4,37'),
(1099, 1040, 37, '4,37'),
(1100, 1041, 37, '4,37'),
(1101, 1042, 37, '4,37'),
(1102, 1043, 37, '4,37'),
(1103, 1044, 37, '4,37'),
(1104, 1045, 37, '4,37'),
(1105, 1046, 37, '4,37'),
(1106, 1047, 37, '4,37'),
(1107, 1048, 37, '4,37'),
(1108, 1049, 37, '4,37'),
(1109, 1050, 37, '4,37'),
(1110, 1051, 37, '4,37'),
(1111, 1052, 37, '4,37'),
(1112, 1053, 37, '4,37'),
(1113, 1054, 37, '4,37'),
(1114, 1055, 37, '4,37'),
(1115, 1056, 37, '4,37'),
(1116, 1057, 37, '4,37'),
(1117, 1058, 37, '4,37'),
(1118, 1059, 37, '4,37'),
(1119, 1060, 37, '4,37'),
(1120, 1061, 37, '4,37'),
(1121, 1062, 37, '4,37'),
(1122, 1063, 37, '4,37'),
(1123, 1064, 37, '4,37'),
(1124, 1065, 37, '4,37'),
(1125, 1066, 37, '4,37'),
(1126, 1067, 37, '4,37'),
(1127, 1068, 37, '4,37'),
(1128, 1069, 37, '4,37'),
(1129, 1070, 37, '4,37'),
(1130, 1071, 37, '4,37'),
(1131, 1072, 37, '4,37'),
(1132, 1073, 37, '4,37'),
(1133, 1074, 37, '4,37'),
(1134, 1075, 37, '4,37'),
(1135, 1076, 37, '4,37'),
(1136, 1077, 37, '4,37'),
(1137, 1078, 37, '4,37'),
(1138, 1079, 37, '4,37'),
(1139, 1080, 37, '4,37'),
(1140, 1081, 37, '4,37'),
(1141, 1082, 37, '4,37'),
(1142, 1083, 37, '4,37'),
(1143, 1084, 37, '4,37'),
(1144, 1085, 37, '4,37'),
(1145, 1086, 37, '4,37'),
(1146, 1087, 37, '4,37'),
(1147, 1088, 37, '4,37'),
(1148, 1089, 37, '4,37'),
(1149, 1090, 37, '4,37'),
(1150, 1091, 37, '4,37'),
(1151, 1092, 37, '4,37'),
(1152, 1093, 37, '4,37'),
(1153, 1094, 37, '4,37'),
(1154, 1095, 37, '4,37'),
(1155, 1096, 37, '4,37'),
(1156, 1097, 37, '4,37'),
(1157, 1098, 37, '4,37'),
(1158, 1099, 37, '4,37'),
(1159, 1100, 37, '4,37'),
(1160, 1101, 37, '4,37'),
(1161, 1102, 37, '4,37'),
(1162, 1103, 37, '4,37'),
(1163, 1104, 37, '4,37'),
(1164, 1105, 37, '4,37'),
(1165, 1106, 37, '4,37'),
(1166, 1107, 37, '4,37'),
(1167, 1108, 37, '4,37'),
(1168, 1109, 37, '4,37'),
(1169, 1110, 37, '4,37'),
(1170, 1111, 37, '4,37'),
(1171, 1112, 37, '4,37'),
(1172, 1113, 37, '4,37'),
(1173, 1114, 37, '4,37'),
(1174, 1115, 37, '4,37'),
(1175, 1116, 37, '4,37'),
(1176, 1117, 37, '4,37'),
(1177, 1118, 37, '4,37'),
(1178, 1119, 37, '4,37'),
(1179, 1120, 37, '4,37'),
(1180, 1121, 37, '4,37'),
(1181, 1122, 37, '4,37'),
(1182, 1123, 37, '4,37'),
(1183, 1124, 37, '4,37'),
(1184, 1125, 37, '4,37'),
(1185, 1126, 37, '4,37'),
(1186, 1127, 37, '4,37'),
(1187, 1128, 37, '4,37'),
(1188, 1129, 37, '4,37'),
(1189, 1130, 37, '4,37'),
(1190, 1131, 37, '4,37'),
(1191, 1132, 37, '4,37'),
(1192, 1133, 37, '4,37'),
(1193, 1134, 37, '4,37'),
(1194, 1135, 37, '4,37'),
(1195, 1136, 37, '4,37'),
(1196, 1137, 37, '4,37'),
(1197, 1138, 37, '4,37'),
(1198, 1139, 37, '4,37'),
(1199, 1140, 37, '4,37'),
(1200, 1141, 37, '4,37'),
(1201, 1142, 37, '4,37'),
(1202, 1143, 37, '4,37'),
(1203, 1144, 37, '4,37'),
(1204, 1145, 37, '4,37'),
(1205, 1146, 37, '4,37'),
(1206, 1147, 37, '4,37'),
(1207, 1148, 37, '4,37'),
(1208, 1149, 37, '4,37'),
(1209, 1150, 37, '4,37'),
(1210, 1151, 37, '4,37'),
(1211, 1152, 37, '4,37'),
(1212, 1153, 37, '4,37'),
(1213, 1154, 37, '4,37'),
(1214, 1155, 37, '4,37'),
(1215, 1156, 37, '4,37'),
(1216, 1157, 37, '4,37'),
(1217, 1158, 37, '4,37'),
(1218, 43, 12, '1,12'),
(1219, 211, 12, '1,12'),
(1220, 212, 12, '1,12'),
(1221, 213, 12, '1,12'),
(1222, 233, 12, '1,12'),
(1223, 215, 12, '1,12'),
(1224, 216, 12, '1,12'),
(1225, 217, 12, '1,12'),
(1226, 218, 12, '1,12'),
(1227, 219, 12, '1,12'),
(1228, 220, 12, '1,12'),
(1229, 221, 12, '1,12'),
(1230, 222, 12, '1,12'),
(1231, 223, 12, '1,12'),
(1232, 1159, 19, '3,19'),
(1234, 1161, 19, '3,19'),
(1235, 1162, 19, '3,19'),
(1236, 1163, 19, '3,19'),
(1237, 1164, 19, '3,19'),
(1238, 1165, 19, '3,19'),
(1239, 1166, 19, '3,19'),
(1240, 1167, 19, '3,19'),
(1241, 1168, 19, '3,19'),
(1242, 1169, 19, '3,19'),
(1243, 1170, 19, '3,19'),
(1244, 1171, 19, '3,19'),
(1245, 1172, 19, '3,19'),
(1246, 1173, 19, '3,19'),
(1247, 1174, 19, '3,19'),
(1248, 1175, 19, '3,19'),
(1249, 1176, 19, '3,19'),
(1250, 1177, 19, '3,19'),
(1251, 1178, 19, '3,19'),
(1252, 1179, 19, '3,19'),
(1253, 1180, 19, '3,19'),
(1254, 1181, 19, '3,19'),
(1255, 1182, 19, '3,19'),
(1256, 1183, 19, '3,19'),
(1257, 1184, 19, '3,19'),
(1258, 1185, 19, '3,19'),
(1259, 1186, 19, '3,19'),
(1260, 1187, 19, '3,19'),
(1261, 1188, 19, '3,19'),
(1262, 1189, 19, '3,19'),
(1263, 1190, 19, '3,19'),
(1264, 1191, 19, '3,19'),
(1265, 1192, 19, '3,19'),
(1266, 1192, 31, '3,31'),
(1267, 1193, 19, '3,19'),
(1268, 1194, 19, '3,19'),
(1269, 1195, 19, '3,19'),
(1270, 1196, 19, '3,19'),
(1271, 1197, 19, '3,19'),
(1272, 1198, 19, '3,19'),
(1273, 1199, 19, '3,19');

-- --------------------------------------------------------

--
-- Table structure for table `produc_img_history`
--

CREATE TABLE `produc_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'Smokee BBQ', 1, NULL, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(2, 'Project-3', 1, 1, '2023-07-21 09:38:13', '2023-07-21 09:38:13'),
(3, 'Project-2', 1, 1, NULL, NULL),
(4, 'Project-1', 1, 1, NULL, NULL),
(5, 'sdfwwww', 1, 1, NULL, NULL),
(6, 'undefined', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'Employee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `send_message`
--

CREATE TABLE `send_message` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `candidate_cc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `send_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `send_message`
--

INSERT INTO `send_message` (`id`, `candidate_name`, `candidate_email`, `subject`, `candidate_cc`, `description`, `file`, `send_by`, `created_at`) VALUES
(3, 'fgdfg', 'mdbijon@gmail.com', 'sdf', 'mdbijon@gmail.com', 'mdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.commdbijon@gmail.com', NULL, 1, '2023-08-19 04:33:25'),
(4, 'dsfsfsdf', 'mdbijon@gmail.com', 'ssss', '', 'In Laravel, you can easily attach files to a model using the attach method, especially when dealing with relationships like Eloquent\'s BelongsToMany or HasMany relationships. However, since you mentioned attaching files, I\'ll assume you\'re working with file uploads in the context of a form submission.', '/backend/files/SVfaIInZEZCDCGheQiF2.png', 1, '2023-08-19 05:02:28'),
(5, 'dfgdfg', 'mdbijon@gmail.com', 'ssss', '', 'sfdsf', '/backend/files/GwEyNFbWS6qZzWUCwjOE.png', 1, '2023-08-19 05:14:41'),
(6, 'dsfdsfsdf', 'mdbijon@gmail.com', 'fdgdfg', '', 'fggfdg', '', 1, '2023-08-19 06:30:44'),
(7, 'Md. Gazi Giash Uddin', 'ib@gmail.com', 'New Subject', '', 'Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate Candidate', '/backend/files/88wrHYRxDG94tmZ0Endb.png', 1, '2023-08-19 06:31:37'),
(8, 'Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'ffff', '/backend/files/m6RklwhKmcSifwgvTfH0.png', 1, '2023-08-19 06:45:59'),
(9, 'Abdur Rahman Ibraheem', 'mdbijon@gmail.com', 'New Subject', '', 'If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:If you want to conditionally send an email with or without an attachment, you can modify your Mailable class to include the attachment only when a certain condition is met. Here\'s how you can achieve that:', '/backend/files/u1ujrkQMqTX6ES7VZh69.png', 1, '2023-08-19 06:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `images`, `status`) VALUES
(1, '/backend/slider_imaes/slider_one.png', 1),
(2, '/backend/slider_imaes/slider_two.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL COMMENT 'primary key of project table',
  `emp_id` varchar(255) DEFAULT NULL COMMENT 'primary key of employee table',
  `type` tinyint(4) DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `done_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Processing, 3 = Done',
  `email_files` varchar(3) DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `project_id`, `emp_id`, `type`, `start_date`, `end_date`, `done_date`, `image`, `entry_by`, `status`, `email_files`, `created_at`, `updated_at`) VALUES
(1, 'bijon1114144', 'sdlkflskdfsdf\r\nsdf\r\nsdf', 3, '2', 1, '2023-07-19', '2023-07-26', NULL, '/backend/files/QESG49nK6XzDuTd953Lm.env', 1, 1, 'No', NULL, NULL),
(2, 'Tesssss', 'fasd', 4, '1', 1, '2023-07-14', '2023-07-28', NULL, '/backend/files/tAWzPRjL7xUKnSUcOpW3.env', 1, 2, 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `country_residence` int(11) DEFAULT NULL,
  `show_password` varchar(225) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `fname`, `lname`, `name`, `email`, `date_of_birth`, `image`, `phone_number`, `gender`, `address`, `website`, `github`, `twitter`, `instagram`, `facebook`, `nationality_id`, `country_residence`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, NULL, NULL, 'Admin', 'admin@gmail.com', NULL, '/backend/files/Gj1CClu5li9lnBa8bqxx.jpg', '343434', NULL, 'Dhaka', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', NULL, NULL, 'admin', NULL, '$2a$12$KTM4o4shushdJtyHggJOEuoVzhTde88F2M2VZ1B89egoavVyQOycG', NULL, 1, '2023-06-22 03:20:43', '2023-07-14 04:47:21', 1),
(2, 2, NULL, 'Mr.', 'Rahim', 'Mr. Rahim', 'raheem@gmail.com', '2023-12-20', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, 'raheem@gmail.com', NULL, '$2y$10$FGlKmBrnYhajFWpocqdzkO0lqNesKmLvwpQqXuvbjlAhJXbIub65e', NULL, NULL, '2023-12-09 23:43:15', '2023-12-09 23:43:15', NULL),
(3, 2, NULL, 'jalal', 'ahmed', 'jalal ahmed', 'ahmed@gmail.com', '2023-12-21', NULL, '01915728982', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 12, 5, 'ahmed@gmail.com', NULL, '$2y$10$X75RkK8x/G5S.WSZYzVDquwjJiZzJxFU5/4jPUf2BkPMCRshjINKq', NULL, NULL, '2023-12-09 23:48:49', '2023-12-10 11:49:05', NULL),
(4, 2, NULL, 'm', 'karim', 'm karim', '2ahmed@gmail.com', '2023-12-13', NULL, NULL, 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'ahmed@gmail.com', NULL, '$2y$10$FozZdgxTspZ4UMUYyRiX4u.F/ZWkDmPqOcG0WP.R4Dee31hbwfode', NULL, NULL, '2023-12-09 23:50:22', '2023-12-09 23:50:22', 1),
(5, 2, NULL, 'm', 'karim', 'm karim', '2333ahmed@gmail.com', '2023-12-13', NULL, '5748787', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'ahmed@gmail.com', NULL, '$2y$10$pybRWFB8kbAz/Lvd/cPLzOPdZU2QQKI6fJ/WUVyHKo3kplZTdDP2C', NULL, NULL, '2023-12-09 23:52:02', '2023-12-09 23:52:02', 1),
(6, 2, NULL, 'Mr.', 'Billah', 'Mr. Billah', 'billah@gmail.com', '2023-12-27', NULL, '418748788', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'billah@gmail.com', NULL, '$2y$10$K17wgeKPsmTQCEZD/J9h.eeol1MjidzNdV7wXfyHHwX63nu4eX.ZO', NULL, NULL, '2023-12-09 23:56:15', '2023-12-09 23:56:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(19, 3, 3, '2023-12-13 06:16:52', '2023-12-13 06:16:52'),
(20, 3, 4, '2023-12-13 06:16:54', '2023-12-13 06:16:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_pay`
--
ALTER TABLE `annual_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes_values`
--
ALTER TABLE `attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circumstances`
--
ALTER TABLE `circumstances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_docs`
--
ALTER TABLE `employee_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_employee_holidays_used_holiday` (`used_holiday`);

--
-- Indexes for table `employee_leave_request`
--
ALTER TABLE `employee_leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_list`
--
ALTER TABLE `leave_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_rule`
--
ALTER TABLE `leave_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_group`
--
ALTER TABLE `pay_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes_values_history`
--
ALTER TABLE `product_attributes_values_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants_history`
--
ALTER TABLE `product_variants_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_categories`
--
ALTER TABLE `produc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_message`
--
ALTER TABLE `send_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_pay`
--
ALTER TABLE `annual_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attributes_values`
--
ALTER TABLE `attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_short_code`
--
ALTER TABLE `bank_short_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `circumstances`
--
ALTER TABLE `circumstances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_docs`
--
ALTER TABLE `employee_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_holidays`
--
ALTER TABLE `employee_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_leave_request`
--
ALTER TABLE `employee_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_allocation`
--
ALTER TABLE `leave_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_list`
--
ALTER TABLE `leave_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_rule`
--
ALTER TABLE `leave_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payroll_pay_item`
--
ALTER TABLE `payroll_pay_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_group`
--
ALTER TABLE `pay_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1200;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attributes_values_history`
--
ALTER TABLE `product_attributes_values_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants_history`
--
ALTER TABLE `product_variants_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produc_categories`
--
ALTER TABLE `produc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1274;

--
-- AUTO_INCREMENT for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `send_message`
--
ALTER TABLE `send_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
