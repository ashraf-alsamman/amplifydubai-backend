-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 21, 2020 at 10:06 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amplifydubai`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

DROP TABLE IF EXISTS `fixtures`;
CREATE TABLE IF NOT EXISTS `fixtures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_id` int(11) NOT NULL,
  `away_id` int(11) NOT NULL,
  `home_score` int(11) DEFAULT NULL,
  `away_score` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `home_id`, `away_id`, `home_score`, `away_score`, `user_id`) VALUES
(14, 1, 5, 0, 0, NULL),
(13, 4, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e0aa310be44b5ea40da2214061a335777023057c3f1856585c3a1c796ec2a4d1e648d43f42557d93', 1, 1, 'authToken', '[]', 0, '2020-08-17 18:32:44', '2020-08-17 18:32:44', '2021-08-17 20:32:44'),
('d734a79274b1629a876f9393887483c4e4de656ae8e8d6d5d225f31f089003104696afc509850414', 1, 1, 'authToken', '[]', 0, '2020-08-17 18:47:05', '2020-08-17 18:47:05', '2021-08-17 20:47:05'),
('d167f04f59c019e841428c2bb97d4118813ef8b8e1f7f26e694486ba8846b90baf04eb45ef5c7c56', 2, 1, 'authToken', '[]', 0, '2020-08-18 03:49:49', '2020-08-18 03:49:49', '2021-08-18 05:49:49'),
('77b2192f08d489011d5a5a4fca599faef51b6e9cfa3bc78fc8fe85af7972feae1d64a58add8e75b2', 3, 1, 'authToken', '[]', 0, '2020-08-18 03:56:05', '2020-08-18 03:56:05', '2021-08-18 05:56:05'),
('1baacd5a67500cc837c1997f069af38866f324933d96252697069a8a64d9ee0df27620462c34a1b2', 8, 1, 'authToken', '[]', 0, '2020-08-18 04:46:41', '2020-08-18 04:46:41', '2021-08-18 06:46:41'),
('618fd651c40956b591e5dc716150c13d378a6dccfa5001d954697daaa6fe06dc8ce811314ce1b1e1', 9, 1, 'authToken', '[]', 0, '2020-08-18 04:48:20', '2020-08-18 04:48:20', '2021-08-18 06:48:20'),
('e28e991a37000589a2bf0391a9da72ceb11af2fd02454cf64556a2f285da9e10804d7bdaa83c2b9f', 10, 1, 'authToken', '[]', 0, '2020-08-18 04:49:26', '2020-08-18 04:49:26', '2021-08-18 06:49:26'),
('19627e2125f9b8d3d130821306ff83db8eb44762bbd2078a3da0942e2cfeaf5df0d7903b62b8fe9b', 24, 1, 'authToken', '[]', 0, '2020-08-18 05:43:00', '2020-08-18 05:43:00', '2021-08-18 07:43:00'),
('b8adc60a2023bca5b4c7b320c9a3a0224c342921056bbb3018d74193a949b395594cb948252aca8e', 27, 1, 'authToken', '[]', 0, '2020-08-18 05:46:23', '2020-08-18 05:46:23', '2021-08-18 07:46:23'),
('9c96124f2169e23737183a244dcc6a689617894aee65c489aa5de4cb78af854eb26573fb2a42c3c0', 31, 1, 'authToken', '[]', 0, '2020-08-18 05:49:49', '2020-08-18 05:49:49', '2021-08-18 07:49:49'),
('ed8b0d6f21bb67ab878d5acc73aede0cc88d25c86e02ecd0c07fd3fe6c92b9f9e5dd92aea1c951cc', 32, 1, 'authToken', '[]', 0, '2020-08-18 05:50:20', '2020-08-18 05:50:20', '2021-08-18 07:50:20'),
('9383bc6c77334168ff3c315f10a67b563d60fdbfff10b62967dce0ab2a17f1ded83acf68e97ad5f3', 39, 1, 'authToken', '[]', 0, '2020-08-18 06:15:23', '2020-08-18 06:15:23', '2021-08-18 08:15:23'),
('bd94d92801fb3142c6c16d278a492f6e94bb04ffbea07f026fa9d993169582962733ece25a192e3c', 40, 1, 'authToken', '[]', 0, '2020-08-18 06:15:55', '2020-08-18 06:15:55', '2021-08-18 08:15:55'),
('1b9ec4d50184238d86d7f257a35b45ef5f3dda74f82d1253d0859fc3fd3848d8426db66202c0e15f', 41, 1, 'authToken', '[]', 0, '2020-08-18 06:18:46', '2020-08-18 06:18:46', '2021-08-18 08:18:46'),
('d00d71362742158d7a72a232dc8af2fe59b1073ccbc70895c2092fcf265ef89c9b8c92c1de3250bb', 42, 1, 'authToken', '[]', 0, '2020-08-18 06:19:34', '2020-08-18 06:19:34', '2021-08-18 08:19:34'),
('de7c47297a2891927860fed7cd1aa8eb5bfce86e911228e04023e65d51215901fdae95b3e83cf013', 43, 1, 'authToken', '[]', 0, '2020-08-18 06:20:36', '2020-08-18 06:20:36', '2021-08-18 08:20:36'),
('741af96772985a6ab66a8e3c8e71a5977e3096bcf529831ea275f9acf8537703406284f56cffcccf', 44, 1, 'authToken', '[]', 0, '2020-08-18 06:21:08', '2020-08-18 06:21:08', '2021-08-18 08:21:08'),
('bf06cc0d9f3c929f8d0e511dc8fa4c42d667b25adbf613148b7412fb666535672dabd11cd6f3d686', 45, 1, 'authToken', '[]', 0, '2020-08-18 11:55:09', '2020-08-18 11:55:09', '2021-08-18 13:55:09'),
('79525162f1c99c2f05eeded19c1efa7bcb07e4981418c738318c6b3e6d77d176cc3065711e0776ec', 46, 1, 'authToken', '[]', 0, '2020-08-18 11:56:22', '2020-08-18 11:56:22', '2021-08-18 13:56:22'),
('08e7d367870a7f88ebc3165fa57a2b0478a6540a8e2b1918c6121bbe5bab9422cee7060a5932cdb6', 47, 1, 'authToken', '[]', 0, '2020-08-18 12:03:13', '2020-08-18 12:03:13', '2021-08-18 14:03:13'),
('9353f31c3a31218126ee43969056bfa3ab670ef3b0f71955d56242c1a9f0e890ef1bc22e948650f1', 51, 1, 'authToken', '[]', 0, '2020-08-18 12:30:31', '2020-08-18 12:30:31', '2021-08-18 14:30:31'),
('2c1d4474b1250cfcc367c4e23290d5a54c02ea910addd166baeccfea5c994749f24cc75857d0419f', 52, 1, 'authToken', '[]', 0, '2020-08-18 12:31:54', '2020-08-18 12:31:54', '2021-08-18 14:31:54'),
('38de0abe5d78c55c0a6f39908d0116b1ad900528782b8ccd71a9ed626d30a2ff83e08fd53a6465e1', 53, 1, 'authToken', '[]', 0, '2020-08-18 12:33:50', '2020-08-18 12:33:50', '2021-08-18 14:33:50'),
('8ae578ce19439a0944d37efdb258716b9f090c110e4ae5138108bae6bd52dd723cd709bdc7279699', 54, 1, 'authToken', '[]', 0, '2020-08-19 00:03:53', '2020-08-19 00:03:53', '2021-08-19 02:03:53'),
('3c62aed75f08edfbf2156d999a0264868892a562bbe1068aeb6e84ca39c3f5b42e3d409d9cbc39aa', 55, 1, 'authToken', '[]', 0, '2020-08-19 00:08:09', '2020-08-19 00:08:09', '2021-08-19 02:08:09'),
('8c60d0bb1be2d4fe426fe279ef6bb45c8a0c471017ef6af3fe56f4eb1a10220088e26d546c9906d7', 56, 1, 'authToken', '[]', 0, '2020-08-19 00:10:40', '2020-08-19 00:10:40', '2021-08-19 02:10:40'),
('c5450c49195d9dc96b6380def1604c3fb64f3d304c0ca3133832fc30b2e8eed99865abf415a50e83', 57, 1, 'authToken', '[]', 0, '2020-08-19 00:12:57', '2020-08-19 00:12:57', '2021-08-19 02:12:57'),
('94364682f5b5dd31224a701325f5a64cc57a82bb55750acc071f5fb2c724555d52184f2a291a8e92', 57, 1, 'authToken', '[]', 0, '2020-08-20 05:04:47', '2020-08-20 05:04:47', '2021-08-20 07:04:47'),
('f790417b2e4a81b15a9d4c27f57f967711865ab115c07197e02d08ca3293b7b41ebdaf254252e471', 47, 1, 'authToken', '[]', 0, '2020-08-20 06:18:51', '2020-08-20 06:18:51', '2021-08-20 08:18:51'),
('2b67545ca6e4a192afce3058ef1c6ddba4789091a615d09919c6c3793eb06fc822a7c81da5543921', 58, 1, 'authToken', '[]', 0, '2020-08-20 14:30:46', '2020-08-20 14:30:46', '2021-08-20 16:30:46'),
('6092e11d48d510732a3317deb4c5088bc0e2aebc17091fccdcaf37d2f40ac83075f3587a6195e4cf', 59, 1, 'authToken', '[]', 0, '2020-08-20 15:32:18', '2020-08-20 15:32:18', '2021-08-20 17:32:18'),
('c47d9f78fefaed7596ebd32e1bd56fd9f4869186d86d00ec5371004087c9e988097982a00b61aea2', 66, 1, 'authToken', '[]', 0, '2020-08-20 15:58:38', '2020-08-20 15:58:38', '2021-08-20 17:58:38'),
('c55dcbc35be80b02bad5c571f85ec2003890a3447e1f6637047a65f17806ce646c6d47e402b8a539', 67, 1, 'authToken', '[]', 0, '2020-08-20 16:00:30', '2020-08-20 16:00:30', '2021-08-20 18:00:30'),
('83c25a7c7ae860fcd85c72d55d9a3624bce19e2a009cc3345b6c997876d8747183d482c57d399e79', 68, 1, 'authToken', '[]', 0, '2020-08-20 16:05:40', '2020-08-20 16:05:40', '2021-08-20 18:05:40'),
('0ad4c1ecf05892a67cdc24123916351ad5da995dd9f31eb12dbd924a517cded313522ceb565857f8', 68, 1, 'authToken', '[]', 0, '2020-08-20 16:14:03', '2020-08-20 16:14:03', '2021-08-20 18:14:03'),
('5be6f4086043c0c9e8afabb3a26776211f1b2a87726be54249227b9a4452b881b9fabdd74d3d63e9', 69, 1, 'authToken', '[]', 0, '2020-08-21 09:42:53', '2020-08-21 09:42:53', '2021-08-21 11:42:53'),
('d7b0fb4deef8b392f83f51b2f5e87b1b52da6d1eeafdb63627c1c98c9b2e56ac7c639d5a077adc24', 69, 1, 'authToken', '[]', 0, '2020-08-21 11:55:31', '2020-08-21 11:55:31', '2021-08-21 13:55:31'),
('c8a8d95c97980839185621bdbcd51328d1a73048ebae2baf8dae6ecd51cf69e1499cbe81ce48cfcc', 69, 1, 'authToken', '[]', 0, '2020-08-21 11:57:09', '2020-08-21 11:57:09', '2021-08-21 13:57:09'),
('0f7dca8ed10d83a5c4bef64ecc82b2b7c6a4079817ca6495603e708137dbaa7f4bdbcd6b578d2a7c', 69, 1, 'authToken', '[]', 0, '2020-08-21 11:57:28', '2020-08-21 11:57:28', '2021-08-21 13:57:28'),
('fc3f97caeb5ebe547323f0e4b36dc6c741bb04ef7a6e68af3729a78b80b9e583cc24cff14f1bc38c', 69, 1, 'authToken', '[]', 0, '2020-08-21 11:58:01', '2020-08-21 11:58:01', '2021-08-21 13:58:01'),
('00310d5a46056558641ac5b3c1455828a08866e8e9c0dc1f8bbd6c266557f23ab68d41d710cf5331', 69, 1, 'authToken', '[]', 0, '2020-08-21 12:00:28', '2020-08-21 12:00:28', '2021-08-21 14:00:28'),
('5512b9b0c57ada1831ded54b9cbc309f3e313382540a725e6b6431700e5136bce07af9a289b0d697', 69, 1, 'authToken', '[]', 0, '2020-08-21 12:00:45', '2020-08-21 12:00:45', '2021-08-21 14:00:45'),
('5cff050edd68622dd2197d574b77a9c41ea4a75146e40451ad654447eb2c595be8d88fd1e3025c30', 69, 1, 'authToken', '[]', 0, '2020-08-21 12:07:39', '2020-08-21 12:07:39', '2021-08-21 14:07:39'),
('42ee0b9216bbf3516b0240162c91b939ecf722d14cf71a22cdaf8b616ec8914826b0d12d4391482c', 70, 1, 'authToken', '[]', 0, '2020-08-21 20:05:37', '2020-08-21 20:05:37', '2021-08-21 22:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'dwpCFAT9fuL8RKQHHlruzPOGh9GfRyGv6T4I0w9H', NULL, 'http://localhost', 1, 0, 0, '2020-08-17 16:52:51', '2020-08-17 16:52:51'),
(2, NULL, 'Laravel Password Grant Client', 'O8Q8eaJJSRWBmVP9xhgm828EPWZKTJuCk6h5ZyVb', 'users', 'http://localhost', 0, 1, 0, '2020-08-17 16:52:51', '2020-08-17 16:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-17 16:52:51', '2020-08-17 16:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `title`, `score`) VALUES
(1, 'Alein', 0),
(2, 'Alahly', 0),
(4, 'Alnasr', 0),
(5, 'Alfujira', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `admin` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `logo`, `admin`) VALUES
(70, 'admin', 'admin@admin.com', NULL, '$2y$10$4LnlYm/6P59r/LjdOKcdRO8.SHcZVXqAxRM43TNRuElSI6uXSYwq.', NULL, '2020-08-21 20:05:37', '2020-08-21 20:05:37', '1598047537.jpg', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
