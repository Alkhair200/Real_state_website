-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2021 at 09:01 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `full_real_stateDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bu_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_place` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_square` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `bu_smail_dis` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no data',
  `bu_meta` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_langtude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_latitude` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_larg_dis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bu_type` tinyint(4) NOT NULL DEFAULT 1,
  `bu_rent` int(11) NOT NULL,
  `bu_status` tinyint(4) NOT NULL DEFAULT 0,
  `bu_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `user_id` int(11) NOT NULL,
  `month` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `bu_name`, `bu_place`, `bu_price`, `bu_square`, `rooms`, `bu_smail_dis`, `bu_meta`, `bu_langtude`, `bu_latitude`, `bu_larg_dis`, `bu_type`, `bu_rent`, `bu_status`, `bu_image`, `user_id`, `month`, `year`, `created_at`, `updated_at`) VALUES
(2, 'شقق حي العمدة23', 'إدكو', '9000000', '80', 7, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 'فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار', '179.21', '-8.51', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.', 1, 0, 1, 'okJ0MWswA1gQ5HBHOXWY5VSNX7SJeX7jBFIJnl8I.jpg', 1, '07', '2021', '2021-01-10 03:58:48', '2021-08-21 04:58:55'),
(3, 'فيلا المعادي الجديده', 'الخرطوم', '1000000', '300', 4, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 'return', '32.53565', '15.593325', 'return', 0, 0, 1, 'EcBuYQTA6N0tGYK4M00iFPv3q83WArZe1GwbOtCZ.jpg', 1, '12', '2019', '2018-05-09 04:00:26', '2021-08-16 08:56:41'),
(16, 'فيلا المعادي الجديده', 'أسوان', '1000000', '300', 2, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', '31.3509943', '30.1307109', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 0, 0, 1, 'LMqEXZmIYtQ0SiTKFmxlLzrJqSoaxuJtOhOJA0jB.jpg', 1, '07', '2021', '2018-12-01 18:15:00', '2021-08-16 08:58:17'),
(19, 'فلل شارع المطار', 'كوم امب', '8000000', '700', 5, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص', 'فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار ,فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار', '78978', '3434', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.', 0, 1, 1, 'HiVIVHiBCmat4rPamTLM9WArLymyDMKRnnvY7i4M.png', 1, '07', '2021', '2021-01-11 09:55:16', '2021-08-17 17:03:50'),
(21, 'شقق العمارات', 'ابو سمبل', '1000000', '300', 4, 'التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.', 'فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار', '78978', '3434', 'iunkjjvgdfwbijkpoklk;lk;llk', 0, 0, 1, '540mi9EIvOiOVH7T6VuSt2KgwGEWiQLItRb1eNiy.jpg', 1, '07', '2017', '2016-01-01 09:30:27', '2021-08-20 15:28:24'),
(26, 'شقق العمارات2', 'الفتح', '3000000', '8000000', 4, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 'فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار', '31.3509943', '15.593325', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.', 1, 1, 1, 'r2SZGZrdzUpAZvGpuDt4ZPk7XhnWpDnIeXR8yEzO.jpg', 1, '08', '2021', '2021-08-21 04:53:50', '2021-08-21 04:53:50'),
(27, 'فيلا في الرياض', 'بحرى والأنفوش', '9000000', '500', 5, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 'فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار', '78978', '8787', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.', 0, 1, 1, 'QjG6G5UrWJUKKBvQBhYcmqyXlO2EQMAovANyXrUS.jpg', 1, '08', '2021', '2021-08-21 04:55:48', '2021-08-21 04:55:48'),
(28, 'فيلا في الخرطوم 2', 'الخرطوم', '4000000', '600', 4, 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة', 'فلا , فلل , شارع المطار عقارات , عقارات شارع المطار , فيلا في شارع المطار', '78978', '3434', 'ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.', 0, 0, 1, 'Rm1dR5VbZreg6Wq0eKMwZFcyF8Zc9OvGr626T7Vt.jpg', 1, '08', '2021', '2021-08-21 04:57:09', '2021-08-21 04:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `conact-us`
--

CREATE TABLE `conact-us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conact-us`
--

INSERT INTO `conact-us` (`id`, `name`, `email`, `phone`, `address`, `contact_type`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Alkhir', 'alhir1996@gmail.com', '099189283', 'sndmsndm,', 'إقتراح', 'ىءؤةئؤىئء', 1, '2021-08-08 12:30:46', '2021-08-08 12:30:58'),
(5, 'الخير عبدالمنعم علي محمد', 'alhir1996@gmail.com', '099189283', 'sndmsndm,', 'إقتراح', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص', 1, '2021-08-08 12:41:41', '2021-08-08 16:12:55'),
(6, 'Alkhir2', 'alhir196@gmail.com', '099189283', 'sndmsndm,', 'مشكلة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص', 1, '2021-08-08 13:39:59', '2021-08-12 18:48:13'),
(7, 'Alkhir', 'alhir196@gmail.com', '099189283', 'sndmsndm,', 'مشكلة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص', 0, '2021-08-08 13:40:27', '2021-08-08 13:54:07'),
(8, 'nmas', 'alhir1996@gmail.com', '099189283', 'sndmsndm,', 'مشكلة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص', 1, '2021-08-08 13:41:09', '2021-08-08 13:53:56'),
(9, 'lsjlfdkkd', 'alhir1996@gmail.com', '099189283', 'sndmsndm,', 'مشكلة', 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص', 1, '2021-08-08 16:20:21', '2021-08-15 06:06:05');

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
(5, '2021_07_17_041918_create_site_settings_table', 1),
(6, '2021_07_18_104740_create_buildings_table', 1),
(8, '2021_08_07_063713_create_contact-us_table', 2);

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
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namesetting` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `namesetting`, `slug`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'keywords', 'الكلمات الدلايه', '<p>عقارات السودان , شموس العقاريه , موقع شموس العقاريه , موعق عقارات , عقارات السودان , شموس العقاريه , موقع شموس العقاريه , موعق عقارات , عقارات السودان , شموس العقاريه , موقع شموس العقاريه , موعق عقارات , عقارات السودان , شموس العقاريه , موقع شموس العقاريه , موعق عقارات , عقارات السودان , شموس العقاريه , موقع شموس العقاريه , موعق عقارات , عقارات السودان , شموس العقاريه , موقع شموس العقاريه</p>', 1, NULL, '2021-08-17 16:30:17'),
(2, 'description', 'وصف الموقع لمحركات البحث', '<p>ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.</p>', 1, NULL, '2021-08-17 06:53:00'),
(3, 'sitename', 'إسم الموقع', 'شموس العقارية', 0, NULL, '2021-08-17 06:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'الخير عبدالمنعم', 'alhir1996@gmail.com', 1, NULL, '$2y$10$19RVkqCMCKt59MDjlqf0yebryp.rULhvX0TxBZMvzsN8ui6ZYDU.m', NULL, NULL, NULL, '2021-08-08 08:52:32', '2021-08-11 11:57:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conact-us`
--
ALTER TABLE `conact-us`
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
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
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
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `conact-us`
--
ALTER TABLE `conact-us`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
