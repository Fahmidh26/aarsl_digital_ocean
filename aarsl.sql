-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 12:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aarsl`
--

-- --------------------------------------------------------

--
-- Table structure for table `acid_products`
--

CREATE TABLE `acid_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acid_products`
--

INSERT INTO `acid_products` (`id`, `product_name`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Sulphuric Acid', 1245, NULL, '2023-04-06 17:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chalan` int(11) DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense` int(11) DEFAULT NULL,
  `hr` int(11) DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `category`, `product`, `customer`, `bank`, `supplier`, `production`, `l_c`, `sale`, `chalan`, `alluser`, `expense`, `hr`, `adminuserrole`, `schedule`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-06-05 03:57:32', '$2y$10$ALbMmGnqCeBflP.JT8LWNu/swsmervF2UFssUBA3QKo52c6CrA9Ye', '01964870827', '1', '1', '1', '1', '1', '1', '1', '1', 1, '1', 1, 1, '1', 1, 1, '9GtEW9OJucolDYsLsyytEtDLYAg7Z4hJGQ1LSVSpPRxuxA2f1aJ1hhQwWIRE', NULL, '202207230834attachment_127807231.jfif', '2022-06-05 03:57:32', '2022-07-23 03:06:17'),
(18, 'Syed Ashiq', 'sashiq62@gmail.com', NULL, '$2y$10$HCO/Lzvdwf9qYIbZrO2j/u99S1K2IO88mn2Lp2n7akSRWBDO22AqK', NULL, '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, 1, NULL, '1', 1, 2, NULL, NULL, NULL, '2023-03-25 05:04:51', NULL),
(19, 'Nazmul Haque Niaz', 'n.haque19@gmail.com', NULL, '$2y$10$FmhNsrIwyavujsBEjPo3JOEd1Co3C0hlTr.YLXAt8KW14Xrox4AO6', NULL, '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, 1, NULL, '1', 1, 2, NULL, NULL, NULL, '2023-03-25 05:06:34', NULL),
(25, 'Test Sale', 'sales@aarslbd.com', NULL, '$2y$10$b8n4XZLM484L1wk2pO/lKeG3FdokCjlwqUM8j6/aR/D.Zr0IYN6ci', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2023-03-31 19:11:53', NULL),
(26, 'MD IKRAM', 'mdikram@aarslbd.com', NULL, '$2y$10$e7D6NDf1YG9XN2cs5eKhP.Tqa1y2PNPbUgEp42bUvIN1sDc489uYO', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2023-04-03 05:14:02', NULL),
(28, 'MD Jashim', 'mdjashim@aarslbd.com', NULL, '$2y$10$klsUJ.F3mn1jaa5PYPk.t.S84jbw/RFwyXLcIMIu.TE98Q1mR1sc.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2023-04-03 05:18:29', NULL),
(30, 'MD IMRAN', 'mdimran@aarslbd.com', NULL, '$2y$10$LtfXy.tri2TcBdZsmSKNseIKTjg.pOKi4ZQ3qth9iKt4ds0f9ph0m', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2023-04-03 05:22:12', NULL),
(31, 'MD SABBIR', 'mdsabbir@aarslbd.com', NULL, '$2y$10$1NU5YcTB96v.GO3dp.8lreb.Kj0aPswfI/Kyb77euIZvU6/6zxmhS', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, 1, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2023-04-03 05:23:35', NULL),
(33, 'MD REZOAN', 'mdrezoan@aarslbd.com', NULL, '$2y$10$uUvvrFnX/rwpjvGWb75sSeGm8Nlw3vH.d.e3NK1bU3q56JeyIXeXi', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2023-04-03 05:32:22', NULL),
(37, 'MD F.BARI', 'mdfbari@aarslbd.com', NULL, '$2y$10$ygfZx/l7MSOZPMrLnes2u.cG6PVt3LYXmWApxacir6DLZUHdowA0C', NULL, '1', '1', '1', NULL, '1', '1', NULL, '1', 1, NULL, 1, NULL, NULL, 1, 5, NULL, NULL, NULL, '2023-04-03 06:12:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `ac_name`, `ano_name`, `branch`, `balance`, `created_at`, `updated_at`) VALUES
(5, 'Payment', 'Shelby Mercado', '40', 'Eos sequi illo omni', 77, '2023-03-25 07:07:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(14, 'Sulphur', '2023-03-22 04:40:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chalans`
--

CREATE TABLE `chalans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chalan_date` date NOT NULL,
  `chalan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `rate` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `nbalance` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dea_cus` int(11) DEFAULT NULL,
  `advance` float DEFAULT NULL,
  `delivery` float DEFAULT NULL,
  `due` float DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `rateType` varchar(255) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `address`, `phone`, `email`, `dea_cus`, `advance`, `delivery`, `due`, `rate`, `rateType`, `balance`, `created_at`, `updated_at`) VALUES
(646, 'Friends Chemical', 'Dhaka', '123456778', 'friends@chemical.com', 1, 1500, 30, 1470, 41000, 'EXW', 56470000, '2023-04-06 08:18:30', '2023-04-06 08:18:30'),
(647, 'Al Amin Chemical', 'Dhaka', '12345678', 'alamin@gmail.com', 1, 100, 20, 80, 3000, 'FOB', 240000, '2023-04-03 07:09:23', '2023-04-03 07:09:23'),
(648, 'ZXL Industries', 'Dhaka', '12345678', 'zxl@gmail.com', 1, 300, NULL, 300, 48000, 'EXW', 404800000, '2023-04-06 08:17:04', '2023-04-06 08:17:04'),
(649, 'Ayesha Trading Corpor.', 'Dhaka', '12345678', 'ayesha@gmail.com', 1, 300, 40, 260, 38000, 'EXW', 7740000, '2023-04-06 08:16:36', '2023-04-06 08:16:36'),
(650, 'Khadiza Enterprise', 'Dhaka', '12344576', 'khadiza@gmail.com', 1, 100, 10, 90, 300, 'FOB', 27000, '2023-03-28 05:51:33', '2023-03-28 05:51:33'),
(651, 'Hamid', 'Dhaka', '5432543524', 'hamid@gmail.com', 1, 100, 10, 90, 500, 'FOB', 45000, '2023-03-28 05:51:10', '2023-03-28 05:51:10'),
(652, 'HAMKO', 'Faridpur', '+1 (973) 682-4163', 'mdikram@aarslbd.com', 1, 500, NULL, 500, 40000, 'EXW', 20000000, '2023-04-06 08:15:53', '2023-04-06 08:15:53'),
(653, 'test@Dyaz', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenseType_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expenseType_id`, `date`, `amount`, `location`, `details`, `created_at`, `updated_at`) VALUES
(5, 6, '2023-04-06', 50000.00, 'factory', '5000 pcs', '2023-04-06 17:57:21', NULL),
(6, 3, '2023-04-06', 50.00, 'head', 'Mr Niaz (Travel From Gulshan to SJIBL Progoti Sarani)', '2023-04-06 17:58:05', NULL),
(7, 2, '2023-04-06', 150000.00, 'head', 'April Month 2023', '2023-04-06 17:58:27', NULL),
(8, 7, '2023-04-06', 12000.00, 'factory', '10 Bags Sha-Cement', '2023-04-06 17:58:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenseType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `expenseType`, `created_at`, `updated_at`) VALUES
(1, 'Fare', '2023-01-31 03:47:47', NULL),
(2, 'Rent', '2023-01-31 03:49:16', NULL),
(3, 'Travel Allowance', '2023-03-31 19:17:03', NULL),
(4, 'Food Allowance', '2023-03-31 19:18:11', NULL),
(5, 'Entertainment', '2023-03-31 19:18:25', NULL),
(6, 'Bricks', '2023-04-03 07:42:03', NULL),
(7, 'Cement', '2023-04-03 07:42:12', NULL),
(8, 'Rod', '2023-04-03 07:42:39', NULL),
(9, 'bricks', '2023-04-03 08:01:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_05_035221_create_sessions_table', 1),
(7, '2022_06_05_093510_create_admins_table', 2),
(8, '2022_06_08_050819_create_brands_table', 3),
(9, '2022_06_11_072712_create_sliders_table', 4),
(10, '2022_06_11_080003_create_sliders_table', 5),
(11, '2022_06_12_044009_create_categories_table', 6),
(12, '2022_06_12_044635_create_sub_categories_table', 6),
(13, '2022_06_12_101831_create_products_table', 7),
(14, '2022_06_12_102120_create_multi_imgs_table', 7),
(15, '2022_06_15_111136_create_carts_table', 8),
(16, '2022_06_18_051335_create_wishlists_table', 9),
(17, '2022_06_19_061429_create_coupons_table', 10),
(18, '2022_06_20_055345_create_ship_divisions_table', 11),
(19, '2022_06_20_082833_create_ship_districts_table', 12),
(20, '2022_06_21_050936_create_ship_states_table', 13),
(21, '2022_06_22_153813_create_shippings_table', 14),
(22, '2022_06_25_052407_create_oders_table', 14),
(23, '2022_06_25_075304_create_orders_table', 15),
(24, '2022_06_25_075738_create_order_items_table', 15),
(25, '2022_06_30_065319_create_site_settings_table', 16),
(26, '2022_06_30_110044_create_seos_table', 17),
(27, '2022_07_02_062717_create_reviews_table', 18),
(28, '2022_08_01_044732_create_locations_table', 19),
(29, '2022_12_17_142839_create_quotations_table', 20),
(30, '2022_12_18_071520_create_quotations_table', 21),
(31, '2022_12_18_083754_create_quotation_items_table', 22),
(32, '2022_12_21_072212_create_customers_table', 22),
(33, '2022_12_22_051900_create_quotation_items_table', 23),
(34, '2022_12_22_051908_create_quotations_table', 23),
(35, '2022_12_22_051920_create_customers_table', 23),
(36, '2022_12_22_062042_create_quotation_items_table', 24),
(37, '2023_01_10_060905_create_banks_table', 25),
(38, '2023_01_10_071658_create_suppliers_table', 26),
(39, '2023_01_10_111709_create_purchases_table', 27),
(40, '2023_01_10_111933_create_purchase_items_table', 27),
(41, '2023_01_10_114539_create_payment_items_table', 27),
(42, '2023_01_31_092320_create_expense_types_table', 28),
(43, '2023_01_31_095728_create_employees_table', 29),
(44, '2023_01_31_103138_create_designations_table', 29),
(45, '2023_02_25_093329_create_sulphur_stocks_table', 30),
(46, '2023_02_27_054051_create_productions_table', 31),
(47, '2023_02_27_092217_create_todays_productions_table', 32),
(48, '2023_03_01_052946_create_dealers_table', 33),
(49, '2023_03_01_091128_create_schedules_table', 34),
(50, '2023_03_02_094932_create_schedules_table', 35),
(51, '2023_03_02_113137_create_schedule_dates_table', 36),
(52, '2023_03_13_103924_create_sales_table', 36),
(53, '2023_03_13_103937_create_sales_items_table', 36),
(54, '2023_03_14_101450_create_sales_payment_items_table', 37),
(55, '2023_03_14_104021_create_acid_products_table', 38),
(56, '2023_03_15_085403_create_chalans_table', 39),
(57, '2023_03_22_061304_create_requisitions_table', 40),
(58, '2023_03_22_061552_create_requisition_types_table', 41),
(59, '2023_03_22_072837_create_requisitions_table', 42),
(60, '2023_03_29_095153_create_expenses_table', 43);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_items`
--

CREATE TABLE `payment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `b_paid_amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(12, 179, '1', '2023-03-27 10:53:10', '2023-03-27 10:53:10'),
(13, 179, '5', '2023-03-28 05:20:31', '2023-03-28 05:20:31'),
(14, 181, '100', '2023-03-28 05:37:46', '2023-03-28 05:37:46'),
(15, 181, '300', '2023-03-28 05:39:21', '2023-03-28 05:39:21'),
(16, 181, '14', '2023-04-03 07:19:27', '2023-04-03 07:19:27'),
(17, 181, '14', '2023-04-03 07:19:39', '2023-04-03 07:19:39'),
(18, 181, '86', '2023-04-03 07:48:07', '2023-04-03 07:48:07'),
(19, 181, '15', '2023-04-03 07:59:32', '2023-04-03 07:59:32'),
(20, 179, '6', '2023-04-03 07:59:32', '2023-04-03 07:59:32'),
(21, 181, '20', '2023-04-03 08:00:09', '2023-04-03 08:00:09'),
(22, 179, '20', '2023-04-03 08:00:09', '2023-04-03 08:00:09'),
(23, 179, '60', '2023-04-06 17:55:36', '2023-04-06 17:55:36'),
(24, 181, '10', '2023-04-06 17:55:36', '2023-04-06 17:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(182, '12', 'Sulphur Pellet', 'SP', 1, 0, '2023-02-26 00:12:52', '2023-03-11 04:52:05'),
(181, '12', 'Sulphur Flakes', 'SF', 1, 1455, '2023-02-26 00:12:33', '2023-04-06 17:55:36'),
(180, '12', 'Sulphur Granular', 'SG', 1, 0, '2023-02-26 00:12:09', '2023-03-11 04:52:05'),
(179, '12', 'Sulphur Lump', 'SL', 1, 0, '2023-02-26 00:11:44', '2023-04-06 17:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `chalan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `ldate` date DEFAULT NULL,
  `boen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `besb` date DEFAULT NULL,
  `boed` date DEFAULT NULL,
  `track` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `purchase_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_flat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `batch_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `rateType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `discount_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_flat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) DEFAULT NULL,
  `due_amount` int(11) DEFAULT NULL,
  `total_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisitionType_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`id`, `requisitionType_id`, `date`, `type`, `lo`, `location`, `amount`, `status`, `details`, `created_at`, `updated_at`) VALUES
(3, 4, '2023-03-28', NULL, NULL, NULL, 50000, 'Unpaid', 'SS 316 10 MM,  8 feet / 4 feet', '2023-03-28 05:19:12', NULL),
(4, 7, '2023-04-03', NULL, NULL, NULL, 10000, 'Unpaid', 'Water pump', '2023-04-03 07:37:33', NULL),
(5, 7, '2023-04-03', NULL, NULL, NULL, 12000, 'Unpaid', '10 HP Verticle Pump', '2023-04-03 07:39:00', NULL),
(6, 6, '1997-10-25', 'moderate', 'local', 'head', 2000, 'Unpaid', 'Accusantium officia', '2023-04-03 23:28:41', NULL),
(7, 4, '1994-08-01', 'moderate', 'local', 'factory', 76, 'Unpaid', 'Rerum impedit cum q', '2023-04-04 07:01:40', NULL),
(8, 4, '1987-09-29', 'moderate', 'outside', 'head', 52, 'Unpaid', 'Esse voluptas fugia', '2023-04-05 07:12:43', NULL),
(9, 6, '2023-04-07', 'emergency', 'outside', 'factory', 20000, 'Unpaid', 'SS 316 3MM OD | 10 Ft Height | 10 Pcs Pipe', '2023-04-06 18:05:50', NULL),
(10, 4, '2023-04-08', 'minor', 'local', 'factory', 50000, 'Unpaid', '10mm MS Metal Sheet | 8/4 Dimension | 50 Sqft', '2023-04-06 18:07:13', NULL),
(11, 3, '2009-01-10', 'Minor', 'Outside Procurement', 'Head Office', 24, 'Unpaid', 'Nostrum est quasi co', '2023-04-06 18:25:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requisition_types`
--

CREATE TABLE `requisition_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisitionType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requisition_types`
--

INSERT INTO `requisition_types` (`id`, `requisitionType`, `created_at`, `updated_at`) VALUES
(2, 'Water Pump', '2023-03-28 05:14:52', NULL),
(3, 'Shaft', '2023-03-28 05:15:01', NULL),
(4, 'Metal Sheet', '2023-03-28 05:15:08', NULL),
(5, 'Almirah', '2023-03-28 05:16:20', NULL),
(6, 'SS Pipe', '2023-04-03 07:35:42', NULL),
(7, 'Pump', '2023-04-03 07:36:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` date NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` bigint(20) NOT NULL,
  `grand_total` bigint(20) NOT NULL,
  `discount_flat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_per` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `sale_date`, `details`, `sub_total`, `grand_total`, `discount_flat`, `discount_per`, `total_vat`, `p_paid_amount`, `due_amount`, `created_at`, `updated_at`) VALUES
(45, 652, '2023-04-06', NULL, 20000000, 20000000, NULL, NULL, NULL, '20000000', '0', '2023-04-06 08:15:53', NULL),
(46, 649, '2023-04-06', NULL, 7600000, 7600000, NULL, NULL, NULL, '7600000', '0', '2023-04-06 08:16:36', NULL),
(47, 648, '2023-04-06', NULL, 4800000, 4800000, NULL, NULL, NULL, '4800000', '0', '2023-04-06 08:17:04', NULL),
(48, 646, '2023-04-06', NULL, 16400000, 16400000, NULL, NULL, NULL, '16400000', '0', '2023-04-06 08:18:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_items`
--

CREATE TABLE `sales_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_items`
--

INSERT INTO `sales_items` (`id`, `sale_id`, `product_id`, `qty`, `rateType`, `rate`, `amount`, `created_at`, `updated_at`) VALUES
(35, 45, 1, '500', 'E', 4.00, 20000000, '2023-04-06 08:15:53', '2023-04-06 08:15:53'),
(36, 46, 1, '200', 'E', 3.00, 7600000, '2023-04-06 08:16:36', '2023-04-06 08:16:36'),
(37, 47, 1, '100', 'E', 4.00, 4800000, '2023-04-06 08:17:04', '2023-04-06 08:17:04'),
(38, 48, 1, '400', 'E', 4.00, 16400000, '2023-04-06 08:18:30', '2023-04-06 08:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_items`
--

CREATE TABLE `sales_payment_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `b_paid_amount` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_payment_items`
--

INSERT INTO `sales_payment_items` (`id`, `sale_id`, `bank_id`, `b_paid_amount`, `created_at`, `updated_at`) VALUES
(31, 45, 5, 20000000, '2023-04-06 08:15:53', '2023-04-06 08:15:53'),
(32, 46, 5, 7600000, '2023-04-06 08:16:36', '2023-04-06 08:16:36'),
(33, 47, 5, 4800000, '2023-04-06 08:17:04', '2023-04-06 08:17:04'),
(34, 48, 5, 16400000, '2023-04-06 08:18:30', '2023-04-06 08:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule_date` date DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `schedule_date`, `customer_id`, `qty`, `stock`, `time`, `created_at`, `updated_at`) VALUES
(43, '2023-04-08', 652, 10, 1200, NULL, '2023-04-06 17:51:49', '2023-04-06 17:51:49'),
(44, '2023-04-08', 649, 10, 1200, NULL, '2023-04-06 17:52:27', '2023-04-06 17:52:27'),
(45, '2023-04-08', 648, 10, 1200, '23:54:00', '2023-04-06 17:52:27', '2023-04-06 17:52:27'),
(46, '2023-04-08', 646, 10, 1200, '23:55:00', '2023-04-06 17:52:27', '2023-04-06 17:52:27'),
(47, '2023-04-09', 649, 10, 1200, NULL, '2023-04-06 17:53:00', '2023-04-06 17:53:00'),
(48, '2023-04-09', 652, 10, 1200, '23:54:00', '2023-04-06 17:53:00', '2023-04-06 17:53:00'),
(49, '2023-04-07', 652, 10, 1200, NULL, '2023-04-06 17:53:52', '2023-04-06 17:53:52'),
(50, '2023-04-07', 649, 10, 1200, '23:55:00', '2023-04-06 17:53:52', '2023-04-06 17:53:52'),
(51, '2023-04-07', 648, 10, 1200, '14:53:00', '2023-04-06 17:53:52', '2023-04-06 17:53:52'),
(52, '2023-04-07', 646, 10, 1200, '23:57:00', '2023-04-06 17:53:52', '2023-04-06 17:53:52'),
(53, '2023-04-10', 649, 10, 1200, NULL, '2023-04-06 17:54:24', '2023-04-06 17:54:24'),
(54, '2023-04-10', 652, 10, 1200, '15:54:00', '2023-04-06 17:54:24', '2023-04-06 17:54:24'),
(55, '2023-04-10', 648, 10, 1200, '23:57:00', '2023-04-06 17:54:24', '2023-04-06 17:54:24'),
(56, '2023-04-10', 646, 10, 1200, '13:54:00', '2023-04-06 17:54:24', '2023-04-06 17:54:24'),
(57, '2023-04-07', 652, 10, 1245, NULL, '2023-04-06 18:12:12', '2023-04-06 18:12:12'),
(58, '2023-04-07', 649, 56, 1245, '03:12:00', '2023-04-06 18:12:12', '2023-04-06 18:12:12'),
(59, '2023-04-07', 649, 10, 1245, '00:13:00', '2023-04-06 18:13:14', '2023-04-06 18:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2bCgboD2YRPGE044HMMeNRLVREyMXhznAMptdhQr', NULL, '103.78.254.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSG1GTVprR240TWR4NUZMNUxMQndsakdlbDM3czdZMUFPT1NvcXdEcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9hYXJzbC5keWF6Lnh5ei9jYXRlZ29yeS9lZGl0LzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjMxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMCQxTlU1WWNUQjk2di5HTzNkcC44bHJlYi5LajBhUHN3ZkkvS3liNzdldUladlU2LzZ6eG1oUyI7fQ==', 1680926465),
('6WhuZnZgXEVfSd4AKlwXyiPIiWM0f572OMYMd6Qf', NULL, '162.221.192.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFhtc0NQdklCVEcxcUdOTzk0a25FM2NKU3piVDBLYnVmeDdoNElCTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680924047),
('BPTSuEYxgMCwmeV9rNHOiQy3ujmjDMtVdxTYSatG', NULL, '193.32.162.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV3JVaUJzYTc2Zm5INWlydWQwbUVBVVhwbW93MFl1QTJKUFhHc3J1dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1680921084),
('ddPVAEHrNYu5jP9Trc3nJYWI7dhu2rssdvNNljLP', NULL, '103.78.254.174', 'Mozilla/5.0 (Linux; Android 12; 220333QAG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlMwUGxHUDFtY2ZUdzhaU2Y3ZDlWd090dHZPM2N5RTI3UU9peEE3ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9hYXJzbC5keWF6Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680926276),
('L7zLfWGStevNgMHuOE8XbFgijgkWZy8O8kAdCKAL', NULL, '179.43.177.242', 'Hello World', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidno3MFdETlBtdTRMV045MFRpaXJnYnR1SDhpbTNPUFhkVlRLMHkxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680921215),
('lIK3ntg5HsKAlnAxOizQnIij9PmwShceftVx3d0D', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMTcwQmhSSWVOeGlMRVVhTFpBQk1NYm50VkNjU3FHbXZmOUVvQVVHdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTIzMjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3JlcG9ydHMvZG93bmxvYWQ/X3Rva2VuPTE3MEJoUkllTnhpTEVVYUxaQUJNTWJudFZDY1NxR212ZjlFb0FVR3YmZmlsdGVyPSU1QiU3QiUyMmlkJTIyJTNBNSUyQyUyMmV4cGVuc2VUeXBlX2lkJTIyJTNBNiUyQyUyMmRhdGUlMjIlM0ElMjIyMDIzLTA0LTA2JTIyJTJDJTIyYW1vdW50JTIyJTNBNTAwMDAlMkMlMjJsb2NhdGlvbiUyMiUzQSUyMmZhY3RvcnklMjIlMkMlMjJkZXRhaWxzJTIyJTNBJTIyNTAwMCUyMHBjcyUyMiUyQyUyMmNyZWF0ZWRfYXQlMjIlM0ElMjIyMDIzLTA0LTA2VDIzJTNBNTclM0EyMS4wMDAwMDBaJTIyJTJDJTIydXBkYXRlZF9hdCUyMiUzQW51bGwlN0QlMkMlN0IlMjJpZCUyMiUzQTYlMkMlMjJleHBlbnNlVHlwZV9pZCUyMiUzQTMlMkMlMjJkYXRlJTIyJTNBJTIyMjAyMy0wNC0wNiUyMiUyQyUyMmFtb3VudCUyMiUzQTUwJTJDJTIybG9jYXRpb24lMjIlM0ElMjJoZWFkJTIyJTJDJTIyZGV0YWlscyUyMiUzQSUyMk1yJTIwTmlheiUyMCUyOFRyYXZlbCUyMEZyb20lMjBHdWxzaGFuJTIwdG8lMjBTSklCTCUyMFByb2dvdGklMjBTYXJhbmklMjklMjIlMkMlMjJjcmVhdGVkX2F0JTIyJTNBJTIyMjAyMy0wNC0wNlQyMyUzQTU4JTNBMDUuMDAwMDAwWiUyMiUyQyUyMnVwZGF0ZWRfYXQlMjIlM0FudWxsJTdEJTJDJTdCJTIyaWQlMjIlM0E3JTJDJTIyZXhwZW5zZVR5cGVfaWQlMjIlM0EyJTJDJTIyZGF0ZSUyMiUzQSUyMjIwMjMtMDQtMDYlMjIlMkMlMjJhbW91bnQlMjIlM0ExNTAwMDAlMkMlMjJsb2NhdGlvbiUyMiUzQSUyMmhlYWQlMjIlMkMlMjJkZXRhaWxzJTIyJTNBJTIyQXByaWwlMjBNb250aCUyMDIwMjMlMjIlMkMlMjJjcmVhdGVkX2F0JTIyJTNBJTIyMjAyMy0wNC0wNlQyMyUzQTU4JTNBMjcuMDAwMDAwWiUyMiUyQyUyMnVwZGF0ZWRfYXQlMjIlM0FudWxsJTdEJTJDJTdCJTIyaWQlMjIlM0E4JTJDJTIyZXhwZW5zZVR5cGVfaWQlMjIlM0E3JTJDJTIyZGF0ZSUyMiUzQSUyMjIwMjMtMDQtMDYlMjIlMkMlMjJhbW91bnQlMjIlM0ExMjAwMCUyQyUyMmxvY2F0aW9uJTIyJTNBJTIyZmFjdG9yeSUyMiUyQyUyMmRldGFpbHMlMjIlM0ElMjIxMCUyMEJhZ3MlMjBTaGEtQ2VtZW50JTIyJTJDJTIyY3JlYXRlZF9hdCUyMiUzQSUyMjIwMjMtMDQtMDZUMjMlM0E1OCUzQTU4LjAwMDAwMFolMjIlMkMlMjJ1cGRhdGVkX2F0JTIyJTNBbnVsbCU3RCU1RCZzYXZlPVBERiZzb3B0aW9uPWV4cGVuc2UmdHlwZT1wZGYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxOToicGFzc3dvcmRfaGFzaF9hZG1pbiI7czo2MDoiJDJ5JDEwJEFMYk1tR25xQ2VCZmxQLkpUOExXTnUvc3dzbWVydkYyVUZzc1VCQTNRS281MmM2Q3JBOVllIjt9', 1680948933),
('o1mUO353ZTsTX2FfWvAYhlyStCmv6siWkJTk23T1', NULL, '152.89.196.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXFiczFUSW8xZzgxa1d6ajR6OUR2WE1RbHhLTzNYaTRpOFBPdEQzWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTU3OiJodHRwOi8vMTY1LjIyLjI0MS4xMjgvaW5kZXgucGhwP2Z1bmN0aW9uPWNhbGxfdXNlcl9mdW5jX2FycmF5JnM9JTJGSW5kZXglMkYlNUN0aGluayU1Q2FwcCUyRmludm9rZWZ1bmN0aW9uJnZhcnMlNUIwJTVEPW1kNSZ2YXJzJTVCMSU1RCU1QjAlNUQ9SGVsbG9UaGlua1BIUDIxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1680926334),
('OnJ2K8zB0O5iznGoxv5ItSV4mPx5wJzfyRnZLXGG', NULL, '103.149.192.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibGE5QTBUanRXRXF5SXJ6NFhSMjlGRU5qbTh3Mmxzb2VuMVVnS1NpQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680922929),
('UKeqYaNmQHIUcsncsFyTGsw36U70G7NB3LOFuQhF', NULL, '143.110.222.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjZPYkdQc1d1SkRsY0tYUnZqRlJxNGpYdEQzMlNSYTFQbDgySkdERiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680923746),
('utHF5ce7fgRRM32oQlLb6lv6aU134NPwI2zi8aFe', NULL, '65.49.20.69', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkpOd1dqamp4ZWRDeXZJQkdjSHBuazJMaEk0UEU0ZnlCVHM4bEZoaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xNjUuMjIuMjQxLjEyOCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1680920474),
('xjxk0d64WRse6bKjwLy2TqYF6v5NaWlExbiKVdsn', NULL, '193.32.162.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYnQ2bGFrQ3gzZFk2WmZhU09nT21TV1FDeXBCYmpteE1JTTV2dDdVQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1680924519);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startingPrice` int(11) DEFAULT NULL,
  `slideStyle` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `address`, `mobile`, `email_address`, `phone`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`) VALUES
(2, 'Dubai Chemicals', 'Dubai, UAE', '3873821314', 'dubai@chemicals.com', NULL, 'Dubai', 'Dubai', '1234', NULL, '2023-03-28 05:00:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `todays_productions`
--

CREATE TABLE `todays_productions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todays_productions`
--

INSERT INTO `todays_productions` (`id`, `product`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Sulphuric Acid', '0', '2023-02-27 03:43:52', '2023-02-27 03:43:52'),
(17, 'Sulphuric Acid', '45', '2023-04-06 17:55:45', '2023-04-06 17:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acid_products`
--
ALTER TABLE `acid_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chalans`
--
ALTER TABLE `chalans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_items_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisition_types`
--
ALTER TABLE `requisition_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_items_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sales_payment_items`
--
ALTER TABLE `sales_payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payment_items_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todays_productions`
--
ALTER TABLE `todays_productions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acid_products`
--
ALTER TABLE `acid_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chalans`
--
ALTER TABLE `chalans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `requisition_types`
--
ALTER TABLE `requisition_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `sales_items`
--
ALTER TABLE `sales_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales_payment_items`
--
ALTER TABLE `sales_payment_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `todays_productions`
--
ALTER TABLE `todays_productions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD CONSTRAINT `payment_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD CONSTRAINT `sales_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payment_items`
--
ALTER TABLE `sales_payment_items`
  ADD CONSTRAINT `sales_payment_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
