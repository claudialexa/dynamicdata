-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2016 at 10:45 PM
-- Server version: 5.6.28-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dining12_dinersguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `name`) VALUES
(0, 'None'),
(1, 'Gold'),
(2, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `metros`
--

CREATE TABLE IF NOT EXISTS `metros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `metros`
--

INSERT INTO `metros` (`id`, `name`) VALUES
(1, 'Chicago'),
(2, 'Detroit'),
(3, 'Houston'),
(4, 'Los Angeles'),
(5, 'Miami'),
(6, 'New Orleans'),
(7, 'New York City'),
(8, 'Philadelphia'),
(9, 'San Francisco'),
(10, 'Washington DC'),
(11, 'Boston'),
(12, 'Dallas');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_07_08_174721_create_awards_table', 1),
('2014_07_08_174721_create_metros_table', 1),
('2014_07_08_174721_create_reports_table', 1),
('2014_07_08_174721_create_restaurant_metros_table', 1),
('2014_07_08_174721_create_restaurants_table', 1),
('2014_07_08_174731_create_foreign_keys', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `permissions` text COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `foursquare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tipped_wage` int(1) DEFAULT NULL,
  `untipped_wage` int(1) DEFAULT NULL,
  `sick_days` int(1) NOT NULL,
  `promotion` int(1) NOT NULL,
  `bussers` int(2) DEFAULT NULL,
  `bussers_color` int(2) DEFAULT NULL,
  `bussers_women` int(2) DEFAULT NULL,
  `servers` int(2) DEFAULT NULL,
  `servers_color` int(2) DEFAULT NULL,
  `servers_women` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_foursquare_id_index` (`foursquare_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=106 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `foursquare_id`, `created_at`, `updated_at`, `deleted_at`, `tipped_wage`, `untipped_wage`, `sick_days`, `promotion`, `bussers`, `bussers_color`, `bussers_women`, `servers`, `servers_color`, `servers_women`) VALUES
(6, '4ef134fa6c25ad9ee77f88ad', '2014-11-26 07:22:59', '2014-11-26 07:22:59', NULL, -2, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '53cab90e498e2b622e24eda2', '2014-12-07 20:03:18', '2014-12-07 20:03:18', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '507c9811e4b062f7dfeb5a27', '2014-12-24 07:27:04', '2014-12-24 07:27:04', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '4ace0770f964a520f9cd20e3', '2014-12-30 21:12:16', '2014-12-30 21:12:16', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '3fd66200f964a52034e81ee3', '2014-12-30 21:13:11', '2014-12-30 21:13:11', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '4db60dd04df05e5aaaff8c23', '2014-12-30 21:13:57', '2014-12-30 21:13:57', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '4197f180f964a520201e1fe3', '2015-01-04 04:04:18', '2015-01-04 04:04:18', NULL, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '4f0c74ede4b0f615a3725efd', '2015-01-19 01:43:20', '2015-01-19 01:43:20', NULL, 0, 0, 0, 0, 32, 26, 19, 37, 15, 27),
(14, '4f0c74ede4b0f615a3725efd', '2015-01-20 04:04:57', '2015-09-17 23:08:34', '2015-09-17 23:08:34', 0, 0, 0, 0, 15, 27, 23, 15, 22, 19),
(15, '4b805aebf964a520bd6a30e3', '2015-01-24 23:05:29', '2015-01-24 23:05:29', NULL, -2, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '4c706b87b3ce224be7f673c6', '2015-01-30 04:17:04', '2015-01-30 04:17:04', NULL, 1, 1, -1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '4b37f3d1f964a520274925e3', '2015-02-06 11:41:10', '2015-02-06 11:41:10', NULL, 1, 1, 1, 0, 0, 1, 0, 5, 1, 2),
(18, '4b85aca8f964a5201e6c31e3', '2015-02-07 22:32:55', '2015-02-07 22:32:55', NULL, 0, 0, 0, 0, 4, 0, 0, 6, 0, 5),
(19, '4ac94e04f964a5209dbf20e3', '2015-02-10 08:04:56', '2015-02-10 08:04:56', NULL, -1, -1, -1, 0, 1, 0, 0, 4, 0, 1),
(20, '4393dd78f964a520782b1fe3', '2015-02-11 05:50:45', '2015-02-11 05:50:45', NULL, -2, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '3fd66200f964a5206ee91ee3', '2015-02-13 00:30:08', '2015-02-13 00:30:08', NULL, 0, 0, 0, 0, 2, 2, 0, 3, 1, 2),
(22, '4f860f4ce4b0dbe559b3531b', '2015-02-13 03:33:31', '2015-02-13 03:33:31', NULL, -1, -1, -1, 0, 4, 2, 0, 13, 0, 9),
(23, '4f450af819836ed001984c5d', '2015-02-13 06:29:43', '2015-02-13 06:29:43', NULL, 1, 1, -1, 0, 0, 0, 0, 2, 0, 1),
(24, '52713b0a498effb43ad11a70', '2015-02-13 10:24:21', '2015-02-13 10:24:21', NULL, -1, 1, 1, 0, 0, 0, 0, 7, 5, 4),
(25, '4fe21dfce4b02702d7d3df98', '2015-02-13 14:13:23', '2015-02-13 14:13:23', NULL, -1, -1, -1, 0, 25, 20, 1, 50, 20, 25),
(26, '4abce679f964a5209d8720e3', '2015-02-13 17:23:43', '2015-02-13 17:23:43', NULL, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '4f43a9eb19834bc91f581c22', '2015-02-13 19:31:35', '2015-02-13 19:31:35', NULL, 0, 0, 0, 0, 3, 3, 0, 5, 0, 3),
(28, '53078c8511d254eae4ac7ef3', '2015-02-13 20:52:59', '2015-02-13 20:52:59', NULL, 0, 0, 0, 0, 5, 12, 11, 11, 15, 10),
(29, '527bd80c498e471d70394123', '2015-02-14 02:22:48', '2015-02-14 02:22:48', NULL, 0, 0, 0, 0, 4, 4, 2, 8, 4, 5),
(30, '4c64bc3b3f69c9b61b9889d9', '2015-02-14 03:26:26', '2015-02-14 03:26:26', NULL, -1, -1, -1, 0, 4, 3, 0, 15, 4, 6),
(31, '3fd66200f964a52052ed1ee3', '2015-02-14 05:41:00', '2015-02-14 05:41:00', NULL, 1, 1, 1, 0, 4, 3, 0, 10, 1, 4),
(32, '4a51523bf964a520edb01fe3', '2015-02-14 21:14:09', '2015-02-14 21:14:09', NULL, -1, 0, 1, 0, 5, 3, 1, 6, 2, 3),
(33, '40b28c80f964a520c7fb1ee3', '2015-02-15 00:10:57', '2015-02-15 00:10:57', NULL, -1, -1, -1, 0, 3, 2, 0, 6, 1, 4),
(34, '512e8c65e4b05c066cf20f8a', '2015-02-15 01:47:11', '2015-02-15 01:47:11', NULL, -1, 1, -1, 0, 21, 20, 5, 21, 6, 7),
(35, '49fe258ff964a520756f1fe3', '2015-02-15 03:37:23', '2015-02-15 03:37:23', NULL, 0, 0, 0, 0, 3, 1, 2, 4, 0, 3),
(36, '3fd66200f964a52078ed1ee3', '2015-02-16 20:30:39', '2015-02-16 20:30:39', NULL, 1, 1, -1, 0, 2, 2, 0, 3, 2, 3),
(37, '455877bff964a520453d1fe3', '2015-02-17 07:16:15', '2015-02-17 07:16:15', NULL, -2, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '3fd66200f964a52025ee1ee3', '2015-02-17 07:17:51', '2015-02-17 07:17:51', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, '49e4d054f964a52053631fe3', '2015-02-18 19:23:56', '2015-02-18 19:23:56', NULL, -2, 0, 0, 0, 5, 5, 0, 4, 1, 2),
(40, '4ea2c05d0cd6fc5af3c0928b', '2015-02-22 05:42:44', '2015-02-22 05:42:44', NULL, -1, -1, -1, 0, 0, 0, 0, 2, 0, 2),
(41, '4ab3aaa5f964a520f96d20e3', '2015-02-23 08:13:41', '2015-02-23 08:13:41', NULL, 0, 0, 0, 0, 4, 0, 3, 8, 0, 6),
(42, '4e851ede8231a2bbfef10e1f', '2015-02-23 14:57:46', '2015-02-23 14:57:46', NULL, -1, -1, 1, 0, 1, 1, 0, 2, 1, 1),
(43, '40b28c80f964a5202cf81ee3', '2015-02-24 19:45:23', '2015-02-24 19:45:23', NULL, -2, 0, 0, 0, 4, 1, 1, 12, 1, 8),
(44, '4b6bd3e4f964a520c9192ce3', '2015-02-25 03:55:51', '2015-02-25 03:55:51', NULL, -1, -1, -1, 0, 0, 0, 0, 10, 0, 8),
(45, '50abf7e3e4b063c5d674e96d', '2015-02-25 04:22:09', '2015-02-25 04:22:09', NULL, -1, 0, -1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '4b51fb72f964a5202c5f27e3', '2015-02-25 04:47:48', '2015-02-25 04:47:48', NULL, -1, 0, -1, 0, 2, 0, 0, 12, 0, 10),
(47, '4a88e1ccf964a520b50720e3', '2015-02-25 04:49:10', '2015-02-25 04:49:10', NULL, -1, -1, -1, 0, 2, 0, 0, 12, 1, 11),
(48, '4b5e068bf964a520c27929e3', '2015-02-26 18:36:44', '2015-02-26 18:36:44', NULL, -1, -1, -1, 0, 3, 0, 1, 12, 1, 6),
(49, '4bc6faf12f94d13a5409117f', '2015-02-28 07:23:25', '2015-02-28 07:23:25', NULL, 0, 0, -1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '537f75eb498ebd1e8254c918', '2015-03-01 21:26:16', '2015-03-01 21:26:16', NULL, -2, 1, 1, 0, 0, 0, 0, 4, 3, 4),
(51, '4b100ac8f964a520ed6723e3', '2015-03-02 08:06:43', '2015-03-02 08:06:43', NULL, -1, -1, -1, 0, 0, 0, 0, 4, 0, 3),
(52, '5234e4c211d2ec212a6e7876', '2015-03-04 09:24:41', '2015-03-04 09:24:41', NULL, -1, 0, -1, 0, 2, 2, 0, 4, 2, 3),
(53, '4a5e18a7f964a52005be1fe3', '2015-03-06 06:32:26', '2015-03-06 06:32:26', NULL, 0, 0, 0, 0, 0, 0, 0, 3, 3, 2),
(54, '51d99a09ccdad19fde937088', '2015-03-08 02:27:38', '2015-03-08 02:27:38', NULL, -2, 0, 0, 0, 2, 2, 0, 3, 2, 3),
(55, '4fe21dfce4b02702d7d3df98', '2015-03-09 12:40:38', '2015-03-09 12:40:38', NULL, 0, 1, -1, 0, 20, 4, 1, 30, 7, 18),
(56, '4fe21dfce4b02702d7d3df98', '2015-03-09 12:41:19', '2015-03-09 12:41:19', NULL, 0, 1, -1, 0, 20, 4, 1, 30, 7, 18),
(57, '4b512cd4f964a520fa4527e3', '2015-03-11 04:31:19', '2015-03-11 04:31:19', NULL, 0, 0, 0, 0, 2, 2, 0, 2, 2, 1),
(58, '4e61943dae60e9edf5634322', '2015-03-15 05:39:43', '2015-03-15 05:39:43', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '4e61943dae60e9edf5634322', '2015-03-15 05:43:49', '2015-03-15 05:43:49', NULL, 0, 0, 0, 0, 2, 0, 0, 2, 0, 2),
(60, '50f170f7e4b060b671f761ea', '2015-03-29 20:47:29', '2015-03-29 20:47:29', NULL, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '3fd66200f964a520cce51ee3', '2015-04-02 02:05:35', '2015-04-02 02:05:35', NULL, -1, -1, -1, 0, 1, 1, 0, 2, 0, 2),
(62, '4b6223e4f964a52013382ae3', '2015-04-07 01:28:20', '2015-04-07 01:28:20', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '4fed28f6e4b0ac0d2e673dcb', '2015-04-14 10:04:50', '2015-04-14 10:04:50', NULL, -2, 0, 0, 0, 3, 0, 0, 0, 2, 2),
(64, '4ac94e04f964a5209dbf20e3', '2015-04-16 05:59:02', '2015-04-16 05:59:02', NULL, 0, 0, -1, 0, 1, 0, 0, 1, 0, 3),
(65, '4b785c20f964a52045c82ee3', '2015-04-25 21:03:42', '2015-04-25 21:03:42', NULL, -1, 0, -1, 0, 3, 0, 0, 15, 1, 7),
(66, '4c6f4914d274b60ccd60d60d', '2015-05-03 02:13:42', '2015-05-03 02:13:42', NULL, 0, 0, 0, 0, 2, 0, 0, 39, 2, 0),
(67, '4c6f4914d274b60ccd60d60d', '2015-05-03 02:42:51', '2015-05-03 02:42:51', NULL, 1, 0, -1, 0, 3, 1, 1, 44, 2, 1),
(68, '4b76e245f964a52004672ee3', '2015-05-06 17:41:12', '2015-05-06 17:41:12', NULL, -1, -1, -1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '4d5d4405590b224b3514aa6d', '2015-05-06 19:18:27', '2015-05-06 19:18:27', NULL, -1, 1, 1, 0, 2, 1, 1, 10, 9, 5),
(70, '53c96996498e5dff615de34f', '2015-05-06 19:22:12', '2015-05-06 19:22:12', NULL, 1, 1, 0, 0, 4, 2, 2, 15, 9, 11),
(71, '4b3fdb4ff964a52097b025e3', '2015-05-06 19:34:25', '2015-05-06 19:34:25', NULL, -1, 1, -1, 0, 4, 3, 1, 17, 6, 10),
(72, '51e07cd2498e838526e3660e', '2015-05-06 19:46:15', '2015-05-06 19:46:15', NULL, -1, -1, -1, 0, 3, 0, 1, 10, 0, 9),
(73, '4c5f3ea490b2c9b6c1443a22', '2015-05-07 21:15:14', '2015-05-07 21:15:14', NULL, -1, 1, -1, 0, 4, 1, 2, 5, 2, 2),
(74, '4bb7d7b898c7ef3b29763002', '2015-05-07 22:10:09', '2015-05-07 22:10:09', NULL, 0, 1, 1, 0, 20, 12, 16, 20, 6, 6),
(75, '4b89d51cf964a520eb4f32e3', '2015-05-08 23:52:14', '2015-05-08 23:52:14', NULL, 1, -1, -1, 0, 0, 0, 0, 6, 0, 6),
(76, '518c3ac6498e75c861a3709a', '2015-05-09 20:24:59', '2015-05-09 20:24:59', NULL, -1, -1, -1, 0, 9, 12, 16, 8, 6, 2),
(77, '51d0a4d5498eea190529ccea', '2015-05-09 20:26:05', '2015-05-09 20:26:05', NULL, -1, 1, -1, 0, 14, 12, 16, 7, 1, 2),
(78, '52bf5251498e37ca4d734227', '2015-05-20 03:32:20', '2015-05-20 03:32:20', NULL, 0, 0, 0, 0, 0, 0, 0, 3, 3, 1),
(79, '3fd66200f964a520b8ea1ee3', '2015-05-25 07:34:51', '2015-05-25 07:34:51', NULL, 0, 1, 0, 0, 0, 0, 0, 5, 3, 1),
(80, '4a53fb8bf964a520e7b21fe3', '2015-05-30 03:56:07', '2015-05-30 03:56:07', NULL, -2, 0, 0, 0, 1, 0, 0, 15, 3, 6),
(81, '4b6b42edf964a520bafc2be3', '2015-06-01 20:51:25', '2015-06-01 20:51:25', NULL, 0, 1, 0, 0, 0, 0, 0, 4, 2, 3),
(82, '457ebe82f964a5203e3f1fe3', '2015-06-03 20:10:38', '2015-06-03 20:10:38', NULL, 1, 1, 1, 0, 2, 2, 0, 2, 2, 0),
(83, '4bcda18a68f976b09e7d6483', '2015-06-04 23:45:14', '2015-06-04 23:45:14', NULL, -1, 1, -1, 0, 0, 0, 0, 1, 0, 2),
(84, '4b5cce09f964a520ec4429e3', '2015-06-08 02:05:09', '2015-06-08 02:05:09', NULL, -1, -1, -1, 0, 0, 0, 0, 21, 7, 19),
(85, '4c9e4aec7c096dcb8abcd3d1', '2015-06-15 17:51:56', '2015-06-15 17:51:56', NULL, -1, 1, -1, 0, 2, 0, 1, 2, 0, 2),
(86, '4bbfe124abf49521eb87be93', '2015-06-26 19:48:51', '2015-06-26 19:48:51', NULL, 0, 1, 1, 0, 1, 3, 0, 4, 2, 3),
(87, '4a9ff513f964a520b83d20e3', '2015-07-07 20:57:47', '2015-07-07 20:57:47', NULL, 0, 0, 0, 0, 6, 5, 9, 10, 2, 5),
(88, '537f8894498e2e6e70ddcc05', '2015-07-14 12:57:28', '2015-07-14 12:57:28', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '556fae50498e7f382a43b0aa', '2015-08-25 04:20:28', '2015-08-25 04:20:28', NULL, 1, 1, 0, 0, 2, 0, 2, 6, 4, 1),
(90, '4a53fb8bf964a520e7b21fe3', '2015-09-05 23:04:25', '2015-09-05 23:04:25', NULL, -1, 0, -1, 0, 4, 2, 0, 20, 2, 22),
(91, '53191ce8498ea5887064e289', '2015-09-21 18:24:06', '2015-09-21 18:24:06', NULL, -1, 1, -1, 0, 0, 1, 0, 4, 2, 2),
(92, '50ec9cb5e4b0ef5a5f173cbb', '2015-09-22 20:15:33', '2015-09-22 20:15:33', NULL, -1, 0, -1, 0, 0, 0, 0, 4, 1, 3),
(93, '4ac79325f964a5201fb820e3', '2015-09-22 20:16:47', '2015-09-22 20:16:47', NULL, 1, 1, -1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '43ece77ff964a520482f1fe3', '2015-09-23 07:51:46', '2015-09-23 07:51:46', NULL, -1, 1, -1, 0, 1, 0, 0, 2, 0, 0),
(95, '4a5403b8f964a520f3b21fe3', '2015-09-30 21:35:50', '2015-09-30 21:35:50', NULL, -2, 0, 0, 0, 8, 8, 8, 10, 8, 8),
(96, '54130d3f498e7552ba5b4d1b', '2015-10-04 19:48:53', '2015-10-04 19:48:53', NULL, 0, 0, 0, 0, 7, 6, 2, 20, 3, 2),
(97, '55319eeb498e13376689cbe7', '2015-10-08 01:19:01', '2015-10-08 01:19:01', NULL, -3, 0, 0, 0, 0, 0, 0, 5, 2, 3),
(98, '4f9f0e5f0039f866d55b6076', '2015-10-08 17:15:43', '2015-10-08 17:15:43', NULL, 1, 1, 1, 0, 0, 0, 0, 4, 0, 0),
(99, '55c6e70c498e7e9a7befd3b0', '2015-10-09 03:23:23', '2015-10-09 03:23:23', NULL, 0, 0, 0, 0, 3, 3, 0, 5, 3, 5),
(100, '53bf4bb2498e192333932c27', '2015-10-20 00:02:48', '2015-10-20 00:02:48', NULL, 0, 0, 0, 0, 3, 3, 0, 6, 5, 3),
(101, '533eda57498e7bf5dc72a977', '2015-10-20 00:14:38', '2015-10-20 00:14:38', NULL, 0, 0, 0, 0, 2, 1, 0, 4, 0, 1),
(102, '4f04f2cd0e61b14c27df405b', '2015-10-22 09:09:29', '2015-10-22 09:09:29', NULL, -3, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '537f75eb498ebd1e8254c918', '2015-11-07 01:50:14', '2015-11-07 01:50:14', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(104, '4a6bce66f964a520f9cf1fe3', '2015-11-20 08:26:12', '2015-11-20 08:26:12', NULL, 0, 0, 0, 0, 3, 2, 0, 5, 2, 3),
(105, '4331f400f964a520fc271fe3', '2015-11-25 03:04:25', '2015-11-25 03:04:25', NULL, 1, 0, -1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promotion` int(11) NOT NULL,
  `award_id` int(10) unsigned NOT NULL,
  `high_road` tinyint(4) NOT NULL,
  `tipped_workers` int(11) NOT NULL,
  `untipped_workers` int(11) NOT NULL,
  `sick_days` int(11) NOT NULL,
  `foursquare_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yelp_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multiple_locations` tinyint(4) NOT NULL,
  `fine_dining` tinyint(4) NOT NULL,
  `fair_wage` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurants_foursquare_id_index` (`foursquare_id`),
  KEY `restaurants_award_id_foreign` (`award_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=504 ;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `promotion`, `award_id`, `high_road`, `tipped_workers`, `untipped_workers`, `sick_days`, `foursquare_id`, `twitter`, `yelp_url`, `multiple_locations`, `fine_dining`, `fair_wage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(194, '''wichcraft', -1, 0, 0, -1, -1, 1, '49a5746cf964a5209c521fe3', '@wichcraft', 'www.yelp.com/biz/wichcraft-new-york-5', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-13 08:42:47', NULL),
(195, '7-Eleven', -1, 0, 0, -1, 0, -1, '4b2e82f9f964a52086e124e3', '@7Eleven', 'www.yelp.com/biz/7-eleven-astoria', 1, 0, 0, '0000-00-00 00:00:00', '2014-10-24 01:12:42', NULL),
(196, 'Applebee''s', -1, 0, 0, 1, -1, -1, '53c40d73498ec6e4bf38e720', '@Applebees', 'www.yelp.com/biz/applebees-new-york', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:22:36', NULL),
(197, 'Arby''s', 0, 0, 0, 1, 0, 0, '4b453b0ff964a520a20826e3', '@Arbys', 'www.yelp.com/biz/arbys-flushing', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:24:13', NULL),
(198, 'Arizmendi', 0, 0, 1, 1, 1, -1, '46aa908cf964a52063491fe3', '@arizmendi', 'www.yelp.com/biz/arizmendi-bakery-san-francisco', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 00:41:48', NULL),
(199, 'Auntie Anne''s', 0, 0, 0, 0, 0, 0, '4c0ae70932daef3b2abb4b50', '@AuntieAnnes', 'www.yelp.com/biz/auntie-annes-pretzels-san-francisco-4', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:29:03', NULL),
(200, 'Avalon International Breads', -1, 0, 1, -1, 1, 1, '', NULL, NULL, 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:21:29', '2015-01-17 01:21:29'),
(201, 'Baskin-Robbins', -1, 0, 0, -1, 1, -1, '4b9f8975f964a520c02937e3', '@BaskinRobbins', 'www.yelp.com/biz/baskin-robbins-san-francisco-2', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:30:14', NULL),
(202, 'Ben''s Chili Bowl', 1, 0, 1, -1, -1, 1, '41478600f964a520c01c1fe3', '@benschilibowl', 'www.yelp.com/biz/bens-chili-bowl-washington', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:31:59', NULL),
(203, 'Big Boy''s Restaurant', 0, 0, 0, 0, 0, 0, '4b4a896af964a520328a26e3', '@OfficialBigBoy', 'www.yelp.com/biz/frischs-big-boy-cincinnati-9', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:33:41', NULL),
(204, 'BJ''s Restaurant & Brewhouse', 0, 0, 0, -1, -1, -1, '4a2f1cb6f964a520aa981fe3', '@bjsrestaurants', 'www.yelp.com/biz/bjs-restaurant-and-brewery-miamisburg', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:34:43', NULL),
(205, 'Black Star Co-op Pub and Brewery', 1, 0, 1, 1, 1, 1, '4b888dbbf964a520480032e3', '@blackstarcoop', 'www.yelp.com/biz/black-star-co-op-pub-and-brewery-austin', 0, 0, 1, '0000-00-00 00:00:00', '2015-01-12 15:33:19', NULL),
(206, 'Blue Smoke', 1, 0, 1, 1, -1, 1, '3fd66200f964a52069e71ee3', '@BlueSmokeNYC', 'www.yelp.com/biz/blue-smoke-new-york', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:21:58', '2015-01-17 01:21:58'),
(207, 'Bob Evans Restaurants', 1, 0, 0, -1, 1, -1, '4f322bde19836c91c7bd304b', '@BobEvansFarms', 'www.yelp.com/biz/bob-evans-conroe', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:39:36', NULL),
(208, 'Bogota Latin Bistro', -1, 0, 1, 1, 1, 1, '45aa8486f964a52035411fe3', '@BogotaBistro', 'www.yelp.com/biz/bogota-latin-bistro-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:22:30', '2015-01-17 01:22:30'),
(209, 'Bojangles'' Famous Chicken ''n Biscuits', 0, 0, 0, 0, 0, -1, '4f32c04c19836c91c7f688f2', '@BojanglesDC', 'www.yelp.com/biz/bojangles-famous-chicken-n-biscuits-columbia-6', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:44:05', NULL),
(210, 'Bonefish Grill', 0, 0, 0, -1, -1, -1, '4a6a4a3af964a5200acd1fe3', '@BonefishGrill', 'www.yelp.com/biz/bonefish-grill-columbia', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:45:06', NULL),
(211, 'Boston Market', 0, 0, 0, 0, 0, -1, '3fd66200f964a52065e91ee3', '@bostonmarket', 'www.yelp.com/biz/boston-market-new-york', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:46:47', NULL),
(212, 'Buffalo Wild Wings', -1, 0, 0, -1, -1, -1, '49ce7cb3f964a520495a1fe3', '@BWWings', 'www.yelp.com/biz/buffalo-wild-wings-brooklyn', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:48:00', NULL),
(213, 'Burger King', 0, 0, 0, 0, 0, 0, '4d4df8edea2760fc7833642d', '@BurgerKing', 'www.yelp.com/biz/burger-king-manhattan-4', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:48:49', NULL),
(214, 'Busboys and Poets', 1, 0, 1, -1, -1, 1, '44196facf964a52026311fe3', '@busboysandpoets', 'www.yelp.com/biz/busboys-and-poets-washington-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 02:46:14', NULL),
(215, 'Cafe 2', 1, 0, 1, 1, -1, 1, '4d459a541b62b1f7d8c8fee2', '', 'http://www.yelp.com/biz/moma-caf%C3%A9-2-new-york-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 12:09:55', NULL),
(216, 'Cafe Duke', -1, 0, 1, -1, 0, 1, '4a5e0b05f964a520f3bd1fe3', '', 'www.yelp.com/biz/cafe-duke-new-york-5', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:23:12', '2015-01-17 01:23:12'),
(217, 'Platano Salvadoran Cuisine', -1, 0, 1, 1, 1, -1, '4a34504df964a5200f9c1fe3', '', 'www.yelp.com/biz/platano-berkeley', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:23:23', '2015-01-17 01:23:23'),
(218, 'California Pizza Kitchen', -1, 0, 0, -1, -1, -1, '4a456d41f964a5202aa81fe3', '@calpizzakitchen', 'www.yelp.com/biz/california-pizza-kitchen-emeryville', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:56:44', NULL),
(219, 'Capital Grille', -1, 0, 0, 0, -1, -1, '4a04389af964a520e8711fe3', '@CapitalGrille', '', 1, 1, 0, '0000-00-00 00:00:00', '2014-10-25 02:53:10', NULL),
(220, 'Captain D''s Seafood Kitchen', -1, 0, 0, -1, 0, 1, '4d821bef0d5b8cfa16ca4c28', '@CaptainDs', 'www.yelp.com/biz/captain-ds-seafood-restaurants-columbia-2', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:58:11', NULL),
(221, 'Carl''s Jr.', -1, 0, 0, -1, 0, -1, '4c2a8a668abca59369dafe1f', '@CarlsJr', 'www.yelp.com/biz/carls-jr-lakewood', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:59:02', NULL),
(222, 'Carrabba''s Italian Grill', -1, 0, 0, -1, -1, -1, '4fee54e1e4b0647d7c31b296', '@Carrabbas', 'www.yelp.com/biz/carrabbas-italian-grill-aurora', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:59:53', NULL),
(223, 'Casey''s General Stores', 0, 0, 0, 0, 1, 0, '4ced2fd2840a9eb05ff39f13', '@caseysgenstore', '', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-01 00:02:22', NULL),
(224, 'Chaya', -1, 0, 1, 1, 1, 1, '4aab0a74f964a520ad5820e3', '@chayadowntown', 'http://www.yelp.com/biz/chaya-downtown-los-angeles', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 14:45:50', NULL),
(225, 'Checkers Drive-In/ Rally''s Hamburgers', 0, 0, 0, 0, 0, 0, '4cb5e9b68db0a143b0096616', '@checkersrallys', 'www.yelp.com/biz/checkers-highland-park', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:01:45', NULL),
(226, 'Chick-fil-A', -1, 0, 0, -1, 0, -1, '516f3c20e4b011f400f3de47', '@ChickfilA', 'www.yelp.com/biz/chick-fil-a-evansville', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:03:53', NULL),
(227, 'Chili''s Grill & Bar', -1, 0, 0, -1, -1, -1, '4b589da8f964a5207e6128e3', '@Chilis', 'www.yelp.com/biz/chilis-grill-and-bar-denver-3', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:05:33', NULL),
(228, 'Chipotle', -1, 0, 0, -1, 1, 0, '4b991011f964a520e15e35e3', '@Chipotle', 'httpwww.yelp.com/biz/chipotle-mexican-grill-denver-5', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:06:39', NULL),
(229, 'Choices Vegan Cafe', 1, 0, 1, 1, 1, -1, '4e4bf3741fc7674baff8fa7e', '@MyChoicesCafe', 'www.yelp.com/biz/choices-cafe-miami-3', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 01:24:16', NULL),
(230, 'Chuck E. Cheese''s', 0, 0, 0, 0, 0, 0, '4b491153f964a5207b6426e3', '@chuckecheese', 'www.yelp.com/biz/chuck-e-cheeses-arvada-2', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:09:15', NULL),
(231, 'Church''s Chicken', -1, 0, 0, -1, 0, -1, '4b512af9f964a520a94527e3', '@ChurchsChicken', 'www.yelp.com/biz/churchs-chicken-aurora', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:10:22', NULL),
(232, 'CiCi''s Pizza', 0, 0, 0, 0, 0, 0, '4f16e85ce4b0aabf1d2a1838', '@CiCis_Pizza', 'www.yelp.com/biz/cicis-pizza-aurora', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:11:12', NULL),
(233, 'Circle K', 0, 0, 0, 0, 0, 0, '4f998934e4b0bf3628785199', '', 'www.yelp.com/biz/circle-k-denver-5', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:12:15', NULL),
(234, 'Cold Stone Creamery', -1, 0, 0, -1, 0, -1, '', '@ColdStone', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-01 01:13:53', NULL),
(235, 'Colicchio & Sons', -1, 0, 1, -1, 1, 1, '4b539a4af964a52034a427e3', '@Colicchio_Sons', 'www.yelp.com/biz/colicchio-and-sons-main-dining-room-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 16:01:19', NULL),
(236, 'COLORS Detroit', 1, 0, 1, 1, 1, 1, '4eca9c147ee537da8229d7a6', '@ColorsDetroit', 'http://www.yelp.com/biz/colors-detroit', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 13:33:55', NULL),
(237, 'COLORS New York', 1, 0, 1, 1, 1, 1, '4bbfe124abf49521eb87be93', '@colorsnewyork', 'http://www.yelp.com/biz/colors-new-york-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 10:56:42', NULL),
(238, 'Cosecha', 1, 0, 1, 1, 1, -1, '4e179c7752b123a586cef176', '@cosechacafe', 'www.yelp.com/biz/cosecha-oakland', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 15:42:20', NULL),
(239, 'Cracker Barrel Old Country Store', 1, 0, 0, -1, -1, 1, '4b4ba915f964a52027a326e3', '@CrackerBarrel', 'www.yelp.com/biz/cracker-barrel-old-country-store-northglenn', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:19:02', NULL),
(240, 'Craft Los Angeles', 1, 0, 1, 1, 1, 1, '4a1e137ef964a520c27b1fe3', '@CraftLA', 'www.yelp.com/biz/craft-los-angeles', 0, 1, 0, '0000-00-00 00:00:00', '2014-10-24 23:51:14', NULL),
(241, 'Craft New York', -1, 0, 1, -1, 1, 1, '3fd66200f964a52080e41ee3', '@CRAFT_newyork', 'www.yelp.com/biz/craft-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 15:59:21', NULL),
(242, 'Craftbar', -1, 0, 1, -1, 1, 1, '40f86c00f964a520bf0a1fe3', '@CraftBar', 'www.yelp.com/biz/craftbar-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 16:00:28', NULL),
(243, 'Crema', 1, 0, 1, 1, 1, -1, '45e309edf964a52035431fe3', '@CremaRestaurant', 'www.yelp.com/biz/crema-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 15:34:39', NULL),
(244, 'Culver''s Frozen Custard & ButterBurgers', 0, 0, 0, 0, 0, 0, '4a37bf8df964a5206b9e1fe3', '@culvers', 'www.yelp.com/biz/culvers-thornton', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:26:26', NULL),
(245, 'Dairy Queen', 0, 0, 0, 0, 0, 0, '4c3e75666faac9b63e580e76', '@DairyQueen', 'www.yelp.com/biz/dairy-queen-denver-7', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:27:15', NULL),
(246, 'Dave & Buster''s', -1, 0, -1, 0, -1, -1, '', '@DaveandBusters', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(247, 'Del Taco', 0, 0, 0, 0, 0, 0, '4b32a955f964a5203a1125e3', '@DelTaco', 'www.yelp.com/biz/del-taco-lakewood-2', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:28:08', NULL),
(248, 'Denny''s', -1, 0, 0, -1, -1, -1, '4b484d59f964a5205f4b26e3', '@DennysDiner', 'www.yelp.com/biz/dennys-denver-3', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:28:58', NULL),
(249, 'Dimo''s Pizza', -1, 0, 1, -1, -1, 1, '4a3b2be5f964a52098a01fe3', '', 'www.yelp.com/biz/dimos-pizza-chicago-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:25:18', '2015-01-17 01:25:18'),
(250, 'Domino''s Pizza', 0, 0, 0, 0, 1, 0, '4d41f047aed776ebf54f6997', '@dominos', 'www.yelp.com/biz/dominos-pizza-chicago-3', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:31:33', NULL),
(251, 'Dunkin'' Donuts', 0, 0, 0, 1, 0, -1, '5231d58a11d2d3993a1f978c', '@DunkinDonuts', 'www.yelp.com/biz/dunkin-donuts-chicago-20', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:32:22', NULL),
(252, 'Eatonville', 1, 0, 1, -1, -1, 1, '4a3ff078f964a5201ea41fe3', '@eatonville', 'http://www.yelp.com/biz/eatonville-washington', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 03:00:21', NULL),
(253, 'Egg', -1, 0, 1, -1, 1, 1, '44ce1e0df964a52017361fe3', '', '', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:27:09', '2015-01-17 01:27:09'),
(254, 'Einstein Bros. Bagels', 0, 0, 0, 0, 0, 0, '4b801075f964a520ea4e30e3', '@EinsteinBros', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:35:26', NULL),
(255, 'El Fuego', 1, 0, 1, 1, 1, 1, '4a5b4a3af964a520f6ba1fe3', '@ElFuego723', 'www.yelp.com/biz/el-fuego-philadelphia', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 14:09:23', NULL),
(256, 'El Pollo Loco', 0, 0, 0, 0, 0, 0, '4c6fe252d274b60c12c7d70d', '@ElPolloLoco', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:49:19', NULL),
(257, 'Famous Dave''s Legendary Pit Bar-B-Que', -1, 0, 0, -1, -1, -1, '4b09e567f964a5205c1f23e3', '@Famous_Daves', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:35:55', NULL),
(258, 'Fare Restaurant', 1, 0, -1, 1, -1, -1, '', '@farephilly', NULL, 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:36:48', '2015-01-17 01:36:48'),
(259, 'Fergie''s Pub', -1, 0, 1, -1, 1, -1, '3fd66200f964a5201dee1ee3', '@FergiesPhilly', 'www.yelp.com/biz/fergies-pub-philadelphia', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:45:16', NULL),
(260, 'Fig Catering', 1, 0, 1, 1, 1, -1, '4c92c238911b8cfab44df0b5', '@figmolly', 'www.yelp.com/biz/fig-catering-chicago', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:37:13', '2015-01-17 01:37:13'),
(261, 'Firehouse Subs', -1, 0, 0, -1, 0, 1, '4dc7303b52b1e8f9f7ffb2c7', '@FirehouseSubs', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:49:50', NULL),
(262, 'Five Guys Burgers and Fries', 0, 0, 0, 0, 0, 1, '4aae9b03f964a520936220e3', '@Five_Guys', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:50:31', NULL),
(263, 'Flava ', -1, 0, 1, -1, 1, -1, '4f7fa013e4b01e69d6357bae', '', 'www.yelp.com/biz/flava-at-wa-zo-bia-washington', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:38:44', '2015-01-17 01:38:44'),
(264, 'Florida Avenue Grill', 1, 0, 1, -1, -1, 1, '4a2bf0f2f964a520f6961fe3', '@FloridaAveGrill', 'www.yelp.com/biz/florida-avenue-grill-washington', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 03:01:20', NULL),
(265, 'Flying Fish', 1, 0, 1, 1, 1, -1, '', '@dcflyingfish', '', 0, 0, 0, '0000-00-00 00:00:00', '2014-10-24 21:46:22', NULL),
(266, 'Friendly''s', -1, 0, 0, 0, 0, 0, '4a922623f964a520e21c20e3', '@Friendlys', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:52:30', NULL),
(267, 'Golden Corral Buffet & Grill', -1, 0, 0, 0, -1, -1, '4e272770ae609b2f94ee487e', '@goldencorral', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:51:13', NULL),
(268, 'Good Girl Dinette', 1, 0, 1, 1, 1, -1, '4a025625f964a52048711fe3', '@goodgirldinette', 'www.yelp.com/biz/good-girl-dinette-los-angeles', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 14:31:56', NULL),
(269, 'Good Restaurant', 1, 0, 1, -1, -1, 1, '45b9c8c1f964a520d7411fe3', '@goodchefnyc', 'www.yelp.com/biz/good-restaurant-new-york', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 12:57:08', NULL),
(270, 'Grace Tavern', -1, 0, 1, -1, 1, -1, '4161e400f964a5205e1d1fe3', '@GraceTavern', 'www.yelp.com/biz/grace-tavern-philadelphia', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 02:58:10', NULL),
(271, 'Gramercy Tavern', 1, 0, 1, -1, 1, 1, '3fd66200f964a520aee91ee3', '@GramercyTavern', 'www.yelp.com/biz/gramercy-tavern-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 12:07:29', NULL),
(272, 'Hardee''s', 0, 0, 0, 1, 0, -1, '50edfb08b0b9623b5e544ba5', '@Hardees', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 03:23:31', NULL),
(273, 'Hooters', 0, 0, 0, 0, 0, 0, '4b6e348ef964a52088b12ce3', '@Hooters', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:53:01', NULL),
(274, 'iCi ', -1, 0, 1, -1, 1, 1, '422b9980f964a520d21f1fe3', '', 'www.yelp.com/biz/ici-french-country-kitchen-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:41:15', '2015-01-17 01:41:15'),
(275, 'IHOP', 0, 0, 0, 1, 0, 0, '4ad3383bf964a5206fe320e3', '@IHOP', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:53:32', NULL),
(276, 'In-N-Out Burger', 1, 0, 1, 1, -1, 1, '4f439efa19834bc91f57ec26', '@innoutburger', '', 1, 0, 0, '0000-00-00 00:00:00', '2015-01-13 09:03:20', NULL),
(277, 'Inspire BBQ', -1, 0, 1, 1, 0, 1, '4d8a6c5099c2a1cd6e6f90d7', '@inspirebbq', '', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:42:07', '2015-01-17 01:42:07'),
(278, 'IGK - International Gourmet Kitchen', -1, 0, 1, -1, 0, 1, '4e8f31f002d5ee38b647719b', '', 'www.yelp.com/biz/international-gourmet-kitchen-new-york', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:41:35', '2015-01-17 01:41:35'),
(279, 'Jack in the Box', 0, 0, 0, 0, 0, 0, '4f581206e4b0b8ced72312bd', '@JackBox', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:54:44', NULL),
(280, 'Jaleo', -1, 0, 1, -1, -1, 1, '4a6e4e04f964a52074d41fe3', '@jaleotapasbar', 'www.yelp.com/biz/jaleo-washington', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-17 01:42:40', '2015-01-17 01:42:40'),
(281, 'Jamba Juice', 0, 0, 0, 0, 0, 0, '4b0aa413f964a520e42523e3', '@JambaJuice', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:55:09', NULL),
(282, 'Jason''s Deli', 1, 0, 0, -1, 0, -1, '4abfd290f964a5207b9220e3', '@jasonsdeli', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 03:19:15', NULL),
(283, 'Jazz Standard', 1, 0, 1, 1, -1, 1, '4ab6e8b3f964a520737920e3', '@JazzStandardNYC', 'www.yelp.com/biz/jazz-standard-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 12:08:59', NULL),
(284, 'Jimmy John''s Gourmet Sandwiches', 0, 0, 0, 0, 1, 0, '4a8af026f964a520f20a20e3', '@jimmyjohns', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:55:30', NULL),
(285, 'Joe''s Crab Shack', 0, 0, 0, 0, 0, 0, '4b6ccc4ff964a52033552ce3', '@Joes_Crab_Shack', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:55:53', NULL),
(286, 'KFC', 0, 0, 0, 0, 0, 1, '4b77616af964a5207a962ee3', '@kfc_colonel', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:56:15', NULL),
(287, 'Krispy Kreme Doughnuts', 0, 0, 0, 0, 0, 0, '4b32a9e2f964a520451125e3', '@krispykreme', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:56:42', NULL),
(288, 'Krystal', -1, 0, 0, -1, -1, -1, '4b53fdc2f964a5201fb027e3', '@Krystal', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 03:16:59', NULL),
(289, 'La Palapa', 1, 0, 1, -1, 1, 1, '3fd66200f964a5203ae31ee3', '@la_palapa', 'www.yelp.com/biz/la-palapa-new-york', 0, 0, 0, '0000-00-00 00:00:00', '2014-10-27 04:02:04', NULL),
(290, 'Lil Dizzy''s Cafe', -1, 0, 1, 1, 1, 1, '4ad4c050f964a52069f420e3', '', 'www.yelp.com/biz/lil-dizzys-cafe-new-orleans', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:43:52', '2015-01-17 01:43:52'),
(291, 'Little Brother BBQ', 1, 0, 1, 1, 1, -1, '4ed942657bebc29454b1c549', '', 'www.yelp.com/biz/little-brother-bbq-new-york', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 03:22:59', NULL),
(292, 'Little Caesars', -1, 0, 0, -1, 0, 1, '4bddd06a0ee3a59301c12eb0', '@littlecaesars', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:57:11', NULL),
(293, 'Local', 1, 0, 1, 1, 1, 1, '4b2d2664f964a52087cf24e3', '@Silverlakelocal', 'www.yelp.com/biz/local-los-angeles', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 03:24:25', NULL),
(294, 'Long John Silver''s', -1, 0, 0, -1, 0, -1, '4e01385c1838cb6a1acd6bdc', '@longjohnslvrs', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:57:33', NULL),
(295, 'LongHorn Steakhouse', -1, 0, 0, -1, -1, -1, '533cb196498e738b3075c36f', '@LongHornSteak', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:57:46', NULL),
(296, 'Los Moles', -1, 0, 1, 1, 1, -1, '49c2c60ef964a5202a561fe3', '', 'www.yelp.com/biz/los-moles-emeryville-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:44:38', '2015-01-17 01:44:38'),
(297, 'Lupito''s Juice Bar', -1, 0, 1, 1, 0, -1, '4ed395998b81b4739a3890cc', '@LupitosJuiceBar', 'www.yelp.com/biz/lupitos-juice-bar-chicago', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:45:02', '2015-01-17 01:45:02'),
(298, 'Maggiano''s Little Italy', 0, 0, 0, -1, -1, -1, '4b2ebf7cf964a5201ae624e3', '@Maggianos', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 03:12:33', NULL),
(299, 'Maiallino', 1, 0, 1, 1, -1, 1, '4afb2990f964a520a91b22e3', '@maialino_nyc', 'www.yelp.com/biz/maialino-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 12:11:52', NULL),
(300, 'Mama''s Hot Tamales Cafe', 1, 0, 1, 1, 1, -1, '4b689d08f964a520e1822be3', '@mamashottamales', 'www.yelp.com/biz/mamas-international-tamales-los-angeles-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:45:19', '2015-01-17 01:45:19'),
(301, 'Marietta', 1, 0, 1, -1, 1, 1, '5176fbf4e4b09005d1df9f81', '', 'www.yelp.com/biz/marietta-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 11:56:46', NULL),
(302, 'McAlister''s Deli', 0, 0, 0, 0, 0, 0, '4b6dd1f5f964a520fa922ce3', '@McAlistersDeli', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 03:06:27', NULL),
(303, 'McCormick & Schmick''s', -1, 0, -1, -1, -1, -1, '', '@McandSchmicks', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(304, 'McDonald''s', 0, 0, 0, -1, 0, -1, '4c962e4494a0236a7e799c12', '@McDonalds', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 03:58:23', NULL),
(305, 'Mexicue', 0, 0, 1, -1, 1, 1, '4dc82044e4cd169dc68c988d', '@Mexicue', 'www.yelp.com/biz/mexicue-new-york-4', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:46:39', '2015-01-17 01:46:39'),
(306, 'Minibar', -1, 0, 1, -1, -1, 1, '41f04600f964a5200a1f1fe3', '@minibar', 'www.yelp.com/biz/minibar-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 03:38:29', NULL),
(307, 'Moe''s Southwest Grill', -1, 0, 0, -1, 0, -1, '5131265be4b082687781d248', '@Moes_HQ', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:00:18', NULL),
(308, 'Terrace 5', 1, 0, 1, 1, -1, 1, '4abe42f5f964a520488c20e3', '@Cafe2Terrace5', 'http://www.yelp.com/biz/terrace-5-new-york', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 12:11:23', NULL),
(309, 'Monk''s Belgian Cafe', -1, 0, 1, -1, 1, -1, '40b28c80f964a520d3f81ee3', '', 'www.yelp.com/biz/monks-caf%C3%A9-philadelphia-3', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:47:16', '2015-01-17 01:47:16'),
(310, 'Moo Cluck Moo', 0, 0, 1, 0, 1, -1, '515e0dbee4b08922405d90fa', '@MooCluckMoo', 'www.yelp.com/biz/moo-cluck-moo-dearborn-heights', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:49:09', '2015-01-17 01:49:09'),
(311, 'Nodding Head Brewery & Restaurant', 0, 0, 1, -1, 1, 0, '40b28c80f964a520d4f81ee3', '@noddingheadbrew', 'www.yelp.com/biz/nodding-head-brewery-and-restaurant-philadelphia', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:53:26', '2015-01-17 01:53:26'),
(312, 'North End Grill', 1, 0, 1, 1, -1, 1, '4efe595d490182a1a649a026', '@NorthEndGrill', 'www.yelp.com/biz/north-end-grill-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-17 01:54:18', '2015-01-17 01:54:18'),
(313, 'O''Charley''s', 0, 0, 0, -1, -1, -1, '4bb67946ef159c74b90476f7', '@OCharleys', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 03:01:26', NULL),
(314, 'Olive Garden', 0, 0, 0, 0, 0, 0, '41f04600f964a5200a1f1fe3 ', '@OliveGarden', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:01:13', NULL),
(315, 'On the Border Mexican Grill & Cantina', 0, 0, 0, 0, 0, -1, '4c229290fbe5c9b6d9209a21', '@ontheborder', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:01:36', NULL),
(316, 'One if by Land, Two if by Sea', 1, 0, 1, -1, 1, 1, '3fd66200f964a52057ea1ee3', '@oneifbylandnyc', 'www.yelp.com/biz/one-if-by-land-two-if-by-sea-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 13:27:38', NULL),
(317, 'Outback Steakhouse', -1, 0, 0, -1, -1, -1, '451a53c7f964a5205e3a1fe3', '@Outback', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:01:57', NULL),
(318, 'Oyamel Cocina Mexicana', -1, 0, 1, -1, -1, 1, '4a667bf9f964a520a4c81fe3', '@oyameldc', 'www.yelp.com/biz/oyamel-washington', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 04:46:09', NULL),
(319, 'P.F. Chang''s China Bistro', 0, 0, 0, -1, -1, 0, '49fe10d9f964a520676f1fe3', '@therealPFChangs', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:02:43', NULL),
(320, 'Panda Express', 0, 0, 0, 1, 0, 0, '4c3374f766e40f473409c88b', '@PandaExpress', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:03:06', NULL),
(321, 'Panera Bread', 0, 0, 0, 0, 0, 1, '4f4f787be4b04078851f5fbd', '@panerabread', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:03:23', NULL),
(322, 'Papa John''s', 0, 0, 0, 0, 0, 0, '4bd881550b779c74765407a0', '@PapaJohns', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:04:47', NULL),
(323, 'Papa Murphy''s Take ''N'' Bake Pizza', -1, 0, 0, -1, 0, -1, '4bba6e281261d13af9a2ea98', '@take_n_bake', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:03:42', NULL),
(324, 'Parish Hall - CLOSED', 1, 0, 1, 0, 1, 1, '', '', '', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:50:26', '2015-01-17 01:50:26'),
(325, 'Peaches Restaurant ', 1, 0, 1, -1, 1, 1, '4b2d8948f964a5207dd824e3', '@peachesbrooklyn', 'www.yelp.com/biz/peaches-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 11:47:54', NULL),
(326, 'Perkins Restaurant & Bakery', -1, 0, 0, -1, -1, -1, '4ac8bb50f964a52064bc20e3', '@EatAtPerkins', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:05:17', NULL),
(327, 'Pizza Hut', 0, 0, 0, 0, 0, 0, '4b22e94af964a5202f5024e3', '@pizzahut', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:05:37', NULL),
(328, 'Pleasant Pops', 1, 0, 1, 1, -1, 1, '4ff88836e4b02ca33cc6d2b3', '@pleasantpops', 'http://www.yelp.com/biz/pleasant-pops-farmhouse-market-and-cafe-washington', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 02:19:17', NULL),
(329, 'Popeyes Louisana Kitchen', 0, 0, 0, -1, 0, -1, '4b69478af964a520989d2be3', '@PopeyesChicken', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:06:03', NULL),
(330, 'Potbelly Sandwich Works/ Shop', -1, 0, -1, -1, -1, -1, '', '@Potbelly', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(331, 'Qdoba Mexican Grill', 0, 0, 0, -1, 0, 1, '503e5fc4e4b09d71d46ec14f', '@QdobaMexGrill', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:07:18', NULL),
(332, 'Quiznos', -1, 0, 0, -1, 0, -1, '4b058c3ff964a5200fdf22e3', '@Quiznos', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:06:36', NULL),
(333, 'Racion', 1, 0, 1, 1, 1, -1, '4ed001bf2c5bc350567cd947', '@RacionPasadena', 'www.yelp.com/biz/raci%C3%B3n-pasadena-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 14:33:48', NULL),
(334, 'Red Hill ', 1, 0, 1, 1, 1, 1, '4f0e6fbfe4b023b379df7004', '@Red_Hill_', 'www.yelp.com/biz/red-hill-los-angeles-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 14:27:59', NULL),
(335, 'Red Lobster', 0, 0, 0, 0, 0, 0, '434da380f964a520a5281fe3', '@redlobster', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:08:00', NULL),
(336, 'Red Robin Gourmet Burgers', -1, 0, 0, -1, -1, -1, '4c4b8380bad7a5934110efab', '@redrobinburgers', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:08:15', NULL),
(337, 'Riverpark', -1, 0, 0, -1, -1, -1, '4c9a999d292a6dcb7871d076', '@RiverparkNYC', 'www.yelp.com/biz/riverpark-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-17 02:04:57', NULL),
(338, 'Romano''s Macaroni Grill', 0, 0, 0, 1, 0, 0, '4b7b3727f964a5207d582fe3', '@MacaroniGrill', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:09:01', NULL),
(339, 'Rose Water', 1, 0, 1, 1, 1, -1, '3fd66200f964a52082f11ee3', '@RoseWaterBrklyn', 'www.yelp.com/biz/rose-water-restaurant-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:58:46', '2015-01-17 01:58:46'),
(340, 'Round Table Pizza', 0, 0, -1, 0, 0, 0, '', '@RoundTablePizza', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(341, 'Ruby Tuesday', 1, 0, 0, -1, -1, -1, '4a43b04ff964a520afa61fe3', '@rubytuesday', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:09:22', NULL),
(342, 'Russell St. Deli', 1, 0, 1, -1, 1, -1, '4a9030b9f964a5206f1620e3', '', 'http://www.yelp.com/biz/russell-street-deli-detroit-2', 0, 0, 0, '0000-00-00 00:00:00', '2014-09-02 05:02:26', NULL),
(343, 'Ruth''s Chris Steak House', -1, 0, 0, -1, -1, -1, '52d87910498eebad19a4708d', '', '', 1, 1, 0, '0000-00-00 00:00:00', '2014-10-25 00:11:17', NULL),
(344, 'Sbarro', -1, 0, 0, -1, 0, -1, '4b241fe4f964a5209d6124e3', '@Sbarro', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:48:21', NULL),
(345, 'Shake Shack', 1, 0, 1, -1, 1, 1, '51ca35d4498e950b67e87df8', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-19', 1, 0, 0, '0000-00-00 00:00:00', '2015-01-20 21:40:06', NULL),
(346, 'Sheetz', -1, 0, 0, -1, 0, -1, '5228c69babdf45f53df78358', '@sheetz', '', 0, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:10:13', NULL),
(347, 'Shoney''s', 0, 0, -1, 0, 0, 0, '', '@Shoneys', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(348, 'Sonic', 0, 0, 0, 1, 0, 1, '50816028c5930f3d0a444a73', '@sonicdrive_in', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:10:37', NULL),
(349, 'Starbucks', 0, 0, 0, -1, 0, -1, '4b3febc4f964a52019b225e3', '@Starbucks', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:11:13', NULL),
(350, 'Steak ''n Shake', -1, 0, 0, -1, -1, -1, '4edcf3dea17c4dbad1071e53', '@SteaknShake', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:11:46', NULL),
(351, 'Subway', -1, 0, 0, -1, 0, -1, '4d767e091d7ab1f702ca8bfb', '@Subway', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:12:09', NULL),
(352, 'Sugar Bliss Cake Boutique', 1, 0, 1, -1, -1, -1, '4b7c6f13f964a52011932fe3', '@SugarBlissCakes', 'www.yelp.com/biz/sugar-bliss-cake-boutique-chicago', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 15:32:41', NULL),
(353, 'T.G.I. Friday''s', 0, 0, 0, -1, -1, -1, '4a4e253df964a52027ae1fe3', '@TGIFridays', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:12:32', NULL),
(354, 'Taco Bell', 0, 0, 0, -1, 0, -1, '4b8eac06f964a520ff2f33e3', '@TacoBell', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:12:56', NULL),
(355, 'Taco John''s', 0, 0, -1, 0, 0, 0, '', '@tacojohns', NULL, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(356, 'Target Cafe', 0, 0, 0, 0, 0, 0, '4f0465aa7ee579338fbaed03', '', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:45:51', NULL),
(357, 'Tequilas', 1, 0, 1, 1, 1, -1, '3fd66200f964a52015f11ee3', '@TEQUILASPHILLY', 'www.yelp.com/biz/los-catrines-tequilas-philadelphia-3', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 13:51:03', NULL),
(358, 'Texas Roadhouse', 0, 0, 0, 0, 0, 0, '50c6641c72da43ead705b04e', '@texasroadhouse', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:13:14', NULL),
(359, 'The Belgian Caf̩e', -1, 0, 1, -1, 1, 0, '4a5e75fff964a5209fbe1fe3', '@thebelgiancafe', 'www.yelp.com/biz/the-belgian-caf%C3%A9-philadelphia-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 01:50:11', '2015-01-17 01:50:11'),
(360, 'The Cheesecake Factory', 0, 0, 0, 0, 0, 0, '4ae4ecb7f964a520799f21e3', '@Cheesecake', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:13:38', NULL),
(361, 'The Farmer''s Kitchen', 1, 0, 1, 1, 1, 1, '', '@HollywoodFK', NULL, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(362, 'The Gorbals', 1, 0, 1, 1, 1, 1, '', '@thegorbals', '', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 14:36:29', NULL),
(363, 'The Green Table - Inside Chelsea Market', 1, 0, 1, 1, 1, 1, '4aeb8850f964a5201fc321e3', '@greentablenyc', 'www.yelp.com/biz/the-green-table-new-york-2', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 02:05:51', '2015-01-17 02:05:51'),
(364, 'The Hot House', 1, 0, 1, 1, 1, -1, '', NULL, NULL, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(365, 'The Local Table', 1, 0, 1, 1, 1, -1, '4eda674eb8f7fcd040485da5', '@LocalTableAction', 'www.yelp.com/biz/the-local-table-west-acton', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 02:07:30', NULL),
(366, 'The Melting Pot', -1, 0, -1, -1, -1, -1, '', '@TheMeltingPot', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(367, 'The Modern', 1, 0, 1, 1, -1, 1, '4bb7d7b898c7ef3b29763002', '@themodernnyc', 'http:/www.yelp.com/biz/the-dining-room-at-the-modern-new-york', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-12 12:09:27', NULL),
(368, 'The Quick Fixx', 1, 0, 1, -1, 1, -1, '4e99eed129c27d6ad6641a1f', '@thequickfixx', 'www.yelp.com/biz/the-quick-fixx-philadelphia', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 11:58:56', NULL),
(369, 'The Random Tea Room', 1, 0, 1, 1, -1, -1, '4ab657b3f964a520aa7620e3', '@randomtearoom', 'www.yelp.com/biz/the-random-tea-room-and-curiosity-shop-philadelphia', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 13:58:42', NULL),
(370, 'The Smoke Joint', 1, 0, 1, 1, -1, 1, '458d10b5f964a52001401fe3', '@TheSmokeJointBK', 'www.yelp.com/biz/the-smoke-joint-brooklyn', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 11:45:27', NULL),
(371, 'Tim Horton''s', -1, 0, 0, -1, 0, -1, '4b619860f964a52048192ae3', '@TimHortons', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:36:37', NULL),
(372, 'Top Burger', 1, 0, 1, -1, 1, 1, '504fa7d2f31cc755fd96cc88', '@topburger1', 'www.yelp.com/biz/top-burger-miami', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 02:06:43', '2015-01-17 02:06:43'),
(373, 'Uno Chicago Grill', -1, 0, -1, -1, -1, -1, '', '@UnoChicagoGrill', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(374, 'Waffle House', -1, 0, 0, -1, -1, -1, '4b0ca5bcf964a5208e4023e3', '@WaffleHouse', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:14:27', NULL),
(375, 'Wawa', 0, 0, 0, 0, 0, 1, '50c3cbbce4b085c8e4119be8', '@Wawa', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:34:52', NULL),
(376, 'Wendy''s', 0, 0, 0, 0, 0, 0, '4bfec177ca1920a1b9c9eb81', '@Wendys', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-29 04:14:46', NULL),
(377, 'West Avenue Cafe - CLOSED?', 1, 0, 1, -1, -1, -1, '4ce33ab127a66ea896273494', '@westavenuecafe', '', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-17 02:07:12', '2015-01-17 02:07:12'),
(378, 'Whataburger', 1, 0, 0, -1, 0, 1, '4b773eb2f964a520428b2ee3', '@Whataburger', 'www.yelp.com/biz/whataburger-jacksonville-2', 1, 0, 0, '0000-00-00 00:00:00', '2014-09-02 05:33:00', NULL),
(379, 'White Castle', -1, 0, 0, 0, 0, 1, '4badc688f964a52078683be3', '@WhiteCastle', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:20:05', NULL),
(380, 'Wienerschnitzel', -1, 0, -1, -1, 0, -1, '', '@wienerschnitzel', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(381, 'Wingstop', -1, 0, 0, -1, 0, -1, '51104d163d7c2f14d10c441b', '@wingstop', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:17:45', NULL),
(382, 'Yard House', -1, 0, -1, -1, -1, -1, '', '@YardHouse', NULL, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(383, 'Zaxby''s', 0, 0, 0, 0, 0, 0, '4b0dd073f964a520945023e3', '@Zaxbys', '', 1, 0, 0, '0000-00-00 00:00:00', '2014-08-30 02:17:01', NULL),
(384, 'Zaytinya', -1, 0, 1, -1, -1, 1, '3fd66200f964a520d5f11ee3', '@ZaytinyaDC', 'www.yelp.com/biz/zaytinya-washington', 0, 1, 0, '0000-00-00 00:00:00', '2015-01-17 02:07:32', '2015-01-17 02:07:32'),
(385, 'Zazie', 1, 0, 1, 1, 1, -1, '49b094fdf964a520c8521fe3', '@ZazieRestaurant', 'www.yelp.com/biz/zazie-san-francisco', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 15:33:59', NULL),
(386, 'Zingerman''s Roadhouse', 1, 0, 1, -1, 1, 1, '4a5f567df964a52066bf1fe3', '@zingermans', 'www.yelp.com/biz/zingermans-roadhouse-ann-arbor', 0, 0, 0, '0000-00-00 00:00:00', '2015-01-12 02:02:58', NULL),
(387, 'Ocean Prime', 0, 0, 0, 0, 0, 0, '4b0d7d35f964a5207b4923e3', '@OceanPrimeCMR', 'http://www.yelp.com/biz/ocean-prime-dallas', 0, 1, 0, '2014-10-25 00:26:03', '2014-10-25 01:36:15', NULL),
(390, 'SER Steak & Spirits', 0, 0, 0, 0, 0, 0, '503eae61e4b0052cdc5903dc', '@SERsteak', 'http://www.yelp.com/biz/ser-steak-and-spirits-dallas', 0, 1, 0, '2014-10-25 02:24:06', '2014-10-25 02:24:06', NULL),
(391, 'The French Room', 0, 0, 0, 0, 0, 0, '4b7f37d5f964a520f11f30e3', '@TheAdolphus', 'http://www.yelp.com/biz/the-french-room-dallas', 0, 1, 0, '2014-10-25 02:27:02', '2014-10-25 02:27:02', NULL),
(392, 'Nick & Sam’s', 0, 0, 0, 0, 0, 0, '4d115af70c786ea8994bd0ab', '@NickSamsSteak', 'http://www.yelp.com/biz/nick-and-sams-dallas', 0, 1, 0, '2014-10-25 02:29:32', '2014-10-25 02:29:32', NULL),
(393, 'Oak ', 0, 0, 0, 0, 0, 0, '4eea9c7c82312fd18e57097e', '@oakdallas', 'http://www.yelp.com/biz/oak-dallas', 0, 1, 0, '2014-10-25 02:31:46', '2014-10-25 02:31:46', NULL),
(394, 'Dish Restaurant', 0, 0, 0, 0, 0, 0, '4b1a84c4f964a52087eb23e3', '@dishdining', 'http://www.yelp.com/biz/dish-restaurant-dallas', 0, 1, 0, '2014-10-25 02:34:38', '2014-10-27 04:06:28', NULL),
(395, 'FT33', 0, 0, 0, 0, 0, 0, '50760e40e4b0837b23850e98', '@FT33Dallas', 'http://www.yelp.com/biz/ft33-dallas', 0, 1, 0, '2014-10-25 02:36:20', '2014-10-25 02:36:20', NULL),
(396, 'Place At Perry''s ', 0, 0, 0, 0, 0, 0, '4a8b8f8af964a520aa0c20e3', '@PlaceatPerrysTX', 'http://www.yelp.com/biz/place-at-perrys-dallas-2', 0, 1, 0, '2014-10-25 02:38:39', '2014-10-25 02:38:39', NULL),
(397, 'Nonna ', 0, 0, 0, 0, 0, 0, '4b109309f964a5201e7323e3', '', 'http://www.yelp.com/biz/nonna-restaurant-dallas', 0, 1, 0, '2014-10-25 02:43:08', '2014-10-25 02:43:08', NULL),
(398, 'Texas de Brazil ', 0, 0, 0, 0, 0, 0, '4b2d7dc0f964a520c4d724e3', '@texasdebrazil', 'http://www.yelp.com/biz/texas-de-brazil-dallas', 0, 1, 0, '2014-10-25 02:47:09', '2014-10-25 02:47:09', NULL),
(399, 'The Mansion Restaurant', 0, 0, 0, 0, 0, 0, '4b31855bf964a520630825e3', '@RWTurtleCreek', 'http://www.yelp.com/biz/the-mansion-restaurant-dallas', 0, 1, 0, '2014-10-25 02:49:51', '2014-10-25 02:49:51', NULL),
(400, 'The Capital Grille ', 0, 0, 0, 0, 0, 0, '40e0b100f964a52010081fe3', '@capitalgrille', 'http://www.yelp.com/biz/the-capital-grille-dallas-2', 0, 1, 0, '2014-10-25 02:52:28', '2014-10-25 02:52:28', NULL),
(401, 'The Just Crust', 0, 2, 1, 0, 1, 1, '51a4e7ef50193c84e9e7b514', '@thejustcrust', 'http://www.yelp.com/biz/the-just-crust-cambridge', 0, 0, 0, '2014-11-11 03:28:03', '2014-11-11 03:28:03', NULL),
(402, 'Haley House Bakery Café', 1, 2, 1, 0, 1, 1, '4b31519bf964a520a70425e3', '@HHBakeyCafe', 'http://www.yelp.com/biz/haley-house-bakery-cafe-roxbury', 0, 0, 0, '2014-11-11 03:34:29', '2014-11-11 03:34:29', NULL),
(403, 'Cuisine en Locale', 1, 2, 1, 1, 1, -1, '4da0df839935a0934a0a946f', '@CuisineEnLocale', 'http://www.yelp.com/biz/cuisine-en-locale-somerville-2', 0, 0, 0, '2014-11-11 03:42:54', '2014-11-11 03:42:54', NULL),
(404, 'The Salty Pig', 1, 2, 1, -1, 1, -1, '4db5bd326a23c31a0330cf01', '@SaltyPigBoston', 'http://www.yelp.com/biz/the-salty-pig-boston', 0, 0, 0, '2014-11-11 03:45:54', '2014-11-11 03:45:54', NULL),
(405, 'Juniper', 0, 1, 1, -1, 1, -1, '53dd7646498e1add98e097f9', '', 'http://www.yelp.com/biz/juniper-wellesley', 0, 1, 0, '2014-11-11 04:16:43', '2014-11-11 04:16:43', NULL),
(406, 'Ben''s Chili Bowl', 1, 0, 1, -1, -1, 1, '54218207498e1c8f3d7ed499', '@benschilibowl', '', 0, 0, 0, '2015-01-12 01:10:18', '2015-01-12 01:10:18', NULL),
(407, 'Ben''s Chili Bowl', 1, 0, 1, -1, -1, 1, '531762bc498eeaaa922412c3', '@benschilibowl', 'http://www.yelp.com/biz/bens-chili-bowl-arlington', 0, 0, 0, '2015-01-12 01:17:06', '2015-01-12 01:17:06', NULL),
(408, 'Choices Cafe', 1, 0, 1, 1, 1, -1, '5481086d498e2f6041950b83', '@MyChoicesCafe', 'http://www.yelp.com/biz/choices-cafe-coral-gables-3', 0, 0, 0, '2015-01-12 01:30:38', '2015-01-12 01:30:38', NULL),
(409, 'Choices Kitchen', 1, 0, 1, 1, 1, -1, '53ecfae8498eaa482e954a9f', '@MyChoicesCafe', 'http://www.yelp.com/biz/choices-kitchen-miami-3?osq=choices+cafe', 0, 0, 0, '2015-01-12 01:58:32', '2015-01-12 01:58:32', NULL),
(410, 'Casa Romero', 1, 0, 1, 1, 1, -1, '3fd66200f964a52010ec1ee3', '', 'http://www.yelp.com/biz/casa-romero-boston', 0, 0, 0, '2015-01-12 02:27:25', '2015-01-12 02:27:25', NULL),
(411, 'Busboys and Poets', 1, 0, 1, -1, -1, 1, '4a67940af964a520b7c91fe3', '@busboysandpoets', 'http://www.yelp.com/biz/busboys-and-poets-washington-3', 0, 0, 0, '2015-01-12 02:49:12', '2015-01-12 02:54:03', NULL),
(412, 'Busboys and Poets', 1, 0, 1, -1, -1, 1, '4a6dbc97f964a520e6d21fe3', '@busboysandpoets', 'http://www.yelp.com/biz/busboys-and-poets-arlington', 0, 0, 0, '2015-01-12 02:53:46', '2015-01-12 02:53:46', NULL),
(413, 'Busboys and Poets', 1, 0, 1, -1, -1, 1, '4db19b6f4b22ba776d86428d', '@busboysandpoets', 'http://www.yelp.com/biz/busboys-and-poets-hyattsville', 0, 0, 0, '2015-01-12 02:56:39', '2015-01-12 02:56:39', NULL),
(414, 'Basil Tree Catering & Cafe', 0, 0, 1, -1, 1, 1, '4fe9c4aae4b0fba7c1e0df37', '@basiltree', 'http://www.yelp.com/biz/basil-tree-caterers-cambridge-2', 0, 0, 0, '2015-01-12 03:09:08', '2015-01-13 08:38:18', NULL),
(415, 'Bella Luna Restaurant & Milky Way Lounge', 1, 0, 1, -1, 1, -1, '4a31b011f964a520119a1fe3', '@milkywayjp', 'http://www.yelp.com/biz/bella-luna-restaurant-and-the-milky-way-lounge-jamaica-plain', 0, 0, 0, '2015-01-12 03:14:52', '2015-01-12 03:14:52', NULL),
(416, 'Cafe Gabriela', 1, 0, 1, 1, 1, 0, '4bd536ed4e32d13a7696c080', '', 'http://www.yelp.com/biz/cafe-gabriela-oakland', 0, 0, 0, '2015-01-12 10:14:29', '2015-01-13 08:38:48', NULL),
(417, 'Sweet Bar Bakery', 1, 0, 1, 1, 1, -1, '501c7b85e4b0b4a5c988efb3', '@sweetbarbakery', 'http://www.yelp.com/biz/sweet-bar-bakery-oakland', 0, 0, 0, '2015-01-12 10:17:26', '2015-01-13 08:39:07', NULL),
(418, 'Kingston 11 Cuisine ', 1, 0, 1, 1, 1, -1, '5264a77c11d282e5dd04b487', '', 'http://www.yelp.com/biz/kingston-11-cuisine-oakland', 0, 0, 0, '2015-01-12 10:19:45', '2015-01-13 08:39:21', NULL),
(419, 'Pietisserie', 1, 0, 1, 1, 1, -1, '506f0a8fe4b07fcb1f696c11', '', 'http://www.yelp.com/biz/pietisserie-oakland-3', 0, 0, 0, '2015-01-12 10:22:32', '2015-01-13 08:39:32', NULL),
(420, 'The Cook and Her Farmer', 1, 0, 1, 1, 1, 1, '5376a879498e8eeb2402cd71', '', 'http://www.yelp.com/biz/the-cook-and-her-farmer-oakland-2', 0, 0, 0, '2015-01-12 10:24:32', '2015-01-13 08:39:45', NULL),
(421, 'FuseBox', 1, 0, 1, 1, 1, -1, '4fad6e93e4b0e93c1edc4dac', '@fusebox_w_oak', 'http://www.yelp.com/biz/fusebox-oakland-2', 0, 0, 0, '2015-01-12 10:27:16', '2015-01-13 08:40:22', NULL),
(422, 'Variety Food Service', 0, 0, 1, 1, 1, 1, '', '', '', 0, 0, 0, '2015-01-12 10:34:13', '2015-01-13 08:46:30', NULL),
(423, 'Holiday Cocktail Lounge', 1, 0, 1, -1, 1, 1, '50d23ea9e4b0bf2ab00e8a2d', '', 'http://www.yelp.com/biz/holiday-cocktail-lounge-new-york-2', 0, 0, 0, '2015-01-12 10:43:18', '2015-01-13 08:46:49', NULL),
(424, 'Tamales la Oaxaquena', 1, 0, 1, 1, 1, -1, '53efa2c8498ea6fcd9807f45', '', 'http://www.yelp.com/biz/tamales-la-oaxaquena-oakland', 0, 0, 0, '2015-01-12 11:09:30', '2015-01-12 11:09:30', NULL),
(425, 'Miss Ollie''s', 1, 0, 1, 1, 1, -1, '50be580af136a1fe01a5db73', '', 'http://www.yelp.com/biz/miss-ollies-oakland', 0, 0, 0, '2015-01-12 11:16:55', '2015-01-13 08:47:13', NULL),
(426, 'Fleurimond Catering', -1, 0, 1, 1, 1, -1, '', '', 'http://www.yelp.com/biz/fleurimond-catering-new-york', 0, 0, 0, '2015-01-12 11:24:36', '2015-01-13 08:47:28', NULL),
(427, '', 1, 0, 0, 1, 1, -1, '51ea0a96498e8f092f5aea42', '', 'http://www.yelp.com/biz/kinanm-lounge-new-york', 0, 0, 0, '2015-01-12 11:34:12', '2015-01-17 02:11:59', '2015-01-17 02:11:59'),
(428, 'Kinanm Lounge', 1, 0, 1, 1, 1, -1, '51ea0a96498e8f092f5aea42', '', 'http://www.yelp.com/biz/kinanm-lounge-new-york', 0, 0, 0, '2015-01-12 11:35:32', '2015-01-13 08:47:43', NULL),
(429, '1905', 1, 0, 1, -1, 1, 1, '4a27122ff964a52055911fe3', '@1905dc', 'http://www.yelp.com/biz/1905-bistro-washington', 0, 0, 0, '2015-01-12 11:38:27', '2015-01-12 11:38:27', NULL),
(430, 'Aqua Bar', 1, 0, 1, 1, 1, -1, 'aquabarptown', '@aquabarptown', 'http://www.yelp.com/biz/aqua-bar-provincetown', 0, 0, 0, '2015-01-12 11:42:37', '2015-01-13 08:48:05', NULL),
(431, 'Peaches HotHouse', 1, 0, 1, -1, 1, 1, '4b9ec1b5f964a5205dff36e3', '@peacheshothouse', 'http://www.yelp.com/biz/peaches-hothouse-brooklyn', 0, 0, 0, '2015-01-12 11:54:54', '2015-01-12 11:54:54', NULL),
(432, 'Vegan Commissary', 1, 0, 1, 1, 1, -1, '52addbc511d2b6f24350d1c7', '@vegancommissary', 'http://www.yelp.com/biz/vegan-commissary-philadelphia', 0, 0, 0, '2015-01-12 12:01:22', '2015-01-13 08:48:52', NULL),
(433, 'Union Square Cafe', 1, 0, 1, -1, 1, 1, '3fd66200f964a52062e41ee3', '@unionsquarecafe', 'http://www.yelp.com/biz/union-square-cafe-new-york-3', 0, 0, 0, '2015-01-12 12:04:44', '2015-01-12 12:04:44', NULL),
(434, 'Untitled ', 1, 0, 1, -1, 1, 1, '4d8279629130b60c838f0eb4', '@untitlednyc', 'http://www.yelp.com/biz/untitled-new-york-4', 0, 0, 0, '2015-01-12 12:13:53', '2015-01-12 12:13:53', NULL),
(435, 'Marta', 1, 0, 1, -1, 1, 1, '5406665a498e800a29690993', '@martamanhattan', 'http://www.yelp.com/biz/marta-new-york-7', 0, 0, 0, '2015-01-12 12:17:12', '2015-01-12 12:17:12', NULL),
(436, 'Shake Shack', 1, 0, 1, -1, 1, 1, '', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-2', 0, 0, 0, '2015-01-12 12:24:45', '2015-01-12 12:25:05', NULL),
(437, 'Shake Shack', 1, 0, 1, -1, 1, 1, '49b0c608f964a520cd521fe3', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-5', 0, 0, 0, '2015-01-12 12:26:26', '2015-01-13 08:49:51', NULL),
(438, 'Shake Shack', 1, 0, 1, -1, 1, 1, '4c1918c7fe5a76b07b0f0315', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-10', 0, 0, 0, '2015-01-12 12:28:57', '2015-01-12 12:28:57', NULL),
(439, 'Shake Shack', 1, 0, 1, -1, 1, 1, '4dda977ad22d38ef4332c419', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-11', 0, 0, 0, '2015-01-12 12:32:02', '2015-01-12 12:32:02', NULL),
(440, 'Shake Shack', 1, 0, 1, -1, 1, 1, '4c2bccc7d1a10f475a88f864', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-9', 0, 0, 0, '2015-01-12 12:33:36', '2015-01-12 12:33:36', NULL),
(441, 'Shake Shack', 1, 0, 1, -1, 1, 1, '5460fb3b498e94400cc7fd29', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-new-york-25', 0, 0, 0, '2015-01-12 12:35:53', '2015-01-12 12:35:53', NULL),
(442, 'Shake Shack', 1, 0, 1, -1, 1, 1, '4eeb4c51775b1d4812e0261c', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-brooklyn', 0, 0, 0, '2015-01-12 12:38:50', '2015-01-12 12:38:50', NULL),
(443, 'Shake Shack', 1, 0, 1, -1, 1, 1, '538d22cb498e86974754d6da', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-fulton-ferry-district-2', 0, 0, 0, '2015-01-12 12:40:34', '2015-01-12 12:40:34', NULL),
(444, 'Shake Shack', 1, 0, 1, -1, 1, 1, '53e78e9a498e8c443762109c', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-brooklyn-4', 0, 0, 0, '2015-01-12 12:42:33', '2015-01-12 12:42:33', NULL),
(445, 'Shake Shack', 1, 0, 1, -1, 1, 1, '508163b1e4b0ad74a774b36c', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-garden-city', 0, 0, 0, '2015-01-12 12:44:31', '2015-01-12 12:44:31', NULL),
(446, 'Shake Shack', 1, 0, 1, -1, 1, 1, '4aa6f5c3f964a520a44b20e3', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-flushing?osq=shake+shack+citi+field', 0, 0, 0, '2015-01-12 12:47:24', '2015-01-12 12:47:24', NULL),
(447, 'Shake Shack', 1, 0, 1, -1, 1, 1, '4c4b30229c8d2d7fbbbea06a', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-saratoga-springs', 0, 0, 0, '2015-01-12 12:48:59', '2015-01-12 12:48:59', NULL),
(448, 'Shake Shack', 1, 0, 1, -1, 1, 1, '519f77db498e69d6f85bbe0f', '@shakeshack', 'http://www.yelp.com/biz/shake-shack-queens-2?osq=Shake+Shack+jfk', 0, 0, 0, '2015-01-12 12:50:49', '2015-01-12 12:50:49', NULL),
(449, 'Sweet Rose Creamery', 1, 0, 1, 1, -1, -1, '4be75ac9910020a1d45fd514', '@sweetroseicecrm', 'http://www.yelp.com/biz/sweet-rose-creamery-los-angeles', 0, 0, 0, '2015-01-12 13:00:12', '2015-01-13 08:50:41', NULL),
(450, 'Sweet Rose Creamery', 1, 0, 1, 1, -1, -1, '523b79a211d2fae37d1d367e', '@sweetroseicecrm', 'http://www.yelp.com/biz/sweet-rose-creamery-santa-monica-2', 0, 0, 0, '2015-01-12 13:02:16', '2015-01-13 08:51:05', NULL),
(451, 'Sweet Rose Creamery', 1, 0, 1, 1, -1, -1, '52dc621611d2afd25379b288', '@sweetroseicecrm', 'http://www.yelp.com/biz/sweet-rose-creamery-los-angeles-2', 0, 0, 0, '2015-01-12 13:03:54', '2015-01-13 08:51:16', NULL),
(452, 'Raymi', 1, 0, 1, -1, 1, 1, '4fac69a6e4b00ef46565cb33', '@rayminyc', 'http://www.yelp.com/biz/raymi-new-york', 0, 0, 0, '2015-01-12 13:09:59', '2015-01-13 08:51:39', NULL),
(453, 'El Camino', -1, 0, 1, -1, 1, 1, '545aba38498eb1e87142f804', '@elcaminodc', 'http://www.yelp.com/biz/el-camino-washington-2', 0, 0, 0, '2015-01-12 13:12:02', '2015-01-13 08:52:07', NULL),
(454, 'Cornerstone Bistro', 1, 0, 1, 1, -1, -1, '4c59a1db6407d13a11a9b228', '@detroitrescue', 'http://www.yelp.com/biz/cornerstone-bistro-highland-park', 0, 0, 1, '2015-01-12 13:15:31', '2015-01-13 08:52:36', NULL),
(455, 'Brown Bag Catering ', 1, 0, 1, 1, 1, -1, '4e00b18962843b639cf91ca8', '@brownbagfoods', 'http://www.yelp.com/biz/brown-bag-and-eatery-the-highland-park', 0, 0, 0, '2015-01-12 13:25:34', '2015-01-13 08:52:55', NULL),
(456, 'Addison Eatery', -1, 0, 0, -1, 1, -1, '544d15a8498eefae2e71db55', '@addisoneatery', 'http://www.yelp.com/biz/addison-eatery-detroit', 0, 0, 0, '2015-01-12 13:30:05', '2015-01-12 13:30:05', NULL),
(457, 'Yum Village', -1, 0, 1, 1, 1, -1, '', '@yumvillage', '', 0, 0, 0, '2015-01-12 13:37:15', '2015-01-12 13:37:15', NULL),
(458, 'Cafe Lift', 1, 0, 1, -1, 1, -1, '49fc5adbf964a520926e1fe3', '', 'http://www.yelp.com/biz/cafe-lift-philadelphia', 0, 0, 0, '2015-01-12 13:40:10', '2015-01-13 08:53:28', NULL),
(459, 'The Bar(n)', -1, 0, 0, -1, 1, -1, '54ab36f9498e8bda861917b9', '', 'http://www.yelp.com/biz/the-barn-on-baltimore-philadelphia', 0, 0, 0, '2015-01-12 13:49:37', '2015-01-12 13:49:37', NULL),
(460, 'Rx The Farmacy', 1, 0, 1, -1, 1, -1, '51b406255019ca854db61780', '@thefarmacyrx', 'http://www.yelp.com/biz/the-farmacy-philadelphia', 0, 0, 0, '2015-01-12 13:55:50', '2015-01-13 08:53:50', NULL),
(461, 'Prohibition Taproom', 1, 0, 1, -1, 1, -1, '49e143def964a520b0611fe3', '@ProhibitionTR', 'http://www.yelp.com/biz/prohibition-taproom-philadelphia', 0, 0, 0, '2015-01-12 14:01:13', '2015-01-13 08:54:09', NULL),
(462, 'Girard Brasserie & Bruncherie', -1, 0, 1, 1, 1, 1, '5467eb36498eb46210e2b8d9', '@GirardOnGirard', 'http://www.yelp.com/biz/girard-brasserie-and-bruncherie-philadelphia-2', 0, 0, 1, '2015-01-12 14:07:06', '2015-01-12 14:07:06', NULL),
(463, 'Bufand Pizza', 1, 0, 1, -1, 1, -1, '502bdf47e4b0fe00a3834536', '@bufadpizza', 'http://www.yelp.com/biz/bufad-philadelphia', 0, 0, 0, '2015-01-12 14:11:53', '2015-01-13 08:54:53', NULL),
(464, '3 Worlds Cafe', 1, 0, 1, 1, 1, -1, '51fc45c0498e99a60d3b766b', '@3worldscafe', 'http://www.yelp.com/biz/3-worlds-cafe-los-angeles', 0, 0, 0, '2015-01-12 14:14:58', '2015-01-12 14:14:58', NULL),
(465, 'Locali Conscious Convenience', 1, 0, 1, 1, 1, -1, '5323c58511d210fc254dc3f8', '@locali', 'http://www.yelp.com/biz/locali-conscious-convenience-los-angeles-2', 0, 0, 0, '2015-01-12 14:22:08', '2015-01-13 08:55:20', NULL),
(466, 'Locali Conscious Convenience', 1, 0, 1, 1, 1, -1, '5323c58511d210fc254dc3f8', '@locali', 'http://www.yelp.com/biz/locali-conscious-convenience-venice', 0, 0, 0, '2015-01-12 14:23:38', '2015-01-13 08:55:38', NULL),
(467, 'Localita & The Badasserie', 1, 0, 1, 1, 1, -1, '502c36b0e4b08caa15d9d472', '@localitala', 'http://www.yelp.com/biz/localita-and-the-badasserie-los-angeles', 0, 0, 0, '2015-01-12 14:25:33', '2015-01-13 08:56:01', NULL);
INSERT INTO `restaurants` (`id`, `name`, `promotion`, `award_id`, `high_road`, `tipped_workers`, `untipped_workers`, `sick_days`, `foursquare_id`, `twitter`, `yelp_url`, `multiple_locations`, `fine_dining`, `fair_wage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(468, 'Manifesto Café', -1, 0, 1, 1, -1, 1, '537cded8498ed3ab7b293497', '@ManifestoCafe', 'http://www.yelp.com/biz/manifesto-cafe-los-angeles-2', 0, 0, 0, '2015-01-12 14:31:05', '2015-01-12 14:31:05', NULL),
(469, 'Chaya', -1, 0, 1, 1, 1, 1, '44ccd279f964a52014361fe3', '@chayarestaurant', 'http://www.yelp.com/biz/chaya-venice-venice', 0, 0, 0, '2015-01-12 14:47:39', '2015-01-12 14:47:39', NULL),
(470, 'M Café de Chaya', -1, 0, 1, 1, 1, 1, '49c141eaf964a52095551fe3', '@WeLoveMCafe', 'http://www.yelp.com/biz/m-caf%C3%A9-de-chaya-los-angeles-3', 0, 0, 0, '2015-01-12 14:52:19', '2015-01-12 14:52:19', NULL),
(471, 'M Café de Chaya', -1, 0, 1, 1, 1, 1, '4af1fdd2f964a520fde421e3', '@WeLoveMCafe', 'http://www.yelp.com/biz/m-cafe-beverly-hills', 0, 0, 0, '2015-01-12 14:55:50', '2015-01-12 14:55:50', NULL),
(472, 'Chaya Brasserie', -1, 0, 1, 1, 1, 1, '3fd66200f964a5202fed1ee3', '@chayasf', 'http://www.yelp.com/biz/chaya-brasserie-san-francisco', 0, 0, 0, '2015-01-12 14:59:19', '2015-01-12 14:59:19', NULL),
(473, 'Hughie''s Tavern and Grille', 1, 0, 1, -1, -1, 1, '51f46297498e284bb2346e87', '@hughieshouston', 'http://www.yelp.com/biz/hughies-tavern-and-grille-houston', 0, 0, 0, '2015-01-12 15:03:32', '2015-01-12 15:03:32', NULL),
(474, 'La Casa Del Caballo', 1, 0, 1, -1, -1, 1, '511e6b67e4b0d2f60a25b6a5', '@casadelcaballo', 'http://www.yelp.com/biz/la-casa-del-caballo-houston', 0, 0, 0, '2015-01-12 15:05:09', '2015-01-12 15:07:17', NULL),
(475, 'Killen''s Steakhouse', 1, 0, 1, -1, 1, 1, '4b219ca7f964a520f03e24e3', '', 'http://www.yelp.com/biz/killens-steakhouse-pearland', 0, 0, 0, '2015-01-12 15:06:45', '2015-01-12 15:06:45', NULL),
(476, 'Kainbigan ', 1, 0, 1, 1, -1, -1, '520d727f11d2d4d5842c1742', '', 'http://www.yelp.com/biz/kainbigan-restaurant-oakland-2', 0, 0, 0, '2015-01-12 15:09:42', '2015-01-12 15:09:42', NULL),
(477, 'The Sandwich Hut', 1, 0, 1, 1, -1, 1, '4b8593b2f964a520826631e3', '', 'http://www.yelp.com/biz/the-sandwich-hut-providence', 0, 0, 0, '2015-01-12 15:12:52', '2015-01-12 15:12:52', NULL),
(478, 'Make My Cake', 1, 0, 1, 1, 1, -1, '4a99901df964a520162f20e3', '@makemycakeny', 'http://www.yelp.com/biz/make-my-cake-new-york', 0, 0, 0, '2015-01-12 15:15:44', '2015-01-13 08:57:10', NULL),
(479, 'Make My Cake', 1, 0, 1, 1, 1, -1, '4b780feaf964a5200fb42ee3', '@makemycakeny', 'http://www.yelp.com/biz/make-my-cake-new-york-2', 0, 0, 0, '2015-01-12 15:18:11', '2015-01-13 08:57:20', NULL),
(480, 'Levy Restaurants at Ford Field', -1, 0, 1, -1, 1, -1, '4b15507bf964a520a8b023e3', '@LevyRestaurants', '', 0, 0, 0, '2015-01-12 15:28:10', '2015-01-12 15:28:10', NULL),
(481, 'Kitchfix', 1, 0, 1, 1, -1, 1, '', '@Kitchfix', 'http://www.yelp.com/biz/kitchfix-chicago-2', 0, 0, 0, '2015-01-12 15:31:41', '2015-01-12 15:31:41', NULL),
(482, 'B-dama', 1, 0, 1, 1, 1, -1, '5425b7be498ed1269504a71d', '', 'http://www.yelp.com/biz/as-b-dama-oakland', 0, 0, 0, '2015-01-12 15:41:05', '2015-01-13 08:57:56', NULL),
(483, 'Pacha Organic Café', 1, 0, 1, 1, 1, -1, '4a0867b5f964a520c4731fe3', '@pachatxcafe', 'http://www.yelp.com/biz/pacha-austin', 0, 0, 0, '2015-01-12 15:45:44', '2015-01-12 15:45:44', NULL),
(484, 'Vimala’s Curryblossom Cafe', 1, 0, 1, 1, 1, 1, '4c2123f8aa8e9c745d2bf4d4', '@curryblossom', 'http://www.yelp.com/biz/vimalas-curryblossom-cafe-chapel-hill', 0, 0, 1, '2015-01-12 15:48:35', '2015-01-12 15:48:35', NULL),
(485, 'Snow & Company', 1, 0, 1, -1, 1, 1, 'snowandcompany', '@snowandcompany', 'http://www.yelp.com/biz/snow-and-company-kansas-city', 0, 0, 0, '2015-01-12 15:52:15', '2015-01-12 15:52:15', NULL),
(486, '''wichcraft', -1, 0, 0, -1, -1, 1, '44818698f964a52014341fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-17', 0, 0, 0, '2015-01-12 16:05:47', '2015-01-13 08:43:00', NULL),
(487, '''wichcraft', -1, 0, 0, -1, -1, 1, '45ae087cf964a52078411fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-16', 0, 0, 0, '2015-01-12 16:07:21', '2015-01-13 08:43:13', NULL),
(488, '''wichcraft', -1, 0, 0, -1, -1, 1, '45ae08b6f964a52079411fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-19', 0, 0, 0, '2015-01-12 16:08:48', '2015-01-13 08:43:26', NULL),
(489, '''wichcraft', -1, 0, 0, -1, -1, 1, '4a525e9df964a52094b11fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york', 0, 0, 0, '2015-01-12 16:10:27', '2015-01-13 08:43:39', NULL),
(490, '''wichcraft', -1, 0, 0, -1, -1, 1, '4b2a6b91f964a520d5a824e3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-11', 0, 0, 0, '2015-01-12 16:15:22', '2015-01-13 08:43:52', NULL),
(491, '''wichcraft', -1, 0, 0, -1, -1, 1, '4ab13f96f964a520b56820e3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-3', 0, 0, 0, '2015-01-12 16:16:55', '2015-01-13 08:44:09', NULL),
(492, '''wichcraft', -1, 0, 0, -1, -1, 1, '4ca670a3b0b8236ae35e9fe6', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-manhattan-9', 0, 0, 0, '2015-01-12 16:18:46', '2015-01-13 08:44:23', NULL),
(493, '''wichcraft', -1, 0, 0, -1, -1, 1, '4a6df7e6f964a52072d31fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-2', 0, 0, 0, '2015-01-12 16:20:50', '2015-01-13 08:44:37', NULL),
(494, '''wichcraft', -1, 0, 0, -1, -1, 1, '45ae0904f964a5207a411fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-24', 0, 0, 0, '2015-01-12 16:24:18', '2015-01-13 08:44:51', NULL),
(495, '', -1, 0, 1, -1, 1, 1, '4f749d6a6b74a7c7f7e9fef1', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york?osq=%27wichcraft+kiosk', 0, 0, 0, '2015-01-12 16:32:25', '2015-01-17 02:11:09', '2015-01-17 02:11:09'),
(496, '''wichcraft', -1, 0, 0, -1, -1, 1, '4f749d6a6b74a7c7f7e9fef1', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york?osq=%27wichcraft+kiosk', 0, 0, 0, '2015-01-12 16:33:27', '2015-01-13 08:45:04', NULL),
(497, '''wichcraft', -1, 0, 0, -1, -1, 1, '3fd66200f964a520d7f11ee3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-7', 0, 0, 0, '2015-01-12 16:37:27', '2015-01-13 08:45:18', NULL),
(498, '''wichcraft', -1, 0, 0, -1, -1, 1, '50f1b91de4b0c79b1b0e0530', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-new-york-20', 0, 0, 0, '2015-01-12 16:40:38', '2015-01-13 08:45:32', NULL),
(499, '''wichcraft', -1, 0, 0, -1, 1, 1, '4a5125dcf964a520acb01fe3', '@wichcraft', 'http://www.yelp.com/biz/wichcraft-san-francisco', 0, 0, 0, '2015-01-12 16:42:07', '2015-01-13 08:45:51', NULL),
(500, 'Zingerman’s Delicatessen', 1, 0, 1, -1, -1, 1, '4aaa6549f964a520d25520e3', '@zingermans', 'http://www.yelp.com/biz/zingermans-delicatessen-ann-arbor-2', 0, 0, 0, '2015-01-12 23:50:28', '2015-01-12 23:50:28', NULL),
(501, 'Zingerman’s Bakehouse', 1, 0, 1, -1, 1, 1, '4afd767df964a520f72722e3', '@zingbakehouse', 'http://www.yelp.com/biz/zingermans-bakehouse-ann-arbor-2', 0, 0, 0, '2015-01-12 23:52:48', '2015-01-12 23:52:48', NULL),
(502, 'Zingerman''s Catering', 1, 0, 1, 1, -1, 1, '4d8cea6b6174a093f5aba4e3', '@zingermans', 'http://www.yelp.com/biz/zingermans-events-on-fourth-ann-arbor-charter-township', 0, 0, 0, '2015-01-13 00:01:46', '2015-01-13 00:01:46', NULL),
(503, 'Test', 0, 0, 0, 0, 0, 0, 'abdc', '', '', 0, 0, 0, '2015-01-15 21:33:53', '2015-01-15 21:39:53', '2015-01-15 21:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_metros`
--

CREATE TABLE IF NOT EXISTS `restaurant_metros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `restaurant_id` int(10) unsigned NOT NULL,
  `metro_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_metros_restaurant_id_foreign` (`restaurant_id`),
  KEY `restaurant_metros_metro_id_foreign` (`metro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=502 ;

--
-- Dumping data for table `restaurant_metros`
--

INSERT INTO `restaurant_metros` (`id`, `created_at`, `updated_at`, `restaurant_id`, `metro_id`) VALUES
(141, '2014-10-25 05:46:22', '2014-10-25 05:46:22', 265, 10),
(144, '2014-10-25 05:47:02', '2014-10-25 05:47:02', 270, 8),
(153, '2014-10-25 05:51:51', '2014-10-25 05:51:51', 291, 7),
(154, '2014-10-25 05:52:00', '2014-10-25 05:52:00', 293, 4),
(160, '2014-10-25 05:54:03', '2014-10-25 05:54:03', 306, 7),
(208, '2014-10-25 01:36:15', '2014-10-25 01:36:15', 387, 12),
(211, '2014-10-25 02:24:25', '2014-10-25 02:24:25', 390, 12),
(213, '2014-10-25 02:27:20', '2014-10-25 02:27:20', 391, 12),
(214, '2014-10-25 02:29:47', '2014-10-25 02:29:47', 392, 12),
(215, '2014-10-25 02:32:03', '2014-10-25 02:32:03', 393, 12),
(217, '2014-10-25 02:36:30', '2014-10-25 02:36:30', 395, 12),
(218, '2014-10-25 02:38:47', '2014-10-25 02:38:47', 396, 12),
(219, '2014-10-25 02:43:18', '2014-10-25 02:43:18', 397, 12),
(220, '2014-10-25 02:47:21', '2014-10-25 02:47:21', 398, 12),
(221, '2014-10-25 02:50:14', '2014-10-25 02:50:14', 399, 12),
(232, '2014-10-27 04:06:28', '2014-10-27 04:06:28', 394, 12),
(281, '2014-11-11 03:29:14', '2014-11-11 03:29:14', 401, 11),
(282, '2014-11-11 03:34:56', '2014-11-11 03:34:56', 402, 11),
(283, '2014-11-11 03:43:05', '2014-11-11 03:43:05', 403, 11),
(284, '2014-11-11 03:46:12', '2014-11-11 03:46:12', 404, 11),
(285, '2014-11-11 04:16:57', '2014-11-11 04:16:57', 405, 11),
(286, '2015-01-12 00:41:48', '2015-01-12 00:41:48', 198, 9),
(287, '2015-01-12 00:50:48', '2015-01-12 00:50:48', 202, 10),
(288, '2015-01-12 01:24:16', '2015-01-12 01:24:16', 229, 5),
(289, '2015-01-12 02:03:37', '2015-01-12 02:03:37', 409, 5),
(290, '2015-01-12 02:04:33', '2015-01-12 02:04:33', 408, 5),
(291, '2015-01-12 02:04:48', '2015-01-12 02:04:48', 407, 10),
(292, '2015-01-12 02:05:04', '2015-01-12 02:05:04', 406, 10),
(293, '2015-01-12 02:07:30', '2015-01-12 02:07:30', 365, 11),
(294, '2015-01-12 02:19:17', '2015-01-12 02:19:17', 328, 10),
(295, '2015-01-12 02:27:48', '2015-01-12 02:27:48', 410, 11),
(297, '2015-01-12 02:49:57', '2015-01-12 02:49:57', 214, 10),
(300, '2015-01-12 02:54:03', '2015-01-12 02:54:03', 411, 10),
(301, '2015-01-12 02:54:17', '2015-01-12 02:54:17', 412, 10),
(302, '2015-01-12 02:56:51', '2015-01-12 02:56:51', 413, 10),
(303, '2015-01-12 03:00:21', '2015-01-12 03:00:21', 252, 10),
(304, '2015-01-12 03:01:20', '2015-01-12 03:01:20', 264, 10),
(306, '2015-01-12 03:15:03', '2015-01-12 03:15:03', 415, 11),
(307, '2015-01-12 10:10:15', '2015-01-12 10:10:15', 342, 2),
(316, '2015-01-12 10:38:04', '2015-01-12 10:38:04', 289, 7),
(318, '2015-01-12 10:56:42', '2015-01-12 10:56:42', 237, 7),
(319, '2015-01-12 11:09:42', '2015-01-12 11:09:42', 424, 9),
(323, '2015-01-12 11:38:36', '2015-01-12 11:38:36', 429, 10),
(325, '2015-01-12 11:45:27', '2015-01-12 11:45:27', 370, 7),
(327, '2015-01-12 11:55:01', '2015-01-12 11:55:01', 431, 7),
(328, '2015-01-12 11:56:46', '2015-01-12 11:56:46', 301, 7),
(329, '2015-01-12 11:58:56', '2015-01-12 11:58:56', 368, 8),
(331, '2015-01-12 12:05:23', '2015-01-12 12:05:23', 433, 7),
(332, '2015-01-12 12:07:29', '2015-01-12 12:07:29', 271, 7),
(334, '2015-01-12 12:08:59', '2015-01-12 12:08:59', 283, 7),
(335, '2015-01-12 12:09:27', '2015-01-12 12:09:27', 367, 7),
(336, '2015-01-12 12:09:55', '2015-01-12 12:09:55', 215, 7),
(337, '2015-01-12 12:11:23', '2015-01-12 12:11:23', 308, 7),
(338, '2015-01-12 12:11:52', '2015-01-12 12:11:52', 299, 7),
(339, '2015-01-12 12:14:02', '2015-01-12 12:14:02', 434, 7),
(341, '2015-01-12 12:17:19', '2015-01-12 12:17:19', 435, 7),
(345, '2015-01-12 12:25:05', '2015-01-12 12:25:05', 436, 7),
(346, '2015-01-12 12:51:24', '2015-01-12 12:51:24', 438, 7),
(347, '2015-01-12 12:51:52', '2015-01-12 12:51:52', 439, 7),
(348, '2015-01-12 12:52:01', '2015-01-12 12:52:01', 448, 7),
(349, '2015-01-12 12:52:11', '2015-01-12 12:52:11', 447, 7),
(350, '2015-01-12 12:52:18', '2015-01-12 12:52:18', 446, 7),
(351, '2015-01-12 12:52:26', '2015-01-12 12:52:26', 445, 7),
(352, '2015-01-12 12:52:37', '2015-01-12 12:52:37', 444, 7),
(353, '2015-01-12 12:52:46', '2015-01-12 12:52:46', 443, 7),
(354, '2015-01-12 12:53:11', '2015-01-12 12:53:11', 441, 7),
(355, '2015-01-12 12:53:23', '2015-01-12 12:53:23', 440, 7),
(356, '2015-01-12 12:57:08', '2015-01-12 12:57:08', 269, 7),
(366, '2015-01-12 13:27:38', '2015-01-12 13:27:38', 316, 7),
(367, '2015-01-12 13:30:23', '2015-01-12 13:30:23', 456, 2),
(368, '2015-01-12 13:33:55', '2015-01-12 13:33:55', 236, 2),
(369, '2015-01-12 13:38:05', '2015-01-12 13:38:05', 457, 2),
(371, '2015-01-12 13:49:45', '2015-01-12 13:49:45', 459, 8),
(372, '2015-01-12 13:51:03', '2015-01-12 13:51:03', 357, 8),
(375, '2015-01-12 13:59:04', '2015-01-12 13:59:04', 369, 8),
(377, '2015-01-12 14:07:17', '2015-01-12 14:07:17', 462, 8),
(378, '2015-01-12 14:08:08', '2015-01-12 14:08:08', 259, 8),
(379, '2015-01-12 14:09:23', '2015-01-12 14:09:23', 255, 8),
(381, '2015-01-12 14:15:12', '2015-01-12 14:15:12', 464, 4),
(385, '2015-01-12 14:26:48', '2015-01-12 14:26:48', 240, 4),
(386, '2015-01-12 14:27:59', '2015-01-12 14:27:59', 334, 4),
(387, '2015-01-12 14:31:13', '2015-01-12 14:31:13', 468, 4),
(388, '2015-01-12 14:31:56', '2015-01-12 14:31:56', 268, 4),
(389, '2015-01-12 14:33:48', '2015-01-12 14:33:48', 333, 4),
(390, '2015-01-12 14:36:29', '2015-01-12 14:36:29', 362, 4),
(391, '2015-01-12 14:45:50', '2015-01-12 14:45:50', 224, 4),
(392, '2015-01-12 14:56:12', '2015-01-12 14:56:12', 469, 4),
(393, '2015-01-12 14:56:19', '2015-01-12 14:56:19', 470, 4),
(394, '2015-01-12 14:56:29', '2015-01-12 14:56:29', 471, 4),
(395, '2015-01-12 14:59:45', '2015-01-12 14:59:45', 472, 9),
(396, '2015-01-12 15:07:03', '2015-01-12 15:07:03', 473, 3),
(397, '2015-01-12 15:07:17', '2015-01-12 15:07:17', 474, 3),
(398, '2015-01-12 15:07:24', '2015-01-12 15:07:24', 475, 3),
(399, '2015-01-12 15:09:50', '2015-01-12 15:09:50', 476, 9),
(402, '2015-01-12 15:28:18', '2015-01-12 15:28:18', 480, 2),
(403, '2015-01-12 15:31:51', '2015-01-12 15:31:51', 481, 1),
(404, '2015-01-12 15:32:41', '2015-01-12 15:32:41', 352, 1),
(405, '2015-01-12 15:33:59', '2015-01-12 15:33:59', 385, 9),
(406, '2015-01-12 15:34:39', '2015-01-12 15:34:39', 243, 7),
(408, '2015-01-12 15:42:20', '2015-01-12 15:42:20', 238, 9),
(409, '2015-01-12 15:59:21', '2015-01-12 15:59:21', 241, 7),
(410, '2015-01-12 16:00:28', '2015-01-12 16:00:28', 242, 7),
(411, '2015-01-12 16:01:19', '2015-01-12 16:01:19', 235, 7),
(428, '2015-01-12 17:46:29', '2015-01-12 17:46:29', 325, 7),
(443, '2015-01-13 08:38:18', '2015-01-13 08:38:18', 414, 11),
(444, '2015-01-13 08:38:48', '2015-01-13 08:38:48', 416, 9),
(445, '2015-01-13 08:39:07', '2015-01-13 08:39:07', 417, 9),
(446, '2015-01-13 08:39:21', '2015-01-13 08:39:21', 418, 9),
(447, '2015-01-13 08:39:32', '2015-01-13 08:39:32', 419, 9),
(448, '2015-01-13 08:39:45', '2015-01-13 08:39:45', 420, 9),
(449, '2015-01-13 08:40:22', '2015-01-13 08:40:22', 421, 9),
(451, '2015-01-13 08:42:47', '2015-01-13 08:42:47', 194, 7),
(452, '2015-01-13 08:43:00', '2015-01-13 08:43:00', 486, 7),
(453, '2015-01-13 08:43:13', '2015-01-13 08:43:13', 487, 7),
(454, '2015-01-13 08:43:26', '2015-01-13 08:43:26', 488, 7),
(455, '2015-01-13 08:43:39', '2015-01-13 08:43:39', 489, 7),
(456, '2015-01-13 08:43:52', '2015-01-13 08:43:52', 490, 7),
(457, '2015-01-13 08:44:09', '2015-01-13 08:44:09', 491, 7),
(458, '2015-01-13 08:44:23', '2015-01-13 08:44:23', 492, 7),
(459, '2015-01-13 08:44:37', '2015-01-13 08:44:37', 493, 7),
(460, '2015-01-13 08:44:51', '2015-01-13 08:44:51', 494, 7),
(461, '2015-01-13 08:45:04', '2015-01-13 08:45:04', 496, 7),
(462, '2015-01-13 08:45:18', '2015-01-13 08:45:18', 497, 7),
(463, '2015-01-13 08:45:32', '2015-01-13 08:45:32', 498, 7),
(464, '2015-01-13 08:45:51', '2015-01-13 08:45:51', 499, 9),
(465, '2015-01-13 08:46:30', '2015-01-13 08:46:30', 422, 2),
(466, '2015-01-13 08:46:49', '2015-01-13 08:46:49', 423, 7),
(467, '2015-01-13 08:47:13', '2015-01-13 08:47:13', 425, 9),
(468, '2015-01-13 08:47:28', '2015-01-13 08:47:28', 426, 7),
(469, '2015-01-13 08:47:43', '2015-01-13 08:47:43', 428, 7),
(470, '2015-01-13 08:48:05', '2015-01-13 08:48:05', 430, 11),
(471, '2015-01-13 08:48:52', '2015-01-13 08:48:52', 432, 8),
(472, '2015-01-13 08:50:41', '2015-01-13 08:50:41', 449, 4),
(473, '2015-01-13 08:51:05', '2015-01-13 08:51:05', 450, 4),
(474, '2015-01-13 08:51:16', '2015-01-13 08:51:16', 451, 4),
(475, '2015-01-13 08:51:39', '2015-01-13 08:51:39', 452, 7),
(476, '2015-01-13 08:52:07', '2015-01-13 08:52:07', 453, 10),
(477, '2015-01-13 08:52:36', '2015-01-13 08:52:36', 454, 2),
(478, '2015-01-13 08:52:55', '2015-01-13 08:52:55', 455, 2),
(479, '2015-01-13 08:53:28', '2015-01-13 08:53:28', 458, 8),
(480, '2015-01-13 08:53:50', '2015-01-13 08:53:50', 460, 8),
(481, '2015-01-13 08:54:09', '2015-01-13 08:54:09', 461, 8),
(482, '2015-01-13 08:54:53', '2015-01-13 08:54:53', 463, 8),
(483, '2015-01-13 08:55:20', '2015-01-13 08:55:20', 465, 4),
(484, '2015-01-13 08:55:38', '2015-01-13 08:55:38', 466, 4),
(485, '2015-01-13 08:56:01', '2015-01-13 08:56:01', 467, 4),
(486, '2015-01-13 08:57:10', '2015-01-13 08:57:10', 478, 7),
(487, '2015-01-13 08:57:20', '2015-01-13 08:57:20', 479, 7),
(488, '2015-01-13 08:57:56', '2015-01-13 08:57:56', 482, 9),
(489, '2015-01-17 02:04:57', '2015-01-17 02:04:57', 337, 7),
(496, '2015-01-20 21:41:33', '2015-01-20 21:41:33', 345, 1),
(497, '2015-01-20 21:41:33', '2015-01-20 21:41:33', 345, 5),
(498, '2015-01-20 21:41:33', '2015-01-20 21:41:33', 345, 7),
(499, '2015-01-20 21:41:33', '2015-01-20 21:41:33', 345, 8),
(500, '2015-01-20 21:41:33', '2015-01-20 21:41:33', 345, 10),
(501, '2015-01-20 21:41:33', '2015-01-20 21:41:33', 345, 11);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL,
  `servers` int(11) NOT NULL,
  `bussers` int(11) NOT NULL,
  `servers_color` int(11) NOT NULL,
  `servers_women` int(11) NOT NULL,
  `bussers_color` int(11) NOT NULL,
  `bussers_women` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id`, `restaurant_id`, `servers`, `bussers`, `servers_color`, `servers_women`, `bussers_color`, `bussers_women`, `created_at`, `updated_at`) VALUES
(36, 242, 9, 5, 5, 4, 5, 0, '2015-03-23 04:54:30', '2015-03-23 04:54:30'),
(35, 235, 5, 5, 0, 7, 5, 6, '2015-03-07 04:13:46', '2015-03-07 04:13:46'),
(34, 387, 0, 0, 0, 0, 0, 0, '2015-03-02 10:38:38', '2015-03-02 10:38:38'),
(33, 283, 11, 4, 7, 11, 2, 3, '2015-02-13 09:20:48', '2015-02-13 09:20:48'),
(32, 241, 25, 35, 3, 8, 30, 18, '2015-02-05 03:55:40', '2015-02-05 03:55:40'),
(37, 398, 17, 4, 2, 5, 3, 0, '2015-05-07 17:44:08', '2015-05-07 17:44:08'),
(38, 0, 0, 0, 0, 0, 0, 0, '2015-06-03 18:42:06', '2015-06-03 18:42:06'),
(39, 337, 6, 1, 48, 50, 50, 50, '2015-09-24 08:24:19', '2015-09-24 08:24:19'),
(40, 392, 32, 36, 50, 50, 50, 50, '2015-11-18 10:07:23', '2015-11-18 10:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(4) NOT NULL DEFAULT '0',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '::1', 0, 0, 0, NULL, NULL, NULL),
(2, 2, '::1', 0, 0, 0, NULL, NULL, NULL),
(3, 1, '71.105.233.104', 0, 0, 0, NULL, NULL, NULL),
(4, 2, '68.175.117.36', 0, 0, 0, NULL, NULL, NULL),
(5, 1, '117.6.79.132', 0, 0, 0, NULL, NULL, NULL),
(6, 1, '108.209.173.253', 0, 0, 0, NULL, NULL, NULL),
(7, 1, '129.171.233.76', 0, 0, 0, NULL, NULL, NULL),
(8, 2, '67.247.37.37', 0, 0, 0, NULL, NULL, NULL),
(9, 1, '129.171.233.71', 0, 0, 0, NULL, NULL, NULL),
(10, 2, '209.6.42.164', 0, 0, 0, NULL, NULL, NULL),
(11, 2, '23.25.248.150', 0, 0, 0, NULL, NULL, NULL),
(12, 2, '66.31.211.218', 0, 0, 0, NULL, NULL, NULL),
(13, 2, '99.60.82.96', 0, 0, 0, NULL, NULL, NULL),
(14, 2, '72.69.209.252', 0, 0, 0, NULL, NULL, NULL),
(15, 1, '129.171.233.73', 0, 0, 0, NULL, NULL, NULL),
(16, 2, '99.130.89.193', 0, 0, 0, NULL, NULL, NULL),
(17, 1, '108.209.174.115', 0, 0, 0, NULL, NULL, NULL),
(18, 1, '129.171.233.75', 0, 0, 0, NULL, NULL, NULL),
(19, 1, '129.171.6.33', 0, 0, 0, NULL, NULL, NULL),
(20, 1, '129.171.249.144', 0, 0, 0, NULL, NULL, NULL),
(21, 1, '108.209.173.144', 0, 0, 0, NULL, NULL, NULL),
(22, 2, '108.209.173.144', 2, 0, 0, '2015-07-18 08:03:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(4) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'c.ewing@miami.edu', '$2y$10$BZOeeJ/RJlDdIfv8v8PpIuFszvf4LHu4jJpr.iszIE72C7YBvA5bO', '{"superuser":1}', 1, NULL, '2014-06-26 01:15:55', '2015-09-17 18:46:31', '$2y$10$BukAAoqiyyoBmzSP8Ys6Re.XlqxkHV.UYo2yiCfCvfpTI6dfdY8jS', NULL, 'Clay', 'Ewing', '2014-06-26 05:15:55', '2015-09-17 22:46:31'),
(2, 'maria@rocunited.org', '$2y$10$sxm.JgSWwv7XagKMPq050.3AtfIlN//IYrov7UbiWCKw4dteGEDhK', '', 1, NULL, '2014-07-10 19:10:16', '2015-07-06 17:35:08', '$2y$10$M/8fv2MT80wJvHAB7IvB2.ItlyOuydJM7VAY3/O09argxuqUM96Wq', NULL, 'Maria', 'Myotte', '2014-07-11 02:10:16', '2015-07-06 21:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_award_id_foreign` FOREIGN KEY (`award_id`) REFERENCES `awards` (`id`);

--
-- Constraints for table `restaurant_metros`
--
ALTER TABLE `restaurant_metros`
  ADD CONSTRAINT `restaurant_metros_metro_id_foreign` FOREIGN KEY (`metro_id`) REFERENCES `metros` (`id`),
  ADD CONSTRAINT `restaurant_metros_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
