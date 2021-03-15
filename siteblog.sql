-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 10:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siteblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Youtube Videos', 'youtube-videos', '2021-03-13 07:06:52', '2021-03-13 07:06:52'),
(2, 'Internet Package', 'internet-package', '2021-03-13 07:07:12', '2021-03-13 07:07:12'),
(3, 'Bangla VIdeos', 'bangla-videos', '2021-03-13 07:07:19', '2021-03-13 07:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortdesc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `category_id`, `subcategory_id`, `title`, `url`, `shortdesc`, `desc`, `img`, `email`, `paid`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Lorem Ipsum', 'habijabi.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry.</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry.</span></p>', 'default.jpg', 'maung@gmail.com', 0, '2021-03-14 11:28:03', '2021-03-14 11:28:03'),
(2, 2, 1, 'Lorem Ipsum', 'bangla.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</span></p>', '1615743318_zaira-248318.jpg', 'nazmul@gmail.com', 0, '2021-03-14 11:35:19', '2021-03-14 11:35:19'),
(3, 2, 1, 'Lorem Ipsum', 'fgdfghhdfhf', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. L', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. </span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. L</span></p>', '1615777732_23.jpg', 'superman@gmail.com', 0, '2021-03-14 21:08:52', '2021-03-14 21:08:52'),
(4, 1, 2, 'Lorem Ipsum', 'ghjghjhjkjk', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. L', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. L</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. L</span></p>', '1615778190_fishing.jpg', 'afasf@gmail.com', 0, '2021-03-14 21:16:30', '2021-03-14 21:16:30'),
(5, 1, 2, 'Lorem Ipsum is simply dummy text', 'efgdfsg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. L', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. L</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. L</span></p>', '1615779118_images.png', 'wencho@gmail.com', 0, '2021-03-14 21:31:58', '2021-03-14 21:31:58'),
(6, 2, 1, 'Lorem Ipsum is simply dummy text', 'ghhh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615779253_RX7 mini-364x364.jpg', 'afasf@gmail.com', 0, '2021-03-14 21:34:13', '2021-03-14 21:34:13'),
(7, 1, 2, 'Lorem Ipsum is simply dummy text', 'jghjfjg', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615779738_1-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:42:18', '2021-03-14 21:42:18'),
(8, 2, 1, 'Lorem Ipsum is simply dummy text', 'hjghjgh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615779835_RX7 mini-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:43:55', '2021-03-14 21:43:55'),
(9, 2, 1, 'Lorem Ipsum is simply dummy text', 'hjghjgh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615780116_RX7 mini-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:48:36', '2021-03-14 21:48:36'),
(10, 2, 1, 'Lorem Ipsum is simply dummy text', 'hjghjgh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615780290_RX7 mini-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:51:30', '2021-03-14 21:51:30'),
(11, 2, 1, 'Lorem Ipsum is simply dummy text', 'hjghjgh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615780326_RX7 mini-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:52:06', '2021-03-14 21:52:06'),
(12, 2, 1, 'Lorem Ipsum is simply dummy text', 'hjghjgh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615780345_RX7 mini-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:52:25', '2021-03-14 21:52:25'),
(13, 2, 1, 'Lorem Ipsum is simply dummy text', 'hjghjgh', 'Lorem Ipsum is simply dummy text', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dummy text&nbsp;</span></p>', '1615780380_RX7 mini-364x364.jpg', 'nazmul@gmail.com', 0, '2021-03-14 21:53:00', '2021-03-14 21:53:00'),
(14, 1, 2, 'Lorem Ipsum is simply dum', 'hdfhdfh', 'Lorem Ipsum is simply dum', '<p><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dum</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dum</span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;is simply dum</span></p>', '1615780417_fantasy-art-fractal-flowers-depth-of-field-digital-art-wallpaper-preview.jpg', 'maungmatubbar@gmail.com', 0, '2021-03-14 21:53:37', '2021-03-14 21:53:37');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_13_103803_create_categories_table', 2),
(5, '2021_03_13_150651_create_subcategories_table', 3),
(6, '2021_03_13_172602_create_domains_table', 4);

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
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategoryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryname`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'One Mbps Speed', 'one-mbps-speed', 2, '2021-03-13 09:55:34', '2021-03-13 09:55:34'),
(2, 'Foods Videos', 'foods-videos', 1, '2021-03-13 10:38:22', '2021-03-13 10:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maung', 'maung@gmail.com', NULL, '$2y$10$oVzYjeV7Eii7BeRJMfB8t.9osG8kqK.S1uYlbW5toSvq5FioQrY/W', 'nMKmgR8CCASpPPxcI1LBBj51pQS9W4xLIfPM3wiUmS8XSZAyB4PkjIPvPeaz', '2021-02-13 07:00:20', '2021-02-13 07:00:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domains_category_id_foreign` (`category_id`),
  ADD KEY `domains_subcategory_id_foreign` (`subcategory_id`);

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
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `domains_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
