-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 08:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_en`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2023_06_20_150237_create_users_table', 1),
(3, '2023_06_21_024716_create_products_table', 2),
(4, '2023_06_21_040528_create_cart_table', 3),
(5, '2023_06_21_055412_create_orders_table', 4),
(6, '2014_10_12_000000_create_users_table', 5),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 5),
(8, '2014_10_12_200000_add_two_factor_columns_to_users_table', 5),
(9, '2019_08_19_000000_create_failed_jobs_table', 5),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(11, '2023_06_27_155734_create_sessions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `users_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'pending', 'cash', 'pending', 'asdasdfasdasdasdfas', NULL, NULL),
(2, 2, 2, 'pending', 'cash', 'pending', 'Mumbai india', NULL, NULL),
(4, 1, 1, 'pending', 'cash', 'pending', 'SDFDSFDSFS', NULL, NULL),
(5, 2, 1, 'pending', 'onlinepayment', 'pending', 'india', NULL, NULL),
(6, 3, 1, 'pending', 'cash', 'pending', 'fsfsefdsfdsfdsfsdfs', '2023-07-03 05:21:00', '2023-07-03 05:21:00'),
(7, 33, 1, 'pending', 'cash', 'pending', 'fsfsefdsfdsfdsfsdfs', '2023-07-03 05:21:00', '2023-07-03 05:21:00'),
(8, 1, 1, 'pending', 'cash', 'pending', 'fsfsefdsfdsfdsfsdfs', '2023-07-03 05:21:00', '2023-07-03 05:21:00'),
(9, 1, 1, 'pending', 'cash', 'pending', 'bfdbdfbgdfbdf', '2023-07-03 05:23:27', '2023-07-03 05:23:27'),
(10, 1, 1, 'pending', 'cash', 'pending', 'cszcsczc', '2023-07-03 05:25:04', '2023-07-03 05:25:04'),
(11, 3, 1, 'pending', 'cash', 'pending', 'cszcsczc', '2023-07-03 05:25:04', '2023-07-03 05:25:04'),
(12, 1, 1, 'pending', 'cash', 'pending', 'xasdasassa', '2023-07-03 05:26:03', '2023-07-03 05:26:03'),
(13, 1, 1, 'pending', 'cash', 'pending', 'India', '2023-07-03 05:28:19', '2023-07-03 05:28:19'),
(14, 1, 1, 'pending', 'cash', 'pending', 'vdsfsfdsdsfdsfdsfdsf', '2023-07-03 05:31:17', '2023-07-03 05:31:17'),
(15, 1, 1, 'pending', 'cash', 'pending', 'dcdscdsczdxcdczx', '2023-07-03 05:31:42', '2023-07-03 05:31:42'),
(16, 1, 1, 'pending', 'cash', 'pending', 'ddsada', '2023-07-03 05:33:16', '2023-07-03 05:33:16'),
(17, 1, 1, 'pending', 'cash', 'pending', 'delhi', '2023-07-04 00:48:07', '2023-07-04 00:48:07');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `gallery` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Oppo mobile', '300', 'mobile', 'A smartphone with 8gb ram and much more feature', 'https://assetscdn1.paytm.com/images/catalog/product/M/MO/MOBOPPO-A52-6-GFUTU6297453D3D253C/1592019058170_0..png', NULL, NULL),
(2, 'Panasonic Tv', '400', 'tv', 'A smart tv with much more feature', 'https://i.gadgets360cdn.com/products/televisions/large/1548154685_832_panasonic_32-inch-lcd-full-hd-tv-th-l32u20.jpg', NULL, NULL),
(3, 'Soni Tv', '500', 'tv', 'A tv with much more feature', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', NULL, NULL),
(4, 'LG fridge', '200', 'fridge', 'A fridge with much more feature', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFx-2-wTOcfr5at01ojZWduXEm5cZ-sRYPJA&usqp=CAU', NULL, NULL),
(15, 'Nokia', '1000', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:28:32', '2023-07-03 04:28:32'),
(16, 'Nokia', '1001', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:28:32', '2023-07-03 04:28:32'),
(17, 'Nokia', '1002', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:28:32', '2023-07-03 04:28:32'),
(18, 'Nokia', '1003', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:28:32', '2023-07-03 04:28:32'),
(20, 'Nokia', '1000', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:45', '2023-07-03 04:31:45'),
(21, 'Nokia', '1001', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:45', '2023-07-03 04:31:45'),
(22, 'Nokia', '1002', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:45', '2023-07-03 04:31:45'),
(23, 'Nokia', '1003', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:45', '2023-07-03 04:31:45'),
(24, 'Nokia', '1004', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:45', '2023-07-03 04:31:45'),
(25, 'Nokia', '1000', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:51', '2023-07-03 04:31:51'),
(26, 'Nokia', '1001', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:51', '2023-07-03 04:31:51'),
(27, 'Nokia', '1002', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:51', '2023-07-03 04:31:51'),
(28, 'Nokia', '1003', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:51', '2023-07-03 04:31:51'),
(29, 'Nokia', '1004', 'mobile', 'amazing features', 'https://4.imimg.com/data4/PM/KH/MY-34794816/lcd-500x500.png', '2023-07-03 04:31:51', '2023-07-03 04:31:51'),
(30, 'Watch', '1000', 'watch', 'amazing features', 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1099&q=80', '2023-07-03 04:35:11', '2023-07-03 04:35:11'),
(31, 'Watch', '1001', 'watch', 'amazing features', 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1099&q=80', '2023-07-03 04:35:11', '2023-07-03 04:35:11'),
(32, 'Watch', '1002', 'watch', 'amazing features', 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1099&q=80', '2023-07-03 04:35:11', '2023-07-03 04:35:11'),
(33, 'Watch', '1003', 'watch', 'amazing features', 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1099&q=80', '2023-07-03 04:35:11', '2023-07-03 04:35:11'),
(34, 'Watch', '1004', 'watch', 'amazing features', 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1099&q=80', '2023-07-03 04:35:11', '2023-07-03 04:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mp8a7q9frK4DaHoPjTW2MgF1qNohc90OVpKTRn7r', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTBXYkdSWFhIYWpkQ0Z1VnlrdWh0Mk0wNm5mV1dsZFdOVlNBOTFFMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1688451676),
('o7M5WAVjMeHks2piF4RY6IIiJg3d9ktvoOP1jsdh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEgyQmdpbnN5SEh0N2QwcnlNNDFFbnY3VWNZdkZCY2Vxc09EM3dscSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbXBvcnRfZXhwb3J0Ijt9fQ==', 1688452310);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ashish', 'ashish1012hdus@gmail.com', NULL, '$2y$10$.IZ3AmY7OETdMWypxki39OHk2pJeTCRk/Mf8D6QKmbhVp8P5B.2G.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-02 03:27:16', '2023-07-02 03:27:16'),
(2, 'Ms. Christina Deckow IV', 'rozella49@example.org', '2023-07-03 03:56:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'CrsP4PY1hn', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(3, 'Dr. Geovany Lesch', 'gilberto.mcglynn@example.com', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5duz00OdVd', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(4, 'Prof. Carmen Koch', 'erik41@example.com', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Zk24W9ZknX', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(5, 'Riley Kuhlman', 'wbruen@example.net', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'drCPmE2izP', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(6, 'Mr. Olaf Spencer', 'ashton70@example.org', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KKKOyrJeQ0', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(7, 'Drake Baumbach I', 'avis.olson@example.com', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fbP2oOyFGu', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(8, 'Maximillian Heaney', 'kathleen.oconner@example.org', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'zO6ps1zOPZ', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(9, 'Donavon Hegmann', 'thegmann@example.net', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yOqU4bOJIK', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(10, 'Samson Ruecker', 'vsawayn@example.org', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'bsXZh815Jt', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(11, 'Dr. Remington D\'Amore', 'berta.armstrong@example.net', '2023-07-03 03:56:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HGNWNJTUb9', NULL, NULL, '2023-07-03 03:56:25', '2023-07-03 03:56:25'),
(12, 'Himanshu', 'ashish@gmail.com', NULL, '$2y$10$GMCVEyp16eKZgRn4AxGDbO2TA1xHuqh5QQ4XdyLe0d0ldwqLwg2dO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-03 05:42:43', '2023-07-03 05:42:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
