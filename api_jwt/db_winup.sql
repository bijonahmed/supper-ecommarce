-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 09:39 AM
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
-- Database: `db_winup`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_product`
--

CREATE TABLE `additional_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `referrance_product_id` int(11) DEFAULT NULL,
  `add_product_qty` int(11) DEFAULT NULL,
  `add_product_price` int(11) DEFAULT NULL,
  `final_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `additional_product`
--

INSERT INTO `additional_product` (`id`, `product_id`, `referrance_product_id`, `add_product_qty`, `add_product_price`, `final_price`, `created_at`, `updated_at`) VALUES
(1, 161, 167, 9500, 500, 633.00, '2023-12-22 10:09:28', '2023-12-22 04:09:46'),
(2, 160, 167, 1000, 500, 1550.00, '2023-12-22 16:24:11', '2023-12-22 16:24:11');

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
(1, 'XXXS', 1, '2023-12-20 08:45:12', '2023-12-20 14:45:12', NULL),
(2, 'XXS', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(3, 'S', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(4, 'M', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(5, 'L', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(6, 'XL', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(7, '1X', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(8, '2X', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(9, '3X', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(10, '4X', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL),
(11, '5X', 1, '2023-12-20 08:45:22', '2023-12-20 14:45:22', NULL);

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
(1, 'Men\'s', 'men-s', NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, NULL, '2023-12-18 05:33:38', '2023-12-18 05:33:38'),
(2, 'Women\'s', 'women-s', NULL, 'null', 'null', 'null', 0, 0, '', 1, 'null', 'null', '2023-12-18 05:33:59', '2023-12-18 05:34:43'),
(3, 'Hoodie (Men\'s)', 'hoodie-men-s-', NULL, 'null', 'null', 'null', 1, 0, '/backend/files/NW5zVczGz38kAp3r7TOF.png', 1, 'null', 'null', '2023-12-18 05:34:25', '2023-12-20 06:25:44'),
(4, 'Men\'s Pollover Hoodie', 'men-s-pollover-hoodie', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-12-18 05:36:48', '2023-12-18 05:36:48'),
(5, 'Hoodie (Women\'s)', 'hoodie-women-s-', NULL, 'null', 'null', 'null', 2, 0, '/backend/files/s7fXrSz8Ki7pahAq5XyK.jpg', 1, 'null', 'null', '2023-12-18 06:18:18', '2023-12-20 06:27:17'),
(6, 'Women\'s Pollover Hoodies', 'women-s-pollover-hoodies', NULL, NULL, NULL, NULL, 5, 0, '', 1, NULL, NULL, '2023-12-18 06:18:37', '2023-12-18 06:18:37'),
(7, 'T-Shirt (Men\'s)', 't-shirt-men-s-', NULL, 'null', 'null', 'null', 1, 0, '/backend/files/CwHcBNKvIHuOc4r4nYGn.jpg', 1, 'null', 'null', '2023-12-18 07:11:52', '2023-12-20 06:26:21'),
(8, 'T-Shirt (Women\'s)', 't-shirt-women-s-', NULL, 'null', 'null', 'null', 2, 0, '/backend/files/uNyDXJhXF7U7R5eofEKi.jpg', 1, 'null', 'null', '2023-12-18 07:12:26', '2023-12-20 06:27:28'),
(9, 'Long Sleeve T-shirt', 'long-sleeve-t-shirt', NULL, 'null', 'null', 'null', 7, 0, '', 1, 'null', 'null', '2023-12-18 07:51:10', '2023-12-18 07:56:55'),
(10, 'Short Sleeve T-Shirt', 'short-sleeve-t-shirt', NULL, NULL, NULL, NULL, 7, 0, '', 1, NULL, NULL, '2023-12-18 07:56:43', '2023-12-18 07:56:43'),
(11, 'Kid\'s', 'kid-s', NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, NULL, '2023-12-18 08:33:35', '2023-12-18 08:33:35'),
(12, 'Kid\'s boy T-shirt', 'kid-s-boy-t-shirt', NULL, 'null', 'null', 'null', 11, 0, '/backend/files/cm5pTwqFReqAsCJSxuHJ.jpg', 1, 'null', 'null', '2023-12-18 08:33:58', '2023-12-20 06:27:51'),
(13, 'Long weekend Crewneck Sweatshirt', 'long-weekend-crewneck-sweatshirt', NULL, 'null', 'null', 'null', 7, 0, '', 1, 'null', 'null', '2023-12-18 08:43:40', '2023-12-18 08:55:26'),
(14, 'Short Sleeve T-Shirt (Women\'s)', 'short-sleeve-t-shirt-women-s-', NULL, NULL, NULL, NULL, 8, 0, '', 1, NULL, NULL, '2023-12-18 10:44:09', '2023-12-18 10:44:09'),
(15, 'Full Zip Hoodie', 'full-zip-hoodie', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-12-18 11:12:20', '2023-12-18 11:12:20'),
(16, 'Kid\'s Boys Hoodie', 'kid-s-boys-hoodie', NULL, 'null', 'null', 'null', 11, 0, '/backend/files/BAcveDNTVOc7MCge2bia.jpg', 1, 'null', 'null', '2023-12-18 12:21:32', '2023-12-20 06:28:53'),
(17, 'Performance T-Shirt', 'performance-t-shirt', NULL, 'null', 'null', 'null', 7, 0, '', 1, 'null', 'null', '2023-12-18 15:41:29', '2023-12-18 15:41:57'),
(18, 'V-neek Sweater', 'v-neek-sweater', NULL, 'null', 'null', 'null', 1, 0, '/backend/files/cBRRLVKB2SB5u4hZdfHD.jpg', 1, 'null', 'null', '2023-12-18 15:52:35', '2023-12-20 06:26:41'),
(19, 'Polo T-shirt (Women\'s)', 'polo-t-shirt-women-s-', NULL, NULL, NULL, NULL, 8, 0, '', 1, NULL, NULL, '2023-12-19 05:35:58', '2023-12-19 05:35:58'),
(20, 'Quarter Zip Pullover Sweater', 'quarter-zip-pullover-sweater', NULL, 'null', 'null', 'null', 1, 0, '/backend/files/llhB9sFvQej0ACPAjg2e.jpg', 1, 'null', 'null', '2023-12-19 07:02:43', '2023-12-20 06:27:02'),
(21, 'V-Neck T-shirt (Women\'s)', 'v-neck-t-shirt-women-s-', NULL, NULL, NULL, NULL, 8, 0, '', 1, NULL, NULL, '2023-12-19 07:24:10', '2023-12-19 07:24:10'),
(22, 'Performance Shirt', 'performance-shirt', NULL, NULL, NULL, NULL, 8, 0, '', 1, NULL, NULL, '2023-12-19 07:42:08', '2023-12-19 07:42:08'),
(23, 'Tri-Blend Zip Hoodie', 'tri-blend-zip-hoodie', NULL, NULL, NULL, NULL, 3, 0, '', 1, NULL, NULL, '2023-12-19 07:50:24', '2023-12-19 07:50:24'),
(24, 'Polo T-Shirt', 'polo-t-shirt', NULL, NULL, NULL, NULL, 7, 0, '', 1, NULL, NULL, '2023-12-19 07:58:29', '2023-12-19 07:58:29'),
(25, 'Short Sleeve Raglan T-Shirt', 'short-sleeve-raglan-t-shirt', NULL, NULL, NULL, NULL, 8, 0, '', 1, NULL, NULL, '2023-12-19 08:31:31', '2023-12-19 08:31:31'),
(26, 'Long Weekend Crewneck Sweatshirt (Women\'s)', 'long-weekend-crewneck-sweatshirt-women-s-', NULL, NULL, NULL, NULL, 8, 0, '', 1, NULL, NULL, '2023-12-19 08:44:54', '2023-12-19 08:44:54'),
(27, 'Ticket', 'ticket', NULL, NULL, NULL, NULL, 0, 0, '', 1, NULL, NULL, '2023-12-22 03:17:01', '2023-12-22 03:17:01');

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
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`) VALUES
(1, 'ABW', 'Aruba', 'AW'),
(2, 'AFG', 'Afghanistan', 'AF'),
(3, 'AGO', 'Angola', 'AO'),
(4, 'AIA', 'Anguilla', 'AI'),
(5, 'ALA', 'Åland', 'AX'),
(6, 'ALB', 'Albania', 'AL'),
(7, 'AND', 'Andorra', 'AD'),
(8, 'ARE', 'United Arab Emirates', 'AE'),
(9, 'ARG', 'Argentina', 'AR'),
(10, 'ARM', 'Armenia', 'AM'),
(11, 'ASM', 'American Samoa', 'AS'),
(12, 'ATA', 'Antarctica', 'AQ'),
(13, 'ATF', 'French Southern Territories', 'TF'),
(14, 'ATG', 'Antigua and Barbuda', 'AG'),
(15, 'AUS', 'Australia', 'AU'),
(16, 'AUT', 'Austria', 'AT'),
(17, 'AZE', 'Azerbaijan', 'AZ'),
(18, 'BDI', 'Burundi', 'BI'),
(19, 'BEL', 'Belgium', 'BE'),
(20, 'BEN', 'Benin', 'BJ'),
(21, 'BES', 'Bonaire', 'BQ'),
(22, 'BFA', 'Burkina Faso', 'BF'),
(23, 'BGD', 'Bangladesh', 'BD'),
(24, 'BGR', 'Bulgaria', 'BG'),
(25, 'BHR', 'Bahrain', 'BH'),
(26, 'BHS', 'Bahamas', 'BS'),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA'),
(28, 'BLM', 'Saint Barthélemy', 'BL'),
(29, 'BLR', 'Belarus', 'BY'),
(30, 'BLZ', 'Belize', 'BZ'),
(31, 'BMU', 'Bermuda', 'BM'),
(32, 'BOL', 'Bolivia', 'BO'),
(33, 'BRA', 'Brazil', 'BR'),
(34, 'BRB', 'Barbados', 'BB'),
(35, 'BRN', 'Brunei', 'BN'),
(36, 'BTN', 'Bhutan', 'BT'),
(37, 'BVT', 'Bouvet Island', 'BV'),
(38, 'BWA', 'Botswana', 'BW'),
(39, 'CAF', 'Central African Republic', 'CF'),
(40, 'CAN', 'Canada', 'CA'),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC'),
(42, 'CHE', 'Switzerland', 'CH'),
(43, 'CHL', 'Chile', 'CL'),
(44, 'CHN', 'China', 'CN'),
(45, 'CIV', 'Ivory Coast', 'CI'),
(46, 'CMR', 'Cameroon', 'CM'),
(47, 'COD', 'Democratic Republic of the Congo', 'CD'),
(48, 'COG', 'Republic of the Congo', 'CG'),
(49, 'COK', 'Cook Islands', 'CK'),
(50, 'COL', 'Colombia', 'CO'),
(51, 'COM', 'Comoros', 'KM'),
(52, 'CPV', 'Cape Verde', 'CV'),
(53, 'CRI', 'Costa Rica', 'CR'),
(54, 'CUB', 'Cuba', 'CU'),
(55, 'CUW', 'Curacao', 'CW'),
(56, 'CXR', 'Christmas Island', 'CX'),
(57, 'CYM', 'Cayman Islands', 'KY'),
(58, 'CYP', 'Cyprus', 'CY'),
(59, 'CZE', 'Czech Republic', 'CZ'),
(60, 'DEU', 'Germany', 'DE'),
(61, 'DJI', 'Djibouti', 'DJ'),
(62, 'DMA', 'Dominica', 'DM'),
(63, 'DNK', 'Denmark', 'DK'),
(64, 'DOM', 'Dominican Republic', 'DO'),
(65, 'DZA', 'Algeria', 'DZ'),
(66, 'ECU', 'Ecuador', 'EC'),
(67, 'EGY', 'Egypt', 'EG'),
(68, 'ERI', 'Eritrea', 'ER'),
(69, 'ESH', 'Western Sahara', 'EH'),
(70, 'ESP', 'Spain', 'ES'),
(71, 'EST', 'Estonia', 'EE'),
(72, 'ETH', 'Ethiopia', 'ET'),
(73, 'FIN', 'Finland', 'FI'),
(74, 'FJI', 'Fiji', 'FJ'),
(75, 'FLK', 'Falkland Islands', 'FK'),
(76, 'FRA', 'France', 'FR'),
(77, 'FRO', 'Faroe Islands', 'FO'),
(78, 'FSM', 'Micronesia', 'FM'),
(79, 'GAB', 'Gabon', 'GA'),
(80, 'GBR', 'United Kingdom', 'GB'),
(81, 'GEO', 'Georgia', 'GE'),
(82, 'GGY', 'Guernsey', 'GG'),
(83, 'GHA', 'Ghana', 'GH'),
(84, 'GIB', 'Gibraltar', 'GI'),
(85, 'GIN', 'Guinea', 'GN'),
(86, 'GLP', 'Guadeloupe', 'GP'),
(87, 'GMB', 'Gambia', 'GM'),
(88, 'GNB', 'Guinea-Bissau', 'GW'),
(89, 'GNQ', 'Equatorial Guinea', 'GQ'),
(90, 'GRC', 'Greece', 'GR'),
(91, 'GRD', 'Grenada', 'GD'),
(92, 'GRL', 'Greenland', 'GL'),
(93, 'GTM', 'Guatemala', 'GT'),
(94, 'GUF', 'French Guiana', 'GF'),
(95, 'GUM', 'Guam', 'GU'),
(96, 'GUY', 'Guyana', 'GY'),
(97, 'HKG', 'Hong Kong', 'HK'),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM'),
(99, 'HND', 'Honduras', 'HN'),
(100, 'HRV', 'Croatia', 'HR'),
(101, 'HTI', 'Haiti', 'HT'),
(102, 'HUN', 'Hungary', 'HU'),
(103, 'IDN', 'Indonesia', 'ID'),
(104, 'IMN', 'Isle of Man', 'IM'),
(105, 'IND', 'India', 'IN'),
(106, 'IOT', 'British Indian Ocean Territory', 'IO'),
(107, 'IRL', 'Ireland', 'IE'),
(108, 'IRN', 'Iran', 'IR'),
(109, 'IRQ', 'Iraq', 'IQ'),
(110, 'ISL', 'Iceland', 'IS'),
(111, 'ISR', 'Israel', 'IL'),
(112, 'ITA', 'Italy', 'IT'),
(113, 'JAM', 'Jamaica', 'JM'),
(114, 'JEY', 'Jersey', 'JE'),
(115, 'JOR', 'Jordan', 'JO'),
(116, 'JPN', 'Japan', 'JP'),
(117, 'KAZ', 'Kazakhstan', 'KZ'),
(118, 'KEN', 'Kenya', 'KE'),
(119, 'KGZ', 'Kyrgyzstan', 'KG'),
(120, 'KHM', 'Cambodia', 'KH'),
(121, 'KIR', 'Kiribati', 'KI'),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN'),
(123, 'KOR', 'South Korea', 'KR'),
(124, 'KWT', 'Kuwait', 'KW'),
(125, 'LAO', 'Laos', 'LA'),
(126, 'LBN', 'Lebanon', 'LB'),
(127, 'LBR', 'Liberia', 'LR'),
(128, 'LBY', 'Libya', 'LY'),
(129, 'LCA', 'Saint Lucia', 'LC'),
(130, 'LIE', 'Liechtenstein', 'LI'),
(131, 'LKA', 'Sri Lanka', 'LK'),
(132, 'LSO', 'Lesotho', 'LS'),
(133, 'LTU', 'Lithuania', 'LT'),
(134, 'LUX', 'Luxembourg', 'LU'),
(135, 'LVA', 'Latvia', 'LV'),
(136, 'MAC', 'Macao', 'MO'),
(137, 'MAF', 'Saint Martin', 'MF'),
(138, 'MAR', 'Morocco', 'MA'),
(139, 'MCO', 'Monaco', 'MC'),
(140, 'MDA', 'Moldova', 'MD'),
(141, 'MDG', 'Madagascar', 'MG'),
(142, 'MDV', 'Maldives', 'MV'),
(143, 'MEX', 'Mexico', 'MX'),
(144, 'MHL', 'Marshall Islands', 'MH'),
(145, 'MKD', 'Macedonia', 'MK'),
(146, 'MLI', 'Mali', 'ML'),
(147, 'MLT', 'Malta', 'MT'),
(148, 'MMR', 'Myanmar [Burma]', 'MM'),
(149, 'MNE', 'Montenegro', 'ME'),
(150, 'MNG', 'Mongolia', 'MN'),
(151, 'MNP', 'Northern Mariana Islands', 'MP'),
(152, 'MOZ', 'Mozambique', 'MZ'),
(153, 'MRT', 'Mauritania', 'MR'),
(154, 'MSR', 'Montserrat', 'MS'),
(155, 'MTQ', 'Martinique', 'MQ'),
(156, 'MUS', 'Mauritius', 'MU'),
(157, 'MWI', 'Malawi', 'MW'),
(158, 'MYS', 'Malaysia', 'MY'),
(159, 'MYT', 'Mayotte', 'YT'),
(160, 'NAM', 'Namibia', 'NA'),
(161, 'NCL', 'New Caledonia', 'NC'),
(162, 'NER', 'Niger', 'NE'),
(163, 'NFK', 'Norfolk Island', 'NF'),
(164, 'NGA', 'Nigeria', 'NG'),
(165, 'NIC', 'Nicaragua', 'NI'),
(166, 'NIU', 'Niue', 'NU'),
(167, 'NLD', 'Netherlands', 'NL'),
(168, 'NOR', 'Norway', 'NO'),
(169, 'NPL', 'Nepal', 'NP'),
(170, 'NRU', 'Nauru', 'NR'),
(171, 'NZL', 'New Zealand', 'NZ'),
(172, 'OMN', 'Oman', 'OM'),
(173, 'PAK', 'Pakistan', 'PK'),
(174, 'PAN', 'Panama', 'PA'),
(175, 'PCN', 'Pitcairn Islands', 'PN'),
(176, 'PER', 'Peru', 'PE'),
(177, 'PHL', 'Philippines', 'PH'),
(178, 'PLW', 'Palau', 'PW'),
(179, 'PNG', 'Papua New Guinea', 'PG'),
(180, 'POL', 'Poland', 'PL'),
(181, 'PRI', 'Puerto Rico', 'PR'),
(182, 'PRK', 'North Korea', 'KP'),
(183, 'PRT', 'Portugal', 'PT'),
(184, 'PRY', 'Paraguay', 'PY'),
(185, 'PSE', 'Palestine', 'PS'),
(186, 'PYF', 'French Polynesia', 'PF'),
(187, 'QAT', 'Qatar', 'QA'),
(188, 'REU', 'Réunion', 'RE'),
(189, 'ROU', 'Romania', 'RO'),
(190, 'RUS', 'Russia', 'RU'),
(191, 'RWA', 'Rwanda', 'RW'),
(192, 'SAU', 'Saudi Arabia', 'SA'),
(193, 'SDN', 'Sudan', 'SD'),
(194, 'SEN', 'Senegal', 'SN'),
(195, 'SGP', 'Singapore', 'SG'),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
(197, 'SHN', 'Saint Helena', 'SH'),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ'),
(199, 'SLB', 'Solomon Islands', 'SB'),
(200, 'SLE', 'Sierra Leone', 'SL'),
(201, 'SLV', 'El Salvador', 'SV'),
(202, 'SMR', 'San Marino', 'SM'),
(203, 'SOM', 'Somalia', 'SO'),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM'),
(205, 'SRB', 'Serbia', 'RS'),
(206, 'SSD', 'South Sudan', 'SS'),
(207, 'STP', 'São Tomé and Príncipe', 'ST'),
(208, 'SUR', 'Suriname', 'SR'),
(209, 'SVK', 'Slovakia', 'SK'),
(210, 'SVN', 'Slovenia', 'SI'),
(211, 'SWE', 'Sweden', 'SE'),
(212, 'SWZ', 'Swaziland', 'SZ'),
(213, 'SXM', 'Sint Maarten', 'SX'),
(214, 'SYC', 'Seychelles', 'SC'),
(215, 'SYR', 'Syria', 'SY'),
(216, 'TCA', 'Turks and Caicos Islands', 'TC'),
(217, 'TCD', 'Chad', 'TD'),
(218, 'TGO', 'Togo', 'TG'),
(219, 'THA', 'Thailand', 'TH'),
(220, 'TJK', 'Tajikistan', 'TJ'),
(221, 'TKL', 'Tokelau', 'TK'),
(222, 'TKM', 'Turkmenistan', 'TM'),
(223, 'TLS', 'East Timor', 'TL'),
(224, 'TON', 'Tonga', 'TO'),
(225, 'TTO', 'Trinidad and Tobago', 'TT'),
(226, 'TUN', 'Tunisia', 'TN'),
(227, 'TUR', 'Turkey', 'TR'),
(228, 'TUV', 'Tuvalu', 'TV'),
(229, 'TWN', 'Taiwan', 'TW'),
(230, 'TZA', 'Tanzania', 'TZ'),
(231, 'UGA', 'Uganda', 'UG'),
(232, 'UKR', 'Ukraine', 'UA'),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM'),
(234, 'URY', 'Uruguay', 'UY'),
(235, 'USA', 'United States', 'US'),
(236, 'UZB', 'Uzbekistan', 'UZ'),
(237, 'VAT', 'Vatican City', 'VA'),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC'),
(239, 'VEN', 'Venezuela', 'VE'),
(240, 'VGB', 'British Virgin Islands', 'VG'),
(241, 'VIR', 'U.S. Virgin Islands', 'VI'),
(242, 'VNM', 'Vietnam', 'VN'),
(243, 'VUT', 'Vanuatu', 'VU'),
(244, 'WLF', 'Wallis and Futuna', 'WF'),
(245, 'WSM', 'Samoa', 'WS'),
(246, 'XKX', 'Kosovo', 'XK'),
(247, 'YEM', 'Yemen', 'YE'),
(248, 'ZAF', 'South Africa', 'ZA'),
(249, 'ZMB', 'Zambia', 'ZM'),
(250, 'ZWE', 'Zimbabwe', 'ZW');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT 'Order Placed=1,Payment Processing=2,Order Confirmed=3,Item Shipped=4,In Transit=5,Out for Delivery=6,Delivered=7,Order Completed=8,Cancelled or Returned=9',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `customer_id`, `total`, `subtotal`, `order_status`, `created_at`, `updated_at`) VALUES
(1, '1111152-23', 11, 7149.00, 7149.00, 1, '2023-12-11 02:20:49', '2023-12-11 08:20:49'),
(2, '237879-23', 2, 2233.00, 2233.00, 3, '2023-12-22 03:49:41', '2023-12-22 10:09:22'),
(3, '270934-23', 2, 1633.00, 1633.00, 1, '2023-12-22 15:39:01', '2023-12-22 21:39:01'),
(4, '255148-23', 2, 2183.00, 2183.00, 1, '2023-12-22 15:40:49', '2023-12-22 21:40:49'),
(5, '216920-23', 2, 10177.00, 10177.00, 1, '2023-12-23 01:43:40', '2023-12-23 07:43:40'),
(6, '219783-23', 2, 6200.00, 6200.00, 1, '2023-12-23 01:48:19', '2023-12-23 07:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 1, 7149, 7149.00, '2023-12-11 08:20:49', '2023-12-11 02:20:49'),
(2, 2, 161, 1, 133, 133.00, '2023-12-22 09:49:41', '2023-12-22 03:49:41'),
(3, 2, 160, 1, 1050, 1183.00, '2023-12-22 09:49:41', '2023-12-22 03:49:41'),
(4, 2, 158, 1, 1050, 2233.00, '2023-12-22 09:49:41', '2023-12-22 03:49:41'),
(5, 3, 161, 1, 133, 133.00, '2023-12-22 21:39:01', '2023-12-22 15:39:01'),
(6, 3, 160, 1, 1050, 1183.00, '2023-12-22 21:39:01', '2023-12-22 15:39:01'),
(7, 3, 168, 1, 450, 1633.00, '2023-12-22 21:39:01', '2023-12-22 15:39:01'),
(8, 4, 161, 1, 133, 133.00, '2023-12-22 21:40:49', '2023-12-22 15:40:49'),
(9, 4, 160, 1, 1050, 1183.00, '2023-12-22 21:40:49', '2023-12-22 15:40:49'),
(10, 4, 167, 2, 500, 2183.00, '2023-12-22 21:40:49', '2023-12-22 15:40:49'),
(11, 5, 161, 19, 133, 2527.00, '2023-12-23 07:43:40', '2023-12-23 01:43:40'),
(12, 5, 168, 17, 450, 10177.00, '2023-12-23 07:43:40', '2023-12-23 01:43:40'),
(13, 6, 160, 4, 1050, 4200.00, '2023-12-23 07:48:19', '2023-12-23 01:48:19'),
(14, 6, 167, 4, 500, 6200.00, '2023-12-23 07:48:19', '2023-12-23 01:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Order Placed', 'Upon successful checkout, the system records the order details and assigns a unique order ID.', '2023-12-04 11:15:23', '2023-12-04 05:55:06'),
(2, 'Payment Processing', 'After ordering, the system verifies payment info. Successful payments move to processing.', '2023-12-04 11:15:23', '2023-12-04 05:55:48'),
(3, 'Order Confirmed', 'Payment processed, order confirmed. System notifies customer and vendors. Vendors prep items for shipment.', '2023-12-04 11:15:23', '2023-12-04 05:56:14'),
(4, 'Item Shipped', 'Vendor ships, order status: \"Shipped.\" Customer gets confirmation and tracking.', '2023-12-04 11:15:23', '2023-12-04 05:56:45'),
(5, 'In Transit', 'Order in transit; customers track shipment with provided details.', '2023-12-04 11:15:23', '2023-12-04 05:57:14'),
(6, 'Out for Delivery', '\"Out for Delivery\" status means the package is en route and will be delivered soon, notifying the customer.', '2023-12-04 11:15:23', '2023-12-04 05:57:42'),
(7, 'Delivered', '\"Delivered\" means items received. System captures delivery confirmation, including date and time.', '2023-12-04 11:15:23', '2023-12-04 05:58:19'),
(8, 'Order Completed', '\"Completed\" status: delivery confirmed, order process concluded.', '2023-12-04 11:15:23', '2023-12-04 05:58:53'),
(9, 'Cancelled or Returned', 'Order status adapts to customer actions. \"Cancelled\" for cancellations, \"Returned\" for returns.', '2023-12-04 11:15:23', '2023-12-04 05:59:17');

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
  `sell_qty` int(11) DEFAULT NULL,
  `balance_qty` int(11) DEFAULT NULL,
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

INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `sell_qty`, `balance_qty`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `year`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(2, 'Men\'s Pollover Hoodie Solid White', 'men-s-pollover-hoodie-solid-white', '', '', '', '', '', 0, 'PH-M-White', '', NULL, NULL, 2, 1050.00, '', 1, 1, 2, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qvQ8RGrVeG6EN8uHHAXJ.png', 1, 1, NULL, '2023-12-18 11:37:40', '2023-12-18 11:13:11'),
(3, 'Winup360 Men\'s pollover hoodie  Red and black', 'winup360-men-s-pollover-hoodie-red-and-black', '', '', '', '', '', 0, 'PH-M-Red', '', NULL, NULL, 2, 1050.00, '', 1, 1, 2, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/tNnaalwae3QKOo8T8fcV.png', 1, 1, NULL, '2023-12-18 12:12:47', '2023-12-18 11:13:33'),
(4, 'Women\'s Pollover Hoodie Gray', 'women-s-pollover-hoodie-gray', '', '', '', '', '', 0, 'PH-W-Gray', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6i17OQ1oSjJFhFuvNHrq.png', 1, 1, NULL, '2023-12-18 12:19:05', '2023-12-18 11:14:08'),
(5, 'Women\'s Pollover Hoodies', 'women-s-pollover-hoodies', '', '', '', '', '', 0, 'PH-W-T.Navy', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/SXKZ1QiKQnXUMjkGYAQw.png', 1, 1, NULL, '2023-12-18 12:20:27', '2023-12-18 11:14:42'),
(6, 'Women\'s Pollover Hoodies speace Gray', 'women-s-pollover-hoodies-speace-gray', '', '', '', '', '', 0, 'PH-W-S.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/dinzsAzpgaoaI644f3Xo.png', 1, 1, NULL, '2023-12-18 12:22:12', '2023-12-18 11:15:09'),
(7, 'Women\'s Pollover Hoodies Black', 'women-s-pollover-hoodies-black', '', '', '', '', '', 0, 'PH-W-Black', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/wpBCinIQzbLhBDXhZeur.png', 1, 1, NULL, '2023-12-18 12:23:18', '2023-12-18 11:15:50'),
(8, 'WinUp360 Pollover Hoodies True Navy', 'winup360-pollover-hoodies-true-navy', '', '', '', '', '', 0, 'PH-M-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/59ZqkSUeiEX6NfTiibya.png', 1, 1, NULL, '2023-12-18 12:25:09', '2023-12-18 11:16:16'),
(9, 'WinUp360 Pollover Hoodies Royal Blue', 'winup360-pollover-hoodies-royal-blue', '', '', '', '', '', 0, 'PH-M-R.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/XrMkrWfqUsJ9KhNfIVwr.png', 1, 1, NULL, '2023-12-18 12:26:36', '2023-12-18 11:16:37'),
(10, 'Pollover Hoodies Scarlet Red', 'pollover-hoodies-scarlet-red', '', '', '', '', '', 0, 'PH-M-S.RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/4EEBm0oNzcUkvQ1xNthQ.png', 1, 1, NULL, '2023-12-18 12:28:50', '2023-12-18 11:16:59'),
(11, 'Men\'s Pollover Hoodies Sand Color', 'men-s-pollover-hoodies-sand-color', '', '', '', '', '', 0, 'PH-M-SAND', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/H1PU9UOPtmD96f6TznTQ.png', 1, 1, NULL, '2023-12-18 12:30:25', '2023-12-18 11:17:18'),
(12, 'Winup360 Men\'s Pollover Hoodies Red', 'winup360-men-s-pollover-hoodies-red', '', '', '', '', '', 0, 'PH-M-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/jE55kXqNTu45BztCpRt7.png', 1, 1, NULL, '2023-12-18 12:33:46', '2023-12-18 11:17:35'),
(13, 'WInUp360 Men\'s Pollover Hoodies  Purple', 'winup360-men-s-pollover-hoodies-purple', '', '', '', '', '', 0, 'PH-M-PURPLE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/xkaUyQQQGkCkjUaDly36.png', 1, 1, NULL, '2023-12-18 12:35:30', '2023-12-18 11:17:57'),
(14, 'Men\'s Pollover Hoodies PINK', 'men-s-pollover-hoodies-pink', '', '', '', '', '', 0, 'PH-M-PINK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/f6E9M46ZJbT9me6bWpC3.png', 1, 1, NULL, '2023-12-18 12:38:08', '2023-12-18 11:18:28'),
(15, 'Men\'s Pollover Hoodies Light Pink', 'men-s-pollover-hoodies-light-pink', '', '', '', '', '', 0, 'PH-M-L.PINK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 3, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9TSuJlmjiYgn9r8QC21M.png', 1, 1, NULL, '2023-12-18 12:39:25', '2023-12-18 11:18:56'),
(16, 'Men\'s Pollover Hoodies Militery Green', 'men-s-pollover-hoodies-militery-green', '', '', '', '', '', 0, 'PH-M-M.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/GCjEipJiq0szb1w2esKY.png', 1, 1, NULL, '2023-12-18 12:45:05', '2023-12-18 11:19:24'),
(17, 'Men\'s Pollover Hoodies Maroon', 'men-s-pollover-hoodies-maroon', '', '', '', '', '', 0, 'PH-M-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/RO8hnqa636RxDfYX03Eo.png', 1, 1, NULL, '2023-12-18 12:46:50', '2023-12-18 11:29:48'),
(18, 'Men\'s Pollover Hoodies Irish green', 'men-s-pollover-hoodies-irish-green', '', '', '', '', '', 0, 'PH-M-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/jKvFOiT1twUG1NrDYvXs.png', 1, 1, NULL, '2023-12-18 12:48:11', '2023-12-18 11:31:11'),
(19, 'Men\'s Pollover Hoodies GRAY', 'men-s-pollover-hoodies-gray', '', '', '', '', '', 0, 'PH-M-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/B02NEaWN3MNNK5dcIvtw.png', 1, 1, NULL, '2023-12-18 12:49:51', '2023-12-18 11:31:54'),
(20, 'Men\'s Pollover Hoodies Graphaite', 'men-s-pollover-hoodies-graphaite', '', '', '', '', '', 0, 'PH-M-GRAPHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/HVafhG4DV0nf3cfAIPYl.png', 1, 1, NULL, '2023-12-18 12:51:36', '2023-12-18 11:32:09'),
(21, 'Men\'s Pollover Hoodies Gold', 'men-s-pollover-hoodies-gold', '', '', '', '', '', 0, 'PH-M-GOLD', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/uAPv3TuAU97JizIhe63l.png', 1, 1, NULL, '2023-12-18 12:53:44', '2023-12-18 11:32:23'),
(22, 'Men\'s Pollover Hoodies Forest', 'men-s-pollover-hoodies-forest', '', '', '', '', '', 0, 'PH-M-FOREST', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/za6xIIWUeXFRYMbUDZOd.png', 1, 1, NULL, '2023-12-18 12:55:16', '2023-12-18 11:33:43'),
(23, 'Men\'s Pollover Hoodies Dark Chocklate', 'men-s-pollover-hoodies-dark-chocklate', '', '', '', '', '', 0, 'PH-M-D.CHOCKLATE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/OfU5I8iMrNzPd79DRsfS.png', 1, 1, NULL, '2023-12-18 12:57:45', '2023-12-18 11:34:01'),
(24, 'Men\'s Pollover Hoodies coraline blue', 'men-s-pollover-hoodies-coraline-blue', '', '', '', '', '', 0, 'PH-M-C.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/2JomsRTbD9Xkg7dAVqmc.png', 1, 1, NULL, '2023-12-18 13:00:48', '2023-12-18 11:37:31'),
(25, 'Men\'s Pollover Hoodie BLACK', 'men-s-pollover-hoodie-black', '', '', '', '', '', 0, 'PH-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/3H2tlOik57ShxcgG5zZW.png', 1, 1, NULL, '2023-12-18 13:02:33', '2023-12-18 11:37:59'),
(26, 'Men\'s Pollover Hoodie Ash', 'men-s-pollover-hoodie-ash', '', '', '', '', '', 0, 'PH-M-ASH', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/AohaONJBL27GSVpjjLnr.png', 1, 1, NULL, '2023-12-18 13:04:29', '2023-12-18 11:38:20'),
(27, 'Winup360 Solid White T-Shirt', 'winup360-solid-white-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/2bHDq0KlDkHQPwoRcsYa.png', 1, 1, NULL, '2023-12-18 13:16:34', '2023-12-18 11:38:41'),
(28, 'Winup360 colour Sand T-Shirt', 'winup360-colour-sand-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-SAND', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/VaKiVLCmaRt6eTuS9zzC.png', 1, 1, NULL, '2023-12-18 13:17:59', '2023-12-18 11:39:04'),
(29, 'Winup360 Men\'s BLUE T-Shirt', 'winup360-men-s-blue-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/BcErDZSycUK1gHBdDYZO.png', 1, 1, NULL, '2023-12-18 13:19:50', '2023-12-18 11:39:41'),
(30, 'Winup360 Men\'s Red T-Shirt', 'winup360-men-s-red-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/vRldELgpFdnrRQv3QlaI.png', 1, 1, NULL, '2023-12-18 13:27:56', '2023-12-18 11:39:59'),
(31, 'Winup360 Men\'s Purple T-Shirt', 'winup360-men-s-purple-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-PURPLE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/kluHGjERAeT79Zo2VVts.png', 1, 1, NULL, '2023-12-18 13:29:12', '2023-12-18 11:40:12'),
(32, 'Winup360 Orange Men\'s T-Shirt', 'winup360-orange-men-s-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-ORANGE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/2hJCu7dzBxGqCoSGsDRQ.png', 1, 1, NULL, '2023-12-18 13:33:55', '2023-12-18 11:40:32'),
(33, 'Winup360 True Navy Men\'s T-Shirt', 'winup360-true-navy-men-s-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6VHLjf6jkCv023zwyWUK.png', 1, 1, NULL, '2023-12-18 13:40:17', '2023-12-18 11:40:48'),
(34, 'Winup360 Irish Green Men\'s T-Shirt', 'winup360-irish-green-men-s-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/cm1BGtHkNYvh75v4VrB0.png', 1, 1, NULL, '2023-12-18 13:43:43', '2023-12-18 11:41:23'),
(35, 'Winup360 Maroon Men\'s T-Shirt', 'winup360-maroon-men-s-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/SOVj92VxF96FkqFIpJl6.png', 1, 1, NULL, '2023-12-18 13:44:39', '2023-12-18 11:42:10'),
(36, 'Winup360 Lime Men\'s T-Shirt', 'winup360-lime-men-s-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-LIME', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/BJ9H4biJw8yhyPUiEKvi.png', 1, 1, NULL, '2023-12-18 13:46:19', '2023-12-18 11:42:36'),
(37, 'Winup360 Gold Men\'s T-Shirt', 'winup360-gold-men-s-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-GOLD', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6zIqz11twpto1r1kcCF9.png', 1, 1, NULL, '2023-12-18 13:47:17', '2023-12-18 11:43:16'),
(38, 'Authentic Long Sleeve White T-shirt', 'authentic-long-sleeve-white-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/2FMc3NiCVLxFDdlRYJBL.png', 1, 1, NULL, '2023-12-18 13:53:04', '2023-12-18 11:44:15'),
(39, 'Authentic Long Sleeve Royal T-shirt', 'authentic-long-sleeve-royal-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/ZkVJkzio8i38iHnWZ1i8.png', 1, 1, NULL, '2023-12-18 13:55:59', '2023-12-18 11:39:23'),
(40, 'Authentic Long Sleeve Red T-shirt', 'authentic-long-sleeve-red-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/VU5DsrRZ77Orvg3xnpAC.png', 1, 1, NULL, '2023-12-18 14:04:53', '2023-12-18 11:44:39'),
(41, 'Authentic Long Sleeve Purple T-shirt', 'authentic-long-sleeve-purple-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-PURPLE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/pxTXihk2aBGOyC7KEXtg.png', 1, 1, NULL, '2023-12-18 14:06:22', '2023-12-18 11:45:25'),
(42, 'Authentic Long Sleeve True Navy T-shirt', 'authentic-long-sleeve-true-navy-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/iGPrHTj6splBnx1gmzmB.png', 1, 1, NULL, '2023-12-18 14:08:01', '2023-12-18 11:45:59'),
(43, 'Authentic Long Sleeve Militery green T-shirt', 'authentic-long-sleeve-militery-green-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-M.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/V84Wjs44tizlnK5DJ3rC.png', 1, 1, NULL, '2023-12-18 14:09:17', '2023-12-18 11:46:16'),
(44, 'Authentic Long Sleeve Maroon T-shirt', 'authentic-long-sleeve-maroon-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/gqpi2ALI9RfX1tJkdAn8.png', 1, 1, NULL, '2023-12-18 14:12:14', '2023-12-18 11:47:15'),
(45, 'Authentic Long Sleeve Light Pink T-shirt', 'authentic-long-sleeve-light-pink-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-L.PINK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/g4ErSWwEGK8YWKfpti3K.png', 1, 1, NULL, '2023-12-18 14:14:20', '2023-12-18 11:47:29'),
(46, 'Authentic Long Sleeve Irish Green T-shirt', 'authentic-long-sleeve-irish-green-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JqhMwm91Goh1tMAn85L0.png', 1, 1, NULL, '2023-12-18 14:19:43', '2023-12-18 11:47:50'),
(47, 'Authentic Long Sleeve Indigo blue T-shirt', 'authentic-long-sleeve-indigo-blue-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-IN.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/lwT25jefP2yoAM6DEFRv.png', 1, 1, NULL, '2023-12-18 14:21:46', '2023-12-18 11:48:25'),
(48, 'Authentic Long Sleeve Graphaite T-shirt', 'authentic-long-sleeve-graphaite-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-GRAPHAITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/MuwGxalaL5rO5QRjb4gC.png', 1, 1, NULL, '2023-12-18 14:23:05', '2023-12-18 11:48:41'),
(49, 'Authentic Long Sleeve White T-shirt', 'authentic-long-sleeve-white-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-GOLD', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/14E9oU3woK9zgKb8HG4b.png', 1, 1, NULL, '2023-12-18 14:24:20', '2023-12-18 11:49:39'),
(50, 'Authentic Long Sleeve Forest colour T-shirt', 'authentic-long-sleeve-forest-colour-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-FOREST', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/hUYirr7ZaUcq0NijGxs2.png', 1, 1, NULL, '2023-12-18 14:25:40', '2023-12-18 11:49:57'),
(51, 'Authentic Long Sleeve Light blue T-shirt', 'authentic-long-sleeve-light-blue-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-L.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/eTO5tJXPrt3EvyhmBdns.png', 1, 1, NULL, '2023-12-18 14:27:47', '2023-12-18 11:50:10'),
(52, 'Winup360 Long Sleeve Black T-shirt', 'winup360-long-sleeve-black-t-shirt-52', '', '', '', '', '', 0, 'LS.T.SHIRT-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Pkq6FzIohCLsyjuxMKOV.png', 1, 1, NULL, '2023-12-18 14:29:23', '2023-12-18 14:29:23'),
(53, 'Winup360 Long Sleeve Ash T-shirt', 'winup360-long-sleeve-ash-t-shirt', '', '', '', '', '', 0, 'LS.T.SHIRT-M-ASH', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/h2QWzxofNCN8qr6nfgW3.png', 1, 1, NULL, '2023-12-18 14:30:27', '2023-12-18 11:50:23'),
(54, 'Kid\'s short sleeve T-shirt Solid white', 'kid-s-short-sleeve-t-shirt-solid-white-54', '', '', '', '', '', 0, 'K.T.SHIRT-KB-S.WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JSJEYevq27Pci9rM34C6.png', 1, 1, NULL, '2023-12-18 14:36:05', '2023-12-18 14:36:05'),
(55, 'Kid\'s short sleeve T-shirt True Navy', 'kid-s-short-sleeve-t-shirt-true-navy', '', '', '', '', '', 0, 'K.T.SHIRT-KB-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Mc39rlvgXpEkD39srIoJ.png', 1, 1, NULL, '2023-12-18 14:37:18', '2023-12-18 11:50:47'),
(56, 'Kid\'s short sleeve T-shirt', 'kid-s-short-sleeve-t-shirt-56', '', '', '', '', '', 0, 'K.T.SHIRT-KB-GRAPHAITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/rXFsRWLVgSS1qKD0tMqi.png', 1, 1, NULL, '2023-12-18 14:38:40', '2023-12-18 14:38:40'),
(57, 'Kid\'s short sleeve T-shirt Black', 'kid-s-short-sleeve-t-shirt-black-57', '', '', '', '', '', 0, 'K.T.SHIRT-KB-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/xcgnkkw1LEs9e6CqGBj2.png', 1, 1, NULL, '2023-12-18 14:39:47', '2023-12-18 14:39:47'),
(58, 'Winup360 Long Weekend Crewneck Sweatshirt True Navy', 'winup360-long-weekend-crewneck-sweatshirt-true-navy', '', '', '', '', '', 0, 'SSHIRT-M-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/OeYYUoABPXSEasae6jwW.png', 1, 1, NULL, '2023-12-18 14:48:24', '2023-12-18 11:51:36'),
(59, 'Winup360 Long Weekend Crewneck Sweatshirt Gray', 'winup360-long-weekend-crewneck-sweatshirt-gray', '', '', '', '', '', 0, 'SSHIRT-M-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/tTgpe9S1z9ggT8KoStDj.png', 1, 1, NULL, '2023-12-18 14:51:08', '2023-12-18 11:52:09'),
(60, 'Winup360 Long Weekend Crewneck Sweatshirt Deep Gray', 'winup360-long-weekend-crewneck-sweatshirt-deep-gray', '', '', '', '', '', 0, 'SSHIRT-M-D.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/UF30IJRgtAfjooJf56Gm.png', 1, 1, NULL, '2023-12-18 16:30:24', '2023-12-18 11:54:46'),
(61, 'Winup360 Women\'s short sleeve T-Shirt', 'winup360-women-s-short-sleeve-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-W-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/PYLPRKfJ4RR34i2uPWrf.png', 1, 1, NULL, '2023-12-18 16:45:31', '2023-12-18 11:55:21'),
(62, 'Winup360 Women\'s short sleeve T-Shirt Vino Red', 'winup360-women-s-short-sleeve-t-shirt-vino-red', '', '', '', '', '', 0, 'T.SHIRT-W-V.RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/3fA2yzgz5CTL0jjD5Iua.png', 1, 1, NULL, '2023-12-18 16:47:20', '2023-12-18 11:55:40'),
(63, 'Winup360 Women\'s short sleeve T-Shirt Rise Up Red', 'winup360-women-s-short-sleeve-t-shirt-rise-up-red', '', '', '', '', '', 0, 'T.SHIRT-W-RU.RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/TDVqEDxySgah8Ry2y7Li.png', 1, 1, NULL, '2023-12-18 16:48:41', '2023-12-18 11:32:56'),
(64, 'Winup360 Women\'s short sleeve T-Shirt', 'winup360-women-s-short-sleeve-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-W-M.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/KvguAIZvBIhG0VN5se4f.png', 1, 1, NULL, '2023-12-18 17:03:04', '2023-12-18 11:56:17'),
(65, 'Winup360 Women\'s short sleeve T-Shirt Fairy gray', 'winup360-women-s-short-sleeve-t-shirt-fairy-gray', '', '', '', '', '', 0, 'T.SHIRT-W-F.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/dPHkFOrGF9WkYpUPexsK.png', 1, 1, NULL, '2023-12-18 17:03:56', '2023-12-18 11:57:24'),
(66, 'Winup360 Women\'s short sleeve T-Shirt Irish green', 'winup360-women-s-short-sleeve-t-shirt-irish-green', '', '', '', '', '', 0, 'T.SHIRT-W-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9KY64O96JNv5nnNRiTmv.png', 1, 1, NULL, '2023-12-18 17:05:36', '2023-12-18 11:57:49'),
(67, 'Winup360 Women\'s short sleeve T-Shirt Deep Black', 'winup360-women-s-short-sleeve-t-shirt-deep-black', '', '', '', '', '', 0, 'T.SHIRT-W-D.BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/ys6UIE15M7fCZ2J38adi.png', 1, 1, NULL, '2023-12-18 17:06:53', '2023-12-18 11:58:10'),
(68, 'Winup360 Women\'s short sleeve T-Shirt Black', 'winup360-women-s-short-sleeve-t-shirt-black', '', '', '', '', '', 0, 'T.SHIRT-W-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Zt1trt821pYRaXoTjcW5.png', 1, 1, NULL, '2023-12-18 17:08:46', '2023-12-18 11:58:32'),
(69, 'Winup360 Women\'s short sleeve T-Shirt Azure Blue', 'winup360-women-s-short-sleeve-t-shirt-azure-blue', '', '', '', '', '', 0, 'T-SHIRT-W-A.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/3SzO9lU2tMDpPP7TSct9.png', 1, 1, NULL, '2023-12-18 17:10:30', '2023-12-18 11:59:02'),
(70, 'Men\'s Full Zip Hoodie Red', 'men-s-full-zip-hoodie-red-70', '', '', '', '', '', 0, 'ZH-M-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/VvuM0rcRgmIq11BsgKJK.png', 1, 1, NULL, '2023-12-18 18:03:27', '2023-12-18 18:03:27'),
(71, 'Winup360 Men\'s Full Zip Hoodie Graphaite', 'winup360-men-s-full-zip-hoodie-graphaite-71', '', '', '', '', '', 0, 'ZH-M-GRAPHAITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/SAJNL5rAAOc1BlyJ7uGv.png', 1, 1, NULL, '2023-12-18 18:06:32', '2023-12-18 18:06:32'),
(72, 'Men\'s Full Zip Hoodie Royal blue', 'men-s-full-zip-hoodie-royal-blue-72', '', '', '', '', '', 0, 'Z-H-M-ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/5s5LDIoGxa4eQcoAS2ww.png', 1, 1, NULL, '2023-12-18 18:08:22', '2023-12-18 18:08:22'),
(73, 'Winup Men\'s Full Zip Hoodie True Navy', 'winup-men-s-full-zip-hoodie-true-navy-73', '', '', '', '', '', 0, 'ZH-M-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qdzxvjVuNJ0feReQkkLn.png', 1, 1, NULL, '2023-12-18 18:09:43', '2023-12-18 18:09:43'),
(74, 'Men\'s Full Zip Hoodie Black', 'men-s-full-zip-hoodie-black-74', '', '', '', '', '', 0, 'ZH-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/feBqnuqS9n0LDMQcaY0o.png', 1, 1, NULL, '2023-12-18 18:11:02', '2023-12-18 18:11:02'),
(75, 'Men\'s Full Zip Hoodie Alpine green', 'men-s-full-zip-hoodie-alpine-green-75', '', '', '', '', '', 0, 'ZH-M-A.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/cLaTDh35AN08HrMKJmM2.png', 1, 1, NULL, '2023-12-18 18:12:29', '2023-12-18 18:12:29'),
(76, 'Men\'s Full Zip Hoodie Charcol', 'men-s-full-zip-hoodie-charcol-76', '', '', '', '', '', 0, 'ZH-M-CHARCOL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/KxPcwpxVa8a1iuEbyf25.png', 1, 1, NULL, '2023-12-18 18:14:24', '2023-12-18 18:14:24'),
(77, 'Youth Smart  Hoodie White', 'youth-smart-hoodie-white-77', '', '', '', '', '', 0, 'H-KB-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qoUwlZIn4gttMp1Yqd51.png', 1, 1, NULL, '2023-12-18 18:23:42', '2023-12-18 18:23:42'),
(78, 'Youth Smart  Hoodie Royal', 'youth-smart-hoodie-royal-78', '', '', '', '', '', 0, 'H-KB-ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/rKBB05x7DIlB9KPVJboq.png', 1, 1, NULL, '2023-12-18 18:24:39', '2023-12-18 18:24:39'),
(79, 'Youth Smart  Hoodie Red', 'youth-smart-hoodie-red-79', '', '', '', '', '', 0, 'H-KB-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/RrGGCxNFkj5S3nzmawNT.png', 1, 1, NULL, '2023-12-18 18:28:53', '2023-12-18 18:28:53'),
(80, 'Youth Smart Hoodie Purple', 'youth-smart-hoodie-purple-80', '', '', '', '', '', 0, 'H-LB-PURPLE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/lFgNBIitYyVP9BlShSYC.png', 1, 1, NULL, '2023-12-18 21:22:17', '2023-12-18 21:22:17'),
(81, 'Youth Smart Hoodie true Navy', 'youth-smart-hoodie-true-navy-81', '', '', '', '', '', 0, 'H-KB-T.NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9hZQZScTtcWlwe5DEXhv.png', 1, 1, NULL, '2023-12-18 21:24:02', '2023-12-18 21:24:02'),
(82, 'Youth Smart Hoodie Maroon', 'youth-smart-hoodie-maroon-82', '', '', '', '', '', 0, 'H-KB-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/5To1rEzueX9EKWHM4YXy.png', 1, 1, NULL, '2023-12-18 21:25:08', '2023-12-18 21:25:08'),
(83, 'Winup360 Youth Smart Hoodie Pink', 'winup360-youth-smart-hoodie-pink-83', '', '', '', '', '', 0, 'H-KB-PINK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qnzFUObR3hPJziA6iX6g.png', 1, 1, NULL, '2023-12-18 21:26:10', '2023-12-18 21:26:10'),
(84, 'Youth Smart Hoodie Irish Green', 'youth-smart-hoodie-irish-green-84', '', '', '', '', '', 0, 'H-KB-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/kjRLvAEMbiY6VcQQjt2U.png', 1, 1, NULL, '2023-12-18 21:29:00', '2023-12-18 21:29:00'),
(85, 'Youth Smart Hoodie Gray', 'youth-smart-hoodie-gray-85', '', '', '', '', '', 0, 'H-KB-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/63o03Zn89K5SwC0MulzE.png', 1, 1, NULL, '2023-12-18 21:31:08', '2023-12-18 21:31:08'),
(86, 'Youth Smart Hoodie Graphaite colour', 'youth-smart-hoodie-graphaite-colour-86', '', '', '', '', '', 0, 'H-KB-GRAPHAITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/VFERtGPTf8NugcDdRbAx.png', 1, 1, NULL, '2023-12-18 21:33:05', '2023-12-18 21:33:05'),
(87, 'Youth Smart Hoodie Gold', 'youth-smart-hoodie-gold-87', '', '', '', '', '', 0, 'H-KB-GOLD', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/nxioU4VyGDrXptRur2rs.png', 1, 1, NULL, '2023-12-18 21:36:24', '2023-12-18 21:36:24'),
(88, 'Youth Smart Hoodie Forest', 'youth-smart-hoodie-forest-88', '', '', '', '', '', 0, 'H-KB-FOREST', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/yNaqw0hYHhaiqs2NuWR3.png', 1, 1, NULL, '2023-12-18 21:38:12', '2023-12-18 21:38:12'),
(89, 'Youth Smart Hoodie Black', 'youth-smart-hoodie-black-89', '', '', '', '', '', 0, 'H-KB-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/yO0LOZDKSRiEMledS4Yu.png', 1, 1, NULL, '2023-12-18 21:39:37', '2023-12-18 21:39:37'),
(90, 'Men\'s Performance T-Shirt Solid White', 'men-s-performance-t-shirt-solid-white-90', '', '', '', '', '', 0, 'P.T.SHIET-M-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/NP9eYp905tFJsv9BQBWt.png', 1, 1, NULL, '2023-12-18 21:44:10', '2023-12-18 21:44:10'),
(91, 'Men\'s Performance T-Shirt Graphaite colour', 'men-s-performance-t-shirt-graphaite-colour-91', '', '', '', '', '', 0, 'P.T.SHIRT-M-GRAPHAITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6ahyvC5SltwFlELIJOoP.png', 1, 1, NULL, '2023-12-18 21:45:27', '2023-12-18 21:45:27'),
(92, 'Men\'s Performance T-Shirt Crimson', 'men-s-performance-t-shirt-crimson-92', '', '', '', '', '', 0, 'P.T.SHIRT-M-CRIMSON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/YKVIv7jksVUToccSHKfv.png', 1, 1, NULL, '2023-12-18 21:46:52', '2023-12-18 21:46:52'),
(93, 'Winup360 V-neek sweater  Navy Colour', 'winup360-v-neek-sweater-navy-colour-93', '', '', '', '', '', 0, 'VS-M-NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/GAjnGfcoTzRGiCZkXZDK.png', 1, 1, NULL, '2023-12-18 21:54:48', '2023-12-18 21:54:48'),
(95, 'Winup360 V-neek sweater Charcoal colour', 'winup360-v-neek-sweater-charcoal-colour-95', '', '', '', '', '', 0, 'VS-M-CHARCOAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/zrvBsSal4Z58ci6jGVkL.png', 1, 1, NULL, '2023-12-18 21:57:23', '2023-12-18 21:57:23'),
(97, 'Winup360 V-neek sweater Grey', 'winup360-v-neek-sweater-grey-97', '', '', '', '', '', 0, 'VS-M-GREY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/PW9KZPGZHP9NS9V2MmCA.png', 1, 1, NULL, '2023-12-18 21:58:40', '2023-12-18 21:58:40'),
(98, 'Winup360 V-neek sweater Black', 'winup360-v-neek-sweater-black-98', '', '', '', '', '', 0, 'VS-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/lb7KIJeQnHKwWinnwpNk.png', 1, 1, NULL, '2023-12-18 22:03:16', '2023-12-18 22:03:16'),
(99, 'Women\'s Silk Touch Polo T-shirt white', 'women-s-silk-touch-polo-t-shirt-white-99', '', '', '', '', '', 0, 'P.T.SHIRT-W-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/eOg7diyvl6MEKNaVMiW5.png', 1, 1, NULL, '2023-12-19 05:38:02', '2023-12-19 05:38:02'),
(100, 'Women\'s Silk Touch Polo T-shirt Ultramarine Blue', 'women-s-silk-touch-polo-t-shirt-ultramarine-blue-100', '', '', '', '', '', 0, 'P.T.SHIRT-W-U.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/gCICqELx7bixgBk0VAeS.png', 1, 1, NULL, '2023-12-19 05:41:16', '2023-12-19 05:41:16'),
(101, 'Women\'s Silk Touch Polo T-shirt TURQUOISE', 'women-s-silk-touch-polo-t-shirt-turquoise-101', '', '', '', '', '', 0, 'P.T.SHIRT-W-TURAUOISE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/5YkzysdQfdSTFjcX5ujy.png', 1, 1, NULL, '2023-12-19 05:42:50', '2023-12-19 05:42:50'),
(102, 'Women\'s Silk Touch Polo T-shirt Tropical pink', 'women-s-silk-touch-polo-t-shirt-tropical-pink-102', '', '', '', '', '', 0, 'P.T.SHIRT-W-T.PINK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/4rX5h4Z4EHK1A0UAKK3D.png', 1, 1, NULL, '2023-12-19 05:45:46', '2023-12-19 05:45:46'),
(103, 'Women\'s Silk Touch Polo T-shirt  Texas Orange', 'women-s-silk-touch-polo-t-shirt-texas-orange-103', '', '', '', '', '', 0, 'P.T.SHIRT-W-T.ORANGE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/4S8mDkxhy51mmhD75Rpm.png', 1, 1, NULL, '2023-12-19 05:47:08', '2023-12-19 05:47:08'),
(104, 'Women\'s Silk Touch Polo T-shirt Sunflower Yallow', 'women-s-silk-touch-polo-t-shirt-sunflower-yallow-104', '', '', '', '', '', 0, 'P.T.SHIRT-W-S.YALLOW', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JBgTG9VJA9hGW5cRgcAj.png', 1, 1, NULL, '2023-12-19 05:48:52', '2023-12-19 05:48:52'),
(105, 'Women\'s Silk Touch Polo T-shirt Stone Colour', 'women-s-silk-touch-polo-t-shirt-stone-colour-105', '', '', '', '', '', 0, 'P.T.SHIRT-W-STONE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6EtPKL9IAydpqC0Igi89.png', 1, 1, NULL, '2023-12-19 05:51:17', '2023-12-19 05:51:17'),
(106, 'Women\'s Silk Touch Polo T-shirt Red', 'women-s-silk-touch-polo-t-shirt-red-106', '', '', '', '', '', 0, 'P.T.SHIRT-W-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/2eOlFnd4E7GXn46Lymry.png', 1, 1, NULL, '2023-12-19 05:53:40', '2023-12-19 05:53:40'),
(107, 'Women\'s Silk Touch Polo T-shirt Purple', 'women-s-silk-touch-polo-t-shirt-purple-107', '', '', '', '', '', 0, 'P.T.SHIRT-W-PURPLE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/oMIfydBy0UzIF6LPoTYG.png', 1, 1, NULL, '2023-12-19 05:54:43', '2023-12-19 05:54:43'),
(108, 'Women\'s Silk Touch Polo T-shirt  Navy', 'women-s-silk-touch-polo-t-shirt-navy-108', '', '', '', '', '', 0, 'P.T.SHIRT-W-NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/490FsMDj950f4RBW7dZY.png', 1, 1, NULL, '2023-12-19 05:56:14', '2023-12-19 05:56:14'),
(109, 'Women\'s Silk Touch Polo T-shirt Mediterranean Blue', 'women-s-silk-touch-polo-t-shirt-mediterranean-blue-109', '', '', '', '', '', 0, 'P.T.SHIRT-W-M.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/QR9clgAaEqoJ6SW6UFKR.png', 1, 1, NULL, '2023-12-19 05:57:55', '2023-12-19 05:57:55'),
(110, 'Women\'s Silk Touch Polo T-shirt Maroon', 'women-s-silk-touch-polo-t-shirt-maroon-110', '', '', '', '', '', 0, 'P.T.SHIRT-W-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/laAoWfrt5fA6KwEjQ25L.png', 1, 1, NULL, '2023-12-19 06:01:03', '2023-12-19 06:01:03'),
(111, 'Women\'s Silk Touch Polo T-shirt Light Pink', 'women-s-silk-touch-polo-t-shirt-light-pink-111', '', '', '', '', '', 0, 'P.T.SHIRT-W-L.PINK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/QHoP8HYA4I9Z93NIPzvh.png', 1, 1, NULL, '2023-12-19 06:02:41', '2023-12-19 06:02:41'),
(112, 'Women\'s Silk Touch Polo T-shirt Lime', 'women-s-silk-touch-polo-t-shirt-lime-112', '', '', '', '', '', 0, 'P.T.SHIRT-W-LIME', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/BvExGKAorQnzd6n1SzXL.png', 1, 1, NULL, '2023-12-19 06:03:59', '2023-12-19 06:03:59'),
(113, 'Women\'s Silk Touch Polo T-shirt Light Blue', 'women-s-silk-touch-polo-t-shirt-light-blue-113', '', '', '', '', '', 0, 'P.T.SHIRT-W-L.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/OWzZWuNg3OS5uVdEh78S.png', 1, 1, NULL, '2023-12-19 06:05:25', '2023-12-19 06:05:25'),
(114, 'Women\'s Silk Touch Polo T-shirt Gray', 'women-s-silk-touch-polo-t-shirt-gray-114', '', '', '', '', '', 0, 'P.T.SHIRT-W-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/H7WvOtgyFzSe5yMb7Ubd.png', 1, 1, NULL, '2023-12-19 06:07:19', '2023-12-19 06:07:19'),
(115, 'Women\'s Silk Touch Polo T-shirt Dark Green', 'women-s-silk-touch-polo-t-shirt-dark-green-115', '', '', '', '', '', 0, 'P.T.SHIRT-W-D.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/HoiECqW3T1SihOmvvGv4.png', 1, 1, NULL, '2023-12-19 06:08:55', '2023-12-19 06:08:55'),
(116, 'Women\'s Silk Touch Polo T-shirt Irish Green', 'women-s-silk-touch-polo-t-shirt-irish-green-116', '', '', '', '', '', 0, 'P.T.SHIRT-W-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/5j2LC0TMyvUIPKF8Wani.png', 1, 1, NULL, '2023-12-19 06:10:24', '2023-12-19 06:10:24'),
(117, 'Women\'s Silk Touch Polo T-shirt Clover Green', 'women-s-silk-touch-polo-t-shirt-clover-green-117', '', '', '', '', '', 0, 'P.T.SHIRT-W-C.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Hoq2yxAm3CEbjnLDntru.png', 1, 1, NULL, '2023-12-19 06:13:12', '2023-12-19 06:13:12'),
(118, 'WinUp360 Women\'s Silk Touch Polo T-shirt', 'winup360-women-s-silk-touch-polo-t-shirt-118', '', '', '', '', '', 0, 'P.T.SHIRT-W-COFFEE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/4c5jYbCnDV0uBMLQXKoX.png', 1, 1, NULL, '2023-12-19 06:16:42', '2023-12-19 06:16:42'),
(119, 'Women\'s Silk Touch Polo T-shirt Black', 'women-s-silk-touch-polo-t-shirt-black-119', '', '', '', '', '', 0, 'P.T.SHIRT-W-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/KFPvzQf1wrKPqwmjZDEi.png', 1, 1, NULL, '2023-12-19 06:18:40', '2023-12-19 06:18:40'),
(120, 'Man\'s Quarter Zip Pullover Sweater n', 'man-s-quarter-zip-pullover-sweater-n-120', '', '', '', '', '', 0, 'QZ-M-NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/fgfrRgHdbkazRFr5Xi03.png', 1, 1, NULL, '2023-12-19 07:12:07', '2023-12-19 07:12:07'),
(121, 'Man\'s Quarter Zip Pullover Sweater nA', 'man-s-quarter-zip-pullover-sweater-na-121', '', '', '', '', '', 0, 'QZ-M-NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/C8TW2ECNZi6RRM1e8U1F.png', 1, 1, NULL, '2023-12-19 07:12:07', '2023-12-19 07:12:07'),
(122, 'Man\'s Quarter Zip Pullover  Shadow Gray', 'man-s-quarter-zip-pullover-shadow-gray-122', '', '', '', '', '', 0, 'QZ-M-S.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Z8hdicFaxlwDVvDZSYvP.png', 1, 1, NULL, '2023-12-19 07:15:47', '2023-12-19 07:15:47'),
(123, 'Man\'s Quarter Zip Pullover Royal blue', 'man-s-quarter-zip-pullover-royal-blue-123', '', '', '', '', '', 0, 'QZ-M-ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/zBVxUqQbR2QMi5FwprlC.png', 1, 1, NULL, '2023-12-19 07:20:09', '2023-12-19 07:20:09'),
(124, 'Man\'s Quarter Zip Pullover  Black', 'man-s-quarter-zip-pullover-black-124', '', '', '', '', '', 0, 'QZ-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/ihSi3q6KxLdo2MBNe2Is.png', 1, 1, NULL, '2023-12-19 07:22:37', '2023-12-19 07:22:37'),
(125, 'Women\'s V-Neck T-shirt WHITE', 'women-s-v-neck-t-shirt-white-125', '', '', '', '', '', 0, 'V.T.SHIRT-W-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/xl4meIG1nekYOIBZS9Td.png', 1, 1, NULL, '2023-12-19 07:31:32', '2023-12-19 07:31:32'),
(126, 'Women\'s V-Neck T-shirt Maroon', 'women-s-v-neck-t-shirt-maroon-126', '', '', '', '', '', 0, 'V.T.SHIRT-W-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/QF0Y7M05zo8a0zbxOYhx.png', 1, 1, NULL, '2023-12-19 07:32:35', '2023-12-19 07:32:35'),
(127, 'Women\'s V-Neck T-shirt Black', 'women-s-v-neck-t-shirt-black-127', '', '', '', '', '', 0, 'V.T.SHIRT-W-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/V5T9UoEdSYsf4W8gDRRF.png', 1, 1, NULL, '2023-12-19 07:33:34', '2023-12-19 07:33:34'),
(128, 'Women\'s V-Neck T-shirt Royal blue', 'women-s-v-neck-t-shirt-royal-blue-128', '', '', '', '', '', 0, 'V.T.SHIRT-W-ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/V4vuAmDZCZAKBfyOVGdB.png', 1, 1, NULL, '2023-12-19 07:35:37', '2023-12-19 07:35:37'),
(129, 'Women\'s V-Neck T-shirt Red', 'women-s-v-neck-t-shirt-red-129', '', '', '', '', '', 0, 'V.T.SHIRT-W-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/mQovmSsNzBldTf6I4dfq.png', 1, 1, NULL, '2023-12-19 07:36:41', '2023-12-19 07:36:41'),
(130, 'Women\'s V-Neck T-shirt Redal Blue', 'women-s-v-neck-t-shirt-redal-blue-130', '', '', '', '', '', 0, 'V.T.SHIRT-W-RE.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/0SmKqtcJqNZGWuKzWuGK.png', 1, 1, NULL, '2023-12-19 07:37:38', '2023-12-19 07:37:38'),
(131, 'Women\'s V-Neck T-shirt  Militery green', 'women-s-v-neck-t-shirt-militery-green-131', '', '', '', '', '', 0, 'V.T.SHIRT-W-M.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/udquSFG2uvUFg3hjHT8R.png', 1, 1, NULL, '2023-12-19 07:38:26', '2023-12-19 07:38:26'),
(132, 'Women\'s V-Neck T-shirt Redal blue', 'women-s-v-neck-t-shirt-redal-blue-132', '', '', '', '', '', 0, 'V.T.SHIRT-W-REDAL.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/TG7Er7hirjBFEDyemLFQ.png', 1, 1, NULL, '2023-12-19 07:39:48', '2023-12-19 07:39:48'),
(133, 'Women\'s V-Neck T-shirt Irish green', 'women-s-v-neck-t-shirt-irish-green-133', '', '', '', '', '', 0, 'V.T.SHIRT-W-I.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/XvsQJnlZpyszg9vcCUuo.png', 1, 1, NULL, '2023-12-19 07:40:52', '2023-12-19 07:40:52'),
(134, 'Women\'s performance shirt white', 'women-s-performance-shirt-white-134', '', '', '', '', '', 0, 'P.SHIRT-W-WHITE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/AZI7832zbGSiUNQTbRFw.png', 1, 1, NULL, '2023-12-19 07:43:21', '2023-12-19 07:43:21'),
(135, 'Women\'s performance shirt Gray', 'women-s-performance-shirt-gray-135', '', '', '', '', '', 0, 'P.SHIRT-W-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/fcccRsJ3PC2QLdf0EqGF.png', 1, 1, NULL, '2023-12-19 07:44:14', '2023-12-19 07:44:14'),
(136, 'Women\'s performance shirt Dark Gray', 'women-s-performance-shirt-dark-gray-136', '', '', '', '', '', 0, 'P.SHIRT-W-D.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/S9Vrj1SzWa3dhy9pTDoy.png', 1, 1, NULL, '2023-12-19 07:45:36', '2023-12-19 07:45:36'),
(137, 'Women\'s performance shirt Crimson', 'women-s-performance-shirt-crimson-137', '', '', '', '', '', 0, 'P.SHIRT-W-CRIMSON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6VaVTXq9jilabuqZbz16.png', 1, 1, NULL, '2023-12-19 07:47:13', '2023-12-19 07:47:13'),
(138, 'Men\'s Tri-Blend Zip Hoodie Navy', 'men-s-tri-blend-zip-hoodie-navy-138', '', '', '', '', '', 0, 'TZ.H-M-NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/gkRs2JjL6nGTLPyV7wD8.png', 1, 1, NULL, '2023-12-19 07:51:34', '2023-12-19 07:51:34'),
(139, 'Men\'s Tri-Blend Zip Hoodie Gray', 'men-s-tri-blend-zip-hoodie-gray-139', '', '', '', '', '', 0, 'TZ.H-M-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Y0GdukrW8daS2QrsGhzq.png', 1, 1, NULL, '2023-12-19 07:52:57', '2023-12-19 07:52:57'),
(140, 'Men\'s Tri-Blend Zip Hoodie Royal Blue', 'men-s-tri-blend-zip-hoodie-royal-blue-140', '', '', '', '', '', 0, 'TZ.H-M-R.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/2FFsuBr5ltl8VmXr4Zj9.png', 1, 1, NULL, '2023-12-19 07:54:10', '2023-12-19 07:54:10'),
(141, 'Men\'s Tri-Blend Zip Hoodie Black', 'men-s-tri-blend-zip-hoodie-black-141', '', '', '', '', '', 0, 'TZ.H-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Gmez4EaiVOC67w6ufQ9l.png', 1, 1, NULL, '2023-12-19 07:55:13', '2023-12-19 07:55:13'),
(142, 'Men\'s Polo T-Shirt Sand', 'men-s-polo-t-shirt-sand-142', '', '', '', '', '', 0, 'P.T.SHIRT-M-SAND', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Yc4DnJaFl2sT7l8Npnmq.png', 1, 1, NULL, '2023-12-19 08:04:34', '2023-12-19 08:04:34'),
(143, 'Men\'s Polo T-Shirt Red', 'men-s-polo-t-shirt-red-143', '', '', '', '', '', 0, 'P.T.SHIRT-M-RED', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/6QPdsLyRO5lZmh3ngmM4.png', 1, 1, NULL, '2023-12-19 08:05:46', '2023-12-19 08:05:46'),
(144, 'Men\'s Polo T-Shirt Purple', 'men-s-polo-t-shirt-purple-144', '', '', '', '', '', 0, 'P.T.SHIRT-M-PURPLE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/OnDiU8VQtAgct2RggZQK.png', 1, 1, NULL, '2023-12-19 08:07:04', '2023-12-19 08:07:04'),
(145, 'Men\'s Polo T-Shirt Black', 'men-s-polo-t-shirt-black-145', '', '', '', '', '', 0, 'P.T.SHIRT-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/M8SO9wfPB69Glny3eISq.png', 1, 1, NULL, '2023-12-19 08:09:12', '2023-12-19 08:09:12'),
(146, 'Men\'s Polo T-Shirt Maroon', 'men-s-polo-t-shirt-maroon-146', '', '', '', '', '', 0, 'P.T.SHIRT-M-MAROON', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JjEp1rit5t2hAWD3BfAi.png', 1, 1, NULL, '2023-12-19 08:12:40', '2023-12-19 08:12:40'),
(147, 'Men\'s Polo T-Shirt Light Blue', 'men-s-polo-t-shirt-light-blue-147', '', '', '', '', '', 0, 'P.T.SHIRT-M-L.BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/dLERcfc2J3225IDtYaW4.png', 1, 1, NULL, '2023-12-19 08:14:28', '2023-12-19 08:14:28'),
(148, 'Men\'s Polo T-Shirt Gray', 'men-s-polo-t-shirt-gray-148', '', '', '', '', '', 0, 'P.T.SHIRT-M-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/vgwgTZpT0iSIwiwnPBV5.png', 1, 1, NULL, '2023-12-19 08:16:49', '2023-12-19 08:16:49'),
(149, 'Men\'s Polo T-Shirt Black', 'men-s-polo-t-shirt-black-149', '', '', '', '', '', 0, 'P.T.SHIRT-M-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/t3BDhnsmJsuBRRMRFuo2.png', 1, 1, NULL, '2023-12-19 08:21:12', '2023-12-19 08:21:12'),
(150, 'Men\'s Polo T-Shirt Cover Green', 'men-s-polo-t-shirt-cover-green-150', '', '', '', '', '', 0, 'P.T.SHIRT-M-C.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/w0nl4YRBQF3s6ccGqjTT.png', 1, 1, NULL, '2023-12-19 08:23:02', '2023-12-19 08:23:02'),
(151, 'Men\'s Polo T-Shirt Court Green', 'men-s-polo-t-shirt-court-green-151', '', '', '', '', '', 0, 'P.T.SHIRT-M-CORUT.GREEN', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/bsTD4k14djSZ2sQlWsXq.png', 1, 1, NULL, '2023-12-19 08:25:19', '2023-12-19 08:25:19'),
(152, 'Men\'s Polo T-Shirt Coffee Been', 'men-s-polo-t-shirt-coffee-been-152', '', '', '', '', '', 0, 'P.T.SHIRT-M-COFFEE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/SBUfJrlNBZfYYcEV1ADS.png', 1, 1, NULL, '2023-12-19 08:27:03', '2023-12-19 08:27:03'),
(153, 'Men\'s Polo T-Shirt Blue', 'men-s-polo-t-shirt-blue-153', '', '', '', '', '', 0, 'P.T.SHIRT-M-BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/rMgSh4ErPJYwicO2Qv6b.png', 1, 1, NULL, '2023-12-19 08:27:58', '2023-12-19 08:27:58'),
(154, 'Women\'s Heritage Blend short sleeve Raglan t-shirt True Navy', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-true-navy-154', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-NAVY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/4RsHBPEqhW21MTyS1L8G.png', 1, 1, NULL, '2023-12-19 08:36:53', '2023-12-19 08:36:53'),
(155, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Graphite Light', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-graphite-light-155', '', '', '', '', '', 0, 'SS.R.T-SHIRT-W-G.LIGHT', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/8rTwd4KDe5IL4GPEvGFS.png', 1, 1, NULL, '2023-12-19 08:39:45', '2023-12-19 08:39:45');
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `product_tag`, `brand`, `sku`, `external_link`, `sell_qty`, `balance_qty`, `cash_dev_status`, `price`, `unit`, `stock_qty`, `stock_mini_qty`, `stock_status`, `manufacturer`, `download_link`, `year`, `discount`, `discount_status`, `shipping_days`, `free_shopping`, `flat_rate_status`, `flat_rate_price`, `vat`, `vat_status`, `tax`, `tax_status`, `thumnail_img`, `status`, `entry_by`, `counter`, `created_at`, `updated_at`) VALUES
(156, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Black', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-black-156', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/a6dN7pEBYwrU2bbcKYDe.png', 1, 1, NULL, '2023-12-19 08:40:58', '2023-12-19 08:40:58'),
(157, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Dark Royal', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-dark-royal-157', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-D.ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qQYOxhwiAf31mqlANVgs.png', 1, 1, NULL, '2023-12-19 08:42:20', '2023-12-19 08:42:20'),
(158, 'Women\'s Long Weekend Crewneck Sweatshirt', 'women-s-long-weekend-crewneck-sweatshirt-158', '', '', '', '', '', 0, 'CS-W-BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/QLlK7bBSH7oovc0PMFZc.png', 1, 1, NULL, '2023-12-19 08:48:25', '2023-12-19 08:48:25'),
(159, 'Women\'s Long Weekend Crewneck Sweatshirt Gray', 'women-s-long-weekend-crewneck-sweatshirt-gray-159', '', '', '', '', '', 0, 'CS-W-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/IkhSQd569n5IOCB8RzkR.png', 1, 1, NULL, '2023-12-19 08:50:09', '2023-12-19 08:50:09'),
(160, 'Women\'s Long Weekend Crewneck Sweatshirt Dark Gray', 'women-s-long-weekend-crewneck-sweatshirt-dark-gray', '', '', '', '', '', 0, 'CS-W-D.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/jBkOtfxvw7ah0DEW2kGE.png', 1, 1, NULL, '2023-12-19 08:52:01', '2023-12-22 10:24:11'),
(161, 'Exclusive HD Moviesss', 'exclusive-hd-moviesss', '', '', '', '', '', 0, '2323', '', NULL, NULL, 2, 133.00, '22', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9vuyeVnSnNoEDTQySUNx.png', 1, 1, NULL, '2023-12-22 01:19:37', '2023-12-22 04:09:46'),
(162, '1500000 BDT', '1500000-bdt-162', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 500, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/HSb6xQBW1GUsBpqfLCYn.jpg', 1, 1, NULL, '2023-12-22 09:57:16', '2023-12-22 09:57:16'),
(163, '1400000 BDT', '1400000-bdt-163', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 500, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Pr44qga266LlbXVWGtkr.jpg', 1, 1, NULL, '2023-12-22 09:57:51', '2023-12-22 09:57:51'),
(164, '1300000 BDT', '1300000-bdt-164', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 800, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/c5iZiG82JVsyekaQr75p.jpg', 1, 1, NULL, '2023-12-22 09:58:47', '2023-12-22 09:58:47'),
(165, '1200000 BDT', '1200000-bdt-165', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 500.00, '', 700, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JxuTEVixUK8yR0f8SDBv.jpg', 1, 1, NULL, '2023-12-22 10:00:05', '2023-12-22 10:00:05'),
(166, '1100000 BDT', '1100000-bdt-166', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 750.00, '', 400, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9e5bCxW4iw9JMeFnP9xi.jpg', 1, 1, NULL, '2023-12-22 10:01:15', '2023-12-22 10:01:15'),
(167, '1000000 BDT', '1000000-bdt-167', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 500.00, '', 1000, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/pCoi2qkLuSNl6XpSpVZv.jpg', 1, 1, NULL, '2023-12-22 10:01:56', '2023-12-22 10:01:56'),
(168, '900000 BDT', '900000-bdt-168', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 450.00, '', 600, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/oOKHv7UCkFVmmNi6efpJ.jpg', 1, 1, NULL, '2023-12-22 10:02:46', '2023-12-22 10:02:46');

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
(2, 2, 3, '1,3'),
(3, 2, 4, '1,3,4'),
(4, 3, 3, '1,3'),
(5, 3, 4, '1,3,4'),
(6, 4, 5, '2,5'),
(7, 4, 6, '2,5,6'),
(8, 5, 5, '2,5'),
(9, 5, 6, '2,5,6'),
(10, 6, 5, '2,5'),
(11, 6, 6, '2,5,6'),
(12, 7, 5, '2,5'),
(13, 7, 6, '2,5,6'),
(14, 8, 3, '1,3'),
(15, 8, 4, '1,3,4'),
(16, 9, 3, '1,3'),
(17, 9, 4, '1,3,4'),
(18, 10, 3, '1,3'),
(19, 10, 4, '1,3,4'),
(20, 11, 3, '1,3'),
(21, 11, 4, '1,3,4'),
(22, 12, 3, '1,3'),
(23, 12, 4, '1,3,4'),
(24, 13, 3, '1,3'),
(25, 13, 4, '1,3,4'),
(26, 14, 3, '1,3'),
(27, 14, 4, '1,3,4'),
(28, 15, 3, '1,3'),
(29, 15, 4, '1,3,4'),
(30, 16, 3, '1,3'),
(31, 16, 4, '1,3,4'),
(32, 17, 3, '1,3'),
(33, 17, 4, '1,3,4'),
(34, 18, 3, '1,3'),
(35, 18, 4, '1,3,4'),
(36, 19, 3, '1,3'),
(37, 19, 4, '1,3,4'),
(38, 20, 3, '1,3'),
(39, 20, 4, '1,3,4'),
(40, 21, 3, '1,3'),
(41, 21, 4, '1,3,4'),
(42, 22, 3, '1,3'),
(43, 22, 4, '1,3,4'),
(44, 23, 3, '1,3'),
(45, 23, 4, '1,3,4'),
(46, 24, 3, '1,3'),
(47, 24, 4, '1,3,4'),
(48, 25, 3, '1,3'),
(49, 25, 4, '1,3,4'),
(50, 26, 3, '1,3'),
(51, 26, 4, '1,3,4'),
(63, 38, 9, '1,9'),
(64, 39, 9, '1,9'),
(66, 37, 10, '1,7,10'),
(68, 36, 10, '1,7,10'),
(70, 35, 10, '1,7,10'),
(72, 33, 10, '1,7,10'),
(74, 32, 10, '1,7,10'),
(76, 31, 10, '1,7,10'),
(78, 30, 10, '1,7,10'),
(80, 27, 10, '1,7,10'),
(82, 28, 10, '1,7,10'),
(84, 29, 10, '1,7,10'),
(88, 40, 9, '1,7,9'),
(90, 41, 9, '1,7,9'),
(92, 42, 9, '1,7,9'),
(94, 43, 9, '1,7,9'),
(96, 44, 9, '1,7,9'),
(98, 45, 9, '1,7,9'),
(100, 46, 9, '1,7,9'),
(101, 47, 9, '1,7,9'),
(103, 48, 9, '1,7,9'),
(104, 49, 9, '1,7,9'),
(106, 50, 9, '1,7,9'),
(108, 51, 9, '1,7,9'),
(110, 52, 9, '1,7,9'),
(112, 53, 9, '1,7,9'),
(113, 54, 12, '11,12'),
(114, 55, 12, '11,12'),
(115, 56, 11, '11'),
(116, 56, 12, '11,12'),
(117, 57, 11, '11'),
(118, 57, 12, '11,12'),
(120, 58, 13, '1,7,13'),
(121, 59, 13, '1,7,13'),
(123, 60, 13, '1,7,13'),
(124, 61, 8, '2,8'),
(125, 61, 14, '2,8,14'),
(126, 62, 8, '2,8'),
(127, 62, 14, '2,8,14'),
(128, 63, 8, '2,8'),
(129, 63, 14, '2,8,14'),
(131, 64, 14, '2,8,14'),
(133, 65, 14, '2,8,14'),
(135, 66, 14, '2,8,14'),
(137, 67, 14, '2,8,14'),
(139, 68, 14, '2,8,14'),
(141, 69, 14, '2,8,14'),
(142, 2, 1, '1'),
(143, 3, 1, '1'),
(144, 4, 2, '2'),
(145, 5, 2, '2'),
(146, 6, 2, '2'),
(147, 7, 2, '2'),
(148, 8, 1, '1'),
(149, 9, 1, '1'),
(150, 10, 1, '1'),
(151, 11, 1, '1'),
(152, 12, 1, '1'),
(153, 13, 1, '1'),
(154, 14, 1, '1'),
(155, 15, 1, '1'),
(156, 16, 1, '1'),
(157, 17, 1, '1'),
(158, 18, 1, '1'),
(159, 19, 1, '1'),
(160, 20, 1, '1'),
(161, 21, 1, '1'),
(162, 63, 2, '2'),
(163, 22, 1, '1'),
(164, 23, 1, '1'),
(165, 24, 1, '1'),
(166, 25, 1, '1'),
(167, 26, 1, '1'),
(168, 27, 1, '1'),
(169, 28, 1, '1'),
(170, 39, 1, '1'),
(171, 29, 1, '1'),
(172, 30, 1, '1'),
(173, 31, 1, '1'),
(174, 32, 1, '1'),
(175, 33, 1, '1'),
(176, 34, 1, '1'),
(178, 34, 9, '1,7,9'),
(179, 35, 1, '1'),
(180, 36, 1, '1'),
(181, 37, 1, '1'),
(182, 38, 1, '1'),
(183, 40, 1, '1'),
(184, 41, 1, '1'),
(185, 42, 1, '1'),
(186, 43, 1, '1'),
(187, 44, 1, '1'),
(188, 45, 1, '1'),
(189, 46, 1, '1'),
(190, 47, 1, '1'),
(192, 48, 1, '1'),
(193, 49, 1, '1'),
(195, 50, 1, '1'),
(196, 51, 1, '1'),
(197, 53, 1, '1'),
(198, 55, 11, '11'),
(199, 58, 1, '1'),
(200, 59, 1, '1'),
(202, 60, 1, '1'),
(203, 61, 2, '2'),
(204, 62, 2, '2'),
(205, 64, 2, '2'),
(206, 64, 8, '2,8'),
(207, 65, 2, '2'),
(208, 65, 8, '2,8'),
(209, 66, 2, '2'),
(210, 66, 8, '2,8'),
(211, 67, 2, '2'),
(212, 67, 8, '2,8'),
(213, 68, 2, '2'),
(214, 68, 7, '1,7'),
(215, 69, 2, '2'),
(216, 69, 8, '2,8'),
(217, 70, 1, '1'),
(218, 70, 3, '1,3'),
(219, 70, 4, '1,3,4'),
(220, 71, 1, '1'),
(221, 71, 3, '1,3'),
(222, 71, 15, '1,3,15'),
(223, 72, 1, '1'),
(224, 72, 3, '1,3'),
(225, 72, 15, '1,3,15'),
(226, 73, 1, '1'),
(227, 73, 3, '1,3'),
(228, 73, 15, '1,3,15'),
(229, 74, 1, '1'),
(230, 74, 3, '1,3'),
(231, 74, 15, '1,3,15'),
(232, 75, 1, '1'),
(233, 75, 3, '1,3'),
(234, 75, 15, '1,3,15'),
(235, 76, 1, '1'),
(236, 76, 3, '1,3'),
(237, 76, 15, '1,3,15'),
(238, 77, 11, '11'),
(239, 77, 16, '11,16'),
(240, 78, 11, '11'),
(241, 78, 16, '11,16'),
(242, 79, 11, '11'),
(243, 79, 16, '11,16'),
(244, 80, 11, '11'),
(245, 80, 16, '11,16'),
(246, 81, 11, '11'),
(247, 81, 16, '11,16'),
(248, 82, 11, '11'),
(249, 82, 16, '11,16'),
(250, 83, 11, '11'),
(251, 83, 16, '11,16'),
(252, 84, 11, '11'),
(253, 84, 16, '11,16'),
(254, 85, 11, '11'),
(255, 85, 16, '11,16'),
(256, 86, 11, '11'),
(257, 86, 16, '11,16'),
(258, 87, 11, '11'),
(259, 87, 16, '11,16'),
(260, 88, 11, '11'),
(261, 88, 16, '11,16'),
(262, 89, 11, '11'),
(263, 89, 16, '11,16'),
(264, 90, 1, '1'),
(265, 90, 7, '1,7'),
(266, 90, 17, '1,7,17'),
(267, 91, 1, '1'),
(268, 91, 7, '1,7'),
(269, 91, 17, '1,7,17'),
(270, 92, 1, '1'),
(271, 92, 7, '1,7'),
(272, 92, 17, '1,7,17'),
(273, 93, 1, '1'),
(274, 93, 18, '1,18'),
(277, 95, 1, '1'),
(278, 95, 18, '1,18'),
(281, 97, 1, '1'),
(282, 97, 18, '1,18'),
(283, 98, 1, '1'),
(284, 98, 18, '1,18'),
(285, 99, 2, '2'),
(286, 99, 8, '2,8'),
(287, 99, 19, '2,8,19'),
(288, 100, 2, '2'),
(289, 100, 8, '2,8'),
(290, 100, 19, '2,8,19'),
(291, 101, 2, '2'),
(292, 101, 8, '2,8'),
(293, 101, 19, '2,8,19'),
(294, 102, 2, '2'),
(295, 102, 8, '2,8'),
(296, 102, 19, '2,8,19'),
(297, 103, 2, '2'),
(298, 103, 8, '2,8'),
(299, 103, 19, '2,8,19'),
(300, 104, 2, '2'),
(301, 104, 8, '2,8'),
(302, 104, 19, '2,8,19'),
(303, 105, 2, '2'),
(304, 105, 8, '2,8'),
(305, 105, 19, '2,8,19'),
(306, 106, 2, '2'),
(307, 106, 8, '2,8'),
(308, 106, 19, '2,8,19'),
(309, 107, 2, '2'),
(310, 107, 8, '2,8'),
(311, 107, 19, '2,8,19'),
(312, 108, 2, '2'),
(313, 108, 8, '2,8'),
(314, 108, 19, '2,8,19'),
(315, 109, 2, '2'),
(316, 109, 8, '2,8'),
(317, 109, 19, '2,8,19'),
(318, 110, 2, '2'),
(319, 110, 8, '2,8'),
(320, 110, 19, '2,8,19'),
(321, 111, 2, '2'),
(322, 111, 8, '2,8'),
(323, 111, 19, '2,8,19'),
(324, 112, 2, '2'),
(325, 112, 8, '2,8'),
(326, 112, 19, '2,8,19'),
(327, 113, 2, '2'),
(328, 113, 8, '2,8'),
(329, 113, 19, '2,8,19'),
(330, 114, 2, '2'),
(331, 114, 8, '2,8'),
(332, 114, 19, '2,8,19'),
(333, 115, 2, '2'),
(334, 115, 8, '2,8'),
(335, 115, 19, '2,8,19'),
(336, 116, 2, '2'),
(337, 116, 8, '2,8'),
(338, 116, 19, '2,8,19'),
(339, 117, 2, '2'),
(340, 117, 8, '2,8'),
(341, 117, 19, '2,8,19'),
(342, 118, 2, '2'),
(343, 118, 8, '2,8'),
(344, 118, 19, '2,8,19'),
(345, 119, 2, '2'),
(346, 119, 8, '2,8'),
(347, 119, 19, '2,8,19'),
(348, 120, 1, '1'),
(349, 120, 20, '1,20'),
(350, 121, 1, '1'),
(351, 121, 20, '1,20'),
(352, 122, 1, '1'),
(353, 122, 20, '1,20'),
(354, 123, 1, '1'),
(355, 123, 20, '1,20'),
(356, 124, 1, '1'),
(357, 124, 20, '1,20'),
(358, 125, 2, '2'),
(359, 125, 8, '2,8'),
(360, 125, 21, '2,8,21'),
(361, 126, 2, '2'),
(362, 126, 8, '2,8'),
(363, 126, 21, '2,8,21'),
(364, 127, 2, '2'),
(365, 127, 8, '2,8'),
(366, 127, 21, '2,8,21'),
(367, 128, 2, '2'),
(368, 128, 8, '2,8'),
(369, 128, 21, '2,8,21'),
(370, 129, 2, '2'),
(371, 129, 8, '2,8'),
(372, 129, 21, '2,8,21'),
(373, 130, 2, '2'),
(374, 130, 8, '2,8'),
(375, 130, 21, '2,8,21'),
(376, 131, 2, '2'),
(377, 131, 8, '2,8'),
(378, 131, 21, '2,8,21'),
(379, 132, 2, '2'),
(380, 132, 8, '2,8'),
(381, 132, 21, '2,8,21'),
(382, 133, 2, '2'),
(383, 133, 8, '2,8'),
(384, 133, 21, '2,8,21'),
(385, 134, 2, '2'),
(386, 134, 8, '2,8'),
(387, 134, 22, '2,8,22'),
(388, 135, 2, '2'),
(389, 135, 8, '2,8'),
(390, 135, 22, '2,8,22'),
(391, 136, 2, '2'),
(392, 136, 8, '2,8'),
(393, 136, 22, '2,8,22'),
(394, 137, 2, '2'),
(395, 137, 8, '2,8'),
(396, 137, 22, '2,8,22'),
(397, 138, 1, '1'),
(398, 138, 3, '1,3'),
(399, 138, 23, '1,3,23'),
(400, 139, 1, '1'),
(401, 139, 3, '1,3'),
(402, 139, 23, '1,3,23'),
(403, 140, 1, '1'),
(404, 140, 3, '1,3'),
(405, 140, 23, '1,3,23'),
(406, 141, 1, '1'),
(407, 141, 3, '1,3'),
(408, 141, 23, '1,3,23'),
(409, 142, 1, '1'),
(410, 142, 7, '1,7'),
(411, 142, 24, '1,7,24'),
(412, 143, 1, '1'),
(413, 143, 7, '1,7'),
(414, 143, 24, '1,7,24'),
(415, 144, 1, '1'),
(416, 144, 7, '1,7'),
(417, 144, 24, '1,7,24'),
(418, 145, 1, '1'),
(419, 145, 7, '1,7'),
(420, 145, 24, '1,7,24'),
(421, 146, 1, '1'),
(422, 146, 7, '1,7'),
(423, 146, 24, '1,7,24'),
(424, 147, 1, '1'),
(425, 147, 7, '1,7'),
(426, 147, 24, '1,7,24'),
(427, 148, 1, '1'),
(428, 148, 7, '1,7'),
(429, 148, 24, '1,7,24'),
(430, 149, 1, '1'),
(431, 149, 7, '1,7'),
(432, 149, 24, '1,7,24'),
(433, 150, 1, '1'),
(434, 150, 7, '1,7'),
(435, 150, 24, '1,7,24'),
(436, 151, 1, '1'),
(437, 151, 7, '1,7'),
(438, 151, 24, '1,7,24'),
(439, 152, 1, '1'),
(440, 152, 7, '1,7'),
(441, 152, 24, '1,7,24'),
(442, 153, 1, '1'),
(443, 153, 7, '1,7'),
(444, 153, 24, '1,7,24'),
(445, 154, 2, '2'),
(446, 154, 8, '2,8'),
(447, 154, 25, '2,8,25'),
(448, 155, 2, '2'),
(449, 155, 8, '2,8'),
(450, 155, 25, '2,8,25'),
(451, 156, 2, '2'),
(452, 156, 8, '2,8'),
(453, 156, 25, '2,8,25'),
(454, 157, 2, '2'),
(455, 157, 8, '2,8'),
(456, 157, 25, '2,8,25'),
(457, 158, 2, '2'),
(458, 158, 8, '2,8'),
(459, 158, 26, '2,8,26'),
(460, 159, 2, '2'),
(461, 159, 8, '2,8'),
(462, 159, 26, '2,8,26'),
(463, 160, 2, '2'),
(464, 160, 8, '2,8'),
(465, 160, 26, '2,8,26'),
(466, 161, 5, '2,5'),
(467, 162, 27, '27'),
(468, 163, 27, '27'),
(469, 162, 27, '27'),
(470, 163, 27, '27'),
(471, 164, 27, '27'),
(472, 165, 27, '27'),
(473, 166, 27, '27'),
(474, 167, 27, '27'),
(475, 168, 27, '27');

-- --------------------------------------------------------

--
-- Table structure for table `produc_img_history`
--

CREATE TABLE `produc_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produc_img_history`
--

INSERT INTO `produc_img_history` (`id`, `product_id`, `images`, `created_at`, `updated_at`) VALUES
(2, 2, '/backend/files/657fdaa4a3e472.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(3, 3, '/backend/files/657fe2dfb3d1c12.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(4, 4, '/backend/files/657fe459b30752.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(5, 5, '/backend/files/657fe4ab6d9084.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(6, 6, '/backend/files/657fe514c88a26.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(7, 7, '/backend/files/657fe556a04078.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(8, 8, '/backend/files/657fe5c56bf7a4.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(9, 9, '/backend/files/657fe61cca07d6.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(10, 10, '/backend/files/657fe6a2ea5f88.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(11, 11, '/backend/files/657fe701eaa2610.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(12, 12, '/backend/files/657fe7ca14b6312.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(13, 13, '/backend/files/657fe832aa7eb14.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(14, 15, '/backend/files/657fe91d4b2f418.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(15, 16, '/backend/files/657fea713ef0220.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(16, 17, '/backend/files/657feada1499b22.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(17, 18, '/backend/files/657feb2b51feb24.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(18, 19, '/backend/files/657feb8f4928e26.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(19, 20, '/backend/files/657febf8e803a28.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(20, 21, '/backend/files/657fec78e440a30.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(21, 22, '/backend/files/657fecd430fe032.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(22, 23, '/backend/files/657fed6975a9b34.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(23, 25, '/backend/files/657fee89ddade38.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(24, 26, '/backend/files/657feefd959b640.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(25, 27, '/backend/files/657ff1d2ad5362.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(26, 28, '/backend/files/657ff228052024.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(27, 29, '/backend/files/657ff2963df206.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(28, 30, '/backend/files/657ff47c504bd8.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(29, 31, '/backend/files/657ff4c83c1bd10.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(30, 32, '/backend/files/657ff5e33018512.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(31, 33, '/backend/files/657ff761654f914.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(32, 34, '/backend/files/657ff82fb413316.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(33, 35, '/backend/files/657ff8670474718.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(34, 36, '/backend/files/657ff8cb26f6120.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(35, 37, '/backend/files/657ff9058686922.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(36, 38, '/backend/files/657ffa60157152.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(37, 39, '/backend/files/657ffb0f80d654.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(38, 40, '/backend/files/657ffd25dfe4c6.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(39, 41, '/backend/files/657ffd7e3b5f88.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(40, 42, '/backend/files/657ffde1aa12810.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(41, 43, '/backend/files/657ffe2d48b8012.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(42, 44, '/backend/files/657ffede55edb14.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(43, 45, '/backend/files/657fff5c0c15916.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(44, 46, '/backend/files/6580009f62e0a18.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(45, 47, '/backend/files/6580011ad292e20.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(46, 48, '/backend/files/65800169b6cc724.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(47, 49, '/backend/files/658001b49439a26.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(48, 50, '/backend/files/658002041ede628.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(49, 51, '/backend/files/658002840212e30.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(50, 52, '/backend/files/658002e3da12d32.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(51, 53, '/backend/files/6580032346e1634.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(52, 54, '/backend/files/658004759d5da2.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(53, 55, '/backend/files/658004be2f15a4.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(54, 56, '/backend/files/65800510be2c76.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(55, 57, '/backend/files/65800553278c68.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(56, 58, '/backend/files/65800758c567c2.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(57, 59, '/backend/files/658007fc12f114.png', '2023-12-18 15:42:21', '2023-12-18 15:42:21'),
(58, 60, '/backend/files/65801f4102e5d6.png', '2023-12-18 16:30:25', '2023-12-18 16:30:25'),
(59, 61, '/backend/files/658022cb776312.png', '2023-12-18 16:45:31', '2023-12-18 16:45:31'),
(60, 62, '/backend/files/6580233815a364.png', '2023-12-18 16:47:20', '2023-12-18 16:47:20'),
(61, 63, '/backend/files/65802389bba406.png', '2023-12-18 16:48:41', '2023-12-18 16:48:41'),
(62, 64, '/backend/files/658026e88d36110.png', '2023-12-18 17:03:04', '2023-12-18 17:03:04'),
(63, 65, '/backend/files/6580271c949d812.png', '2023-12-18 17:03:56', '2023-12-18 17:03:56'),
(64, 66, '/backend/files/65802780462bf14.png', '2023-12-18 17:05:36', '2023-12-18 17:05:36'),
(65, 67, '/backend/files/658027ce02eed16.png', '2023-12-18 17:06:54', '2023-12-18 17:06:54'),
(66, 68, '/backend/files/6580283e7d91718.png', '2023-12-18 17:08:46', '2023-12-18 17:08:46'),
(67, 69, '/backend/files/658028a6bd11a20.png', '2023-12-18 17:10:30', '2023-12-18 17:10:30'),
(68, 14, '/backend/files/65802a843573b16.png', '2023-12-18 17:18:28', '2023-12-18 17:18:28'),
(69, 24, '/backend/files/65802efb05faa6.png', '2023-12-18 17:37:31', '2023-12-18 17:37:31'),
(70, 70, '/backend/files/6580350f8fb2e2.png', '2023-12-18 18:03:27', '2023-12-18 18:03:27'),
(71, 71, '/backend/files/658035c8a29484.png', '2023-12-18 18:06:32', '2023-12-18 18:06:32'),
(72, 72, '/backend/files/65803636c9b7f6.png', '2023-12-18 18:08:22', '2023-12-18 18:08:22'),
(73, 73, '/backend/files/658036872dba08.png', '2023-12-18 18:09:43', '2023-12-18 18:09:43'),
(74, 74, '/backend/files/658036d66aa2710.png', '2023-12-18 18:11:02', '2023-12-18 18:11:02'),
(75, 75, '/backend/files/6580372d4d7a812.png', '2023-12-18 18:12:29', '2023-12-18 18:12:29'),
(76, 76, '/backend/files/658037a0353cc14.png', '2023-12-18 18:14:24', '2023-12-18 18:14:24'),
(77, 77, '/backend/files/658039ce7c7c32.png', '2023-12-18 18:23:42', '2023-12-18 18:23:42'),
(78, 78, '/backend/files/65803a07664b84.png', '2023-12-18 18:24:39', '2023-12-18 18:24:39'),
(79, 79, '/backend/files/65803b05993656.png', '2023-12-18 18:28:53', '2023-12-18 18:28:53'),
(80, 80, '/backend/files/658063a9345348.png', '2023-12-18 21:22:17', '2023-12-18 21:22:17'),
(81, 81, '/backend/files/6580641223b7f10.png', '2023-12-18 21:24:02', '2023-12-18 21:24:02'),
(82, 82, '/backend/files/658064545578b12.png', '2023-12-18 21:25:08', '2023-12-18 21:25:08'),
(83, 83, '/backend/files/65806492cb9ce14.png', '2023-12-18 21:26:10', '2023-12-18 21:26:10'),
(84, 84, '/backend/files/6580653c23e5916.png', '2023-12-18 21:29:00', '2023-12-18 21:29:00'),
(85, 85, '/backend/files/658065bc0766918.png', '2023-12-18 21:31:08', '2023-12-18 21:31:08'),
(86, 86, '/backend/files/658066315e06620.png', '2023-12-18 21:33:05', '2023-12-18 21:33:05'),
(87, 87, '/backend/files/658066f86050122.png', '2023-12-18 21:36:24', '2023-12-18 21:36:24'),
(88, 88, '/backend/files/6580676420f8024.png', '2023-12-18 21:38:12', '2023-12-18 21:38:12'),
(89, 89, '/backend/files/658067b946a7526.png', '2023-12-18 21:39:37', '2023-12-18 21:39:37'),
(90, 90, '/backend/files/658068ca925f72.png', '2023-12-18 21:44:10', '2023-12-18 21:44:10'),
(91, 91, '/backend/files/65806917971e34.png', '2023-12-18 21:45:27', '2023-12-18 21:45:27'),
(92, 92, '/backend/files/6580696c3463c6.png', '2023-12-18 21:46:52', '2023-12-18 21:46:52'),
(93, 93, '/backend/files/65806b488781e2.png', '2023-12-18 21:54:48', '2023-12-18 21:54:48'),
(95, 95, '/backend/files/65806be37fef44.png', '2023-12-18 21:57:23', '2023-12-18 21:57:23'),
(97, 97, '/backend/files/65806c307f3e94.png', '2023-12-18 21:58:40', '2023-12-18 21:58:40'),
(98, 98, '/backend/files/65806d4484ebf8.png', '2023-12-18 22:03:16', '2023-12-18 22:03:16'),
(99, 69, '/backend/files/3SzO9lU2tMDpPP7TSct9.png', '2023-12-18 21:49:22', '2023-12-18 21:49:22'),
(100, 98, '/backend/files/lb7KIJeQnHKwWinnwpNk.png', '2023-12-19 04:49:47', '2023-12-19 04:49:47'),
(101, 68, '/backend/files/Zt1trt821pYRaXoTjcW5.png', '2023-12-19 05:29:39', '2023-12-19 05:29:39'),
(102, 73, '/backend/files/qdzxvjVuNJ0feReQkkLn.png', '2023-12-19 05:29:46', '2023-12-19 05:29:46'),
(103, 5, '/backend/files/SXKZ1QiKQnXUMjkGYAQw.png', '2023-12-19 05:29:59', '2023-12-19 05:29:59'),
(104, 99, '/backend/files/65812c3a7c1d42.png', '2023-12-19 05:38:02', '2023-12-19 05:38:02'),
(105, 100, '/backend/files/65812cfc09cca4.png', '2023-12-19 05:41:16', '2023-12-19 05:41:16'),
(106, 101, '/backend/files/65812d5a1cab26.png', '2023-12-19 05:42:50', '2023-12-19 05:42:50'),
(107, 102, '/backend/files/65812e0a18b668.png', '2023-12-19 05:45:46', '2023-12-19 05:45:46'),
(108, 103, '/backend/files/65812e5c3bd0410.png', '2023-12-19 05:47:08', '2023-12-19 05:47:08'),
(109, 104, '/backend/files/65812ec4d20a212.png', '2023-12-19 05:48:52', '2023-12-19 05:48:52'),
(110, 79, '/backend/files/RrGGCxNFkj5S3nzmawNT.png', '2023-12-19 05:50:49', '2023-12-19 05:50:49'),
(111, 105, '/backend/files/65812f555564914.png', '2023-12-19 05:51:17', '2023-12-19 05:51:17'),
(112, 106, '/backend/files/65812fe4c8c2916.png', '2023-12-19 05:53:40', '2023-12-19 05:53:40'),
(113, 107, '/backend/files/65813023dc08418.png', '2023-12-19 05:54:43', '2023-12-19 05:54:43'),
(114, 108, '/backend/files/6581307e1cc4820.png', '2023-12-19 05:56:14', '2023-12-19 05:56:14'),
(115, 109, '/backend/files/658130e323cb322.png', '2023-12-19 05:57:55', '2023-12-19 05:57:55'),
(116, 110, '/backend/files/6581319ff345423.png', '2023-12-19 06:01:03', '2023-12-19 06:01:03'),
(117, 111, '/backend/files/658132017e51226.png', '2023-12-19 06:02:41', '2023-12-19 06:02:41'),
(118, 112, '/backend/files/6581324fa6b0028.png', '2023-12-19 06:03:59', '2023-12-19 06:03:59'),
(119, 113, '/backend/files/658132a5d03df30.png', '2023-12-19 06:05:25', '2023-12-19 06:05:25'),
(120, 114, '/backend/files/658133178f7b132.png', '2023-12-19 06:07:19', '2023-12-19 06:07:19'),
(121, 115, '/backend/files/65813377eb52f34.png', '2023-12-19 06:08:55', '2023-12-19 06:08:55'),
(122, 116, '/backend/files/658133d0d47e436.png', '2023-12-19 06:10:24', '2023-12-19 06:10:24'),
(123, 117, '/backend/files/65813478445cc38.png', '2023-12-19 06:13:12', '2023-12-19 06:13:12'),
(124, 118, '/backend/files/6581354acd23940.png', '2023-12-19 06:16:42', '2023-12-19 06:16:42'),
(125, 119, '/backend/files/658135c024c1d42.png', '2023-12-19 06:18:40', '2023-12-19 06:18:40'),
(126, 120, '/backend/files/65814247046c02.png', '2023-12-19 07:12:07', '2023-12-19 07:12:07'),
(127, 121, '/backend/files/65814247a9ec92.png', '2023-12-19 07:12:07', '2023-12-19 07:12:07'),
(128, 122, '/backend/files/65814323c96b24.png', '2023-12-19 07:15:47', '2023-12-19 07:15:47'),
(129, 123, '/backend/files/658144293acf26.png', '2023-12-19 07:20:09', '2023-12-19 07:20:09'),
(130, 124, '/backend/files/658144bd47dbc8.png', '2023-12-19 07:22:37', '2023-12-19 07:22:37'),
(131, 125, '/backend/files/658146d4386ca2.png', '2023-12-19 07:31:32', '2023-12-19 07:31:32'),
(132, 126, '/backend/files/65814713ec6fe4.png', '2023-12-19 07:32:35', '2023-12-19 07:32:35'),
(133, 127, '/backend/files/6581474e13fa36.png', '2023-12-19 07:33:34', '2023-12-19 07:33:34'),
(134, 128, '/backend/files/658147c977d5f8.png', '2023-12-19 07:35:37', '2023-12-19 07:35:37'),
(135, 129, '/backend/files/6581480979ba510.png', '2023-12-19 07:36:41', '2023-12-19 07:36:41'),
(136, 130, '/backend/files/658148427f4a712.png', '2023-12-19 07:37:38', '2023-12-19 07:37:38'),
(137, 131, '/backend/files/658148725a9a814.png', '2023-12-19 07:38:26', '2023-12-19 07:38:26'),
(138, 132, '/backend/files/658148c47919b16.png', '2023-12-19 07:39:48', '2023-12-19 07:39:48'),
(139, 133, '/backend/files/65814904c92dc18.png', '2023-12-19 07:40:52', '2023-12-19 07:40:52'),
(140, 134, '/backend/files/65814999f27562.png', '2023-12-19 07:43:21', '2023-12-19 07:43:21'),
(141, 135, '/backend/files/658149ceb0a8b4.png', '2023-12-19 07:44:14', '2023-12-19 07:44:14'),
(142, 136, '/backend/files/65814a20a72196.png', '2023-12-19 07:45:36', '2023-12-19 07:45:36'),
(143, 137, '/backend/files/65814a81e86568.png', '2023-12-19 07:47:13', '2023-12-19 07:47:13'),
(144, 138, '/backend/files/65814b87021002.png', '2023-12-19 07:51:35', '2023-12-19 07:51:35'),
(145, 139, '/backend/files/65814bd9712314.png', '2023-12-19 07:52:57', '2023-12-19 07:52:57'),
(146, 140, '/backend/files/65814c228bdbd6.png', '2023-12-19 07:54:10', '2023-12-19 07:54:10'),
(147, 141, '/backend/files/65814c615871e8.png', '2023-12-19 07:55:13', '2023-12-19 07:55:13'),
(148, 142, '/backend/files/65814e92e19992.png', '2023-12-19 08:04:34', '2023-12-19 08:04:34'),
(149, 143, '/backend/files/65814edac018b4.png', '2023-12-19 08:05:46', '2023-12-19 08:05:46'),
(150, 144, '/backend/files/65814f28b06206.png', '2023-12-19 08:07:04', '2023-12-19 08:07:04'),
(151, 145, '/backend/files/65814fa8cc2038.png', '2023-12-19 08:09:12', '2023-12-19 08:09:12'),
(152, 146, '/backend/files/6581507814fe710.png', '2023-12-19 08:12:40', '2023-12-19 08:12:40'),
(153, 147, '/backend/files/658150e4c990312.png', '2023-12-19 08:14:28', '2023-12-19 08:14:28'),
(154, 148, '/backend/files/65815171a64f114.png', '2023-12-19 08:16:49', '2023-12-19 08:16:49'),
(155, 149, '/backend/files/65815278a68c616.png', '2023-12-19 08:21:12', '2023-12-19 08:21:12'),
(156, 150, '/backend/files/658152e6e515a18.png', '2023-12-19 08:23:02', '2023-12-19 08:23:02'),
(157, 151, '/backend/files/6581536f92c8b20.png', '2023-12-19 08:25:19', '2023-12-19 08:25:19'),
(158, 152, '/backend/files/658153d73b69d22.png', '2023-12-19 08:27:03', '2023-12-19 08:27:03'),
(159, 153, '/backend/files/6581540ee157524.png', '2023-12-19 08:27:58', '2023-12-19 08:27:58'),
(160, 154, '/backend/files/65815625a41e42.png', '2023-12-19 08:36:53', '2023-12-19 08:36:53'),
(161, 155, '/backend/files/658156d18f29d4.png', '2023-12-19 08:39:45', '2023-12-19 08:39:45'),
(162, 156, '/backend/files/6581571a29a6c6.png', '2023-12-19 08:40:58', '2023-12-19 08:40:58'),
(163, 157, '/backend/files/6581576c824528.png', '2023-12-19 08:42:20', '2023-12-19 08:42:20'),
(164, 158, '/backend/files/658158d95d52b2.png', '2023-12-19 08:48:25', '2023-12-19 08:48:25'),
(165, 159, '/backend/files/65815941315074.png', '2023-12-19 08:50:09', '2023-12-19 08:50:09'),
(166, 160, '/backend/files/658159b1d69da6.png', '2023-12-19 08:52:01', '2023-12-19 08:52:01'),
(167, 160, '/backend/files/jBkOtfxvw7ah0DEW2kGE.png', '2023-12-19 10:17:24', '2023-12-19 10:17:24'),
(168, 156, '/backend/files/a6dN7pEBYwrU2bbcKYDe.png', '2023-12-19 10:21:36', '2023-12-19 10:21:36'),
(169, 159, '/backend/files/IkhSQd569n5IOCB8RzkR.png', '2023-12-19 14:42:51', '2023-12-19 14:42:51'),
(170, 153, '/backend/files/rMgSh4ErPJYwicO2Qv6b.png', '2023-12-20 05:07:36', '2023-12-20 05:07:36'),
(171, 21, '/backend/files/uAPv3TuAU97JizIhe63l.png', '2023-12-20 08:41:36', '2023-12-20 08:41:36'),
(172, 157, '/backend/files/qQYOxhwiAf31mqlANVgs.png', '2023-12-20 08:43:24', '2023-12-20 08:43:24'),
(173, 163, '/backend/files/Pr44qga266LlbXVWGtkr.jpg', '2023-12-22 04:42:43', '2023-12-22 04:42:43'),
(174, 167, '/backend/files/pCoi2qkLuSNl6XpSpVZv.jpg', '2023-12-22 04:44:10', '2023-12-22 04:44:10'),
(175, 162, '/backend/files/HSb6xQBW1GUsBpqfLCYn.jpg', '2023-12-22 04:55:27', '2023-12-22 04:55:27'),
(176, 161, '/backend/files/9vuyeVnSnNoEDTQySUNx.png', '2023-12-22 04:57:44', '2023-12-22 04:57:44'),
(177, 158, '/backend/files/QLlK7bBSH7oovc0PMFZc.png', '2023-12-22 09:49:23', '2023-12-22 09:49:23'),
(178, 168, '/backend/files/oOKHv7UCkFVmmNi6efpJ.jpg', '2023-12-22 10:24:43', '2023-12-22 10:24:43'),
(179, 149, '/backend/files/t3BDhnsmJsuBRRMRFuo2.png', '2023-12-22 12:37:44', '2023-12-22 12:37:44'),
(180, 151, '/backend/files/bsTD4k14djSZ2sQlWsXq.png', '2023-12-22 18:02:35', '2023-12-22 18:02:35'),
(181, 92, '/backend/files/YKVIv7jksVUToccSHKfv.png', '2023-12-22 18:24:21', '2023-12-22 18:24:21'),
(182, 165, '/backend/files/JxuTEVixUK8yR0f8SDBv.jpg', '2023-12-22 21:16:50', '2023-12-22 21:16:50');

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
(2, 'Customer', 1);

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
  `redirect_url` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `images`, `redirect_url`, `status`) VALUES
(1, '/backend/slider_imaes/GbGPlJo4uXo5tFRSVRwJ.png', 'Slider-1', 1),
(2, '/backend/slider_imaes/BfJxjDkSLTQ3dMqdC38O.png', 'Slider-2', 1);

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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `name`, `email`, `image`, `phone_number`, `address`, `website`, `github`, `gender`, `date_of_birth`, `twitter`, `instagram`, `facebook`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, 'Admin', 'admin@gmail.com', '/backend/files/Gj1CClu5li9lnBa8bqxx.jpg', '343434', 'Dhaka', 'http://localhost:3000/profile', 'http://localhost:3000/profile', NULL, NULL, 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'admin', NULL, '$2a$12$KTM4o4shushdJtyHggJOEuoVzhTde88F2M2VZ1B89egoavVyQOycG', NULL, 1, '2023-06-22 03:20:43', '2023-07-14 04:47:21', 1),
(2, 2, NULL, 'Bijon', 'mdbijon@gmail.com', NULL, '01915728982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mdbijon@gmail.com', NULL, '$2y$10$Rik3XEAlWoxLqm/3XlSVXOlUwavrHCkS1akzzq3HtPKed205hmeQ.', NULL, NULL, '2023-12-22 03:48:14', '2023-12-22 03:48:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_product`
--
ALTER TABLE `additional_product`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_product`
--
ALTER TABLE `additional_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
