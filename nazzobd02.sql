-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 08:05 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_area_id` int(11) DEFAULT 0,
  `role_id` int(11) NOT NULL,
  `reset_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `admin_area_id`, `role_id`, `reset_token`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@groco.com', '$2y$10$zXjrCkWKfH82sMeP5y9VhOQRK/pttxbAm4YMWkv2bZlBRT.IL0kEC', 0, 1, NULL, 'avatar5f69f574acf1c.png', 1, NULL, '2020-09-22 13:00:36'),
(2, 'Sales Admin', 'sales@groco.com', '$2y$10$1RQLkt852c.hPobY4Esz6eZ2jzBuJgW81DYpdX/eVnYtM08FL2R/i', 5, 2, NULL, 'avatar5f8c29c39651b.jpeg', 1, '2020-10-18 11:40:51', '2020-10-18 11:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_view` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for Amount, 2 for percentage',
  `amount` double NOT NULL,
  `max_amount_limit` double DEFAULT NULL,
  `valid_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount_type`, `amount`, `max_amount_limit`, `valid_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LLLLLL', 1, 67, 67, '2020-10-16', 1, '2020-10-06 06:48:10', '2020-10-06 06:48:10'),
(2, 'SADIN', 2, 10, 50, '2020-10-18', 1, '2020-10-14 11:32:44', '2020-10-14 11:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = inactive 1 = active',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `code`, `symbol`, `currency_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 0, 1, NULL, NULL),
(3, 'Afghanistan', 'Afghanis', 'AFN', 'AFN', 0, 1, NULL, NULL),
(4, 'Argentina', 'Pesos', 'ARS', '$', 0, 1, NULL, NULL),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 0, 1, NULL, NULL),
(6, 'Australia', 'Dollars', 'AUD', '$', 0, 1, NULL, NULL),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', 0, 1, NULL, NULL),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 0, 1, NULL, NULL),
(9, 'Barbados', 'Dollars', 'BBD', '$', 0, 1, NULL, NULL),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 0, 1, NULL, NULL),
(11, 'Belgium', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 0, 1, NULL, NULL),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 0, 1, NULL, NULL),
(14, 'Bolivia', 'Bolivianos', 'BOB', 'b', 0, 1, NULL, NULL),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 0, 1, NULL, NULL),
(16, 'Botswana', 'Pula', 'BWP', 'P', 0, 1, NULL, NULL),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв', 0, 1, NULL, NULL),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 0, 1, NULL, NULL),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 0, 1, NULL, NULL),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 0, 1, NULL, NULL),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 0, 1, NULL, NULL),
(22, 'Canada', 'Dollars', 'CAD', '$', 0, 1, NULL, NULL),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 0, 1, NULL, NULL),
(24, 'Chile', 'Pesos', 'CLP', '$', 0, 1, NULL, NULL),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 0, 1, NULL, NULL),
(26, 'Colombia', 'Pesos', 'COP', '$', 0, 1, NULL, NULL),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 0, 1, NULL, NULL),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 0, 1, NULL, NULL),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 0, 1, NULL, NULL),
(30, 'Cyprus', 'Euro', 'EUR', '€', 0, 1, NULL, '2020-05-11 23:19:27'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 0, 1, NULL, NULL),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 0, 1, NULL, NULL),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 0, 1, NULL, NULL),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 0, 1, NULL, NULL),
(35, 'Egypt', 'Pounds', 'EGP', '£', 0, 1, NULL, NULL),
(36, 'El Salvador', 'Colones', 'SVC', '$', 0, 1, NULL, NULL),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 0, 1, NULL, NULL),
(38, 'Euro', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 0, 1, NULL, NULL),
(40, 'Fiji', 'Dollars', 'FJD', '$', 0, 1, NULL, NULL),
(41, 'France', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(42, 'Ghana', 'Cedis', 'GHC', '¢', 0, 1, NULL, NULL),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 0, 1, NULL, NULL),
(44, 'Greece', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 0, 1, NULL, NULL),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 0, 1, NULL, NULL),
(47, 'Guyana', 'Dollars', 'GYD', '$', 0, 1, NULL, NULL),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 0, 1, NULL, NULL),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 0, 1, NULL, NULL),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 0, 1, NULL, NULL),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 0, 1, NULL, NULL),
(53, 'India', 'Rupees', 'INR', 'Rp', 0, 1, NULL, NULL),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 0, 1, NULL, NULL),
(55, 'Iran', 'Rials', 'IRR', '﷼', 0, 1, NULL, NULL),
(56, 'Ireland', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 0, 1, NULL, NULL),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 0, 1, NULL, NULL),
(59, 'Italy', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 0, 1, NULL, NULL),
(61, 'Japan', 'Yen', 'JPY', '¥', 0, 1, NULL, NULL),
(62, 'Jersey', 'Pounds', 'JEP', '£', 0, 1, NULL, NULL),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 0, 1, NULL, NULL),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 0, 1, NULL, NULL),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 0, 1, NULL, NULL),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 0, 1, NULL, NULL),
(67, 'Laos', 'Kips', 'LAK', '₭', 0, 1, NULL, NULL),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 0, 1, NULL, NULL),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 0, 1, NULL, NULL),
(70, 'Liberia', 'Dollars', 'LRD', '$', 0, 1, NULL, NULL),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 0, 1, NULL, NULL),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 0, 1, NULL, NULL),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 0, 1, NULL, NULL),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 0, 1, NULL, NULL),
(76, 'Malta', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 0, 1, NULL, NULL),
(78, 'Mexico', 'Pesos', 'MXN', '$', 0, 1, NULL, NULL),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 0, 1, NULL, NULL),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT', 0, 1, NULL, NULL),
(81, 'Namibia', 'Dollars', 'NAD', '$', 0, 1, NULL, NULL),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 0, 1, NULL, NULL),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 0, 1, NULL, NULL),
(84, 'Netherlands', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 0, 1, NULL, NULL),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 0, 1, NULL, NULL),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', 0, 1, NULL, NULL),
(88, 'North Korea', 'Won', 'KPW', '₩', 0, 1, NULL, NULL),
(89, 'Norway', 'Krone', 'NOK', 'kr', 0, 1, NULL, NULL),
(90, 'Oman', 'Rials', 'OMR', '﷼', 0, 1, NULL, NULL),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 0, 1, NULL, NULL),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 0, 1, NULL, NULL),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 0, 1, NULL, NULL),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', 0, 1, NULL, NULL),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 0, 1, NULL, NULL),
(96, 'Poland', 'Zlotych', 'PLN', 'zł', 0, 1, NULL, NULL),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 0, 1, NULL, NULL),
(98, 'Romania', 'New Lei', 'RON', 'lei', 0, 1, NULL, NULL),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 0, 1, NULL, NULL),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 0, 1, NULL, NULL),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 0, 1, NULL, NULL),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 0, 1, NULL, NULL),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 0, 1, NULL, NULL),
(104, 'Singapore', 'Dollars', 'SGD', '$', 0, 1, NULL, NULL),
(105, 'Slovenia', 'Euro', 'EUR', '€', 0, 1, NULL, NULL),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 0, 1, NULL, NULL),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 0, 1, NULL, NULL),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 0, 1, NULL, NULL),
(109, 'South Korea', 'Won', 'KRW', '₩', 0, 1, NULL, NULL),
(110, 'Spain', 'Euro', 'EUR', '€', 0, 1, NULL, '2020-02-08 18:13:59'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 0, 1, NULL, '2020-02-02 20:18:58'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 0, 1, NULL, NULL),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 0, 1, NULL, '2020-02-02 22:35:58'),
(114, 'Suriname', 'Dollars', 'SRD', '$', 0, 1, NULL, NULL),
(115, 'Syria', 'Pounds', 'SYP', '£', 0, 1, NULL, NULL),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 0, 1, NULL, NULL),
(117, 'Thailand', 'Baht', 'THB', '฿', 0, 1, NULL, NULL),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 0, 1, NULL, NULL),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 0, 1, NULL, NULL),
(120, 'Turkey', 'Liras', 'TRL', '£', 0, 1, NULL, NULL),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 0, 1, NULL, NULL),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 0, 1, NULL, NULL),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 0, 1, NULL, NULL),
(124, 'United States of America', 'Dollars', 'USD', '$', 1, 1, NULL, '2020-11-10 11:56:25'),
(125, 'Uruguay', 'Pesos', 'UYU', 'u', 0, 1, NULL, '2020-02-02 19:20:55'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 0, 1, NULL, NULL),
(127, 'Vatican City', 'Euro', 'EUR', '€', 0, 1, NULL, '2020-02-03 17:44:40'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 0, 1, NULL, '2020-02-02 20:18:46'),
(129, 'Vietnam', 'Dong', 'VND', '₫', 0, 1, NULL, '2020-02-08 18:14:06'),
(130, 'Yemen', 'Rials', 'YER', '﷼', 0, 1, NULL, NULL),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 1, NULL, '2020-02-02 19:20:40'),
(133, 'Bangladesh', 'bangladeshi taka', 'BDT', '৳', 0, 1, '2020-02-02 18:38:33', '2020-11-10 11:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `current_currencies`
--

CREATE TABLE `current_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_sign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_slot_settings`
--

CREATE TABLE `delivery_slot_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_interval` int(11) NOT NULL DEFAULT 0 COMMENT 'slot date start from after  this interval',
  `date_end` int(11) NOT NULL DEFAULT 0 COMMENT 'slot date will be disabled after this day',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'date time slot will show = 1  or not = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_slot_settings`
--

INSERT INTO `delivery_slot_settings` (`id`, `date_interval`, `date_end`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 7, 1, NULL, '2020-10-14 11:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_time_s_lots`
--

CREATE TABLE `delivery_time_s_lots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` time NOT NULL COMMENT 'slot will be expired if current time greater then this time for same date',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_time_s_lots`
--

INSERT INTO `delivery_time_s_lots` (`id`, `slot_name`, `expired_at`, `status`, `created_at`, `updated_at`) VALUES
(3, '9am - 10am', '08:30:00', 1, NULL, '2020-10-06 05:31:42'),
(4, '10am - 11am', '09:00:00', 1, NULL, NULL),
(5, '11am - 12pm', '10:20:00', 1, NULL, NULL),
(6, '12pm - 01pm', '11:00:00', 1, NULL, NULL),
(7, '2pm - 3pm', '13:20:00', 1, '2020-10-05 11:47:59', '2020-10-06 05:28:19'),
(9, '4pm - 5pm', '15:30:00', 1, '2020-10-06 05:30:14', '2020-10-06 05:30:14'),
(10, '5pm - 6pm', '16:30:00', 1, '2020-10-06 05:31:14', '2020-10-06 05:31:14'),
(12, '08 am - 09 am', '07:30:00', 1, '2020-10-18 11:14:23', '2020-10-18 11:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `driver`, `host`, `port`, `username`, `password`, `encryption`, `from_address`, `from_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '587', 'test@mailtrap.io', 'your_password', 'tls', 'from@gmail.com', 'Limmerz', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `app_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UA-1214234234', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `installtion_settings`
--

CREATE TABLE `installtion_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `installtion_settings`
--

INSERT INTO `installtion_settings` (`id`, `purchase_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '018343942160183439431501834394216', 1, '2020-10-19 05:05:50', '2020-10-19 05:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `president` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `icon`, `menu_url`, `president`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Administration', 'fa-sitemap', NULL, 1, 0, NULL, NULL),
(2, 0, 'Product', 'fa-diamond', NULL, 2, 0, NULL, NULL),
(3, 0, 'Offers & Coupon', 'fa-fire', NULL, 3, 0, NULL, NULL),
(4, 0, 'Order', 'fa-first-order', NULL, 4, 0, NULL, NULL),
(5, 0, 'Customer', 'fa-group', 'customer.index', 5, 0, NULL, NULL),
(6, 0, 'General Setting', 'fa-cog', NULL, 6, 0, NULL, NULL),
(7, 0, 'Emailing User', 'fa-envelope', 'email.index', 7, 0, NULL, NULL),
(8, 1, 'Role', NULL, 'role.index', 1, 0, NULL, NULL),
(9, 1, 'Manage Admin', NULL, 'admin.index', 2, 0, NULL, NULL),
(10, 2, 'Category', NULL, 'category.index', 1, 0, NULL, NULL),
(11, 2, 'Brand', NULL, 'brand.index', 3, 0, NULL, NULL),
(12, 2, 'Sub Category', NULL, 'sub-category.index', 2, 0, NULL, NULL),
(13, 2, 'Product', NULL, 'product.index', 5, 0, NULL, NULL),
(14, 3, 'Campaign', NULL, 'offer.index', 1, 0, NULL, NULL),
(15, 6, 'Currency Setting', NULL, 'currency.index', 1, 0, NULL, NULL),
(16, 6, 'Pyament Gateway Setting', NULL, 'gateway.index', 2, 0, NULL, NULL),
(17, 6, 'Social Login Setting', NULL, 'social.index', 3, 0, NULL, NULL),
(18, 6, 'Shop Setting', NULL, 'shop.index', 4, 0, NULL, NULL),
(19, 6, 'Page Seting', NULL, 'pages.index', 5, 0, NULL, NULL),
(20, 6, 'Seo Setting', NULL, 'seo.index', 6, 0, NULL, NULL),
(21, 6, 'Messenger & Google Analytics', NULL, 'message.analytics', 7, 0, NULL, NULL),
(22, 6, 'Mail Setting', NULL, 'email-setting.index', 8, 0, NULL, NULL),
(23, 6, 'Shipping Cost Setting', NULL, 'shipping.index', 2, 0, NULL, NULL),
(24, 0, 'Report', 'fa-fire', NULL, 9, 0, NULL, NULL),
(25, 24, 'Stock Report', NULL, 'stock.report', 1, 0, NULL, NULL),
(26, 24, 'Sales Report', NULL, 'sales.report', 2, 0, NULL, NULL),
(27, 24, 'Invoice Report', NULL, 'invoice.report', 3, 0, NULL, NULL),
(28, 6, 'Order Area', NULL, 'order-area.index', 9, 0, NULL, NULL),
(29, 4, 'All Order', NULL, 'order.index', 1, 0, NULL, NULL),
(30, 4, 'My Area\'s Order', NULL, 'areawiseorder.index', 2, 0, NULL, NULL),
(31, 24, 'Account Report', NULL, 'transection.report', 4, 0, NULL, NULL),
(32, 2, 'Sub Sub Category', NULL, 'sub-sub-category.index', 4, 1, NULL, NULL),
(33, 6, 'Slider', NULL, 'slider.index', 10, 1, '2020-07-10 03:35:22', '2020-07-10 03:35:23'),
(36, 3, 'Coupon', NULL, 'coupon.index', 3, 0, NULL, NULL),
(37, 3, 'Send Coupon', NULL, 'send-coupon.index', 4, 0, NULL, NULL),
(39, 6, 'Date Slot', NULL, 'slot.index', 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messengers`
--

CREATE TABLE `messengers` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messengers`
--

INSERT INTO `messengers` (`id`, `app_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '147855768574821', 0, NULL, '2020-10-08 07:09:07');

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
(44, '2014_10_12_000000_create_users_table', 1),
(45, '2014_10_12_100000_create_password_resets_table', 1),
(46, '2019_08_19_000000_create_failed_jobs_table', 1),
(47, '2019_12_24_062500_create_categories_table', 1),
(48, '2019_12_24_063542_create_sub_categories_table', 1),
(49, '2019_12_24_063938_create_products_table', 1),
(50, '2019_12_24_083508_create_currencies_table', 1),
(51, '2019_12_24_084148_create_current_currencies_table', 1),
(52, '2019_12_24_094706_create_brands_table', 1),
(53, '2019_12_26_112745_create_admins_table', 1),
(54, '2020_01_05_102155_create_sub_category_brands_table', 1),
(55, '2020_01_14_105633_create_product_keywords_table', 1),
(56, '2020_01_19_062248_create_product_images_table', 1),
(57, '2020_01_27_100851_create_campaigns_table', 1),
(58, '2020_02_03_111021_create_social_creadentials_table', 1),
(59, '2020_02_04_055030_create_payment_settings_table', 1),
(60, '2020_02_05_094536_create_pages_table', 1),
(61, '2020_02_06_073208_create_seo_settings_table', 1),
(62, '2020_02_06_073820_create_seo_keywords_table', 1),
(63, '2020_02_09_083433_create_shop_settings_table', 1),
(64, '2020_02_11_094321_create_orders_table', 1),
(65, '2020_02_11_094510_create_order_details_table', 1),
(66, '2020_02_11_121923_create_messengers_table', 1),
(67, '2020_02_11_122454_create_google_analytics_table', 1),
(68, '2020_02_13_062611_create_shipping_costs_table', 1),
(69, '2020_02_23_054824_create_roles_table', 1),
(70, '2020_02_23_055338_create_menus_table', 1),
(71, '2020_02_23_055421_create_permissions_table', 1),
(72, '2020_02_25_123355_create_emails_table', 1),
(73, '2020_03_07_150336_create_customers_table', 1),
(74, '2020_03_22_182842_create_subscribers_table', 1),
(75, '2020_04_03_115233_create_shipping_areas_table', 1),
(76, '2020_05_19_083351_create_sub_sub_categories_table', 1),
(77, '2020_06_04_113657_create_o_t_p_s_table', 1),
(78, '2020_06_09_115052_create_stockhistories_table', 1),
(79, '2020_07_10_101352_create_sliders_table', 1),
(80, '2020_08_25_042045_create_sizes_table', 1),
(81, '2020_08_25_042139_create_colors_table', 1),
(82, '2020_08_31_100235_create_product_size_table', 1),
(83, '2020_08_31_100901_create_product_color_table', 1),
(84, '2020_09_07_074204_create_coupons_table', 1),
(85, '2020_09_07_075554_create_user_coupon_table', 1),
(86, '2020_09_07_154623_create_trial_products_table', 1),
(87, '2020_09_28_133437_create_pwa_settings_table', 2),
(88, '2020_09_30_113719_create_installtion_settings_table', 3),
(89, '2020_09_27_124921_create_trials_table', 4),
(90, '2020_10_05_122452_create_delivery_slot_settings_table', 5),
(91, '2020_10_05_122710_create_delivery_time_s_lots_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_otp`
--

CREATE TABLE `mobile_otp` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'customer id',
  `location_id` int(11) DEFAULT 0,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_area_id` int(11) DEFAULT NULL COMMENT 'shipping area id',
  `shipping_amount` double NOT NULL DEFAULT 0,
  `total_item` int(11) NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL,
  `total_buying_amount` double NOT NULL DEFAULT 0,
  `cupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_back` double DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `coupon_discount` double NOT NULL DEFAULT 0,
  `payment_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 not paid 1 = paid',
  `payment_method` tinyint(4) NOT NULL DEFAULT 0,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_delivery_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` int(11) NOT NULL DEFAULT 0,
  `confirmed_by` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 pending,1=on process,2=on delivery,3 = delivered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT 0,
  `size_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL COMMENT 'customer_id',
  `quantity` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `total_buying_price` double NOT NULL,
  `total_selling_price` double NOT NULL,
  `unit_discount` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `publish`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Condition', '<p>Terms and Conditions agreements act as a legal contract between you (the company) who has the website or mobile app and the user who access your website and mobile app.</p><p>Having a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (<a href=\"https://termsfeed.com/blog/gdpr/\" rel=\"noopener noreferrer\" target=\"_blank\">GDPR</a>).</p><p>It\'s up to you to set the rules and guidelines that the user must agree to. You can think of your Terms and Conditions agreement as the legal agreement where you <strong>maintain your rights</strong> to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.</p><p>Terms and Conditions are also known as Terms of Service or Terms of Use.</p>', 1, '2020-10-18 10:59:04', '2020-10-18 10:59:04'),
(2, 'Privacy Policy', '<p>Terms and Conditions agreements act as a legal contract between you (the company) who has the website or mobile app and the user who access your website and mobile app.</p><p>Having a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (<a href=\"https://termsfeed.com/blog/gdpr/\" rel=\"noopener noreferrer\" target=\"_blank\">GDPR</a>).</p><p>It\'s up to you to set the rules and guidelines that the user must agree to. You can think of your Terms and Conditions agreement as the legal agreement where you <strong>maintain your rights</strong> to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.</p><p>Terms and Conditions are also known as Terms of Service or Terms of Use.</p>', 1, '2020-10-18 10:59:18', '2020-10-18 10:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'encryption_key for flutter',
  `client_secret` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'secret_key for flutter',
  `public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'flutter public key',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `live_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `provider`, `client_id`, `client_secret`, `public_key`, `status`, `live_status`, `created_at`, `updated_at`) VALUES
(1, 'Cash on Delivery', '', '', 'abc', 1, 1, '2020-04-23 16:45:09', '2020-04-23 16:45:12'),
(2, 'paypal', 'AXhhMYItOyEdhEUJCF-wFASr9JGyPFd1f38jv32OtDzrxPiKUwBTLV9ewjgJJuZb8C_G7Nh-YXOil-vj', 'EF8JKcIf4YOMKtYTLBPiEx9VPenq6qiv5DNXlpJkDuPlIMUCYi16B08RDuLOY8r1VriMRNG563x_InvS', 'abc', 1, 0, '2020-04-12 10:20:49', '2020-04-11 03:48:52'),
(3, 'stripe', 'pk_test_76vAdtoXsSBtYoxrZNCQAFPm007T5F0FL6', 'sk_test_6mdHPx4HzdfgvHl03vQeeKB500lLcs7oAy', 'abc', 0, 0, '2020-04-12 10:20:50', '2020-10-18 11:01:35'),
(4, 'ssl-commerz', 'limme5e92958f76c27', 'limme5e92958f76c27@ssl', 'abc', 1, 0, '2020-04-12 10:20:45', '2020-05-10 21:19:44'),
(5, 'Razorpay', 'rzp_test_u9yNniBONQCWfF', '2B5sHo2BbgRt9vnf6vaoSZk2', 'abc', 0, 1, '2020-07-03 12:59:11', '2020-10-18 11:01:43'),
(6, 'Flutterwave', 'FLWSECK_TEST-e527bac3669759b9dccb8152d72bd638-X', '2B5sHo2BbgRt9vnf6vaoSZk2', 'FLWPUBK_TEST-3796e2f4e0ada89eb3583850b4017924-X', 0, 1, '2020-07-03 12:59:11', '2020-10-18 11:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(115, 1, 8, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(116, 1, 9, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(117, 1, 1, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(118, 1, 31, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(119, 1, 25, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(120, 1, 27, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(121, 1, 26, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(122, 1, 24, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(123, 1, 7, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(124, 1, 33, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(125, 1, 28, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(126, 1, 39, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(127, 1, 15, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(128, 1, 16, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(129, 1, 17, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(130, 1, 18, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(131, 1, 19, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(132, 1, 20, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(133, 1, 21, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(134, 1, 22, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(135, 1, 23, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(136, 1, 6, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(137, 1, 5, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(138, 1, 29, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(139, 1, 30, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(140, 1, 4, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(141, 1, 14, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(142, 1, 37, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(143, 1, 36, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(144, 1, 3, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(145, 1, 32, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(146, 1, 34, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(147, 1, 35, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(148, 1, 10, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(149, 1, 13, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(150, 1, 12, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(151, 1, 11, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(152, 1, 2, '2020-10-08 06:41:02', '2020-10-08 06:41:02'),
(153, 2, 33, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(154, 2, 28, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(155, 2, 23, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(156, 2, 22, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(157, 2, 15, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(158, 2, 19, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(159, 2, 20, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(160, 2, 21, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(161, 2, 39, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(162, 2, 6, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(163, 2, 5, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(164, 2, 30, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(165, 2, 4, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(166, 2, 37, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(167, 2, 36, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(168, 2, 14, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(169, 2, 3, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(170, 2, 32, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(171, 2, 12, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(172, 2, 13, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(173, 2, 11, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(174, 2, 10, '2020-10-18 11:40:10', '2020-10-18 11:40:10'),
(175, 2, 2, '2020-10-18 11:40:10', '2020-10-18 11:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT 0,
  `brand_id` int(11) DEFAULT 0,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `current_quantity` int(11) NOT NULL DEFAULT 0,
  `quantity_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `total_view` int(11) NOT NULL DEFAULT 0,
  `total_sold` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `discount_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 is amount 2 is percent',
  `discount_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = no discount , 1= discount',
  `discount` double NOT NULL DEFAULT 0,
  `discount_amount` double NOT NULL DEFAULT 0,
  `campaign_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `home_view` tinyint(4) NOT NULL DEFAULT 1,
  `hot_deal` tinyint(4) NOT NULL DEFAULT 0,
  `trialable` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_keywords`
--

CREATE TABLE `product_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `keyword_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pwa_settings`
--

CREATE TABLE `pwa_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pwa_settings`
--

INSERT INTO `pwa_settings` (`id`, `app_name`, `app_short_name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Limmerz Shop', 'Limmerz', 'icon-512x512.png', '2020-09-28 11:31:01', '2020-09-28 11:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL),
(2, 'Sales Admin', '2020-10-18 11:39:28', '2020-10-18 11:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `seo_keywords`
--

CREATE TABLE `seo_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_setting_id` int(11) NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_keywords`
--

INSERT INTO `seo_keywords` (`id`, `seo_setting_id`, `keyword`, `created_at`, `updated_at`) VALUES
(13, 1, 'limmerz', '2021-10-06 10:43:42', '2021-10-06 10:43:42'),
(14, 1, 'grocery', '2021-10-06 10:43:42', '2021-10-06 10:43:42'),
(15, 1, 'grocery business', '2021-10-06 10:43:42', '2021-10-06 10:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitemap_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_image`, `sitemap_link`, `keyword`, `author`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Groco | Start Your Own Grocery Today', '615d7dde29be2.jpeg', 'sitemap.com', 'limmerz, grocery, grocery business', 'Limmex Automation', 'Groco is an grocery eCommerce solution for grocery based on laravel and vue.js', '2020-02-08 18:05:09', '2021-10-06 10:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_areas`
--

CREATE TABLE `shipping_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_costs`
--

CREATE TABLE `shipping_costs` (
  `id` int(10) UNSIGNED NOT NULL,
  `minimum_order_amount` double DEFAULT NULL,
  `shipping_amount` double NOT NULL,
  `order_amount` double NOT NULL,
  `discount_amount` double NOT NULL,
  `shipping_status` tinyint(4) NOT NULL DEFAULT 0,
  `discount_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_costs`
--

INSERT INTO `shipping_costs` (`id`, `minimum_order_amount`, `shipping_amount`, `order_amount`, `discount_amount`, `shipping_status`, `discount_status`, `created_at`, `updated_at`) VALUES
(1, 200, 40, 1500, 20, 1, 1, '2020-04-18 14:48:42', '2020-10-18 11:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `shop_settings`
--

CREATE TABLE `shop_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_short_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_header` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deal_status` tinyint(4) DEFAULT 1,
  `slider_status` tinyint(4) DEFAULT 1,
  `onsale_status` tinyint(4) DEFAULT 1,
  `sidemenu_status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_settings`
--

INSERT INTO `shop_settings` (`id`, `shop_name`, `shop_short_name`, `address`, `footer_text`, `phone`, `email`, `facebook`, `twitter`, `youtube`, `logo_header`, `logo_footer`, `favicon`, `theme_color`, `hot_deal_status`, `slider_status`, `onsale_status`, `sidemenu_status`, `created_at`, `updated_at`) VALUES
(1, 'Groco Grocery Shop', NULL, '219 muktobangla complex , Dhaka-1205', '2020 all right reserve by@LimmexAutomation', '01312447212767', 'limmexbd@gmail.com', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', '615d4b0da6f06.png', '615d4b0dd6203.png', '5f96603d2f188.jpeg', '#E3106E', 1, 0, 1, 1, '2020-02-09 21:00:06', '2021-10-06 07:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_link_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_creadentials`
--

CREATE TABLE `social_creadentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `live_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_creadentials`
--

INSERT INTO `social_creadentials` (`id`, `provider`, `app_id`, `app_secret`, `status`, `live_status`, `created_at`, `updated_at`) VALUES
(1, 'facebook', '1256802924708629', '793eeb9bc876ec94526243a212fd2f2e', 1, 1, '2020-04-11 10:09:55', '2020-04-24 17:09:28'),
(2, 'google', '500564591191-vcvu4nodvnca5c7nq6tr21fq2hhb0e11.apps.googleusercontent.com', 'FTiJAbCehKbdVWRIcDHDsG0Z', 1, 1, '2020-04-11 10:09:57', '2020-04-24 17:09:32'),
(3, 'twitter', 'your_twitter_app_id', 'your_twitter_app_secret', 0, 0, '2020-04-11 10:10:01', '2020-06-01 02:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `stockhistories`
--

CREATE TABLE `stockhistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sub_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_new_stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_native_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_view` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_brands`
--

CREATE TABLE `sub_category_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_sub_category_native_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trials`
--

CREATE TABLE `trials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_in_cart` int(11) NOT NULL DEFAULT 0,
  `max_trial_item` int(11) NOT NULL,
  `trial_charge_per_item` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trials`
--

INSERT INTO `trials` (`id`, `product_in_cart`, `max_trial_item`, `trial_charge_per_item`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0, 0, NULL, '2020-10-04 06:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `trial_products`
--

CREATE TABLE `trial_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `sub_sub_category_id` int(11) DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT 0,
  `size_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL COMMENT 'customer_id',
  `quantity` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `total_buying_price` double NOT NULL,
  `total_selling_price` double NOT NULL,
  `unit_discount` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `trialed` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = not trialed , 1 = trialed',
  `invoiced` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = not invoiced, 1 = invoiced',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT 0,
  `points` double NOT NULL DEFAULT 0 COMMENT 'according points user will get bonus',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_coupon`
--

CREATE TABLE `user_coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(4) NOT NULL DEFAULT 0,
  `is_applied` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_coupon`
--

INSERT INTO `user_coupon` (`id`, `user_id`, `coupon_code`, `valid_date`, `is_used`, `is_applied`, `created_at`, `updated_at`) VALUES
(1, 3, 'LLLLLL', '2020-10-16', 1, 1, '2020-10-06 06:48:26', '2020-10-06 06:49:03'),
(2, 1, 'SADIN', '2020-10-18', 0, 0, '2020-10-14 11:33:19', '2020-10-14 11:33:19'),
(3, 3, 'SADIN', '2020-10-18', 0, 0, '2020-10-14 11:33:19', '2020-10-14 11:33:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_currency_status_index` (`currency_status`);

--
-- Indexes for table `current_currencies`
--
ALTER TABLE `current_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_slot_settings`
--
ALTER TABLE `delivery_slot_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_time_s_lots`
--
ALTER TABLE `delivery_time_s_lots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installtion_settings`
--
ALTER TABLE `installtion_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messengers`
--
ALTER TABLE `messengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_keywords`
--
ALTER TABLE `product_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pwa_settings`
--
ALTER TABLE `pwa_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_areas`
--
ALTER TABLE `shipping_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_settings`
--
ALTER TABLE `shop_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_creadentials`
--
ALTER TABLE `social_creadentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockhistories`
--
ALTER TABLE `stockhistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_brands`
--
ALTER TABLE `sub_category_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trials`
--
ALTER TABLE `trials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trial_products`
--
ALTER TABLE `trial_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_coupon`
--
ALTER TABLE `user_coupon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `current_currencies`
--
ALTER TABLE `current_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_slot_settings`
--
ALTER TABLE `delivery_slot_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_time_s_lots`
--
ALTER TABLE `delivery_time_s_lots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `installtion_settings`
--
ALTER TABLE `installtion_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `messengers`
--
ALTER TABLE `messengers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_keywords`
--
ALTER TABLE `product_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pwa_settings`
--
ALTER TABLE `pwa_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo_keywords`
--
ALTER TABLE `seo_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_areas`
--
ALTER TABLE `shipping_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_costs`
--
ALTER TABLE `shipping_costs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_settings`
--
ALTER TABLE `shop_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_creadentials`
--
ALTER TABLE `social_creadentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stockhistories`
--
ALTER TABLE `stockhistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category_brands`
--
ALTER TABLE `sub_category_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trials`
--
ALTER TABLE `trials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trial_products`
--
ALTER TABLE `trial_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_coupon`
--
ALTER TABLE `user_coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
