-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 11:59 PM
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
  `referrance_product_id` int(11) DEFAULT NULL COMMENT 'Join table name: ticket_history (column:product_id)',
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
(1, 161, 162, 35, 250, 383.00, '2023-12-31 03:59:16', '2023-12-31 03:59:16'),
(2, 160, 163, 5, 250, 1300.00, '2023-12-31 04:54:18', '2023-12-30 22:56:51');

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
  `code` char(2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `txtid` varchar(255) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment_getway` varchar(255) DEFAULT NULL COMMENT '2.bkash \r\n3.nogot\r\n4.roket\r\n5.upay',
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT 'Order Placed=1,Payment Processing=2,Order Confirmed=3,Item Shipped=4,In Transit=5,Out for Delivery=6,Delivered=7,Order Completed=8,Cancelled or Returned=9',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderId`, `customer_id`, `txtid`, `total`, `subtotal`, `payment_getway`, `order_status`, `created_at`, `updated_at`) VALUES
(15, '240586-23', 2, '58787878', 5993.85, 5993.85, '2', 0, '2023-12-30 14:35:41', '2023-12-30 22:52:54'),
(16, '286423-23', 2, '45787878', 1000.90, 1000.90, '2', 10, '2023-12-30 15:49:12', '2023-12-30 22:52:58'),
(17, '282070-23', 2, '548989', 655.90, 655.90, '3', 10, '2023-12-30 16:05:45', '2023-12-30 22:08:51'),
(18, '216326-23', 2, '65989', 1267.50, 1267.50, '3', 10, '2023-12-30 16:57:53', '2023-12-30 22:58:02');

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
(38, 15, 161, 1, 133, 133.00, '2023-12-30 20:35:41', '2023-12-30 14:35:41'),
(39, 15, 160, 1, 1050, 1183.00, '2023-12-30 20:35:41', '2023-12-30 14:35:41'),
(40, 15, 172, 1, 450, 1633.00, '2023-12-30 20:35:41', '2023-12-30 14:35:41'),
(41, 16, 161, 1, 133, 133.00, '2023-12-30 21:49:12', '2023-12-30 15:49:12'),
(42, 16, 162, 1, 250, 383.00, '2023-12-30 21:49:12', '2023-12-30 15:49:12'),
(43, 17, 161, 1, 133, 133.00, '2023-12-30 22:05:45', '2023-12-30 16:05:45'),
(44, 17, 174, 1, 100, 233.00, '2023-12-30 22:05:45', '2023-12-30 16:05:45'),
(45, 18, 160, 1, 1050, 1050.00, '2023-12-30 22:57:53', '2023-12-30 16:57:53');

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
(9, 'Cancelled or Returned', 'Order status adapts to customer actions. \"Cancelled\" for cancellations, \"Returned\" for returns.', '2023-12-04 11:15:23', '2023-12-04 05:59:17'),
(10, 'Approved & Delivered', 'Approved & Delivered', '2023-12-04 11:15:23', '2023-12-04 05:59:17');

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
(31, 'Winup360 Men\'s Purple T-Shirt', 'winup360-men-s-purple-t-shirt', '', '', '', '', '', 0, 'T.SHIRT-M-PURPLE', '', NULL, NULL, 2, 1050.00, '', 100, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/kluHGjERAeT79Zo2VVts.png', 1, 1, NULL, '2023-12-18 13:29:12', '2023-12-18 11:40:12'),
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
(156, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Black', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-black', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/a6dN7pEBYwrU2bbcKYDe.png', 1, 1, NULL, '2023-12-19 08:40:58', '2023-12-25 18:42:33'),
(157, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Dark Royal', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-dark-royal', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-D.ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qQYOxhwiAf31mqlANVgs.png', 1, 1, NULL, '2023-12-19 08:42:20', '2023-12-25 18:42:12'),
(158, 'Women\'s Long Weekend Crewneck Sweatshirt', 'women-s-long-weekend-crewneck-sweatshirt', '<p>Women\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck Sweatshirt</p>', '', '', '', '', 0, 'CS-W-BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/QLlK7bBSH7oovc0PMFZc.png', 1, 1, NULL, '2023-12-19 08:48:25', '2023-12-25 20:13:01'),
(159, 'Women\'s Long Weekend Crewneck Sweatshirt Gray', 'women-s-long-weekend-crewneck-sweatshirt-gray', '', '', '', '', '', 0, 'CS-W-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/IkhSQd569n5IOCB8RzkR.png', 1, 1, NULL, '2023-12-19 08:50:09', '2023-12-25 18:40:53'),
(160, 'Women\'s Long Weekend Crewneck Sweatshirt Dark Gray', 'women-s-long-weekend-crewneck-sweatshirt-dark-gray', '', '', '', '', '', 0, 'CS-W-D.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/jBkOtfxvw7ah0DEW2kGE.png', 1, 1, NULL, '2023-12-19 08:52:01', '2023-12-30 22:56:51'),
(161, 'Exclusive HD Moviesss', 'exclusive-hd-moviesss', '', '', '', '', '', 0, '2323', '', NULL, NULL, 2, 133.00, '22', 150, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9vuyeVnSnNoEDTQySUNx.png', 1, 1, NULL, '2023-12-22 01:19:37', '2023-12-30 21:59:16'),
(162, 'WIN 1500000 BDT', 'win-1500000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 35, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/HSb6xQBW1GUsBpqfLCYn.jpg', 1, 1, NULL, '2023-12-22 09:57:16', '2023-12-30 21:56:18'),
(163, 'WIN 1400000 BDT', 'win-1400000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 40, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Pr44qga266LlbXVWGtkr.jpg', 1, 1, NULL, '2023-12-22 09:57:51', '2023-12-30 21:56:09'),
(164, 'WIN 1300000 BDT', 'win-1300000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 50, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/c5iZiG82JVsyekaQr75p.jpg', 1, 1, NULL, '2023-12-22 09:58:47', '2023-12-30 21:55:29'),
(165, 'WIN 1200000 BDT', 'win-1200000-bdt', '<p style=\"margin-left:0px;\">As of my last knowledge update in January 2022, there is no widely recognized or popular e-commerce platform known as \"winup360.com.\" It\'s possible that this is a platform that emerged after my last update, or it might be a lesser-known platform.</p><p style=\"margin-left:0px;\">If \"winup360.com\" is a platform you are interested in, I recommend checking the latest reviews, user testimonials, and any available documentation to assess its features, security, scalability, and overall suitability for your specific e-commerce needs. Look for information on ease of use, payment options, customization capabilities, and customer support.</p>', '', '', '', '', 0, '', '', NULL, NULL, 2, 500.00, '', 30, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JxuTEVixUK8yR0f8SDBv.jpg', 1, 1, NULL, '2023-12-22 10:00:05', '2023-12-30 21:55:19'),
(166, 'WIN 1100000 BDT', 'win-1100000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 750.00, '', 50, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9e5bCxW4iw9JMeFnP9xi.jpg', 1, 1, NULL, '2023-12-22 10:01:15', '2023-12-30 21:55:11'),
(167, 'WIN 1000000 BDT', 'win-1000000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 500.00, '', 50, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/pCoi2qkLuSNl6XpSpVZv.jpg', 1, 1, NULL, '2023-12-22 10:01:56', '2023-12-30 21:55:02'),
(168, 'WIN 900000 BDT', 'win-900000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 450.00, '', 600, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/oOKHv7UCkFVmmNi6efpJ.jpg', 1, 1, NULL, '2023-12-22 10:02:46', '2023-12-30 21:54:55'),
(171, 'WIN 10000111 BDT', 'win-10000111-bdt', '', 'WIN 10000111 BDT', 'WIN 10000111 BDT', 'WIN 10000111 BDT', '', 0, '', '', NULL, NULL, 2, 350.00, '', 700, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/CWrOwg8hxUD748RAIykf.png', 1, 1, NULL, '2023-12-28 01:01:45', '2023-12-30 21:54:44'),
(172, 'WIN 10000112 BDT', 'win-10000112-bdt', '', 'WIN 10000112 BDT', 'WIN 10000112 BDT', 'WIN 10000112 BDT', '', 0, '', '', NULL, NULL, 2, 450.00, '', 500, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/a0DZ2hRGQbQ3fbdPQ5eT.png', 1, 1, NULL, '2023-12-28 01:03:25', '2023-12-30 21:54:29'),
(174, 'WIN 0000001', 'win-0000001', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 100.00, '', 100, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/gKbTFUsDjHZGLY8zIYHi.jpg', 1, 1, NULL, '2023-12-31 03:43:49', '2023-12-30 22:08:44');

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
(478, 162, 27, '27'),
(479, 163, 27, '27'),
(480, 164, 27, '27'),
(481, 165, 27, '27'),
(482, 166, 27, '27'),
(483, 167, 27, '27'),
(484, 168, 27, '27'),
(485, 169, 27, '27'),
(486, 170, 27, '27'),
(487, 171, 27, '27'),
(488, 172, 27, '27'),
(490, 174, 27, '27');

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
(182, 165, '/backend/files/JxuTEVixUK8yR0f8SDBv.jpg', '2023-12-22 21:16:50', '2023-12-22 21:16:50'),
(183, 145, '/backend/files/M8SO9wfPB69Glny3eISq.png', '2023-12-24 06:13:21', '2023-12-24 06:13:21'),
(184, 3, '/backend/files/tNnaalwae3QKOo8T8fcV.png', '2023-12-24 08:35:11', '2023-12-24 08:35:11'),
(185, 4, '/backend/files/6i17OQ1oSjJFhFuvNHrq.png', '2023-12-24 08:35:14', '2023-12-24 08:35:14'),
(186, 147, '/backend/files/dLERcfc2J3225IDtYaW4.png', '2023-12-24 22:12:04', '2023-12-24 22:12:04'),
(187, 166, '/backend/files/9e5bCxW4iw9JMeFnP9xi.jpg', '2023-12-25 07:49:47', '2023-12-25 07:49:47'),
(188, 164, '/backend/files/c5iZiG82JVsyekaQr75p.jpg', '2023-12-25 09:06:40', '2023-12-25 09:06:40'),
(189, 154, '/backend/files/4RsHBPEqhW21MTyS1L8G.png', '2023-12-25 20:30:25', '2023-12-25 20:30:25'),
(190, 152, '/backend/files/SBUfJrlNBZfYYcEV1ADS.png', '2023-12-25 20:30:31', '2023-12-25 20:30:31'),
(191, 155, '/backend/files/8rTwd4KDe5IL4GPEvGFS.png', '2023-12-25 20:34:52', '2023-12-25 20:34:52'),
(192, 160, 'http://127.0.0.1:8000/backend/files/jBkOtfxvw7ah0DEW2kGE.png', '2023-12-25 22:38:47', '2023-12-25 22:38:47'),
(193, 161, 'http://127.0.0.1:8000/backend/files/9vuyeVnSnNoEDTQySUNx.png', '2023-12-25 22:42:27', '2023-12-25 22:42:27'),
(194, 158, 'http://127.0.0.1:8000/backend/files/QLlK7bBSH7oovc0PMFZc.png', '2023-12-25 22:45:05', '2023-12-25 22:45:05'),
(195, 155, 'http://127.0.0.1:8000/backend/files/8rTwd4KDe5IL4GPEvGFS.png', '2023-12-26 06:18:41', '2023-12-26 06:18:41'),
(196, 168, 'http://127.0.0.1:8000/backend/files/oOKHv7UCkFVmmNi6efpJ.jpg', '2023-12-26 06:24:41', '2023-12-26 06:24:41'),
(197, 165, 'http://127.0.0.1:8000/backend/files/JxuTEVixUK8yR0f8SDBv.jpg', '2023-12-26 06:53:41', '2023-12-26 06:53:41'),
(198, 167, 'http://127.0.0.1:8000/backend/files/pCoi2qkLuSNl6XpSpVZv.jpg', '2023-12-26 06:57:22', '2023-12-26 06:57:22'),
(199, 166, 'http://127.0.0.1:8000/backend/files/9e5bCxW4iw9JMeFnP9xi.jpg', '2023-12-26 06:58:26', '2023-12-26 06:58:26'),
(200, 157, 'http://127.0.0.1:8000/backend/files/qQYOxhwiAf31mqlANVgs.png', '2023-12-26 21:24:50', '2023-12-26 21:24:50'),
(201, 159, 'http://127.0.0.1:8000/backend/files/IkhSQd569n5IOCB8RzkR.png', '2023-12-27 13:14:47', '2023-12-27 13:14:47'),
(202, 172, 'http://127.0.0.1:8000/backend/files/a0DZ2hRGQbQ3fbdPQ5eT.png', '2023-12-28 10:04:28', '2023-12-28 10:04:28'),
(203, 171, 'http://127.0.0.1:8000/backend/files/CWrOwg8hxUD748RAIykf.png', '2023-12-28 10:17:54', '2023-12-28 10:17:54'),
(204, 162, 'http://127.0.0.1:8000/backend/files/HSb6xQBW1GUsBpqfLCYn.jpg', '2023-12-28 10:18:38', '2023-12-28 10:18:38');

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
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` text DEFAULT NULL,
  `frm_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `coupon_code`, `frm_date`, `to_date`, `coupon_amount`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '1111', '2023-12-26', '2023-12-29', 5.00, NULL, 1, NULL, NULL);

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
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deposit_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `convert_php_amt` float DEFAULT NULL,
  `withdraw_service_charge` int(10) DEFAULT NULL COMMENT '%',
  `withdraw_minimum_amount` int(11) DEFAULT NULL,
  `minimum_trade_amount` int(11) DEFAULT NULL,
  `minimum_deposit_amount` int(11) DEFAULT NULL,
  `trade_fee` int(11) DEFAULT NULL COMMENT '%',
  `first_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `second_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `third_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `trade_percent` int(11) DEFAULT NULL COMMENT '%',
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `whatsApp` varchar(255) NOT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `openinig_balance_date` date DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `openinig_balance_comments` text DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `crypto_wallet_address` varchar(255) DEFAULT NULL,
  `master_pass_acc_no` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bkash_number` varchar(255) DEFAULT NULL COMMENT '2.bkash',
  `bkash_fee` decimal(10,2) DEFAULT NULL COMMENT '%',
  `nagad_number` varchar(255) DEFAULT NULL COMMENT '3.nogot',
  `nagad_fee` decimal(10,2) DEFAULT NULL COMMENT '%',
  `rocket_number` varchar(255) DEFAULT NULL COMMENT '4.roket',
  `rocket_fee` decimal(10,2) DEFAULT NULL COMMENT '%',
  `upay_number` varchar(255) DEFAULT NULL COMMENT '5.upay',
  `upay_fee` decimal(10,2) DEFAULT NULL COMMENT '%',
  `wallet_balance` varchar(255) DEFAULT NULL,
  `shipping_fee` varchar(255) DEFAULT NULL,
  `vat_percentage` varchar(255) DEFAULT NULL COMMENT '%'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `deposit_service_charge`, `convert_php_amt`, `withdraw_service_charge`, `withdraw_minimum_amount`, `minimum_trade_amount`, `minimum_deposit_amount`, `trade_fee`, `first_up_lin_com`, `second_up_lin_com`, `third_up_lin_com`, `trade_percent`, `tel`, `email`, `address`, `whatsApp`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `openinig_balance_date`, `reffer_bonus`, `openinig_balance_comments`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `crypto_wallet_address`, `master_pass_acc_no`, `website`, `bkash_number`, `bkash_fee`, `nagad_number`, `nagad_fee`, `rocket_number`, `rocket_fee`, `upay_number`, `upay_fee`, `wallet_balance`, `shipping_fee`, `vat_percentage`) VALUES
(1, 'Winup360', 0, 64, 6, 10, 5, 10, 6, 9, 4, 3, 10, '+44245454545', 'info@abcd.com', 'Addres', '000000', '+000000', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Business Description', 'Copyright © 1995-2020 abc Inc. All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', 'BDT', '2020-05-13', 5, NULL, 'https://www.fiverr.com', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '<p><strong>Cancellation / Return / Exchange Policy.</strong></p><p>We offer a minimum of 18 day returns guarantee on all our items and 30 day return on eligible items. If you are not completely satisfied with your item you may return the items to the seller, within the stipulated return period for a refund (&ldquo;money back guaranteed&rdquo;). Please, ensure you obtain a proof of return postage as items being returned are the responsibility of the customer until the items reach the seller. Refunds will take approximately 5 &ndash; 7 working days for the process once the goods have arrived to the seller. Sometimes it might take up to 30 days but in rare cases if you paid using credit card but in exceptional cases. We always advise payments are made through PayPal. Returned Items must be in their original packaging, and intact to avoid breakage in transit. . In the interest of hygiene, returns on earrings, cosmetics and underwear may not be accepted at any time. Swimwear may not be returned if the hygiene seal is broken. We guarantee to refund unworn or unwashed items when you return it in re-sellable condition,.</p><p><strong>Non-Returnable Items</strong></p><p>We don&rsquo;t accept returns for items such as food unless of course they&rsquo;re faulty. Our website and catalogue clearly show which items are excluded. If you&rsquo;re returning an electrical item, it must be unused and in its original sealed packaging.</p>', 'TPpMvdKfhENfJqYZsDJQLgEopMRBy15jeU', '225588996633', 'http://winup360.com', '01915728988', 1.49, '01915728989', 1.50, '01915728981', 1.80, '01915728985', 1.00, '5', '60', '15');

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
-- Table structure for table `tickets_booking`
--

CREATE TABLE `tickets_booking` (
  `id` int(11) NOT NULL,
  `tick_ref` varchar(255) DEFAULT NULL,
  `ticket_history_id` int(11) DEFAULT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_history`
--

CREATE TABLE `ticket_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `approved_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_history`
--

INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`, `approved_date`) VALUES
(1, 172, '000000001', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(2, 172, '000000002', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(3, 172, '000000003', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(4, 172, '000000004', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(5, 172, '000000005', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(6, 172, '000000006', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(7, 172, '000000007', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(8, 172, '000000008', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(9, 172, '000000009', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(10, 172, '000000010', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(11, 172, '000000011', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(12, 172, '000000012', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(13, 172, '000000013', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(14, 172, '000000014', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(15, 172, '000000015', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(16, 172, '000000016', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(17, 172, '000000017', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(18, 172, '000000018', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(19, 172, '000000019', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(20, 172, '000000020', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(21, 172, '000000021', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(22, 172, '000000022', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(23, 172, '000000023', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(24, 172, '000000024', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(25, 172, '000000025', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(26, 172, '000000026', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(27, 172, '000000027', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(28, 172, '000000028', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(29, 172, '000000029', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(30, 172, '000000030', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(31, 172, '000000031', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(32, 172, '000000032', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(33, 172, '000000033', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(34, 172, '000000034', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(35, 172, '000000035', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(36, 172, '000000036', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(37, 172, '000000037', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(38, 172, '000000038', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(39, 172, '000000039', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(40, 172, '000000040', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(41, 172, '000000041', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(42, 172, '000000042', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(43, 172, '000000043', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(44, 172, '000000044', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(45, 172, '000000045', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(46, 172, '000000046', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(47, 172, '000000047', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(48, 172, '000000048', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(49, 172, '000000049', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(50, 172, '000000050', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(51, 172, '000000051', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(52, 172, '000000052', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(53, 172, '000000053', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(54, 172, '000000054', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(55, 172, '000000055', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(56, 172, '000000056', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(57, 172, '000000057', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(58, 172, '000000058', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(59, 172, '000000059', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(60, 172, '000000060', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(61, 172, '000000061', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(62, 172, '000000062', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(63, 172, '000000063', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(64, 172, '000000064', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(65, 172, '000000065', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(66, 172, '000000066', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(67, 172, '000000067', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(68, 172, '000000068', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(69, 172, '000000069', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(70, 172, '000000070', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(71, 172, '000000071', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(72, 172, '000000072', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(73, 172, '000000073', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(74, 172, '000000074', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(75, 172, '000000075', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(76, 172, '000000076', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(77, 172, '000000077', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(78, 172, '000000078', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(79, 172, '000000079', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(80, 172, '000000080', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(81, 172, '000000081', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(82, 172, '000000082', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(83, 172, '000000083', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(84, 172, '000000084', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(85, 172, '000000085', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(86, 172, '000000086', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(87, 172, '000000087', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(88, 172, '000000088', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(89, 172, '000000089', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(90, 172, '000000090', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(91, 172, '000000091', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(92, 172, '000000092', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(93, 172, '000000093', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(94, 172, '000000094', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(95, 172, '000000095', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(96, 172, '000000096', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(97, 172, '000000097', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(98, 172, '000000098', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(99, 172, '000000099', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(100, 172, '000000100', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(101, 172, '000000101', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(102, 172, '000000102', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(103, 172, '000000103', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(104, 172, '000000104', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(105, 172, '000000105', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(106, 172, '000000106', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(107, 172, '000000107', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(108, 172, '000000108', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(109, 172, '000000109', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(110, 172, '000000110', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(111, 172, '000000111', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(112, 172, '000000112', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(113, 172, '000000113', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(114, 172, '000000114', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(115, 172, '000000115', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(116, 172, '000000116', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(117, 172, '000000117', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(118, 172, '000000118', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(119, 172, '000000119', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(120, 172, '000000120', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(121, 172, '000000121', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(122, 172, '000000122', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(123, 172, '000000123', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(124, 172, '000000124', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(125, 172, '000000125', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(126, 172, '000000126', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(127, 172, '000000127', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(128, 172, '000000128', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(129, 172, '000000129', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(130, 172, '000000130', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(131, 172, '000000131', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(132, 172, '000000132', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(133, 172, '000000133', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(134, 172, '000000134', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(135, 172, '000000135', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(136, 172, '000000136', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(137, 172, '000000137', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(138, 172, '000000138', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(139, 172, '000000139', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(140, 172, '000000140', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(141, 172, '000000141', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(142, 172, '000000142', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(143, 172, '000000143', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(144, 172, '000000144', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(145, 172, '000000145', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(146, 172, '000000146', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(147, 172, '000000147', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(148, 172, '000000148', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(149, 172, '000000149', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(150, 172, '000000150', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(151, 172, '000000151', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(152, 172, '000000152', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(153, 172, '000000153', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(154, 172, '000000154', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(155, 172, '000000155', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(156, 172, '000000156', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(157, 172, '000000157', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(158, 172, '000000158', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(159, 172, '000000159', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(160, 172, '000000160', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(161, 172, '000000161', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(162, 172, '000000162', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(163, 172, '000000163', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(164, 172, '000000164', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(165, 172, '000000165', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(166, 172, '000000166', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(167, 172, '000000167', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(168, 172, '000000168', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(169, 172, '000000169', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(170, 172, '000000170', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(171, 172, '000000171', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(172, 172, '000000172', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(173, 172, '000000173', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(174, 172, '000000174', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(175, 172, '000000175', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(176, 172, '000000176', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(177, 172, '000000177', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(178, 172, '000000178', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(179, 172, '000000179', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(180, 172, '000000180', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(181, 172, '000000181', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(182, 172, '000000182', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(183, 172, '000000183', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(184, 172, '000000184', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(185, 172, '000000185', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(186, 172, '000000186', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(187, 172, '000000187', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(188, 172, '000000188', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(189, 172, '000000189', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(190, 172, '000000190', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(191, 172, '000000191', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(192, 172, '000000192', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(193, 172, '000000193', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(194, 172, '000000194', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(195, 172, '000000195', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(196, 172, '000000196', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(197, 172, '000000197', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(198, 172, '000000198', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(199, 172, '000000199', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(200, 172, '000000200', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(201, 172, '000000201', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(202, 172, '000000202', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(203, 172, '000000203', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(204, 172, '000000204', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(205, 172, '000000205', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(206, 172, '000000206', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(207, 172, '000000207', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(208, 172, '000000208', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(209, 172, '000000209', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(210, 172, '000000210', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(211, 172, '000000211', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(212, 172, '000000212', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(213, 172, '000000213', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(214, 172, '000000214', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(215, 172, '000000215', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(216, 172, '000000216', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(217, 172, '000000217', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(218, 172, '000000218', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(219, 172, '000000219', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(220, 172, '000000220', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(221, 172, '000000221', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(222, 172, '000000222', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(223, 172, '000000223', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(224, 172, '000000224', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(225, 172, '000000225', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(226, 172, '000000226', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(227, 172, '000000227', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(228, 172, '000000228', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(229, 172, '000000229', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(230, 172, '000000230', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(231, 172, '000000231', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(232, 172, '000000232', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(233, 172, '000000233', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(234, 172, '000000234', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(235, 172, '000000235', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(236, 172, '000000236', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(237, 172, '000000237', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(238, 172, '000000238', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(239, 172, '000000239', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(240, 172, '000000240', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(241, 172, '000000241', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(242, 172, '000000242', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(243, 172, '000000243', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(244, 172, '000000244', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(245, 172, '000000245', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(246, 172, '000000246', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(247, 172, '000000247', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(248, 172, '000000248', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(249, 172, '000000249', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(250, 172, '000000250', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(251, 172, '000000251', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(252, 172, '000000252', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(253, 172, '000000253', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(254, 172, '000000254', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(255, 172, '000000255', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(256, 172, '000000256', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(257, 172, '000000257', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(258, 172, '000000258', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(259, 172, '000000259', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(260, 172, '000000260', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(261, 172, '000000261', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(262, 172, '000000262', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(263, 172, '000000263', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(264, 172, '000000264', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(265, 172, '000000265', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(266, 172, '000000266', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(267, 172, '000000267', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(268, 172, '000000268', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(269, 172, '000000269', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(270, 172, '000000270', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(271, 172, '000000271', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(272, 172, '000000272', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(273, 172, '000000273', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(274, 172, '000000274', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(275, 172, '000000275', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(276, 172, '000000276', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(277, 172, '000000277', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(278, 172, '000000278', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(279, 172, '000000279', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(280, 172, '000000280', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(281, 172, '000000281', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(282, 172, '000000282', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(283, 172, '000000283', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(284, 172, '000000284', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(285, 172, '000000285', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(286, 172, '000000286', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(287, 172, '000000287', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(288, 172, '000000288', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(289, 172, '000000289', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(290, 172, '000000290', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(291, 172, '000000291', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(292, 172, '000000292', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(293, 172, '000000293', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(294, 172, '000000294', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(295, 172, '000000295', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(296, 172, '000000296', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(297, 172, '000000297', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(298, 172, '000000298', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(299, 172, '000000299', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(300, 172, '000000300', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(301, 172, '000000301', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(302, 172, '000000302', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(303, 172, '000000303', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(304, 172, '000000304', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(305, 172, '000000305', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(306, 172, '000000306', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(307, 172, '000000307', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(308, 172, '000000308', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(309, 172, '000000309', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(310, 172, '000000310', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(311, 172, '000000311', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(312, 172, '000000312', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(313, 172, '000000313', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(314, 172, '000000314', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(315, 172, '000000315', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(316, 172, '000000316', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(317, 172, '000000317', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(318, 172, '000000318', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(319, 172, '000000319', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(320, 172, '000000320', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(321, 172, '000000321', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(322, 172, '000000322', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(323, 172, '000000323', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(324, 172, '000000324', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(325, 172, '000000325', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(326, 172, '000000326', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(327, 172, '000000327', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(328, 172, '000000328', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(329, 172, '000000329', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(330, 172, '000000330', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(331, 172, '000000331', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(332, 172, '000000332', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(333, 172, '000000333', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(334, 172, '000000334', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(335, 172, '000000335', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(336, 172, '000000336', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(337, 172, '000000337', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(338, 172, '000000338', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(339, 172, '000000339', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(340, 172, '000000340', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(341, 172, '000000341', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(342, 172, '000000342', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(343, 172, '000000343', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(344, 172, '000000344', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(345, 172, '000000345', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(346, 172, '000000346', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(347, 172, '000000347', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(348, 172, '000000348', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(349, 172, '000000349', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(350, 172, '000000350', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(351, 172, '000000351', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(352, 172, '000000352', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(353, 172, '000000353', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(354, 172, '000000354', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(355, 172, '000000355', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(356, 172, '000000356', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(357, 172, '000000357', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(358, 172, '000000358', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(359, 172, '000000359', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(360, 172, '000000360', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(361, 172, '000000361', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(362, 172, '000000362', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(363, 172, '000000363', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(364, 172, '000000364', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(365, 172, '000000365', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(366, 172, '000000366', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(367, 172, '000000367', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(368, 172, '000000368', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(369, 172, '000000369', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(370, 172, '000000370', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(371, 172, '000000371', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(372, 172, '000000372', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(373, 172, '000000373', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(374, 172, '000000374', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(375, 172, '000000375', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(376, 172, '000000376', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(377, 172, '000000377', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(378, 172, '000000378', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(379, 172, '000000379', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(380, 172, '000000380', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(381, 172, '000000381', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(382, 172, '000000382', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(383, 172, '000000383', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(384, 172, '000000384', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(385, 172, '000000385', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(386, 172, '000000386', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(387, 172, '000000387', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(388, 172, '000000388', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(389, 172, '000000389', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(390, 172, '000000390', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(391, 172, '000000391', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(392, 172, '000000392', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(393, 172, '000000393', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(394, 172, '000000394', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(395, 172, '000000395', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(396, 172, '000000396', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(397, 172, '000000397', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(398, 172, '000000398', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(399, 172, '000000399', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(400, 172, '000000400', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(401, 172, '000000401', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(402, 172, '000000402', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(403, 172, '000000403', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(404, 172, '000000404', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(405, 172, '000000405', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(406, 172, '000000406', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(407, 172, '000000407', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(408, 172, '000000408', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(409, 172, '000000409', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(410, 172, '000000410', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(411, 172, '000000411', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(412, 172, '000000412', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(413, 172, '000000413', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(414, 172, '000000414', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(415, 172, '000000415', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(416, 172, '000000416', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(417, 172, '000000417', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(418, 172, '000000418', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(419, 172, '000000419', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(420, 172, '000000420', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(421, 172, '000000421', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(422, 172, '000000422', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(423, 172, '000000423', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(424, 172, '000000424', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(425, 172, '000000425', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(426, 172, '000000426', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(427, 172, '000000427', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(428, 172, '000000428', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(429, 172, '000000429', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(430, 172, '000000430', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(431, 172, '000000431', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(432, 172, '000000432', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(433, 172, '000000433', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(434, 172, '000000434', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(435, 172, '000000435', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(436, 172, '000000436', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(437, 172, '000000437', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(438, 172, '000000438', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(439, 172, '000000439', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(440, 172, '000000440', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(441, 172, '000000441', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(442, 172, '000000442', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(443, 172, '000000443', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(444, 172, '000000444', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(445, 172, '000000445', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(446, 172, '000000446', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(447, 172, '000000447', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(448, 172, '000000448', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(449, 172, '000000449', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(450, 172, '000000450', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(451, 172, '000000451', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(452, 172, '000000452', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(453, 172, '000000453', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(454, 172, '000000454', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(455, 172, '000000455', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(456, 172, '000000456', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(457, 172, '000000457', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(458, 172, '000000458', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(459, 172, '000000459', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(460, 172, '000000460', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(461, 172, '000000461', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(462, 172, '000000462', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(463, 172, '000000463', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(464, 172, '000000464', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(465, 172, '000000465', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(466, 172, '000000466', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(467, 172, '000000467', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(468, 172, '000000468', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(469, 172, '000000469', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(470, 172, '000000470', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(471, 172, '000000471', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(472, 172, '000000472', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(473, 172, '000000473', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(474, 172, '000000474', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(475, 172, '000000475', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(476, 172, '000000476', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(477, 172, '000000477', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(478, 172, '000000478', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(479, 172, '000000479', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(480, 172, '000000480', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(481, 172, '000000481', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(482, 172, '000000482', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(483, 172, '000000483', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(484, 172, '000000484', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(485, 172, '000000485', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(486, 172, '000000486', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(487, 172, '000000487', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(488, 172, '000000488', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(489, 172, '000000489', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL);
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`, `approved_date`) VALUES
(490, 172, '000000490', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(491, 172, '000000491', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(492, 172, '000000492', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(493, 172, '000000493', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(494, 172, '000000494', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(495, 172, '000000495', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(496, 172, '000000496', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(497, 172, '000000497', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(498, 172, '000000498', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(499, 172, '000000499', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(500, 172, '000000500', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:29', '2023-12-30 21:54:29', NULL),
(501, 171, '000000501', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(502, 171, '000000502', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(503, 171, '000000503', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(504, 171, '000000504', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(505, 171, '000000505', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(506, 171, '000000506', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(507, 171, '000000507', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(508, 171, '000000508', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(509, 171, '000000509', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(510, 171, '000000510', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(511, 171, '000000511', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(512, 171, '000000512', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(513, 171, '000000513', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(514, 171, '000000514', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(515, 171, '000000515', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(516, 171, '000000516', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(517, 171, '000000517', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(518, 171, '000000518', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(519, 171, '000000519', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(520, 171, '000000520', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(521, 171, '000000521', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(522, 171, '000000522', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(523, 171, '000000523', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(524, 171, '000000524', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(525, 171, '000000525', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(526, 171, '000000526', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(527, 171, '000000527', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(528, 171, '000000528', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(529, 171, '000000529', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(530, 171, '000000530', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(531, 171, '000000531', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(532, 171, '000000532', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(533, 171, '000000533', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(534, 171, '000000534', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(535, 171, '000000535', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(536, 171, '000000536', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(537, 171, '000000537', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(538, 171, '000000538', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(539, 171, '000000539', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(540, 171, '000000540', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(541, 171, '000000541', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(542, 171, '000000542', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(543, 171, '000000543', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(544, 171, '000000544', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(545, 171, '000000545', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(546, 171, '000000546', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(547, 171, '000000547', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(548, 171, '000000548', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(549, 171, '000000549', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(550, 171, '000000550', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(551, 171, '000000551', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(552, 171, '000000552', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(553, 171, '000000553', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(554, 171, '000000554', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(555, 171, '000000555', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(556, 171, '000000556', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(557, 171, '000000557', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(558, 171, '000000558', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(559, 171, '000000559', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(560, 171, '000000560', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(561, 171, '000000561', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(562, 171, '000000562', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(563, 171, '000000563', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(564, 171, '000000564', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(565, 171, '000000565', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(566, 171, '000000566', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(567, 171, '000000567', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(568, 171, '000000568', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(569, 171, '000000569', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(570, 171, '000000570', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(571, 171, '000000571', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(572, 171, '000000572', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(573, 171, '000000573', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(574, 171, '000000574', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(575, 171, '000000575', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(576, 171, '000000576', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(577, 171, '000000577', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(578, 171, '000000578', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(579, 171, '000000579', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(580, 171, '000000580', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(581, 171, '000000581', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(582, 171, '000000582', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(583, 171, '000000583', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(584, 171, '000000584', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(585, 171, '000000585', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(586, 171, '000000586', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(587, 171, '000000587', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(588, 171, '000000588', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(589, 171, '000000589', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(590, 171, '000000590', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(591, 171, '000000591', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(592, 171, '000000592', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(593, 171, '000000593', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(594, 171, '000000594', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(595, 171, '000000595', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(596, 171, '000000596', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(597, 171, '000000597', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(598, 171, '000000598', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(599, 171, '000000599', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(600, 171, '000000600', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(601, 171, '000000601', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(602, 171, '000000602', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(603, 171, '000000603', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(604, 171, '000000604', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(605, 171, '000000605', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(606, 171, '000000606', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(607, 171, '000000607', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(608, 171, '000000608', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(609, 171, '000000609', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(610, 171, '000000610', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(611, 171, '000000611', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(612, 171, '000000612', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(613, 171, '000000613', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(614, 171, '000000614', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(615, 171, '000000615', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(616, 171, '000000616', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(617, 171, '000000617', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(618, 171, '000000618', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(619, 171, '000000619', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(620, 171, '000000620', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(621, 171, '000000621', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(622, 171, '000000622', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(623, 171, '000000623', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(624, 171, '000000624', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(625, 171, '000000625', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(626, 171, '000000626', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(627, 171, '000000627', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(628, 171, '000000628', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(629, 171, '000000629', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(630, 171, '000000630', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(631, 171, '000000631', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(632, 171, '000000632', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(633, 171, '000000633', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(634, 171, '000000634', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(635, 171, '000000635', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(636, 171, '000000636', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(637, 171, '000000637', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(638, 171, '000000638', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(639, 171, '000000639', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(640, 171, '000000640', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(641, 171, '000000641', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(642, 171, '000000642', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(643, 171, '000000643', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(644, 171, '000000644', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(645, 171, '000000645', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(646, 171, '000000646', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(647, 171, '000000647', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(648, 171, '000000648', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(649, 171, '000000649', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(650, 171, '000000650', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(651, 171, '000000651', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(652, 171, '000000652', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(653, 171, '000000653', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(654, 171, '000000654', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(655, 171, '000000655', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(656, 171, '000000656', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(657, 171, '000000657', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(658, 171, '000000658', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(659, 171, '000000659', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(660, 171, '000000660', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(661, 171, '000000661', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(662, 171, '000000662', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(663, 171, '000000663', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(664, 171, '000000664', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(665, 171, '000000665', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(666, 171, '000000666', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(667, 171, '000000667', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(668, 171, '000000668', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(669, 171, '000000669', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(670, 171, '000000670', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(671, 171, '000000671', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(672, 171, '000000672', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(673, 171, '000000673', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(674, 171, '000000674', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(675, 171, '000000675', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(676, 171, '000000676', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(677, 171, '000000677', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(678, 171, '000000678', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(679, 171, '000000679', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(680, 171, '000000680', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(681, 171, '000000681', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(682, 171, '000000682', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(683, 171, '000000683', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(684, 171, '000000684', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(685, 171, '000000685', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(686, 171, '000000686', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(687, 171, '000000687', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(688, 171, '000000688', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(689, 171, '000000689', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(690, 171, '000000690', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(691, 171, '000000691', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(692, 171, '000000692', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(693, 171, '000000693', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(694, 171, '000000694', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(695, 171, '000000695', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(696, 171, '000000696', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(697, 171, '000000697', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(698, 171, '000000698', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(699, 171, '000000699', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(700, 171, '000000700', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(701, 171, '000000701', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(702, 171, '000000702', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(703, 171, '000000703', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(704, 171, '000000704', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(705, 171, '000000705', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(706, 171, '000000706', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(707, 171, '000000707', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(708, 171, '000000708', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(709, 171, '000000709', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(710, 171, '000000710', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(711, 171, '000000711', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(712, 171, '000000712', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(713, 171, '000000713', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(714, 171, '000000714', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(715, 171, '000000715', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(716, 171, '000000716', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(717, 171, '000000717', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(718, 171, '000000718', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(719, 171, '000000719', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(720, 171, '000000720', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(721, 171, '000000721', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(722, 171, '000000722', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(723, 171, '000000723', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(724, 171, '000000724', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(725, 171, '000000725', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(726, 171, '000000726', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(727, 171, '000000727', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(728, 171, '000000728', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(729, 171, '000000729', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(730, 171, '000000730', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(731, 171, '000000731', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(732, 171, '000000732', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(733, 171, '000000733', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(734, 171, '000000734', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(735, 171, '000000735', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(736, 171, '000000736', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(737, 171, '000000737', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(738, 171, '000000738', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(739, 171, '000000739', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(740, 171, '000000740', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(741, 171, '000000741', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(742, 171, '000000742', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(743, 171, '000000743', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(744, 171, '000000744', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(745, 171, '000000745', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(746, 171, '000000746', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(747, 171, '000000747', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(748, 171, '000000748', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(749, 171, '000000749', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(750, 171, '000000750', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(751, 171, '000000751', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(752, 171, '000000752', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(753, 171, '000000753', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(754, 171, '000000754', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(755, 171, '000000755', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(756, 171, '000000756', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(757, 171, '000000757', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(758, 171, '000000758', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(759, 171, '000000759', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(760, 171, '000000760', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(761, 171, '000000761', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(762, 171, '000000762', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(763, 171, '000000763', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(764, 171, '000000764', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(765, 171, '000000765', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(766, 171, '000000766', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(767, 171, '000000767', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(768, 171, '000000768', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(769, 171, '000000769', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(770, 171, '000000770', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(771, 171, '000000771', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(772, 171, '000000772', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(773, 171, '000000773', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(774, 171, '000000774', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(775, 171, '000000775', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(776, 171, '000000776', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(777, 171, '000000777', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(778, 171, '000000778', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(779, 171, '000000779', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(780, 171, '000000780', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(781, 171, '000000781', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(782, 171, '000000782', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(783, 171, '000000783', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(784, 171, '000000784', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(785, 171, '000000785', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(786, 171, '000000786', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(787, 171, '000000787', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(788, 171, '000000788', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(789, 171, '000000789', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(790, 171, '000000790', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(791, 171, '000000791', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(792, 171, '000000792', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(793, 171, '000000793', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(794, 171, '000000794', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(795, 171, '000000795', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(796, 171, '000000796', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(797, 171, '000000797', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(798, 171, '000000798', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(799, 171, '000000799', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(800, 171, '000000800', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(801, 171, '000000801', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(802, 171, '000000802', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(803, 171, '000000803', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(804, 171, '000000804', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(805, 171, '000000805', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(806, 171, '000000806', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(807, 171, '000000807', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(808, 171, '000000808', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(809, 171, '000000809', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(810, 171, '000000810', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(811, 171, '000000811', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(812, 171, '000000812', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(813, 171, '000000813', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(814, 171, '000000814', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(815, 171, '000000815', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(816, 171, '000000816', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(817, 171, '000000817', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(818, 171, '000000818', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(819, 171, '000000819', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(820, 171, '000000820', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(821, 171, '000000821', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(822, 171, '000000822', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(823, 171, '000000823', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(824, 171, '000000824', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(825, 171, '000000825', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(826, 171, '000000826', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(827, 171, '000000827', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(828, 171, '000000828', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(829, 171, '000000829', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(830, 171, '000000830', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(831, 171, '000000831', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(832, 171, '000000832', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(833, 171, '000000833', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(834, 171, '000000834', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(835, 171, '000000835', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(836, 171, '000000836', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(837, 171, '000000837', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(838, 171, '000000838', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(839, 171, '000000839', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(840, 171, '000000840', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(841, 171, '000000841', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(842, 171, '000000842', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(843, 171, '000000843', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(844, 171, '000000844', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(845, 171, '000000845', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(846, 171, '000000846', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(847, 171, '000000847', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(848, 171, '000000848', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(849, 171, '000000849', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(850, 171, '000000850', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(851, 171, '000000851', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(852, 171, '000000852', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(853, 171, '000000853', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(854, 171, '000000854', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(855, 171, '000000855', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(856, 171, '000000856', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(857, 171, '000000857', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(858, 171, '000000858', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(859, 171, '000000859', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(860, 171, '000000860', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(861, 171, '000000861', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(862, 171, '000000862', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(863, 171, '000000863', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(864, 171, '000000864', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(865, 171, '000000865', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(866, 171, '000000866', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(867, 171, '000000867', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(868, 171, '000000868', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(869, 171, '000000869', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(870, 171, '000000870', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(871, 171, '000000871', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(872, 171, '000000872', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(873, 171, '000000873', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(874, 171, '000000874', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(875, 171, '000000875', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(876, 171, '000000876', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(877, 171, '000000877', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(878, 171, '000000878', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(879, 171, '000000879', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(880, 171, '000000880', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(881, 171, '000000881', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(882, 171, '000000882', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(883, 171, '000000883', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(884, 171, '000000884', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(885, 171, '000000885', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(886, 171, '000000886', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(887, 171, '000000887', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(888, 171, '000000888', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(889, 171, '000000889', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(890, 171, '000000890', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(891, 171, '000000891', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(892, 171, '000000892', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(893, 171, '000000893', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(894, 171, '000000894', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(895, 171, '000000895', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(896, 171, '000000896', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(897, 171, '000000897', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(898, 171, '000000898', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(899, 171, '000000899', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(900, 171, '000000900', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(901, 171, '000000901', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(902, 171, '000000902', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(903, 171, '000000903', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(904, 171, '000000904', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(905, 171, '000000905', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(906, 171, '000000906', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(907, 171, '000000907', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(908, 171, '000000908', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(909, 171, '000000909', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(910, 171, '000000910', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(911, 171, '000000911', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(912, 171, '000000912', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(913, 171, '000000913', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(914, 171, '000000914', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(915, 171, '000000915', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(916, 171, '000000916', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(917, 171, '000000917', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(918, 171, '000000918', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(919, 171, '000000919', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(920, 171, '000000920', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(921, 171, '000000921', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(922, 171, '000000922', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(923, 171, '000000923', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(924, 171, '000000924', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(925, 171, '000000925', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(926, 171, '000000926', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(927, 171, '000000927', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(928, 171, '000000928', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(929, 171, '000000929', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(930, 171, '000000930', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(931, 171, '000000931', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(932, 171, '000000932', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(933, 171, '000000933', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(934, 171, '000000934', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(935, 171, '000000935', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(936, 171, '000000936', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(937, 171, '000000937', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(938, 171, '000000938', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(939, 171, '000000939', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(940, 171, '000000940', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(941, 171, '000000941', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(942, 171, '000000942', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(943, 171, '000000943', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(944, 171, '000000944', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(945, 171, '000000945', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(946, 171, '000000946', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(947, 171, '000000947', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(948, 171, '000000948', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(949, 171, '000000949', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(950, 171, '000000950', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(951, 171, '000000951', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(952, 171, '000000952', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(953, 171, '000000953', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(954, 171, '000000954', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(955, 171, '000000955', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(956, 171, '000000956', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(957, 171, '000000957', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(958, 171, '000000958', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(959, 171, '000000959', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(960, 171, '000000960', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(961, 171, '000000961', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(962, 171, '000000962', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(963, 171, '000000963', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(964, 171, '000000964', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(965, 171, '000000965', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(966, 171, '000000966', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(967, 171, '000000967', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(968, 171, '000000968', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(969, 171, '000000969', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(970, 171, '000000970', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(971, 171, '000000971', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(972, 171, '000000972', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(973, 171, '000000973', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(974, 171, '000000974', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(975, 171, '000000975', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(976, 171, '000000976', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(977, 171, '000000977', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL);
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`, `approved_date`) VALUES
(978, 171, '000000978', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(979, 171, '000000979', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(980, 171, '000000980', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(981, 171, '000000981', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(982, 171, '000000982', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(983, 171, '000000983', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(984, 171, '000000984', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(985, 171, '000000985', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(986, 171, '000000986', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(987, 171, '000000987', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(988, 171, '000000988', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(989, 171, '000000989', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(990, 171, '000000990', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(991, 171, '000000991', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(992, 171, '000000992', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(993, 171, '000000993', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(994, 171, '000000994', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(995, 171, '000000995', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(996, 171, '000000996', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(997, 171, '000000997', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(998, 171, '000000998', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(999, 171, '000000999', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1000, 171, '000001000', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1001, 171, '000001001', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1002, 171, '000001002', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1003, 171, '000001003', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1004, 171, '000001004', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1005, 171, '000001005', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1006, 171, '000001006', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1007, 171, '000001007', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1008, 171, '000001008', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1009, 171, '000001009', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1010, 171, '000001010', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1011, 171, '000001011', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1012, 171, '000001012', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1013, 171, '000001013', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1014, 171, '000001014', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1015, 171, '000001015', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1016, 171, '000001016', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1017, 171, '000001017', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1018, 171, '000001018', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1019, 171, '000001019', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1020, 171, '000001020', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1021, 171, '000001021', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1022, 171, '000001022', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1023, 171, '000001023', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1024, 171, '000001024', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1025, 171, '000001025', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1026, 171, '000001026', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1027, 171, '000001027', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1028, 171, '000001028', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1029, 171, '000001029', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1030, 171, '000001030', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1031, 171, '000001031', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1032, 171, '000001032', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1033, 171, '000001033', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1034, 171, '000001034', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1035, 171, '000001035', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1036, 171, '000001036', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1037, 171, '000001037', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1038, 171, '000001038', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1039, 171, '000001039', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1040, 171, '000001040', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1041, 171, '000001041', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1042, 171, '000001042', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1043, 171, '000001043', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1044, 171, '000001044', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1045, 171, '000001045', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1046, 171, '000001046', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1047, 171, '000001047', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1048, 171, '000001048', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1049, 171, '000001049', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1050, 171, '000001050', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1051, 171, '000001051', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1052, 171, '000001052', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1053, 171, '000001053', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1054, 171, '000001054', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1055, 171, '000001055', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1056, 171, '000001056', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1057, 171, '000001057', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1058, 171, '000001058', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1059, 171, '000001059', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1060, 171, '000001060', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1061, 171, '000001061', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1062, 171, '000001062', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1063, 171, '000001063', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1064, 171, '000001064', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1065, 171, '000001065', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1066, 171, '000001066', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1067, 171, '000001067', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1068, 171, '000001068', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1069, 171, '000001069', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1070, 171, '000001070', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1071, 171, '000001071', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1072, 171, '000001072', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1073, 171, '000001073', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1074, 171, '000001074', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1075, 171, '000001075', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1076, 171, '000001076', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1077, 171, '000001077', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1078, 171, '000001078', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1079, 171, '000001079', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1080, 171, '000001080', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1081, 171, '000001081', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1082, 171, '000001082', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1083, 171, '000001083', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1084, 171, '000001084', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1085, 171, '000001085', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1086, 171, '000001086', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1087, 171, '000001087', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1088, 171, '000001088', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1089, 171, '000001089', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1090, 171, '000001090', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1091, 171, '000001091', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1092, 171, '000001092', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1093, 171, '000001093', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1094, 171, '000001094', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1095, 171, '000001095', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1096, 171, '000001096', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1097, 171, '000001097', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1098, 171, '000001098', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1099, 171, '000001099', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1100, 171, '000001100', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1101, 171, '000001101', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1102, 171, '000001102', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1103, 171, '000001103', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1104, 171, '000001104', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1105, 171, '000001105', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1106, 171, '000001106', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1107, 171, '000001107', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1108, 171, '000001108', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1109, 171, '000001109', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1110, 171, '000001110', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1111, 171, '000001111', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1112, 171, '000001112', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1113, 171, '000001113', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1114, 171, '000001114', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1115, 171, '000001115', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1116, 171, '000001116', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1117, 171, '000001117', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1118, 171, '000001118', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1119, 171, '000001119', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1120, 171, '000001120', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1121, 171, '000001121', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1122, 171, '000001122', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1123, 171, '000001123', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1124, 171, '000001124', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1125, 171, '000001125', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1126, 171, '000001126', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1127, 171, '000001127', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1128, 171, '000001128', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1129, 171, '000001129', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1130, 171, '000001130', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1131, 171, '000001131', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1132, 171, '000001132', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1133, 171, '000001133', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1134, 171, '000001134', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1135, 171, '000001135', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1136, 171, '000001136', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1137, 171, '000001137', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1138, 171, '000001138', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1139, 171, '000001139', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1140, 171, '000001140', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1141, 171, '000001141', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1142, 171, '000001142', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1143, 171, '000001143', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1144, 171, '000001144', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1145, 171, '000001145', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1146, 171, '000001146', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1147, 171, '000001147', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1148, 171, '000001148', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1149, 171, '000001149', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1150, 171, '000001150', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1151, 171, '000001151', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1152, 171, '000001152', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1153, 171, '000001153', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1154, 171, '000001154', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1155, 171, '000001155', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1156, 171, '000001156', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1157, 171, '000001157', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1158, 171, '000001158', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1159, 171, '000001159', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1160, 171, '000001160', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1161, 171, '000001161', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1162, 171, '000001162', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1163, 171, '000001163', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1164, 171, '000001164', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1165, 171, '000001165', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1166, 171, '000001166', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1167, 171, '000001167', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1168, 171, '000001168', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1169, 171, '000001169', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1170, 171, '000001170', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1171, 171, '000001171', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1172, 171, '000001172', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1173, 171, '000001173', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1174, 171, '000001174', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1175, 171, '000001175', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1176, 171, '000001176', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1177, 171, '000001177', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1178, 171, '000001178', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1179, 171, '000001179', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1180, 171, '000001180', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1181, 171, '000001181', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1182, 171, '000001182', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1183, 171, '000001183', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1184, 171, '000001184', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1185, 171, '000001185', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1186, 171, '000001186', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1187, 171, '000001187', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1188, 171, '000001188', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1189, 171, '000001189', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1190, 171, '000001190', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1191, 171, '000001191', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1192, 171, '000001192', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1193, 171, '000001193', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1194, 171, '000001194', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1195, 171, '000001195', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1196, 171, '000001196', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1197, 171, '000001197', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1198, 171, '000001198', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1199, 171, '000001199', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1200, 171, '000001200', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:44', '2023-12-30 21:54:44', NULL),
(1201, 168, '000001201', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1202, 168, '000001202', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1203, 168, '000001203', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1204, 168, '000001204', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1205, 168, '000001205', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1206, 168, '000001206', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1207, 168, '000001207', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1208, 168, '000001208', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1209, 168, '000001209', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1210, 168, '000001210', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1211, 168, '000001211', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1212, 168, '000001212', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1213, 168, '000001213', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1214, 168, '000001214', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1215, 168, '000001215', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1216, 168, '000001216', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1217, 168, '000001217', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1218, 168, '000001218', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1219, 168, '000001219', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1220, 168, '000001220', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1221, 168, '000001221', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1222, 168, '000001222', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1223, 168, '000001223', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1224, 168, '000001224', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1225, 168, '000001225', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1226, 168, '000001226', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1227, 168, '000001227', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1228, 168, '000001228', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1229, 168, '000001229', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1230, 168, '000001230', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1231, 168, '000001231', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1232, 168, '000001232', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1233, 168, '000001233', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1234, 168, '000001234', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1235, 168, '000001235', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1236, 168, '000001236', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1237, 168, '000001237', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1238, 168, '000001238', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1239, 168, '000001239', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1240, 168, '000001240', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1241, 168, '000001241', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1242, 168, '000001242', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1243, 168, '000001243', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1244, 168, '000001244', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1245, 168, '000001245', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1246, 168, '000001246', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1247, 168, '000001247', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1248, 168, '000001248', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1249, 168, '000001249', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1250, 168, '000001250', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1251, 168, '000001251', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1252, 168, '000001252', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1253, 168, '000001253', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1254, 168, '000001254', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1255, 168, '000001255', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1256, 168, '000001256', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1257, 168, '000001257', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1258, 168, '000001258', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1259, 168, '000001259', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1260, 168, '000001260', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1261, 168, '000001261', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1262, 168, '000001262', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1263, 168, '000001263', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1264, 168, '000001264', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1265, 168, '000001265', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1266, 168, '000001266', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1267, 168, '000001267', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1268, 168, '000001268', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1269, 168, '000001269', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1270, 168, '000001270', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1271, 168, '000001271', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1272, 168, '000001272', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1273, 168, '000001273', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1274, 168, '000001274', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1275, 168, '000001275', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1276, 168, '000001276', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1277, 168, '000001277', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1278, 168, '000001278', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1279, 168, '000001279', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1280, 168, '000001280', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1281, 168, '000001281', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1282, 168, '000001282', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1283, 168, '000001283', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1284, 168, '000001284', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1285, 168, '000001285', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1286, 168, '000001286', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1287, 168, '000001287', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1288, 168, '000001288', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1289, 168, '000001289', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1290, 168, '000001290', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1291, 168, '000001291', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1292, 168, '000001292', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1293, 168, '000001293', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1294, 168, '000001294', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1295, 168, '000001295', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1296, 168, '000001296', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1297, 168, '000001297', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1298, 168, '000001298', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1299, 168, '000001299', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1300, 168, '000001300', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1301, 168, '000001301', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1302, 168, '000001302', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1303, 168, '000001303', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1304, 168, '000001304', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1305, 168, '000001305', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1306, 168, '000001306', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1307, 168, '000001307', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1308, 168, '000001308', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1309, 168, '000001309', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1310, 168, '000001310', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1311, 168, '000001311', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1312, 168, '000001312', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1313, 168, '000001313', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1314, 168, '000001314', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1315, 168, '000001315', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1316, 168, '000001316', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1317, 168, '000001317', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1318, 168, '000001318', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1319, 168, '000001319', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1320, 168, '000001320', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1321, 168, '000001321', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1322, 168, '000001322', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1323, 168, '000001323', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1324, 168, '000001324', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1325, 168, '000001325', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1326, 168, '000001326', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1327, 168, '000001327', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1328, 168, '000001328', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1329, 168, '000001329', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1330, 168, '000001330', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1331, 168, '000001331', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1332, 168, '000001332', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1333, 168, '000001333', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1334, 168, '000001334', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1335, 168, '000001335', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1336, 168, '000001336', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1337, 168, '000001337', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1338, 168, '000001338', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1339, 168, '000001339', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1340, 168, '000001340', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1341, 168, '000001341', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1342, 168, '000001342', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1343, 168, '000001343', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1344, 168, '000001344', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1345, 168, '000001345', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1346, 168, '000001346', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1347, 168, '000001347', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1348, 168, '000001348', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1349, 168, '000001349', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1350, 168, '000001350', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1351, 168, '000001351', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1352, 168, '000001352', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1353, 168, '000001353', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1354, 168, '000001354', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1355, 168, '000001355', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1356, 168, '000001356', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1357, 168, '000001357', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1358, 168, '000001358', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1359, 168, '000001359', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1360, 168, '000001360', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1361, 168, '000001361', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1362, 168, '000001362', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1363, 168, '000001363', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1364, 168, '000001364', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1365, 168, '000001365', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1366, 168, '000001366', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1367, 168, '000001367', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1368, 168, '000001368', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1369, 168, '000001369', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1370, 168, '000001370', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1371, 168, '000001371', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1372, 168, '000001372', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1373, 168, '000001373', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1374, 168, '000001374', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1375, 168, '000001375', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1376, 168, '000001376', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1377, 168, '000001377', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1378, 168, '000001378', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1379, 168, '000001379', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1380, 168, '000001380', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1381, 168, '000001381', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1382, 168, '000001382', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1383, 168, '000001383', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1384, 168, '000001384', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1385, 168, '000001385', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1386, 168, '000001386', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1387, 168, '000001387', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1388, 168, '000001388', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1389, 168, '000001389', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1390, 168, '000001390', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1391, 168, '000001391', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1392, 168, '000001392', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1393, 168, '000001393', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1394, 168, '000001394', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1395, 168, '000001395', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1396, 168, '000001396', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1397, 168, '000001397', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1398, 168, '000001398', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1399, 168, '000001399', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1400, 168, '000001400', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1401, 168, '000001401', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1402, 168, '000001402', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1403, 168, '000001403', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1404, 168, '000001404', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1405, 168, '000001405', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1406, 168, '000001406', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1407, 168, '000001407', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1408, 168, '000001408', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1409, 168, '000001409', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1410, 168, '000001410', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1411, 168, '000001411', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1412, 168, '000001412', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1413, 168, '000001413', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1414, 168, '000001414', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1415, 168, '000001415', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1416, 168, '000001416', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1417, 168, '000001417', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1418, 168, '000001418', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1419, 168, '000001419', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1420, 168, '000001420', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1421, 168, '000001421', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1422, 168, '000001422', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1423, 168, '000001423', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1424, 168, '000001424', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1425, 168, '000001425', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1426, 168, '000001426', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1427, 168, '000001427', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1428, 168, '000001428', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1429, 168, '000001429', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1430, 168, '000001430', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1431, 168, '000001431', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1432, 168, '000001432', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1433, 168, '000001433', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1434, 168, '000001434', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1435, 168, '000001435', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1436, 168, '000001436', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1437, 168, '000001437', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1438, 168, '000001438', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1439, 168, '000001439', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1440, 168, '000001440', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1441, 168, '000001441', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1442, 168, '000001442', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1443, 168, '000001443', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1444, 168, '000001444', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1445, 168, '000001445', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1446, 168, '000001446', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1447, 168, '000001447', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1448, 168, '000001448', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1449, 168, '000001449', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1450, 168, '000001450', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1451, 168, '000001451', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1452, 168, '000001452', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1453, 168, '000001453', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1454, 168, '000001454', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1455, 168, '000001455', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1456, 168, '000001456', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1457, 168, '000001457', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1458, 168, '000001458', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1459, 168, '000001459', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1460, 168, '000001460', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL);
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`, `approved_date`) VALUES
(1461, 168, '000001461', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1462, 168, '000001462', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1463, 168, '000001463', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1464, 168, '000001464', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1465, 168, '000001465', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1466, 168, '000001466', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1467, 168, '000001467', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1468, 168, '000001468', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1469, 168, '000001469', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1470, 168, '000001470', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1471, 168, '000001471', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1472, 168, '000001472', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1473, 168, '000001473', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1474, 168, '000001474', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1475, 168, '000001475', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1476, 168, '000001476', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1477, 168, '000001477', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1478, 168, '000001478', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1479, 168, '000001479', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1480, 168, '000001480', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1481, 168, '000001481', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1482, 168, '000001482', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1483, 168, '000001483', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1484, 168, '000001484', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1485, 168, '000001485', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1486, 168, '000001486', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1487, 168, '000001487', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1488, 168, '000001488', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1489, 168, '000001489', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1490, 168, '000001490', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1491, 168, '000001491', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1492, 168, '000001492', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1493, 168, '000001493', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1494, 168, '000001494', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1495, 168, '000001495', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1496, 168, '000001496', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1497, 168, '000001497', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1498, 168, '000001498', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1499, 168, '000001499', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1500, 168, '000001500', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1501, 168, '000001501', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1502, 168, '000001502', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1503, 168, '000001503', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1504, 168, '000001504', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1505, 168, '000001505', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1506, 168, '000001506', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1507, 168, '000001507', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1508, 168, '000001508', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1509, 168, '000001509', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1510, 168, '000001510', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1511, 168, '000001511', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1512, 168, '000001512', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1513, 168, '000001513', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1514, 168, '000001514', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1515, 168, '000001515', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1516, 168, '000001516', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1517, 168, '000001517', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1518, 168, '000001518', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1519, 168, '000001519', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1520, 168, '000001520', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1521, 168, '000001521', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1522, 168, '000001522', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1523, 168, '000001523', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1524, 168, '000001524', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1525, 168, '000001525', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1526, 168, '000001526', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1527, 168, '000001527', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1528, 168, '000001528', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1529, 168, '000001529', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1530, 168, '000001530', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1531, 168, '000001531', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1532, 168, '000001532', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1533, 168, '000001533', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1534, 168, '000001534', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1535, 168, '000001535', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1536, 168, '000001536', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1537, 168, '000001537', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1538, 168, '000001538', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1539, 168, '000001539', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1540, 168, '000001540', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1541, 168, '000001541', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1542, 168, '000001542', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1543, 168, '000001543', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1544, 168, '000001544', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1545, 168, '000001545', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1546, 168, '000001546', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1547, 168, '000001547', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1548, 168, '000001548', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1549, 168, '000001549', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1550, 168, '000001550', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1551, 168, '000001551', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1552, 168, '000001552', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1553, 168, '000001553', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1554, 168, '000001554', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1555, 168, '000001555', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1556, 168, '000001556', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1557, 168, '000001557', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1558, 168, '000001558', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1559, 168, '000001559', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1560, 168, '000001560', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1561, 168, '000001561', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1562, 168, '000001562', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1563, 168, '000001563', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1564, 168, '000001564', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1565, 168, '000001565', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1566, 168, '000001566', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1567, 168, '000001567', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1568, 168, '000001568', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1569, 168, '000001569', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1570, 168, '000001570', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1571, 168, '000001571', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1572, 168, '000001572', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1573, 168, '000001573', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1574, 168, '000001574', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1575, 168, '000001575', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1576, 168, '000001576', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1577, 168, '000001577', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1578, 168, '000001578', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1579, 168, '000001579', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1580, 168, '000001580', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1581, 168, '000001581', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1582, 168, '000001582', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1583, 168, '000001583', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1584, 168, '000001584', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1585, 168, '000001585', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1586, 168, '000001586', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1587, 168, '000001587', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1588, 168, '000001588', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1589, 168, '000001589', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1590, 168, '000001590', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1591, 168, '000001591', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1592, 168, '000001592', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1593, 168, '000001593', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1594, 168, '000001594', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1595, 168, '000001595', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1596, 168, '000001596', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1597, 168, '000001597', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1598, 168, '000001598', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1599, 168, '000001599', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1600, 168, '000001600', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1601, 168, '000001601', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1602, 168, '000001602', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1603, 168, '000001603', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1604, 168, '000001604', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1605, 168, '000001605', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1606, 168, '000001606', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1607, 168, '000001607', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1608, 168, '000001608', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1609, 168, '000001609', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1610, 168, '000001610', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1611, 168, '000001611', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1612, 168, '000001612', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1613, 168, '000001613', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1614, 168, '000001614', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1615, 168, '000001615', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1616, 168, '000001616', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1617, 168, '000001617', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1618, 168, '000001618', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1619, 168, '000001619', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1620, 168, '000001620', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1621, 168, '000001621', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1622, 168, '000001622', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1623, 168, '000001623', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1624, 168, '000001624', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1625, 168, '000001625', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1626, 168, '000001626', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1627, 168, '000001627', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1628, 168, '000001628', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1629, 168, '000001629', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1630, 168, '000001630', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1631, 168, '000001631', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1632, 168, '000001632', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1633, 168, '000001633', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1634, 168, '000001634', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1635, 168, '000001635', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1636, 168, '000001636', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1637, 168, '000001637', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1638, 168, '000001638', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1639, 168, '000001639', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1640, 168, '000001640', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1641, 168, '000001641', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1642, 168, '000001642', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1643, 168, '000001643', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1644, 168, '000001644', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1645, 168, '000001645', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1646, 168, '000001646', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1647, 168, '000001647', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1648, 168, '000001648', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1649, 168, '000001649', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1650, 168, '000001650', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1651, 168, '000001651', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1652, 168, '000001652', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1653, 168, '000001653', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1654, 168, '000001654', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1655, 168, '000001655', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1656, 168, '000001656', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1657, 168, '000001657', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1658, 168, '000001658', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1659, 168, '000001659', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1660, 168, '000001660', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1661, 168, '000001661', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1662, 168, '000001662', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1663, 168, '000001663', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1664, 168, '000001664', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1665, 168, '000001665', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1666, 168, '000001666', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1667, 168, '000001667', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1668, 168, '000001668', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1669, 168, '000001669', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1670, 168, '000001670', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1671, 168, '000001671', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1672, 168, '000001672', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1673, 168, '000001673', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1674, 168, '000001674', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1675, 168, '000001675', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1676, 168, '000001676', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1677, 168, '000001677', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1678, 168, '000001678', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1679, 168, '000001679', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1680, 168, '000001680', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1681, 168, '000001681', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1682, 168, '000001682', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1683, 168, '000001683', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1684, 168, '000001684', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1685, 168, '000001685', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1686, 168, '000001686', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1687, 168, '000001687', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1688, 168, '000001688', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1689, 168, '000001689', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1690, 168, '000001690', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1691, 168, '000001691', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1692, 168, '000001692', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1693, 168, '000001693', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1694, 168, '000001694', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1695, 168, '000001695', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1696, 168, '000001696', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1697, 168, '000001697', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1698, 168, '000001698', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1699, 168, '000001699', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1700, 168, '000001700', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1701, 168, '000001701', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1702, 168, '000001702', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1703, 168, '000001703', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1704, 168, '000001704', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1705, 168, '000001705', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1706, 168, '000001706', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1707, 168, '000001707', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1708, 168, '000001708', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1709, 168, '000001709', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1710, 168, '000001710', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1711, 168, '000001711', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1712, 168, '000001712', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1713, 168, '000001713', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1714, 168, '000001714', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1715, 168, '000001715', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1716, 168, '000001716', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1717, 168, '000001717', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1718, 168, '000001718', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1719, 168, '000001719', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1720, 168, '000001720', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1721, 168, '000001721', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1722, 168, '000001722', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1723, 168, '000001723', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1724, 168, '000001724', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1725, 168, '000001725', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1726, 168, '000001726', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1727, 168, '000001727', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1728, 168, '000001728', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1729, 168, '000001729', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1730, 168, '000001730', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1731, 168, '000001731', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1732, 168, '000001732', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1733, 168, '000001733', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1734, 168, '000001734', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1735, 168, '000001735', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1736, 168, '000001736', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1737, 168, '000001737', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1738, 168, '000001738', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1739, 168, '000001739', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1740, 168, '000001740', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1741, 168, '000001741', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1742, 168, '000001742', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1743, 168, '000001743', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1744, 168, '000001744', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1745, 168, '000001745', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1746, 168, '000001746', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1747, 168, '000001747', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1748, 168, '000001748', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1749, 168, '000001749', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1750, 168, '000001750', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1751, 168, '000001751', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1752, 168, '000001752', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1753, 168, '000001753', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1754, 168, '000001754', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1755, 168, '000001755', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1756, 168, '000001756', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1757, 168, '000001757', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1758, 168, '000001758', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1759, 168, '000001759', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1760, 168, '000001760', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1761, 168, '000001761', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1762, 168, '000001762', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1763, 168, '000001763', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1764, 168, '000001764', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1765, 168, '000001765', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1766, 168, '000001766', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1767, 168, '000001767', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1768, 168, '000001768', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1769, 168, '000001769', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1770, 168, '000001770', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1771, 168, '000001771', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1772, 168, '000001772', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1773, 168, '000001773', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1774, 168, '000001774', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1775, 168, '000001775', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1776, 168, '000001776', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1777, 168, '000001777', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1778, 168, '000001778', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:54', '2023-12-30 21:54:54', NULL),
(1779, 168, '000001779', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1780, 168, '000001780', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1781, 168, '000001781', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1782, 168, '000001782', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1783, 168, '000001783', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1784, 168, '000001784', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1785, 168, '000001785', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1786, 168, '000001786', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1787, 168, '000001787', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1788, 168, '000001788', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1789, 168, '000001789', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1790, 168, '000001790', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1791, 168, '000001791', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1792, 168, '000001792', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1793, 168, '000001793', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1794, 168, '000001794', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1795, 168, '000001795', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1796, 168, '000001796', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1797, 168, '000001797', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1798, 168, '000001798', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1799, 168, '000001799', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1800, 168, '000001800', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:54:55', '2023-12-30 21:54:55', NULL),
(1801, 167, '000001801', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1802, 167, '000001802', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1803, 167, '000001803', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1804, 167, '000001804', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1805, 167, '000001805', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1806, 167, '000001806', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1807, 167, '000001807', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1808, 167, '000001808', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1809, 167, '000001809', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1810, 167, '000001810', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1811, 167, '000001811', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1812, 167, '000001812', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1813, 167, '000001813', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1814, 167, '000001814', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1815, 167, '000001815', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1816, 167, '000001816', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1817, 167, '000001817', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1818, 167, '000001818', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1819, 167, '000001819', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1820, 167, '000001820', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1821, 167, '000001821', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1822, 167, '000001822', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1823, 167, '000001823', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1824, 167, '000001824', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1825, 167, '000001825', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1826, 167, '000001826', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1827, 167, '000001827', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1828, 167, '000001828', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1829, 167, '000001829', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1830, 167, '000001830', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1831, 167, '000001831', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1832, 167, '000001832', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1833, 167, '000001833', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1834, 167, '000001834', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1835, 167, '000001835', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1836, 167, '000001836', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1837, 167, '000001837', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1838, 167, '000001838', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1839, 167, '000001839', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1840, 167, '000001840', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1841, 167, '000001841', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1842, 167, '000001842', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1843, 167, '000001843', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1844, 167, '000001844', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1845, 167, '000001845', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1846, 167, '000001846', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1847, 167, '000001847', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1848, 167, '000001848', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1849, 167, '000001849', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1850, 167, '000001850', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:02', '2023-12-30 21:55:02', NULL),
(1851, 166, '000001851', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1852, 166, '000001852', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1853, 166, '000001853', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1854, 166, '000001854', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1855, 166, '000001855', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1856, 166, '000001856', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1857, 166, '000001857', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1858, 166, '000001858', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1859, 166, '000001859', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1860, 166, '000001860', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1861, 166, '000001861', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1862, 166, '000001862', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1863, 166, '000001863', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1864, 166, '000001864', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1865, 166, '000001865', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1866, 166, '000001866', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1867, 166, '000001867', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1868, 166, '000001868', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1869, 166, '000001869', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1870, 166, '000001870', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1871, 166, '000001871', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1872, 166, '000001872', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1873, 166, '000001873', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1874, 166, '000001874', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1875, 166, '000001875', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1876, 166, '000001876', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1877, 166, '000001877', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1878, 166, '000001878', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1879, 166, '000001879', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1880, 166, '000001880', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1881, 166, '000001881', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1882, 166, '000001882', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1883, 166, '000001883', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1884, 166, '000001884', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1885, 166, '000001885', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1886, 166, '000001886', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1887, 166, '000001887', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1888, 166, '000001888', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1889, 166, '000001889', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1890, 166, '000001890', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1891, 166, '000001891', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1892, 166, '000001892', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1893, 166, '000001893', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1894, 166, '000001894', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1895, 166, '000001895', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1896, 166, '000001896', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1897, 166, '000001897', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1898, 166, '000001898', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1899, 166, '000001899', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1900, 166, '000001900', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:11', '2023-12-30 21:55:11', NULL),
(1901, 165, '000001901', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1902, 165, '000001902', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1903, 165, '000001903', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1904, 165, '000001904', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1905, 165, '000001905', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1906, 165, '000001906', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1907, 165, '000001907', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1908, 165, '000001908', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1909, 165, '000001909', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1910, 165, '000001910', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1911, 165, '000001911', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1912, 165, '000001912', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1913, 165, '000001913', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1914, 165, '000001914', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1915, 165, '000001915', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1916, 165, '000001916', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1917, 165, '000001917', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1918, 165, '000001918', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1919, 165, '000001919', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1920, 165, '000001920', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1921, 165, '000001921', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1922, 165, '000001922', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1923, 165, '000001923', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1924, 165, '000001924', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1925, 165, '000001925', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1926, 165, '000001926', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1927, 165, '000001927', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1928, 165, '000001928', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1929, 165, '000001929', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1930, 165, '000001930', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:19', '2023-12-30 21:55:19', NULL),
(1931, 164, '000001931', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1932, 164, '000001932', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1933, 164, '000001933', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1934, 164, '000001934', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1935, 164, '000001935', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1936, 164, '000001936', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1937, 164, '000001937', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1938, 164, '000001938', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1939, 164, '000001939', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1940, 164, '000001940', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1941, 164, '000001941', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1942, 164, '000001942', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1943, 164, '000001943', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL);
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`, `approved_date`) VALUES
(1944, 164, '000001944', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1945, 164, '000001945', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1946, 164, '000001946', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1947, 164, '000001947', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1948, 164, '000001948', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1949, 164, '000001949', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1950, 164, '000001950', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1951, 164, '000001951', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1952, 164, '000001952', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1953, 164, '000001953', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1954, 164, '000001954', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1955, 164, '000001955', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1956, 164, '000001956', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1957, 164, '000001957', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1958, 164, '000001958', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1959, 164, '000001959', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1960, 164, '000001960', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1961, 164, '000001961', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1962, 164, '000001962', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1963, 164, '000001963', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1964, 164, '000001964', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1965, 164, '000001965', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1966, 164, '000001966', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1967, 164, '000001967', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1968, 164, '000001968', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1969, 164, '000001969', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1970, 164, '000001970', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1971, 164, '000001971', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1972, 164, '000001972', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1973, 164, '000001973', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1974, 164, '000001974', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1975, 164, '000001975', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1976, 164, '000001976', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1977, 164, '000001977', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1978, 164, '000001978', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1979, 164, '000001979', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1980, 164, '000001980', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:55:29', '2023-12-30 21:55:29', NULL),
(1981, 163, '000001981', 2, '216326-23', '2023-12-30', 2, 1, '2023-12-30 21:56:09', '2023-12-30 22:58:02', '2023-12-30'),
(1982, 163, '000001982', 2, '216326-23', '2023-12-30', 2, 1, '2023-12-30 21:56:09', '2023-12-30 22:58:02', '2023-12-30'),
(1983, 163, '000001983', 2, '216326-23', '2023-12-30', 2, 1, '2023-12-30 21:56:09', '2023-12-30 22:58:02', '2023-12-30'),
(1984, 163, '000001984', 2, '216326-23', '2023-12-30', 2, 1, '2023-12-30 21:56:09', '2023-12-30 22:58:02', '2023-12-30'),
(1985, 163, '000001985', 2, '216326-23', '2023-12-30', 2, 1, '2023-12-30 21:56:09', '2023-12-30 22:58:02', '2023-12-30'),
(1986, 163, '000001986', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1987, 163, '000001987', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1988, 163, '000001988', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1989, 163, '000001989', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1990, 163, '000001990', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1991, 163, '000001991', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1992, 163, '000001992', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1993, 163, '000001993', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1994, 163, '000001994', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1995, 163, '000001995', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1996, 163, '000001996', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1997, 163, '000001997', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1998, 163, '000001998', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(1999, 163, '000001999', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2000, 163, '000002000', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2001, 163, '000002001', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2002, 163, '000002002', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2003, 163, '000002003', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2004, 163, '000002004', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2005, 163, '000002005', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2006, 163, '000002006', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2007, 163, '000002007', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2008, 163, '000002008', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2009, 163, '000002009', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2010, 163, '000002010', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2011, 163, '000002011', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2012, 163, '000002012', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2013, 163, '000002013', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2014, 163, '000002014', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2015, 163, '000002015', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2016, 163, '000002016', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2017, 163, '000002017', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2018, 163, '000002018', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2019, 163, '000002019', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2020, 163, '000002020', NULL, NULL, NULL, NULL, 1, '2023-12-30 21:56:09', '2023-12-30 21:56:09', NULL),
(2021, 162, '000002021', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2022, 162, '000002022', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2023, 162, '000002023', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2024, 162, '000002024', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2025, 162, '000002025', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2026, 162, '000002026', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2027, 162, '000002027', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2028, 162, '000002028', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2029, 162, '000002029', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2030, 162, '000002030', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2031, 162, '000002031', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2032, 162, '000002032', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2033, 162, '000002033', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2034, 162, '000002034', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2035, 162, '000002035', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2036, 162, '000002036', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2037, 162, '000002037', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2038, 162, '000002038', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2039, 162, '000002039', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2040, 162, '000002040', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2041, 162, '000002041', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2042, 162, '000002042', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2043, 162, '000002043', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2044, 162, '000002044', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2045, 162, '000002045', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2046, 162, '000002046', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2047, 162, '000002047', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2048, 162, '000002048', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2049, 162, '000002049', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2050, 162, '000002050', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2051, 162, '000002051', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2052, 162, '000002052', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2053, 162, '000002053', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2054, 162, '000002054', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2055, 162, '000002055', 5, '282070-23', '2023-12-30', 2, 1, '2023-12-30 21:56:18', '2023-12-30 22:06:15', '2023-12-30'),
(2056, 174, '000002056', 27, '282070-23', '2023-12-30', 2, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:51', '2023-12-30'),
(2057, 174, '000002057', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2058, 174, '000002058', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2059, 174, '000002059', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2060, 174, '000002060', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2061, 174, '000002061', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2062, 174, '000002062', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2063, 174, '000002063', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2064, 174, '000002064', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2065, 174, '000002065', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2066, 174, '000002066', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2067, 174, '000002067', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2068, 174, '000002068', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2069, 174, '000002069', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2070, 174, '000002070', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2071, 174, '000002071', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2072, 174, '000002072', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2073, 174, '000002073', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2074, 174, '000002074', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2075, 174, '000002075', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2076, 174, '000002076', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2077, 174, '000002077', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2078, 174, '000002078', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2079, 174, '000002079', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2080, 174, '000002080', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2081, 174, '000002081', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2082, 174, '000002082', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2083, 174, '000002083', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2084, 174, '000002084', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2085, 174, '000002085', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2086, 174, '000002086', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2087, 174, '000002087', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2088, 174, '000002088', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2089, 174, '000002089', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2090, 174, '000002090', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2091, 174, '000002091', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2092, 174, '000002092', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2093, 174, '000002093', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2094, 174, '000002094', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2095, 174, '000002095', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2096, 174, '000002096', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2097, 174, '000002097', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2098, 174, '000002098', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2099, 174, '000002099', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2100, 174, '000002100', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2101, 174, '000002101', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2102, 174, '000002102', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2103, 174, '000002103', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2104, 174, '000002104', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2105, 174, '000002105', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2106, 174, '000002106', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2107, 174, '000002107', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2108, 174, '000002108', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2109, 174, '000002109', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2110, 174, '000002110', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2111, 174, '000002111', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2112, 174, '000002112', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2113, 174, '000002113', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2114, 174, '000002114', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2115, 174, '000002115', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2116, 174, '000002116', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2117, 174, '000002117', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2118, 174, '000002118', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2119, 174, '000002119', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2120, 174, '000002120', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2121, 174, '000002121', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2122, 174, '000002122', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2123, 174, '000002123', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2124, 174, '000002124', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2125, 174, '000002125', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2126, 174, '000002126', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2127, 174, '000002127', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2128, 174, '000002128', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2129, 174, '000002129', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2130, 174, '000002130', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2131, 174, '000002131', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2132, 174, '000002132', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2133, 174, '000002133', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2134, 174, '000002134', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2135, 174, '000002135', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2136, 174, '000002136', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2137, 174, '000002137', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2138, 174, '000002138', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2139, 174, '000002139', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2140, 174, '000002140', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2141, 174, '000002141', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2142, 174, '000002142', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2143, 174, '000002143', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2144, 174, '000002144', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2145, 174, '000002145', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2146, 174, '000002146', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2147, 174, '000002147', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2148, 174, '000002148', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2149, 174, '000002149', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2150, 174, '000002150', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2151, 174, '000002151', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2152, 174, '000002152', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2153, 174, '000002153', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2154, 174, '000002154', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL),
(2155, 174, '000002155', NULL, NULL, NULL, NULL, 1, '2023-12-30 22:08:44', '2023-12-30 22:08:44', NULL);

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
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `name`, `email`, `image`, `phone_number`, `address`, `address_1`, `address_2`, `website`, `github`, `gender`, `date_of_birth`, `twitter`, `instagram`, `facebook`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 4, 'Admin', 'admin@gmail.com', '/backend/files/Gj1CClu5li9lnBa8bqxx.jpg', '343434', 'Dhaka', NULL, NULL, 'http://localhost:3000/profile', 'http://localhost:3000/profile', NULL, NULL, 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 'admin', NULL, '$2a$12$KTM4o4shushdJtyHggJOEuoVzhTde88F2M2VZ1B89egoavVyQOycG', NULL, 1, '2023-06-22 03:20:43', '2023-07-14 04:47:21', 1),
(2, 2, NULL, 'Bijon', 'mdbijon@gmail.com', NULL, '01915728982', '', 'Mirpur-1', 'Dhaka, Bangladesh', '', '', 'null', '2023-12-11', '', '', '', 'mdbijon@gmail.com', NULL, '$2y$10$Rik3XEAlWoxLqm/3XlSVXOlUwavrHCkS1akzzq3HtPKed205hmeQ.', NULL, NULL, '2023-12-22 03:48:14', '2023-12-22 03:48:14', 1);

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
(7, 2, 162, '2023-12-24 08:31:41', '2023-12-24 08:31:41'),
(8, 2, 163, '2023-12-24 08:41:56', '2023-12-24 08:41:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_product`
--
ALTER TABLE `additional_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

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
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
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
-- Indexes for table `setting`
--
ALTER TABLE `setting`
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
-- Indexes for table `tickets_booking`
--
ALTER TABLE `tickets_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_history`
--
ALTER TABLE `ticket_history`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `tickets_booking`
--
ALTER TABLE `tickets_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_history`
--
ALTER TABLE `ticket_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2156;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
