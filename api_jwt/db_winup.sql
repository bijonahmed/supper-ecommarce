-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 02:13 AM
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
(1, 161, 167, 6, 500, 633.00, '2023-12-22 10:09:28', '2023-12-22 04:09:46'),
(2, 160, 167, 6, 500, 1550.00, '2023-12-22 16:24:11', '2023-12-22 16:24:11'),
(3, 159, 167, 1000, 500, 1550.00, '2023-12-26 00:40:53', '2023-12-26 00:40:53'),
(4, 158, 167, 4, 500, 1550.00, '2023-12-26 00:41:33', '2023-12-25 20:13:01'),
(5, 157, 166, 400, 750, 1800.00, '2023-12-26 00:42:12', '2023-12-26 00:42:12'),
(6, 156, 166, 400, 750, 1800.00, '2023-12-26 00:42:33', '2023-12-26 00:42:33');

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
(1, '210459-23', 2, '587888', 9399.00, 9399.00, '2', 1, '2023-12-25 01:44:40', '2023-12-25 07:44:40'),
(2, '233733-23', 2, '487878888', 3430.00, 3430.00, '2', 1, '2023-12-25 01:45:45', '2023-12-25 07:45:45'),
(3, '287015-23', 2, '8788888', 7333.00, 7333.00, '2', 1, '2023-12-25 01:47:31', '2023-12-25 07:47:31'),
(4, '248749-23', 2, '4878888', 19049.00, 19049.00, '2', 1, '2023-12-25 03:08:00', '2023-12-25 09:08:00'),
(5, '279964-23', 2, 'sddsfsdf', 1281.10, 1281.10, '2', 1, '2023-12-26 15:58:02', '2023-12-26 21:58:02'),
(6, '247160-23', 2, '698989', 9142.50, 9142.50, '3', 1, '2023-12-26 16:00:27', '2023-12-26 22:00:27'),
(7, '258874-23', 2, '5487888', 26156.75, 26156.75, '2', 1, '2023-12-26 16:04:39', '2023-12-26 22:04:39'),
(8, '254793-23', 2, '4578788', 29406.60, 29406.60, '2', 1, '2023-12-27 06:14:33', '2023-12-27 12:14:33'),
(9, '110701-23', 1, '589879788', 2587.50, 2587.50, '2', 12, '2023-12-28 04:21:15', '2023-12-28 21:32:07'),
(10, '275161-23', 2, '545454555', 26280.90, 26280.90, '2', 12, '2023-12-28 07:13:07', '2023-12-28 21:49:07'),
(11, '294227-23', 2, 'dgdfgfgfg', 402.50, 402.50, '2', 12, '2023-12-28 07:14:40', '2023-12-28 15:46:56'),
(12, '142700-23', 1, '54545555', 29281.35, 29281.35, '2', 12, '2023-12-28 07:23:47', '2023-12-28 15:37:09'),
(13, '278466-23', 2, '5454555', 1460.90, 1460.90, '2', 12, '2023-12-28 14:37:50', '2023-12-28 22:01:11');

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
(1, 1, 161, 3, 133, 399.00, '2023-12-25 07:44:40', '2023-12-25 01:44:40'),
(2, 1, 159, 3, 1050, 3549.00, '2023-12-25 07:44:40', '2023-12-25 01:44:40'),
(3, 1, 157, 3, 1050, 6699.00, '2023-12-25 07:44:40', '2023-12-25 01:44:40'),
(4, 1, 168, 1, 2700, 9399.00, '2023-12-25 07:44:40', '2023-12-25 01:44:40'),
(5, 2, 161, 10, 133, 1330.00, '2023-12-25 07:45:45', '2023-12-25 01:45:45'),
(6, 2, 158, 2, 1050, 3430.00, '2023-12-25 07:45:45', '2023-12-25 01:45:45'),
(7, 3, 161, 1, 133, 133.00, '2023-12-25 07:47:31', '2023-12-25 01:47:31'),
(8, 3, 168, 4, 1800, 7333.00, '2023-12-25 07:47:31', '2023-12-25 01:47:31'),
(9, 4, 161, 3, 133, 399.00, '2023-12-25 09:08:00', '2023-12-25 03:08:00'),
(10, 4, 160, 1, 1050, 1449.00, '2023-12-25 09:08:00', '2023-12-25 03:08:00'),
(11, 4, 168, 7, 1800, 14049.00, '2023-12-25 09:08:00', '2023-12-25 03:08:00'),
(12, 4, 164, 10, 500, 19049.00, '2023-12-25 09:08:00', '2023-12-25 03:08:00'),
(13, 5, 161, 8, 133, 1064.00, '2023-12-26 21:58:02', '2023-12-26 15:58:02'),
(14, 6, 160, 1, 1050, 1050.00, '2023-12-26 22:00:27', '2023-12-26 16:00:27'),
(15, 6, 158, 1, 1050, 2100.00, '2023-12-26 22:00:27', '2023-12-26 16:00:27'),
(16, 6, 167, 1, 500, 2600.00, '2023-12-26 22:00:27', '2023-12-26 16:00:27'),
(17, 7, 161, 3, 133, 399.00, '2023-12-26 22:04:39', '2023-12-26 16:04:39'),
(18, 7, 160, 3, 1050, 3549.00, '2023-12-26 22:04:39', '2023-12-26 16:04:39'),
(19, 7, 168, 1, 450, 3999.00, '2023-12-26 22:04:39', '2023-12-26 16:04:39'),
(20, 7, 168, 1, 450, 4449.00, '2023-12-26 22:04:39', '2023-12-26 16:04:39'),
(21, 7, 167, 1, 500, 4949.00, '2023-12-26 22:04:39', '2023-12-26 16:04:39'),
(22, 8, 161, 8, 133, 1064.00, '2023-12-27 12:14:33', '2023-12-27 06:14:33'),
(23, 8, 160, 1, 1050, 2114.00, '2023-12-27 12:14:33', '2023-12-27 06:14:33'),
(24, 8, 158, 1, 1050, 3164.00, '2023-12-27 12:14:33', '2023-12-27 06:14:33'),
(25, 8, 168, 1, 450, 3614.00, '2023-12-27 12:14:33', '2023-12-27 06:14:33'),
(26, 8, 168, 1, 450, 4064.00, '2023-12-27 12:14:33', '2023-12-27 06:14:33'),
(27, 8, 167, 1, 500, 4564.00, '2023-12-27 12:14:33', '2023-12-27 06:14:33'),
(28, 9, 162, 3, 750, 2250.00, '2023-12-28 10:21:15', '2023-12-28 04:21:15'),
(29, 10, 161, 1, 133, 133.00, '2023-12-28 13:13:07', '2023-12-28 07:13:07'),
(30, 10, 172, 5, 2250, 11383.00, '2023-12-28 13:13:07', '2023-12-28 07:13:07'),
(31, 11, 171, 1, 350, 350.00, '2023-12-28 13:14:40', '2023-12-28 07:14:40'),
(32, 12, 161, 1, 133, 133.00, '2023-12-28 13:23:47', '2023-12-28 07:23:47'),
(33, 12, 160, 1, 1050, 1183.00, '2023-12-28 13:23:47', '2023-12-28 07:23:47'),
(34, 12, 172, 4, 1800, 8383.00, '2023-12-28 13:23:47', '2023-12-28 07:23:47'),
(35, 13, 161, 1, 133, 133.00, '2023-12-28 20:37:50', '2023-12-28 14:37:50'),
(36, 13, 172, 1, 450, 583.00, '2023-12-28 20:37:50', '2023-12-28 14:37:50');

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
(12, 'Approved', 'Approved', '2023-12-04 11:15:23', '2023-12-04 05:59:17');

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
(156, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Black', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-black', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-BLACK', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/a6dN7pEBYwrU2bbcKYDe.png', 1, 1, NULL, '2023-12-19 08:40:58', '2023-12-25 18:42:33'),
(157, 'Women\'s Heritage Blend short sleeve Raglan t-shirt Dark Royal', 'women-s-heritage-blend-short-sleeve-raglan-t-shirt-dark-royal', '', '', '', '', '', 0, 'SS.R.T.SHIRT-W-D.ROYAL', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/qQYOxhwiAf31mqlANVgs.png', 1, 1, NULL, '2023-12-19 08:42:20', '2023-12-25 18:42:12'),
(158, 'Women\'s Long Weekend Crewneck Sweatshirt', 'women-s-long-weekend-crewneck-sweatshirt', '<p>Women\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck SweatshirtWomen\'s Long Weekend Crewneck Sweatshirt</p>', '', '', '', '', 0, 'CS-W-BLUE', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/QLlK7bBSH7oovc0PMFZc.png', 1, 1, NULL, '2023-12-19 08:48:25', '2023-12-25 20:13:01'),
(159, 'Women\'s Long Weekend Crewneck Sweatshirt Gray', 'women-s-long-weekend-crewneck-sweatshirt-gray', '', '', '', '', '', 0, 'CS-W-GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/IkhSQd569n5IOCB8RzkR.png', 1, 1, NULL, '2023-12-19 08:50:09', '2023-12-25 18:40:53'),
(160, 'Women\'s Long Weekend Crewneck Sweatshirt Dark Gray', 'women-s-long-weekend-crewneck-sweatshirt-dark-gray', '', '', '', '', '', 0, 'CS-W-D.GRAY', '', NULL, NULL, 2, 1050.00, '', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/jBkOtfxvw7ah0DEW2kGE.png', 1, 1, NULL, '2023-12-19 08:52:01', '2023-12-22 10:24:11'),
(161, 'Exclusive HD Moviesss', 'exclusive-hd-moviesss', '', '', '', '', '', 0, '2323', '', NULL, NULL, 2, 133.00, '22', 1, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9vuyeVnSnNoEDTQySUNx.png', 1, 1, NULL, '2023-12-22 01:19:37', '2023-12-22 04:09:46'),
(162, 'WIN 1500000 BDT', 'win-1500000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 35, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/HSb6xQBW1GUsBpqfLCYn.jpg', 1, 1, NULL, '2023-12-22 09:57:16', '2023-12-27 19:45:08'),
(163, 'WIN 1400000 BDT', 'win-1400000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 40, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/Pr44qga266LlbXVWGtkr.jpg', 1, 1, NULL, '2023-12-22 09:57:51', '2023-12-27 19:44:13'),
(164, 'WIN 1300000 BDT', 'win-1300000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 250.00, '', 50, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/c5iZiG82JVsyekaQr75p.jpg', 1, 1, NULL, '2023-12-22 09:58:47', '2023-12-27 19:38:09'),
(165, 'WIN 1200000 BDT', 'win-1200000-bdt', '<p style=\"margin-left:0px;\">As of my last knowledge update in January 2022, there is no widely recognized or popular e-commerce platform known as \"winup360.com.\" It\'s possible that this is a platform that emerged after my last update, or it might be a lesser-known platform.</p><p style=\"margin-left:0px;\">If \"winup360.com\" is a platform you are interested in, I recommend checking the latest reviews, user testimonials, and any available documentation to assess its features, security, scalability, and overall suitability for your specific e-commerce needs. Look for information on ease of use, payment options, customization capabilities, and customer support.</p>', '', '', '', '', 0, '', '', NULL, NULL, 2, 500.00, '', 30, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/JxuTEVixUK8yR0f8SDBv.jpg', 1, 1, NULL, '2023-12-22 10:00:05', '2023-12-27 19:37:45'),
(166, 'WIN 1100000 BDT', 'win-1100000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 750.00, '', 50, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/9e5bCxW4iw9JMeFnP9xi.jpg', 1, 1, NULL, '2023-12-22 10:01:15', '2023-12-27 19:36:39'),
(167, 'WIN 1000000 BDT', 'win-1000000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 500.00, '', 50, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/pCoi2qkLuSNl6XpSpVZv.jpg', 1, 1, NULL, '2023-12-22 10:01:56', '2023-12-27 19:35:53'),
(168, 'WIN 900000 BDT', 'win-900000-bdt', '', '', '', '', '', 0, '', '', NULL, NULL, 2, 450.00, '', 600, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/oOKHv7UCkFVmmNi6efpJ.jpg', 1, 1, NULL, '2023-12-22 10:02:46', '2023-12-27 19:35:08'),
(171, 'WIN 10000111 BDT', 'win-10000111-bdt-171', '', 'WIN 10000111 BDT', 'WIN 10000111 BDT', 'WIN 10000111 BDT', '', 0, '', '', NULL, NULL, 2, 350.00, '', 700, 1, 1, 0, '', NULL, 0.00, 1, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/CWrOwg8hxUD748RAIykf.png', 1, 1, NULL, '2023-12-28 01:01:45', '2023-12-28 01:01:45'),
(172, 'WIN 10000112 BDT', 'win-10000112-bdt', '', 'WIN 10000112 BDT', 'WIN 10000112 BDT', 'WIN 10000112 BDT', '', 0, '', '', NULL, NULL, 2, 450.00, '', 500, 1, 1, 0, '', '', 0.00, 0, 1, 0, 0, 0.00000, '0', 1, '0', 1, '/backend/files/a0DZ2hRGQbQ3fbdPQ5eT.png', 1, 1, NULL, '2023-12-28 01:03:25', '2023-12-27 19:28:41');

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
(488, 172, 27, '27');

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
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_history`
--

INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 171, '000001', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-28 15:45:56'),
(2, 171, '000002', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(3, 171, '000003', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(4, 171, '000004', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(5, 171, '000005', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(6, 171, '000006', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(7, 171, '000007', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(8, 171, '000008', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(9, 171, '000009', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(10, 171, '000010', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(11, 171, '000011', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(12, 171, '000012', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(13, 171, '000013', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(14, 171, '000014', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(15, 171, '000015', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(16, 171, '000016', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(17, 171, '000017', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(18, 171, '000018', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(19, 171, '000019', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(20, 171, '000020', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(21, 171, '000021', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(22, 171, '000022', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(23, 171, '000023', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(24, 171, '000024', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(25, 171, '000025', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(26, 171, '000026', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(27, 171, '000027', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(28, 171, '000028', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(29, 171, '000029', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(30, 171, '000030', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(31, 171, '000031', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(32, 171, '000032', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(33, 171, '000033', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(34, 171, '000034', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(35, 171, '000035', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(36, 171, '000036', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(37, 171, '000037', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(38, 171, '000038', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(39, 171, '000039', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(40, 171, '000040', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(41, 171, '000041', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(42, 171, '000042', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(43, 171, '000043', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(44, 171, '000044', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(45, 171, '000045', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(46, 171, '000046', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(47, 171, '000047', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(48, 171, '000048', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(49, 171, '000049', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(50, 171, '000050', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(51, 171, '000051', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(52, 171, '000052', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(53, 171, '000053', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(54, 171, '000054', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(55, 171, '000055', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(56, 171, '000056', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(57, 171, '000057', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(58, 171, '000058', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(59, 171, '000059', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(60, 171, '000060', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(61, 171, '000061', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(62, 171, '000062', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(63, 171, '000063', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(64, 171, '000064', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(65, 171, '000065', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(66, 171, '000066', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(67, 171, '000067', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(68, 171, '000068', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(69, 171, '000069', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(70, 171, '000070', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(71, 171, '000071', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(72, 171, '000072', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(73, 171, '000073', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(74, 171, '000074', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(75, 171, '000075', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(76, 171, '000076', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(77, 171, '000077', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(78, 171, '000078', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(79, 171, '000079', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(80, 171, '000080', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(81, 171, '000081', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(82, 171, '000082', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(83, 171, '000083', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(84, 171, '000084', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(85, 171, '000085', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(86, 171, '000086', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(87, 171, '000087', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(88, 171, '000088', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(89, 171, '000089', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(90, 171, '000090', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(91, 171, '000091', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(92, 171, '000092', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(93, 171, '000093', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(94, 171, '000094', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(95, 171, '000095', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(96, 171, '000096', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(97, 171, '000097', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(98, 171, '000098', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(99, 171, '000099', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(100, 171, '000100', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(101, 171, '000101', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(102, 171, '000102', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(103, 171, '000103', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(104, 171, '000104', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(105, 171, '000105', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(106, 171, '000106', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(107, 171, '000107', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(108, 171, '000108', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(109, 171, '000109', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(110, 171, '000110', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(111, 171, '000111', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(112, 171, '000112', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(113, 171, '000113', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(114, 171, '000114', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(115, 171, '000115', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(116, 171, '000116', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(117, 171, '000117', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(118, 171, '000118', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(119, 171, '000119', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(120, 171, '000120', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(121, 171, '000121', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(122, 171, '000122', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(123, 171, '000123', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(124, 171, '000124', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(125, 171, '000125', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(126, 171, '000126', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(127, 171, '000127', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(128, 171, '000128', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(129, 171, '000129', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(130, 171, '000130', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(131, 171, '000131', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(132, 171, '000132', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(133, 171, '000133', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(134, 171, '000134', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(135, 171, '000135', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(136, 171, '000136', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(137, 171, '000137', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(138, 171, '000138', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(139, 171, '000139', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(140, 171, '000140', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(141, 171, '000141', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(142, 171, '000142', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(143, 171, '000143', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(144, 171, '000144', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(145, 171, '000145', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(146, 171, '000146', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(147, 171, '000147', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(148, 171, '000148', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(149, 171, '000149', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(150, 171, '000150', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(151, 171, '000151', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(152, 171, '000152', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(153, 171, '000153', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(154, 171, '000154', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(155, 171, '000155', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(156, 171, '000156', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(157, 171, '000157', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(158, 171, '000158', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(159, 171, '000159', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(160, 171, '000160', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(161, 171, '000161', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(162, 171, '000162', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(163, 171, '000163', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(164, 171, '000164', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(165, 171, '000165', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(166, 171, '000166', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(167, 171, '000167', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:45', '2023-12-27 19:01:45'),
(168, 171, '000168', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(169, 171, '000169', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(170, 171, '000170', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(171, 171, '000171', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(172, 171, '000172', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(173, 171, '000173', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(174, 171, '000174', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(175, 171, '000175', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(176, 171, '000176', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(177, 171, '000177', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(178, 171, '000178', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(179, 171, '000179', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(180, 171, '000180', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(181, 171, '000181', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(182, 171, '000182', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(183, 171, '000183', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(184, 171, '000184', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(185, 171, '000185', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(186, 171, '000186', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(187, 171, '000187', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(188, 171, '000188', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(189, 171, '000189', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(190, 171, '000190', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(191, 171, '000191', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(192, 171, '000192', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(193, 171, '000193', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(194, 171, '000194', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(195, 171, '000195', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(196, 171, '000196', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(197, 171, '000197', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(198, 171, '000198', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(199, 171, '000199', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(200, 171, '000200', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(201, 171, '000201', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(202, 171, '000202', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(203, 171, '000203', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(204, 171, '000204', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(205, 171, '000205', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(206, 171, '000206', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(207, 171, '000207', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(208, 171, '000208', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(209, 171, '000209', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(210, 171, '000210', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(211, 171, '000211', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(212, 171, '000212', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(213, 171, '000213', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(214, 171, '000214', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(215, 171, '000215', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(216, 171, '000216', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(217, 171, '000217', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(218, 171, '000218', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(219, 171, '000219', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(220, 171, '000220', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(221, 171, '000221', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(222, 171, '000222', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(223, 171, '000223', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(224, 171, '000224', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(225, 171, '000225', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(226, 171, '000226', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(227, 171, '000227', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(228, 171, '000228', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(229, 171, '000229', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(230, 171, '000230', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(231, 171, '000231', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(232, 171, '000232', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(233, 171, '000233', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(234, 171, '000234', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(235, 171, '000235', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(236, 171, '000236', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(237, 171, '000237', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(238, 171, '000238', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(239, 171, '000239', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(240, 171, '000240', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(241, 171, '000241', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(242, 171, '000242', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(243, 171, '000243', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(244, 171, '000244', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(245, 171, '000245', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(246, 171, '000246', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(247, 171, '000247', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(248, 171, '000248', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(249, 171, '000249', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(250, 171, '000250', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(251, 171, '000251', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(252, 171, '000252', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(253, 171, '000253', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(254, 171, '000254', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(255, 171, '000255', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(256, 171, '000256', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(257, 171, '000257', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(258, 171, '000258', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(259, 171, '000259', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(260, 171, '000260', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(261, 171, '000261', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(262, 171, '000262', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(263, 171, '000263', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(264, 171, '000264', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(265, 171, '000265', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(266, 171, '000266', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(267, 171, '000267', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(268, 171, '000268', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(269, 171, '000269', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(270, 171, '000270', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(271, 171, '000271', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(272, 171, '000272', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(273, 171, '000273', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(274, 171, '000274', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(275, 171, '000275', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(276, 171, '000276', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(277, 171, '000277', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(278, 171, '000278', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(279, 171, '000279', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(280, 171, '000280', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(281, 171, '000281', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(282, 171, '000282', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(283, 171, '000283', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(284, 171, '000284', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(285, 171, '000285', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(286, 171, '000286', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(287, 171, '000287', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(288, 171, '000288', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(289, 171, '000289', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(290, 171, '000290', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(291, 171, '000291', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(292, 171, '000292', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(293, 171, '000293', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(294, 171, '000294', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(295, 171, '000295', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(296, 171, '000296', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(297, 171, '000297', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(298, 171, '000298', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(299, 171, '000299', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(300, 171, '000300', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(301, 171, '000301', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(302, 171, '000302', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(303, 171, '000303', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(304, 171, '000304', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(305, 171, '000305', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(306, 171, '000306', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(307, 171, '000307', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(308, 171, '000308', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(309, 171, '000309', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(310, 171, '000310', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(311, 171, '000311', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(312, 171, '000312', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(313, 171, '000313', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(314, 171, '000314', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(315, 171, '000315', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(316, 171, '000316', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(317, 171, '000317', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(318, 171, '000318', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(319, 171, '000319', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(320, 171, '000320', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(321, 171, '000321', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(322, 171, '000322', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(323, 171, '000323', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(324, 171, '000324', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(325, 171, '000325', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(326, 171, '000326', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(327, 171, '000327', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(328, 171, '000328', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(329, 171, '000329', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(330, 171, '000330', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(331, 171, '000331', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(332, 171, '000332', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(333, 171, '000333', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(334, 171, '000334', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(335, 171, '000335', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(336, 171, '000336', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(337, 171, '000337', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(338, 171, '000338', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(339, 171, '000339', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(340, 171, '000340', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(341, 171, '000341', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(342, 171, '000342', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(343, 171, '000343', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(344, 171, '000344', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(345, 171, '000345', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(346, 171, '000346', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(347, 171, '000347', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(348, 171, '000348', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(349, 171, '000349', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(350, 171, '000350', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(351, 171, '000351', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(352, 171, '000352', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(353, 171, '000353', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(354, 171, '000354', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(355, 171, '000355', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(356, 171, '000356', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(357, 171, '000357', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(358, 171, '000358', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(359, 171, '000359', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(360, 171, '000360', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(361, 171, '000361', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(362, 171, '000362', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(363, 171, '000363', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(364, 171, '000364', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(365, 171, '000365', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(366, 171, '000366', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(367, 171, '000367', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(368, 171, '000368', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(369, 171, '000369', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(370, 171, '000370', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(371, 171, '000371', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(372, 171, '000372', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(373, 171, '000373', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(374, 171, '000374', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(375, 171, '000375', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(376, 171, '000376', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(377, 171, '000377', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(378, 171, '000378', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(379, 171, '000379', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(380, 171, '000380', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(381, 171, '000381', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(382, 171, '000382', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(383, 171, '000383', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(384, 171, '000384', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(385, 171, '000385', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(386, 171, '000386', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(387, 171, '000387', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(388, 171, '000388', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(389, 171, '000389', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(390, 171, '000390', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(391, 171, '000391', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(392, 171, '000392', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(393, 171, '000393', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(394, 171, '000394', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(395, 171, '000395', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(396, 171, '000396', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(397, 171, '000397', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(398, 171, '000398', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(399, 171, '000399', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(400, 171, '000400', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(401, 171, '000401', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(402, 171, '000402', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(403, 171, '000403', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(404, 171, '000404', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(405, 171, '000405', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(406, 171, '000406', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(407, 171, '000407', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(408, 171, '000408', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(409, 171, '000409', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(410, 171, '000410', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(411, 171, '000411', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(412, 171, '000412', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(413, 171, '000413', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(414, 171, '000414', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(415, 171, '000415', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(416, 171, '000416', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(417, 171, '000417', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(418, 171, '000418', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(419, 171, '000419', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(420, 171, '000420', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(421, 171, '000421', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(422, 171, '000422', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(423, 171, '000423', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(424, 171, '000424', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(425, 171, '000425', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(426, 171, '000426', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(427, 171, '000427', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(428, 171, '000428', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(429, 171, '000429', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(430, 171, '000430', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(431, 171, '000431', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(432, 171, '000432', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(433, 171, '000433', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(434, 171, '000434', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(435, 171, '000435', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(436, 171, '000436', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(437, 171, '000437', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(438, 171, '000438', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(439, 171, '000439', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(440, 171, '000440', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(441, 171, '000441', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(442, 171, '000442', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(443, 171, '000443', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(444, 171, '000444', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(445, 171, '000445', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(446, 171, '000446', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(447, 171, '000447', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(448, 171, '000448', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(449, 171, '000449', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(450, 171, '000450', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(451, 171, '000451', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(452, 171, '000452', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(453, 171, '000453', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(454, 171, '000454', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(455, 171, '000455', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(456, 171, '000456', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(457, 171, '000457', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(458, 171, '000458', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(459, 171, '000459', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(460, 171, '000460', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(461, 171, '000461', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(462, 171, '000462', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(463, 171, '000463', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(464, 171, '000464', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(465, 171, '000465', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(466, 171, '000466', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(467, 171, '000467', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(468, 171, '000468', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(469, 171, '000469', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(470, 171, '000470', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(471, 171, '000471', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(472, 171, '000472', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(473, 171, '000473', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(474, 171, '000474', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(475, 171, '000475', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(476, 171, '000476', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(477, 171, '000477', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(478, 171, '000478', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(479, 171, '000479', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(480, 171, '000480', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(481, 171, '000481', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(482, 171, '000482', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(483, 171, '000483', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-28 20:32:16'),
(484, 171, '000484', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(485, 171, '000485', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(486, 171, '000486', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(487, 171, '000487', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(488, 171, '000488', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-28 20:29:30'),
(489, 171, '000489', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(490, 171, '000490', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(491, 171, '000491', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(492, 171, '000492', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(493, 171, '000493', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(494, 171, '000494', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(495, 171, '000495', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(496, 171, '000496', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(497, 171, '000497', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(498, 171, '000498', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(499, 171, '000499', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(500, 171, '000500', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(501, 171, '000501', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(502, 171, '000502', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(503, 171, '000503', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(504, 171, '000504', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(505, 171, '000505', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(506, 171, '000506', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(507, 171, '000507', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(508, 171, '000508', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(509, 171, '000509', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(510, 171, '000510', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(511, 171, '000511', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(512, 171, '000512', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(513, 171, '000513', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(514, 171, '000514', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(515, 171, '000515', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(516, 171, '000516', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(517, 171, '000517', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(518, 171, '000518', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(519, 171, '000519', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(520, 171, '000520', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(521, 171, '000521', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(522, 171, '000522', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(523, 171, '000523', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(524, 171, '000524', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(525, 171, '000525', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(526, 171, '000526', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(527, 171, '000527', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(528, 171, '000528', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(529, 171, '000529', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(530, 171, '000530', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(531, 171, '000531', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(532, 171, '000532', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(533, 171, '000533', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(534, 171, '000534', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(535, 171, '000535', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(536, 171, '000536', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(537, 171, '000537', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46');
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(538, 171, '000538', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(539, 171, '000539', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(540, 171, '000540', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(541, 171, '000541', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(542, 171, '000542', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(543, 171, '000543', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(544, 171, '000544', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(545, 171, '000545', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(546, 171, '000546', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(547, 171, '000547', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(548, 171, '000548', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(549, 171, '000549', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(550, 171, '000550', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(551, 171, '000551', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(552, 171, '000552', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(553, 171, '000553', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(554, 171, '000554', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(555, 171, '000555', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(556, 171, '000556', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(557, 171, '000557', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(558, 171, '000558', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(559, 171, '000559', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(560, 171, '000560', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(561, 171, '000561', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(562, 171, '000562', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(563, 171, '000563', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(564, 171, '000564', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(565, 171, '000565', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(566, 171, '000566', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(567, 171, '000567', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(568, 171, '000568', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(569, 171, '000569', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(570, 171, '000570', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(571, 171, '000571', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(572, 171, '000572', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(573, 171, '000573', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(574, 171, '000574', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(575, 171, '000575', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(576, 171, '000576', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(577, 171, '000577', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(578, 171, '000578', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(579, 171, '000579', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(580, 171, '000580', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(581, 171, '000581', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(582, 171, '000582', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(583, 171, '000583', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(584, 171, '000584', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(585, 171, '000585', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(586, 171, '000586', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(587, 171, '000587', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(588, 171, '000588', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(589, 171, '000589', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(590, 171, '000590', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(591, 171, '000591', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(592, 171, '000592', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(593, 171, '000593', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(594, 171, '000594', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(595, 171, '000595', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(596, 171, '000596', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(597, 171, '000597', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(598, 171, '000598', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(599, 171, '000599', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(600, 171, '000600', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(601, 171, '000601', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(602, 171, '000602', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(603, 171, '000603', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(604, 171, '000604', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(605, 171, '000605', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(606, 171, '000606', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(607, 171, '000607', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(608, 171, '000608', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(609, 171, '000609', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(610, 171, '000610', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(611, 171, '000611', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(612, 171, '000612', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(613, 171, '000613', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(614, 171, '000614', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(615, 171, '000615', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(616, 171, '000616', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(617, 171, '000617', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(618, 171, '000618', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(619, 171, '000619', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(620, 171, '000620', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(621, 171, '000621', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(622, 171, '000622', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(623, 171, '000623', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(624, 171, '000624', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(625, 171, '000625', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(626, 171, '000626', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(627, 171, '000627', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(628, 171, '000628', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(629, 171, '000629', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(630, 171, '000630', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(631, 171, '000631', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(632, 171, '000632', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(633, 171, '000633', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(634, 171, '000634', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(635, 171, '000635', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(636, 171, '000636', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(637, 171, '000637', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(638, 171, '000638', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(639, 171, '000639', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(640, 171, '000640', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(641, 171, '000641', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(642, 171, '000642', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(643, 171, '000643', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(644, 171, '000644', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(645, 171, '000645', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(646, 171, '000646', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(647, 171, '000647', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(648, 171, '000648', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(649, 171, '000649', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(650, 171, '000650', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(651, 171, '000651', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(652, 171, '000652', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(653, 171, '000653', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(654, 171, '000654', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(655, 171, '000655', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(656, 171, '000656', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(657, 171, '000657', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(658, 171, '000658', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(659, 171, '000659', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(660, 171, '000660', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(661, 171, '000661', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(662, 171, '000662', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(663, 171, '000663', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(664, 171, '000664', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(665, 171, '000665', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(666, 171, '000666', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(667, 171, '000667', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(668, 171, '000668', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(669, 171, '000669', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(670, 171, '000670', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(671, 171, '000671', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(672, 171, '000672', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(673, 171, '000673', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(674, 171, '000674', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(675, 171, '000675', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(676, 171, '000676', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(677, 171, '000677', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(678, 171, '000678', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(679, 171, '000679', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(680, 171, '000680', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(681, 171, '000681', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(682, 171, '000682', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(683, 171, '000683', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(684, 171, '000684', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(685, 171, '000685', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(686, 171, '000686', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(687, 171, '000687', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(688, 171, '000688', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(689, 171, '000689', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(690, 171, '000690', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(691, 171, '000691', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(692, 171, '000692', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(693, 171, '000693', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(694, 171, '000694', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(695, 171, '000695', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(696, 171, '000696', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(697, 171, '000697', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(698, 171, '000698', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(699, 171, '000699', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(700, 171, '000700', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:01:46', '2023-12-27 19:01:46'),
(701, 172, '000701', 27, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:03:25', '2023-12-29 01:12:36'),
(702, 172, '000702', 27, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:03:25', '2023-12-29 01:12:36'),
(703, 172, '000703', 27, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:03:25', '2023-12-29 01:12:36'),
(704, 172, '000704', 27, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:03:25', '2023-12-29 01:12:36'),
(705, 172, '000705', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-29 01:07:20'),
(706, 172, '000706', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-29 01:07:20'),
(707, 172, '000707', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-29 01:07:20'),
(708, 172, '000708', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-29 01:07:20'),
(709, 172, '000709', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:04:25'),
(710, 172, '000710', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:04:25'),
(711, 172, '000711', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:05:27'),
(712, 172, '000712', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:05:27'),
(713, 172, '000713', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:05:27'),
(714, 172, '000714', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:05:27'),
(715, 172, '000715', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:05:27'),
(716, 172, '000716', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:14'),
(717, 172, '000717', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:14'),
(718, 172, '000718', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:14'),
(719, 172, '000719', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:14'),
(720, 172, '000720', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:14'),
(721, 172, '000721', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:59'),
(722, 172, '000722', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:59'),
(723, 172, '000723', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:59'),
(724, 172, '000724', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:59'),
(725, 172, '000725', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-28 21:06:59'),
(726, 172, '000726', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(727, 172, '000727', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(728, 172, '000728', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(729, 172, '000729', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(730, 172, '000730', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(731, 172, '000731', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(732, 172, '000732', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(733, 172, '000733', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(734, 172, '000734', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(735, 172, '000735', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(736, 172, '000736', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(737, 172, '000737', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(738, 172, '000738', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(739, 172, '000739', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(740, 172, '000740', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(741, 172, '000741', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(742, 172, '000742', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(743, 172, '000743', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(744, 172, '000744', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(745, 172, '000745', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(746, 172, '000746', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(747, 172, '000747', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(748, 172, '000748', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(749, 172, '000749', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(750, 172, '000750', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(751, 172, '000751', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(752, 172, '000752', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(753, 172, '000753', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(754, 172, '000754', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(755, 172, '000755', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(756, 172, '000756', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(757, 172, '000757', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(758, 172, '000758', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(759, 172, '000759', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(760, 172, '000760', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(761, 172, '000761', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(762, 172, '000762', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(763, 172, '000763', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(764, 172, '000764', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(765, 172, '000765', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(766, 172, '000766', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(767, 172, '000767', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(768, 172, '000768', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(769, 172, '000769', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(770, 172, '000770', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(771, 172, '000771', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(772, 172, '000772', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(773, 172, '000773', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(774, 172, '000774', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(775, 172, '000775', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(776, 172, '000776', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(777, 172, '000777', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(778, 172, '000778', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(779, 172, '000779', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(780, 172, '000780', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(781, 172, '000781', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(782, 172, '000782', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(783, 172, '000783', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(784, 172, '000784', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(785, 172, '000785', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(786, 172, '000786', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(787, 172, '000787', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(788, 172, '000788', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(789, 172, '000789', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(790, 172, '000790', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(791, 172, '000791', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(792, 172, '000792', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(793, 172, '000793', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(794, 172, '000794', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(795, 172, '000795', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(796, 172, '000796', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(797, 172, '000797', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(798, 172, '000798', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(799, 172, '000799', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(800, 172, '000800', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(801, 172, '000801', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(802, 172, '000802', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(803, 172, '000803', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(804, 172, '000804', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(805, 172, '000805', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(806, 172, '000806', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(807, 172, '000807', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(808, 172, '000808', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(809, 172, '000809', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(810, 172, '000810', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(811, 172, '000811', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(812, 172, '000812', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(813, 172, '000813', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(814, 172, '000814', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(815, 172, '000815', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(816, 172, '000816', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(817, 172, '000817', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(818, 172, '000818', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(819, 172, '000819', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(820, 172, '000820', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(821, 172, '000821', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(822, 172, '000822', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(823, 172, '000823', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(824, 172, '000824', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(825, 172, '000825', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(826, 172, '000826', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(827, 172, '000827', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(828, 172, '000828', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(829, 172, '000829', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(830, 172, '000830', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(831, 172, '000831', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(832, 172, '000832', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(833, 172, '000833', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(834, 172, '000834', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(835, 172, '000835', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(836, 172, '000836', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(837, 172, '000837', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(838, 172, '000838', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(839, 172, '000839', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(840, 172, '000840', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(841, 172, '000841', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(842, 172, '000842', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(843, 172, '000843', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(844, 172, '000844', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(845, 172, '000845', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(846, 172, '000846', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(847, 172, '000847', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(848, 172, '000848', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(849, 172, '000849', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(850, 172, '000850', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(851, 172, '000851', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(852, 172, '000852', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(853, 172, '000853', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(854, 172, '000854', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(855, 172, '000855', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(856, 172, '000856', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(857, 172, '000857', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(858, 172, '000858', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(859, 172, '000859', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(860, 172, '000860', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(861, 172, '000861', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(862, 172, '000862', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(863, 172, '000863', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(864, 172, '000864', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(865, 172, '000865', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(866, 172, '000866', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(867, 172, '000867', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(868, 172, '000868', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(869, 172, '000869', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(870, 172, '000870', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(871, 172, '000871', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(872, 172, '000872', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(873, 172, '000873', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(874, 172, '000874', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(875, 172, '000875', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(876, 172, '000876', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(877, 172, '000877', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(878, 172, '000878', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(879, 172, '000879', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(880, 172, '000880', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(881, 172, '000881', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(882, 172, '000882', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(883, 172, '000883', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(884, 172, '000884', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(885, 172, '000885', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(886, 172, '000886', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(887, 172, '000887', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(888, 172, '000888', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(889, 172, '000889', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(890, 172, '000890', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(891, 172, '000891', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(892, 172, '000892', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(893, 172, '000893', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(894, 172, '000894', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(895, 172, '000895', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(896, 172, '000896', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(897, 172, '000897', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(898, 172, '000898', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(899, 172, '000899', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(900, 172, '000900', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(901, 172, '000901', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(902, 172, '000902', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(903, 172, '000903', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(904, 172, '000904', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(905, 172, '000905', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(906, 172, '000906', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(907, 172, '000907', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(908, 172, '000908', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(909, 172, '000909', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(910, 172, '000910', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(911, 172, '000911', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(912, 172, '000912', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(913, 172, '000913', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(914, 172, '000914', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(915, 172, '000915', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(916, 172, '000916', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(917, 172, '000917', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(918, 172, '000918', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(919, 172, '000919', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(920, 172, '000920', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(921, 172, '000921', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(922, 172, '000922', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(923, 172, '000923', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(924, 172, '000924', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(925, 172, '000925', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(926, 172, '000926', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(927, 172, '000927', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(928, 172, '000928', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(929, 172, '000929', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(930, 172, '000930', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(931, 172, '000931', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(932, 172, '000932', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(933, 172, '000933', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(934, 172, '000934', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(935, 172, '000935', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(936, 172, '000936', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(937, 172, '000937', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(938, 172, '000938', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(939, 172, '000939', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(940, 172, '000940', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(941, 172, '000941', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(942, 172, '000942', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(943, 172, '000943', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(944, 172, '000944', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(945, 172, '000945', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(946, 172, '000946', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(947, 172, '000947', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(948, 172, '000948', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(949, 172, '000949', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(950, 172, '000950', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(951, 172, '000951', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(952, 172, '000952', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(953, 172, '000953', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(954, 172, '000954', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(955, 172, '000955', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(956, 172, '000956', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(957, 172, '000957', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(958, 172, '000958', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(959, 172, '000959', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(960, 172, '000960', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(961, 172, '000961', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(962, 172, '000962', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(963, 172, '000963', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(964, 172, '000964', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(965, 172, '000965', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(966, 172, '000966', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(967, 172, '000967', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(968, 172, '000968', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(969, 172, '000969', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(970, 172, '000970', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(971, 172, '000971', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(972, 172, '000972', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(973, 172, '000973', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(974, 172, '000974', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(975, 172, '000975', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(976, 172, '000976', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(977, 172, '000977', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(978, 172, '000978', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(979, 172, '000979', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(980, 172, '000980', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(981, 172, '000981', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(982, 172, '000982', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(983, 172, '000983', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(984, 172, '000984', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(985, 172, '000985', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(986, 172, '000986', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(987, 172, '000987', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(988, 172, '000988', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(989, 172, '000989', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(990, 172, '000990', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(991, 172, '000991', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(992, 172, '000992', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(993, 172, '000993', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(994, 172, '000994', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(995, 172, '000995', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(996, 172, '000996', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(997, 172, '000997', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(998, 172, '000998', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(999, 172, '000999', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1000, 172, '001000', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1001, 172, '001001', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1002, 172, '001002', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1003, 172, '001003', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1004, 172, '001004', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1005, 172, '001005', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1006, 172, '001006', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1007, 172, '001007', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1008, 172, '001008', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1009, 172, '001009', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1010, 172, '001010', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1011, 172, '001011', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1012, 172, '001012', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1013, 172, '001013', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1014, 172, '001014', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1015, 172, '001015', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1016, 172, '001016', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1017, 172, '001017', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1018, 172, '001018', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1019, 172, '001019', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1020, 172, '001020', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1021, 172, '001021', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1022, 172, '001022', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1023, 172, '001023', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1024, 172, '001024', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1025, 172, '001025', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1026, 172, '001026', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1027, 172, '001027', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1028, 172, '001028', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1029, 172, '001029', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1030, 172, '001030', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1031, 172, '001031', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1032, 172, '001032', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1033, 172, '001033', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1034, 172, '001034', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1035, 172, '001035', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1036, 172, '001036', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1037, 172, '001037', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1038, 172, '001038', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1039, 172, '001039', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1040, 172, '001040', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1041, 172, '001041', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1042, 172, '001042', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1043, 172, '001043', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1044, 172, '001044', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1045, 172, '001045', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1046, 172, '001046', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1047, 172, '001047', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1048, 172, '001048', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1049, 172, '001049', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1050, 172, '001050', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1051, 172, '001051', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1052, 172, '001052', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1053, 172, '001053', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1054, 172, '001054', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1055, 172, '001055', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1056, 172, '001056', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1057, 172, '001057', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1058, 172, '001058', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1059, 172, '001059', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1060, 172, '001060', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1061, 172, '001061', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1062, 172, '001062', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1063, 172, '001063', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1064, 172, '001064', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1065, 172, '001065', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1066, 172, '001066', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1067, 172, '001067', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1068, 172, '001068', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1069, 172, '001069', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1070, 172, '001070', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1071, 172, '001071', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25');
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1072, 172, '001072', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1073, 172, '001073', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1074, 172, '001074', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1075, 172, '001075', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1076, 172, '001076', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1077, 172, '001077', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1078, 172, '001078', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1079, 172, '001079', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1080, 172, '001080', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1081, 172, '001081', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1082, 172, '001082', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1083, 172, '001083', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1084, 172, '001084', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1085, 172, '001085', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1086, 172, '001086', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1087, 172, '001087', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1088, 172, '001088', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1089, 172, '001089', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1090, 172, '001090', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1091, 172, '001091', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1092, 172, '001092', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1093, 172, '001093', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1094, 172, '001094', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1095, 172, '001095', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1096, 172, '001096', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1097, 172, '001097', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1098, 172, '001098', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1099, 172, '001099', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1100, 172, '001100', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1101, 172, '001101', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1102, 172, '001102', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1103, 172, '001103', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1104, 172, '001104', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1105, 172, '001105', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1106, 172, '001106', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1107, 172, '001107', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1108, 172, '001108', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1109, 172, '001109', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1110, 172, '001110', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1111, 172, '001111', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1112, 172, '001112', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1113, 172, '001113', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1114, 172, '001114', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1115, 172, '001115', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1116, 172, '001116', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1117, 172, '001117', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1118, 172, '001118', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1119, 172, '001119', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1120, 172, '001120', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1121, 172, '001121', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1122, 172, '001122', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1123, 172, '001123', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1124, 172, '001124', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1125, 172, '001125', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1126, 172, '001126', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1127, 172, '001127', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1128, 172, '001128', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1129, 172, '001129', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1130, 172, '001130', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1131, 172, '001131', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1132, 172, '001132', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1133, 172, '001133', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1134, 172, '001134', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1135, 172, '001135', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1136, 172, '001136', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1137, 172, '001137', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1138, 172, '001138', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1139, 172, '001139', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1140, 172, '001140', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1141, 172, '001141', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1142, 172, '001142', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1143, 172, '001143', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1144, 172, '001144', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1145, 172, '001145', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1146, 172, '001146', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1147, 172, '001147', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1148, 172, '001148', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1149, 172, '001149', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1150, 172, '001150', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1151, 172, '001151', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1152, 172, '001152', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1153, 172, '001153', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1154, 172, '001154', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1155, 172, '001155', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1156, 172, '001156', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1157, 172, '001157', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1158, 172, '001158', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1159, 172, '001159', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1160, 172, '001160', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1161, 172, '001161', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1162, 172, '001162', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1163, 172, '001163', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1164, 172, '001164', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1165, 172, '001165', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1166, 172, '001166', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1167, 172, '001167', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1168, 172, '001168', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1169, 172, '001169', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1170, 172, '001170', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1171, 172, '001171', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1172, 172, '001172', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1173, 172, '001173', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1174, 172, '001174', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1175, 172, '001175', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1176, 172, '001176', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1177, 172, '001177', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1178, 172, '001178', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1179, 172, '001179', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1180, 172, '001180', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1181, 172, '001181', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1182, 172, '001182', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1183, 172, '001183', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1184, 172, '001184', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1185, 172, '001185', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1186, 172, '001186', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1187, 172, '001187', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1188, 172, '001188', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1189, 172, '001189', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1190, 172, '001190', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1191, 172, '001191', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1192, 172, '001192', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1193, 172, '001193', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1194, 172, '001194', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1195, 172, '001195', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1196, 172, '001196', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1197, 172, '001197', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1198, 172, '001198', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1199, 172, '001199', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1200, 172, '001200', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:03:25', '2023-12-27 19:03:25'),
(1201, 168, '001201', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1202, 168, '001202', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1203, 168, '001203', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1204, 168, '001204', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1205, 168, '001205', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1206, 168, '001206', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1207, 168, '001207', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1208, 168, '001208', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1209, 168, '001209', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1210, 168, '001210', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1211, 168, '001211', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1212, 168, '001212', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1213, 168, '001213', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1214, 168, '001214', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1215, 168, '001215', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1216, 168, '001216', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1217, 168, '001217', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1218, 168, '001218', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1219, 168, '001219', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1220, 168, '001220', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1221, 168, '001221', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1222, 168, '001222', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1223, 168, '001223', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1224, 168, '001224', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1225, 168, '001225', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1226, 168, '001226', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1227, 168, '001227', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1228, 168, '001228', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1229, 168, '001229', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1230, 168, '001230', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1231, 168, '001231', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1232, 168, '001232', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1233, 168, '001233', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1234, 168, '001234', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1235, 168, '001235', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1236, 168, '001236', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1237, 168, '001237', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1238, 168, '001238', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1239, 168, '001239', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1240, 168, '001240', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1241, 168, '001241', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1242, 168, '001242', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1243, 168, '001243', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1244, 168, '001244', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1245, 168, '001245', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1246, 168, '001246', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1247, 168, '001247', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1248, 168, '001248', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1249, 168, '001249', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1250, 168, '001250', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1251, 168, '001251', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1252, 168, '001252', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1253, 168, '001253', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1254, 168, '001254', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1255, 168, '001255', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1256, 168, '001256', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1257, 168, '001257', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1258, 168, '001258', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1259, 168, '001259', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1260, 168, '001260', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1261, 168, '001261', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1262, 168, '001262', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1263, 168, '001263', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1264, 168, '001264', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1265, 168, '001265', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1266, 168, '001266', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1267, 168, '001267', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1268, 168, '001268', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1269, 168, '001269', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1270, 168, '001270', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1271, 168, '001271', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1272, 168, '001272', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1273, 168, '001273', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1274, 168, '001274', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1275, 168, '001275', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1276, 168, '001276', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1277, 168, '001277', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1278, 168, '001278', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1279, 168, '001279', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1280, 168, '001280', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1281, 168, '001281', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1282, 168, '001282', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1283, 168, '001283', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1284, 168, '001284', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1285, 168, '001285', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1286, 168, '001286', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1287, 168, '001287', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1288, 168, '001288', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1289, 168, '001289', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1290, 168, '001290', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1291, 168, '001291', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1292, 168, '001292', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1293, 168, '001293', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1294, 168, '001294', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1295, 168, '001295', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1296, 168, '001296', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1297, 168, '001297', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1298, 168, '001298', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1299, 168, '001299', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1300, 168, '001300', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1301, 168, '001301', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1302, 168, '001302', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1303, 168, '001303', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1304, 168, '001304', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1305, 168, '001305', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1306, 168, '001306', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1307, 168, '001307', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1308, 168, '001308', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1309, 168, '001309', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1310, 168, '001310', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1311, 168, '001311', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1312, 168, '001312', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1313, 168, '001313', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1314, 168, '001314', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1315, 168, '001315', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1316, 168, '001316', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1317, 168, '001317', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1318, 168, '001318', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1319, 168, '001319', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1320, 168, '001320', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1321, 168, '001321', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1322, 168, '001322', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1323, 168, '001323', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1324, 168, '001324', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:07', '2023-12-27 19:35:07'),
(1325, 168, '001325', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1326, 168, '001326', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1327, 168, '001327', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1328, 168, '001328', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1329, 168, '001329', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1330, 168, '001330', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1331, 168, '001331', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1332, 168, '001332', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1333, 168, '001333', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1334, 168, '001334', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1335, 168, '001335', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1336, 168, '001336', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1337, 168, '001337', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1338, 168, '001338', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1339, 168, '001339', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1340, 168, '001340', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1341, 168, '001341', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1342, 168, '001342', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1343, 168, '001343', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1344, 168, '001344', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1345, 168, '001345', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1346, 168, '001346', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1347, 168, '001347', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1348, 168, '001348', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1349, 168, '001349', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1350, 168, '001350', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1351, 168, '001351', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1352, 168, '001352', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1353, 168, '001353', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1354, 168, '001354', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1355, 168, '001355', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1356, 168, '001356', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1357, 168, '001357', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1358, 168, '001358', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1359, 168, '001359', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1360, 168, '001360', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1361, 168, '001361', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1362, 168, '001362', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1363, 168, '001363', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1364, 168, '001364', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1365, 168, '001365', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1366, 168, '001366', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1367, 168, '001367', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1368, 168, '001368', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1369, 168, '001369', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1370, 168, '001370', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1371, 168, '001371', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1372, 168, '001372', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1373, 168, '001373', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1374, 168, '001374', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1375, 168, '001375', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1376, 168, '001376', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1377, 168, '001377', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1378, 168, '001378', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1379, 168, '001379', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1380, 168, '001380', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1381, 168, '001381', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1382, 168, '001382', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1383, 168, '001383', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1384, 168, '001384', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1385, 168, '001385', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1386, 168, '001386', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1387, 168, '001387', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1388, 168, '001388', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1389, 168, '001389', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1390, 168, '001390', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1391, 168, '001391', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1392, 168, '001392', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1393, 168, '001393', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1394, 168, '001394', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1395, 168, '001395', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1396, 168, '001396', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1397, 168, '001397', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1398, 168, '001398', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1399, 168, '001399', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1400, 168, '001400', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1401, 168, '001401', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1402, 168, '001402', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1403, 168, '001403', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1404, 168, '001404', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1405, 168, '001405', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1406, 168, '001406', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1407, 168, '001407', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1408, 168, '001408', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1409, 168, '001409', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1410, 168, '001410', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1411, 168, '001411', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1412, 168, '001412', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1413, 168, '001413', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1414, 168, '001414', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1415, 168, '001415', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1416, 168, '001416', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1417, 168, '001417', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1418, 168, '001418', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1419, 168, '001419', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1420, 168, '001420', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1421, 168, '001421', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1422, 168, '001422', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1423, 168, '001423', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1424, 168, '001424', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1425, 168, '001425', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1426, 168, '001426', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1427, 168, '001427', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1428, 168, '001428', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1429, 168, '001429', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1430, 168, '001430', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1431, 168, '001431', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1432, 168, '001432', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1433, 168, '001433', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1434, 168, '001434', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1435, 168, '001435', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1436, 168, '001436', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1437, 168, '001437', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1438, 168, '001438', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1439, 168, '001439', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1440, 168, '001440', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1441, 168, '001441', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1442, 168, '001442', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1443, 168, '001443', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1444, 168, '001444', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1445, 168, '001445', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1446, 168, '001446', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1447, 168, '001447', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1448, 168, '001448', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1449, 168, '001449', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1450, 168, '001450', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1451, 168, '001451', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1452, 168, '001452', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1453, 168, '001453', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1454, 168, '001454', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1455, 168, '001455', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1456, 168, '001456', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1457, 168, '001457', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1458, 168, '001458', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1459, 168, '001459', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1460, 168, '001460', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1461, 168, '001461', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1462, 168, '001462', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1463, 168, '001463', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1464, 168, '001464', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1465, 168, '001465', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1466, 168, '001466', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1467, 168, '001467', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1468, 168, '001468', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1469, 168, '001469', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1470, 168, '001470', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1471, 168, '001471', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1472, 168, '001472', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1473, 168, '001473', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1474, 168, '001474', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1475, 168, '001475', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1476, 168, '001476', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1477, 168, '001477', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1478, 168, '001478', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1479, 168, '001479', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1480, 168, '001480', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1481, 168, '001481', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1482, 168, '001482', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1483, 168, '001483', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1484, 168, '001484', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1485, 168, '001485', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1486, 168, '001486', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1487, 168, '001487', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1488, 168, '001488', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1489, 168, '001489', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1490, 168, '001490', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1491, 168, '001491', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1492, 168, '001492', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1493, 168, '001493', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1494, 168, '001494', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1495, 168, '001495', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1496, 168, '001496', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1497, 168, '001497', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1498, 168, '001498', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1499, 168, '001499', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1500, 168, '001500', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1501, 168, '001501', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1502, 168, '001502', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1503, 168, '001503', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1504, 168, '001504', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1505, 168, '001505', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1506, 168, '001506', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1507, 168, '001507', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1508, 168, '001508', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1509, 168, '001509', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1510, 168, '001510', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1511, 168, '001511', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1512, 168, '001512', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1513, 168, '001513', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1514, 168, '001514', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1515, 168, '001515', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1516, 168, '001516', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1517, 168, '001517', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1518, 168, '001518', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1519, 168, '001519', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1520, 168, '001520', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1521, 168, '001521', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1522, 168, '001522', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1523, 168, '001523', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1524, 168, '001524', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1525, 168, '001525', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1526, 168, '001526', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1527, 168, '001527', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1528, 168, '001528', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1529, 168, '001529', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1530, 168, '001530', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1531, 168, '001531', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1532, 168, '001532', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1533, 168, '001533', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1534, 168, '001534', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1535, 168, '001535', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1536, 168, '001536', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1537, 168, '001537', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1538, 168, '001538', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1539, 168, '001539', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1540, 168, '001540', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1541, 168, '001541', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1542, 168, '001542', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1543, 168, '001543', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1544, 168, '001544', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1545, 168, '001545', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1546, 168, '001546', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1547, 168, '001547', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1548, 168, '001548', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1549, 168, '001549', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1550, 168, '001550', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1551, 168, '001551', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1552, 168, '001552', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1553, 168, '001553', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1554, 168, '001554', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1555, 168, '001555', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1556, 168, '001556', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1557, 168, '001557', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1558, 168, '001558', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1559, 168, '001559', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1560, 168, '001560', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1561, 168, '001561', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1562, 168, '001562', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1563, 168, '001563', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1564, 168, '001564', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1565, 168, '001565', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1566, 168, '001566', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1567, 168, '001567', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1568, 168, '001568', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1569, 168, '001569', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1570, 168, '001570', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1571, 168, '001571', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1572, 168, '001572', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1573, 168, '001573', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1574, 168, '001574', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1575, 168, '001575', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1576, 168, '001576', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1577, 168, '001577', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1578, 168, '001578', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1579, 168, '001579', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1580, 168, '001580', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1581, 168, '001581', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1582, 168, '001582', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1583, 168, '001583', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1584, 168, '001584', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1585, 168, '001585', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1586, 168, '001586', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1587, 168, '001587', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1588, 168, '001588', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1589, 168, '001589', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1590, 168, '001590', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1591, 168, '001591', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1592, 168, '001592', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1593, 168, '001593', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1594, 168, '001594', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1595, 168, '001595', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1596, 168, '001596', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1597, 168, '001597', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1598, 168, '001598', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1599, 168, '001599', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1600, 168, '001600', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1601, 168, '001601', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08');
INSERT INTO `ticket_history` (`id`, `product_id`, `ticket_number`, `category_id`, `orderId`, `orderDate`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1602, 168, '001602', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1603, 168, '001603', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1604, 168, '001604', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1605, 168, '001605', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1606, 168, '001606', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1607, 168, '001607', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1608, 168, '001608', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1609, 168, '001609', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1610, 168, '001610', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1611, 168, '001611', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1612, 168, '001612', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1613, 168, '001613', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1614, 168, '001614', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1615, 168, '001615', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1616, 168, '001616', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1617, 168, '001617', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1618, 168, '001618', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1619, 168, '001619', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1620, 168, '001620', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1621, 168, '001621', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1622, 168, '001622', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1623, 168, '001623', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1624, 168, '001624', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1625, 168, '001625', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1626, 168, '001626', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1627, 168, '001627', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1628, 168, '001628', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1629, 168, '001629', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1630, 168, '001630', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1631, 168, '001631', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1632, 168, '001632', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1633, 168, '001633', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1634, 168, '001634', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1635, 168, '001635', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1636, 168, '001636', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1637, 168, '001637', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1638, 168, '001638', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1639, 168, '001639', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1640, 168, '001640', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1641, 168, '001641', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1642, 168, '001642', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1643, 168, '001643', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1644, 168, '001644', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1645, 168, '001645', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1646, 168, '001646', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1647, 168, '001647', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1648, 168, '001648', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1649, 168, '001649', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1650, 168, '001650', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1651, 168, '001651', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1652, 168, '001652', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1653, 168, '001653', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1654, 168, '001654', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1655, 168, '001655', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1656, 168, '001656', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1657, 168, '001657', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1658, 168, '001658', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1659, 168, '001659', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1660, 168, '001660', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1661, 168, '001661', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1662, 168, '001662', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1663, 168, '001663', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1664, 168, '001664', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1665, 168, '001665', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1666, 168, '001666', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1667, 168, '001667', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1668, 168, '001668', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1669, 168, '001669', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1670, 168, '001670', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1671, 168, '001671', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1672, 168, '001672', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1673, 168, '001673', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1674, 168, '001674', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1675, 168, '001675', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1676, 168, '001676', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1677, 168, '001677', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1678, 168, '001678', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1679, 168, '001679', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1680, 168, '001680', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1681, 168, '001681', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1682, 168, '001682', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1683, 168, '001683', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1684, 168, '001684', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1685, 168, '001685', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1686, 168, '001686', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1687, 168, '001687', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1688, 168, '001688', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1689, 168, '001689', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1690, 168, '001690', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1691, 168, '001691', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1692, 168, '001692', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1693, 168, '001693', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1694, 168, '001694', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1695, 168, '001695', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1696, 168, '001696', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1697, 168, '001697', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1698, 168, '001698', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1699, 168, '001699', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1700, 168, '001700', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1701, 168, '001701', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1702, 168, '001702', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1703, 168, '001703', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1704, 168, '001704', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1705, 168, '001705', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1706, 168, '001706', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1707, 168, '001707', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1708, 168, '001708', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1709, 168, '001709', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1710, 168, '001710', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1711, 168, '001711', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1712, 168, '001712', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1713, 168, '001713', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1714, 168, '001714', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1715, 168, '001715', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1716, 168, '001716', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1717, 168, '001717', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1718, 168, '001718', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1719, 168, '001719', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1720, 168, '001720', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1721, 168, '001721', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1722, 168, '001722', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1723, 168, '001723', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1724, 168, '001724', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1725, 168, '001725', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1726, 168, '001726', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1727, 168, '001727', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1728, 168, '001728', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1729, 168, '001729', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1730, 168, '001730', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1731, 168, '001731', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1732, 168, '001732', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1733, 168, '001733', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1734, 168, '001734', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1735, 168, '001735', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1736, 168, '001736', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1737, 168, '001737', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1738, 168, '001738', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1739, 168, '001739', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1740, 168, '001740', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1741, 168, '001741', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1742, 168, '001742', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1743, 168, '001743', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1744, 168, '001744', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1745, 168, '001745', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1746, 168, '001746', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1747, 168, '001747', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1748, 168, '001748', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1749, 168, '001749', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1750, 168, '001750', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1751, 168, '001751', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1752, 168, '001752', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1753, 168, '001753', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1754, 168, '001754', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1755, 168, '001755', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1756, 168, '001756', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1757, 168, '001757', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1758, 168, '001758', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1759, 168, '001759', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1760, 168, '001760', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1761, 168, '001761', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1762, 168, '001762', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1763, 168, '001763', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1764, 168, '001764', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1765, 168, '001765', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1766, 168, '001766', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1767, 168, '001767', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1768, 168, '001768', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1769, 168, '001769', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1770, 168, '001770', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1771, 168, '001771', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1772, 168, '001772', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1773, 168, '001773', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1774, 168, '001774', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1775, 168, '001775', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1776, 168, '001776', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1777, 168, '001777', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1778, 168, '001778', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1779, 168, '001779', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1780, 168, '001780', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1781, 168, '001781', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1782, 168, '001782', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1783, 168, '001783', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1784, 168, '001784', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1785, 168, '001785', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1786, 168, '001786', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1787, 168, '001787', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1788, 168, '001788', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1789, 168, '001789', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1790, 168, '001790', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1791, 168, '001791', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1792, 168, '001792', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1793, 168, '001793', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1794, 168, '001794', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1795, 168, '001795', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1796, 168, '001796', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1797, 168, '001797', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1798, 168, '001798', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1799, 168, '001799', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1800, 168, '001800', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:08', '2023-12-27 19:35:08'),
(1801, 167, '001801', 5, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1802, 167, '001802', 5, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1803, 167, '001803', 5, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1804, 167, '001804', 5, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1805, 167, '001805', 5, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1806, 167, '001806', 5, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1807, 167, '001807', 2, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1808, 167, '001808', 2, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1809, 167, '001809', 2, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1810, 167, '001810', 2, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1811, 167, '001811', 2, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1812, 167, '001812', 2, '142700-23', '2023-12-28', 1, 1, '2023-12-27 19:35:53', '2023-12-29 01:12:36'),
(1813, 167, '001813', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1814, 167, '001814', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1815, 167, '001815', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1816, 167, '001816', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1817, 167, '001817', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1818, 167, '001818', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1819, 167, '001819', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1820, 167, '001820', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1821, 167, '001821', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1822, 167, '001822', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1823, 167, '001823', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1824, 167, '001824', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-29 01:07:20'),
(1825, 167, '001825', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1826, 167, '001826', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1827, 167, '001827', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1828, 167, '001828', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1829, 167, '001829', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1830, 167, '001830', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1831, 167, '001831', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1832, 167, '001832', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1833, 167, '001833', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1834, 167, '001834', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1835, 167, '001835', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1836, 167, '001836', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1837, 167, '001837', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1838, 167, '001838', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1839, 167, '001839', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1840, 167, '001840', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1841, 167, '001841', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1842, 167, '001842', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1843, 167, '001843', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1844, 167, '001844', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1845, 167, '001845', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1846, 167, '001846', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1847, 167, '001847', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1848, 167, '001848', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1849, 167, '001849', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1850, 167, '001850', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:35:53', '2023-12-27 19:35:53'),
(1851, 165, '001851', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1852, 165, '001852', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1853, 165, '001853', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1854, 165, '001854', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1855, 165, '001855', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1856, 165, '001856', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1857, 165, '001857', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1858, 165, '001858', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1859, 165, '001859', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1860, 165, '001860', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1861, 165, '001861', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1862, 165, '001862', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1863, 165, '001863', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1864, 165, '001864', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1865, 165, '001865', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1866, 165, '001866', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1867, 165, '001867', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1868, 165, '001868', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1869, 165, '001869', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1870, 165, '001870', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1871, 165, '001871', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1872, 165, '001872', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1873, 165, '001873', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1874, 165, '001874', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1875, 165, '001875', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1876, 165, '001876', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1877, 165, '001877', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1878, 165, '001878', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1879, 165, '001879', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1880, 165, '001880', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:12', '2023-12-27 19:36:12'),
(1881, 166, '001881', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1882, 166, '001882', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1883, 166, '001883', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1884, 166, '001884', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1885, 166, '001885', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1886, 166, '001886', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1887, 166, '001887', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1888, 166, '001888', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1889, 166, '001889', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1890, 166, '001890', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1891, 166, '001891', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1892, 166, '001892', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1893, 166, '001893', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1894, 166, '001894', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1895, 166, '001895', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1896, 166, '001896', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1897, 166, '001897', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1898, 166, '001898', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1899, 166, '001899', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1900, 166, '001900', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1901, 166, '001901', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1902, 166, '001902', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1903, 166, '001903', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1904, 166, '001904', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1905, 166, '001905', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1906, 166, '001906', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1907, 166, '001907', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1908, 166, '001908', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1909, 166, '001909', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1910, 166, '001910', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1911, 166, '001911', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1912, 166, '001912', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1913, 166, '001913', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1914, 166, '001914', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1915, 166, '001915', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1916, 166, '001916', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1917, 166, '001917', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1918, 166, '001918', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1919, 166, '001919', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1920, 166, '001920', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1921, 166, '001921', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1922, 166, '001922', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1923, 166, '001923', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1924, 166, '001924', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1925, 166, '001925', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1926, 166, '001926', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1927, 166, '001927', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1928, 166, '001928', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1929, 166, '001929', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1930, 166, '001930', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:36:39', '2023-12-27 19:36:39'),
(1931, 164, '001931', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1932, 164, '001932', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1933, 164, '001933', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1934, 164, '001934', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1935, 164, '001935', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1936, 164, '001936', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1937, 164, '001937', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1938, 164, '001938', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1939, 164, '001939', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1940, 164, '001940', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1941, 164, '001941', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1942, 164, '001942', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1943, 164, '001943', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1944, 164, '001944', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1945, 164, '001945', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1946, 164, '001946', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1947, 164, '001947', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1948, 164, '001948', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1949, 164, '001949', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1950, 164, '001950', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1951, 164, '001951', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1952, 164, '001952', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1953, 164, '001953', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1954, 164, '001954', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1955, 164, '001955', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1956, 164, '001956', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1957, 164, '001957', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1958, 164, '001958', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1959, 164, '001959', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1960, 164, '001960', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1961, 164, '001961', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1962, 164, '001962', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1963, 164, '001963', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1964, 164, '001964', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1965, 164, '001965', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1966, 164, '001966', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1967, 164, '001967', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1968, 164, '001968', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1969, 164, '001969', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1970, 164, '001970', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1971, 164, '001971', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1972, 164, '001972', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1973, 164, '001973', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1974, 164, '001974', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1975, 164, '001975', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1976, 164, '001976', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1977, 164, '001977', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1978, 164, '001978', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1979, 164, '001979', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1980, 164, '001980', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:09', '2023-12-27 19:38:09'),
(1981, 162, '001981', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 21:32:07'),
(1982, 162, '001982', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 21:32:07'),
(1983, 162, '001983', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 21:32:07'),
(1984, 162, '001984', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:58:25'),
(1985, 162, '001985', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:58:25'),
(1986, 162, '001986', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:58:25'),
(1987, 162, '001987', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1988, 162, '001988', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1989, 162, '001989', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1990, 162, '001990', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1991, 162, '001991', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1992, 162, '001992', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1993, 162, '001993', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1994, 162, '001994', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1995, 162, '001995', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1996, 162, '001996', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1997, 162, '001997', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1998, 162, '001998', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(1999, 162, '001999', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2000, 162, '002000', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2001, 162, '002001', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2002, 162, '002002', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2003, 162, '002003', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2004, 162, '002004', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2005, 162, '002005', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2006, 162, '002006', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2007, 162, '002007', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2008, 162, '002008', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2009, 162, '002009', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2010, 162, '002010', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2011, 162, '002011', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2012, 162, '002012', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2013, 162, '002013', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2014, 162, '002014', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2015, 162, '002015', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:38:30', '2023-12-28 12:28:44'),
(2016, 163, '002016', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2017, 163, '002017', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2018, 163, '002018', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2019, 163, '002019', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2020, 163, '002020', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2021, 163, '002021', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2022, 163, '002022', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2023, 163, '002023', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2024, 163, '002024', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2025, 163, '002025', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2026, 163, '002026', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2027, 163, '002027', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2028, 163, '002028', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2029, 163, '002029', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2030, 163, '002030', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2031, 163, '002031', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2032, 163, '002032', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2033, 163, '002033', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2034, 163, '002034', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2035, 163, '002035', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2036, 163, '002036', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2037, 163, '002037', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2038, 163, '002038', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2039, 163, '002039', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2040, 163, '002040', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2041, 163, '002041', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2042, 163, '002042', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2043, 163, '002043', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2044, 163, '002044', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2045, 163, '002045', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2046, 163, '002046', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2047, 163, '002047', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2048, 163, '002048', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2049, 163, '002049', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2050, 163, '002050', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2051, 163, '002051', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2052, 163, '002052', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2053, 163, '002053', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2054, 163, '002054', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13'),
(2055, 163, '002055', NULL, NULL, NULL, NULL, 1, '2023-12-27 19:44:13', '2023-12-27 19:44:13');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

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
-- AUTO_INCREMENT for table `ticket_history`
--
ALTER TABLE `ticket_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2056;

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
