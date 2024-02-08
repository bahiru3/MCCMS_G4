-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 07:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_description` varchar(255) DEFAULT NULL,
  `case_type` varchar(255) NOT NULL,
  `case_status` varchar(255) NOT NULL DEFAULT 'pending',
  `email` varchar(255) NOT NULL,
  `court_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `judge_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `case_description`, `case_type`, `case_status`, `email`, `court_id`, `judge_id`, `created_at`, `updated_at`) VALUES
(1, 'Stalling weapon from friend and soled to civilian', 'criminal', 'Started', 'client@gmail.com', 2, 2, '2024-02-06 12:15:23', '2024-02-07 12:55:51'),
(2, 'Stalling weapon from friend and soled to civilian', 'criminal', 'Started', 'client@gmail.com', 3, 4, '2024-02-06 12:17:59', '2024-02-07 13:25:19'),
(3, 'Stalling weapon from friend and soled to civilian', 'disciplen', 'On Progress', 'client@gmail.com', 2, 2, '2024-02-06 12:23:30', '2024-02-07 13:25:30'),
(4, 'Stalling weapon from friend and soled to civilian', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 12:24:22', '2024-02-06 12:24:22'),
(5, 'Stalling weapon from friend and soled to civilian', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 12:27:00', '2024-02-06 12:27:00'),
(6, 'Killed his teammate while they were in duty', 'murder', 'Pending', 'client2@gmail.com', 1, 1, '2024-02-06 12:41:52', '2024-02-06 12:41:52'),
(7, 'xcb', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 13:00:28', '2024-02-06 13:00:28'),
(8, 'xcb', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 13:03:02', '2024-02-06 13:03:02'),
(9, 'xcb', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 13:03:15', '2024-02-06 13:03:15'),
(10, 'xcb', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 13:03:54', '2024-02-06 13:03:54'),
(11, 'xcb', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-06 13:04:27', '2024-02-06 13:04:27'),
(12, 'xcv', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-07 02:20:55', '2024-02-07 02:20:55'),
(13, 'xcv', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-07 02:22:00', '2024-02-07 02:22:00'),
(14, 'xcv', 'disciplen', 'Pending', 'client@gmail.com', 1, 1, '2024-02-07 02:22:40', '2024-02-07 02:22:40'),
(15, 'Fight with his teammeat', 'disciplen', 'Pending', 'onlinestore@gmail.com', 1, 1, '2024-02-07 03:36:50', '2024-02-07 03:36:50'),
(16, 'kublela', 'criminal', 'On Progress', 'client@gmail.com', 2, 2, '2024-02-08 02:49:05', '2024-02-08 02:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `court_name` varchar(255) NOT NULL,
  `court_place` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `court`
--

INSERT INTO `court` (`id`, `court_name`, `court_place`, `created_at`, `updated_at`) VALUES
(1, 'Unasigned', 'Addis Ababa', NULL, NULL),
(2, 'Regular', 'Addis Ababa', NULL, NULL),
(3, 'High Court', 'Addis Ababa', '2024-02-06 21:00:00', '2024-02-06 21:00:00');

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `quantity`, `price`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 500, 3, 2, '2023-12-29 08:02:50', '2023-12-29 08:02:50'),
(2, 1, 20, 3, 3, '2023-12-29 08:02:50', '2023-12-29 08:02:50'),
(3, 1, 10, 3, 4, '2023-12-29 08:02:50', '2023-12-29 08:02:50'),
(4, 1, 1500, 4, 1, '2023-12-29 08:03:25', '2023-12-29 08:03:25'),
(5, 1, 20, 4, 3, '2023-12-29 08:03:25', '2023-12-29 08:03:25'),
(6, 1, 20, 5, 3, '2023-12-29 08:05:00', '2023-12-29 08:05:00'),
(7, 1, 500, 6, 2, '2023-12-29 08:06:14', '2023-12-29 08:06:14'),
(8, 1, 10, 6, 4, '2023-12-29 08:06:14', '2023-12-29 08:06:14'),
(9, 1, 20, 7, 3, '2023-12-29 09:07:05', '2023-12-29 09:07:05'),
(10, 1, 10, 8, 4, '2023-12-29 09:11:00', '2023-12-29 09:11:00'),
(11, 1, 20, 9, 3, '2023-12-29 09:35:30', '2023-12-29 09:35:30'),
(12, 1, 500, 10, 2, '2023-12-29 09:47:59', '2023-12-29 09:47:59'),
(13, 1, 500, 11, 2, '2023-12-29 09:53:43', '2023-12-29 09:53:43'),
(14, 1, 10, 12, 4, '2023-12-29 10:00:10', '2023-12-29 10:00:10'),
(15, 1, 10, 13, 4, '2023-12-29 10:17:29', '2023-12-29 10:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judge_name` varchar(255) NOT NULL,
  `court_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `judge`
--

INSERT INTO `judge` (`id`, `judge_name`, `court_id`, `created_at`, `updated_at`) VALUES
(1, 'unasigned', 1, NULL, NULL),
(2, 'Dagne Belachew', 1, NULL, NULL),
(4, 'Alebachew Dagne', 1, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_23_075324_create_products_table', 1),
(6, '2023_12_27_084523_add_role_and_balance_to_table', 1),
(7, '2023_12_27_121110_create_roles_table', 1),
(8, '2023_12_28_084647_add_role_id_to_table', 1),
(9, '2023_12_29_061203_create_orders_table', 1),
(10, '2023_12_29_061503_create_items_table', 1),
(11, '2024_02_06_120506_create_cases_table', 2),
(12, '2024_02_06_121418_create_court_table', 2),
(13, '2024_02_06_121635_create_judge_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '2023-12-29 08:00:21', '2023-12-29 08:00:21'),
(2, 0, 1, '2023-12-29 08:02:09', '2023-12-29 08:02:09'),
(3, 530, 1, '2023-12-29 08:02:50', '2023-12-29 08:02:50'),
(4, 1520, 1, '2023-12-29 08:03:25', '2023-12-29 08:03:25'),
(5, 20, 1, '2023-12-29 08:05:00', '2023-12-29 08:05:00'),
(6, 510, 1, '2023-12-29 08:06:14', '2023-12-29 08:06:14'),
(7, 20, 1, '2023-12-29 09:07:05', '2023-12-29 09:07:05'),
(8, 10, 1, '2023-12-29 09:11:00', '2023-12-29 09:11:00'),
(9, 20, 1, '2023-12-29 09:35:30', '2023-12-29 09:35:30'),
(10, 500, 1, '2023-12-29 09:47:59', '2023-12-29 09:47:59'),
(11, 500, 1, '2023-12-29 09:53:43', '2023-12-29 09:53:43'),
(12, 10, 1, '2023-12-29 10:00:10', '2023-12-29 10:00:10'),
(13, 10, 2, '2023-12-29 10:17:29', '2023-12-29 10:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'TV', 'Tv', 'game.png', '1500', '2023-12-29 04:35:34', '2024-02-06 07:53:20'),
(2, 'Camera', 'Canon Camera', '2.webp', '500', '2023-12-29 04:35:57', '2023-12-29 04:35:57'),
(3, 'Chromecast', 'Chromecast', '3.jpg', '20', '2023-12-29 04:36:18', '2023-12-29 04:36:18'),
(4, 'Game', 'Game', '4.png', '10', '2023-12-29 04:36:35', '2023-12-29 04:36:35'),
(5, 'submarine', 'submarine', '5.png', '105', '2023-12-29 04:37:05', '2023-12-29 04:37:05'),
(6, 'iphone', 'iphone', '6.jpg', '120', '2023-12-29 04:37:27', '2023-12-29 04:37:27'),
(7, 'PlayStation', 'Playstation', '7.jpg', '60', '2023-12-29 04:37:55', '2023-12-29 04:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-12-29 04:32:12', '2023-12-29 04:32:12'),
(2, 'clark', '2023-12-29 04:32:20', '2023-12-29 04:32:20'),
(3, 'judge', '2023-12-29 04:32:32', '2023-12-29 04:32:32'),
(4, 'client', '2023-12-29 04:32:54', '2023-12-29 04:32:54');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` int(11) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `balance`, `role_id`) VALUES
(1, 'Berhan', 'berhanbzg@gmail.com', NULL, '$2y$10$xw/jVNmVHClPQUuB1VtnR.TSSs9gV/l8RUihRXcyOZn/tp3r6415G', NULL, '2023-12-29 04:30:40', '2023-12-29 10:00:10', 1360, 1),
(2, 'Jhon', 'jhon@mail.com', NULL, '$2y$10$j/ux1dwdTzGDm4ZbTSzuW.9qvhtP96tu6u0hB1N6o8rhoJEecOYbe', NULL, '2023-12-29 04:34:39', '2023-12-29 10:17:29', 4990, 4),
(3, 'Admin Online Store', 'onlinestore@gmail.com', NULL, '$2y$10$eO4QJg5oGogitmh9WJNhmu0vcYK6e0I.8D.2X3BZn4NO/mvlrJMZW', 'YIna0yFBGvcZJLloThSwq54PJdUdDzhhQo6eFGsoJErV5lxXx8jBAjlm43YC', '2024-02-06 04:50:12', '2024-02-06 04:50:12', 5000, 1),
(4, 'client', 'client@gmail.com', NULL, '$2y$10$/Oyf6azP77xNWaBKPgtMpur.2NzLYNczIP8nkBHOpyLAcZRyBFvCi', NULL, '2024-02-06 09:00:55', '2024-02-06 09:00:55', 5000, 4),
(5, 'client3', 'client3@yahoo.com', NULL, '$2y$10$qGgjseV87x4gyh9Fbjm3E.6E4xPoapWis37eA18KcQ2SC2tFzdY3W', NULL, '2024-02-07 03:35:41', '2024-02-07 03:35:41', 5000, 4),
(6, 'admin cases', 'admincases@gmail.com', NULL, '$2y$10$Q3iGz81wL/mPFx0sRCXiYOrGDZDiNvV1Wgrf6PbBIgLEuNt0XIqTe', NULL, '2024-02-07 05:35:32', '2024-02-07 05:35:32', 5000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_order_id_foreign` (`order_id`),
  ADD KEY `items_product_id_foreign` (`product_id`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_court_id_foreign` (`court_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `court`
--
ALTER TABLE `court`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `judge`
--
ALTER TABLE `judge`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `judge`
--
ALTER TABLE `judge`
  ADD CONSTRAINT `judge_court_id_foreign` FOREIGN KEY (`court_id`) REFERENCES `court` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
