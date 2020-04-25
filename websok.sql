-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 30, 2020 at 07:59 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `websockets`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(105, 4, 'd', '2020-03-29 12:14:32', '2020-03-29 12:14:32'),
(106, 4, 'ghbdtn', '2020-03-29 12:14:39', '2020-03-29 12:14:39'),
(107, 3, 'ghbdtn', '2020-03-29 12:14:44', '2020-03-29 12:14:44'),
(108, 3, 'sdf', '2020-03-29 12:15:04', '2020-03-29 12:15:04'),
(109, 2, 'ghbdtn', '2020-03-29 12:16:53', '2020-03-29 12:16:53'),
(110, 2, 'hujh', '2020-03-29 12:30:30', '2020-03-29 12:30:30'),
(111, 4, '12', '2020-03-29 12:30:38', '2020-03-29 12:30:38'),
(112, 2, '14', '2020-03-29 13:18:46', '2020-03-29 13:18:46'),
(113, 3, '15', '2020-03-29 13:19:50', '2020-03-29 13:19:50'),
(114, 2, '16', '2020-03-29 13:20:03', '2020-03-29 13:20:03'),
(115, 4, 'dsfd', '2020-03-29 14:00:33', '2020-03-29 14:00:33'),
(116, 4, 'привет', '2020-03-29 14:23:10', '2020-03-29 14:23:10'),
(117, 4, 'как дела', '2020-03-29 14:25:13', '2020-03-29 14:25:13'),
(118, 2, 'нормально', '2020-03-29 14:25:51', '2020-03-29 14:25:51'),
(119, 4, 'asd', '2020-03-29 14:34:43', '2020-03-29 14:34:43'),
(120, 2, 'sdf', '2020-03-29 14:34:51', '2020-03-29 14:34:51'),
(121, 4, 'sdf', '2020-03-29 14:35:44', '2020-03-29 14:35:44'),
(122, 4, 'dfg', '2020-03-29 14:38:34', '2020-03-29 14:38:34'),
(123, 4, 'sdf', '2020-03-29 14:39:19', '2020-03-29 14:39:19'),
(124, 2, 'sdfds', '2020-03-29 14:39:25', '2020-03-29 14:39:25'),
(125, 2, 'scrall', '2020-03-29 15:15:10', '2020-03-29 15:15:10'),
(126, 2, 'r', '2020-03-29 15:46:26', '2020-03-29 15:46:26'),
(127, 3, 'Hello', '2020-03-29 15:47:17', '2020-03-29 15:47:17'),
(128, 2, 'dd', '2020-03-29 15:51:19', '2020-03-29 15:51:19'),
(129, 2, 'hello', '2020-03-29 15:51:28', '2020-03-29 15:51:28'),
(130, 4, 'nu privet', '2020-03-29 15:51:38', '2020-03-29 15:51:38'),
(131, 4, 'dsqwertyuio', '2020-03-29 15:53:38', '2020-03-29 15:53:38'),
(132, 2, 'asda', '2020-03-29 16:01:54', '2020-03-29 16:01:54'),
(133, 4, 'asdas', '2020-03-29 16:01:59', '2020-03-29 16:01:59'),
(134, 4, 'dsdfsd', '2020-03-29 16:02:01', '2020-03-29 16:02:01'),
(135, 4, 'sdfds', '2020-03-29 16:02:03', '2020-03-29 16:02:03'),
(136, 4, 'sdfds', '2020-03-29 16:02:03', '2020-03-29 16:02:03'),
(137, 4, 'dsdf', '2020-03-29 16:02:04', '2020-03-29 16:02:04'),
(138, 4, 'dsfd', '2020-03-29 16:02:22', '2020-03-29 16:02:22'),
(139, 4, 'dsf', '2020-03-29 16:03:06', '2020-03-29 16:03:06'),
(140, 4, 'dsf', '2020-03-29 16:03:10', '2020-03-29 16:03:10'),
(141, 4, 'sdf', '2020-03-29 16:03:18', '2020-03-29 16:03:18'),
(142, 4, 'sdf', '2020-03-29 16:03:25', '2020-03-29 16:03:25'),
(143, 4, 'sdfsd', '2020-03-29 16:03:30', '2020-03-29 16:03:30'),
(144, 4, 'asd', '2020-03-29 16:04:21', '2020-03-29 16:04:21'),
(145, 4, 'sdfsd', '2020-03-29 16:04:23', '2020-03-29 16:04:23'),
(146, 4, 'sdfds', '2020-03-29 16:05:14', '2020-03-29 16:05:14'),
(147, 4, 'dsfsd', '2020-03-29 16:05:33', '2020-03-29 16:05:33'),
(148, 4, 'sdfsd', '2020-03-29 16:06:02', '2020-03-29 16:06:02'),
(149, 4, 'dsfds', '2020-03-29 16:06:21', '2020-03-29 16:06:21'),
(150, 4, 'dsfsdf', '2020-03-29 16:06:32', '2020-03-29 16:06:32'),
(151, 2, 'sdfsd', '2020-03-29 16:06:37', '2020-03-29 16:06:37');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_22_113343_create_websockets_statistics_entries_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2020_03_29_122201_create_messages_table', 2),
(6, '2020_03_30_072358_create_resizes_table', 3);

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
-- Table structure for table `resizes`
--

CREATE TABLE `resizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resizes`
--

INSERT INTO `resizes` (`id`, `name`, `top`, `left`, `width`, `height`, `created_at`, `updated_at`) VALUES
(1, 'Test', 46, 37, 260, 293, '2020-03-30 07:31:59', '2020-03-30 05:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'babla', 'babla@babla.com', NULL, '$2y$10$lBB.BtqUd7k/OfV1ru88L.AH.SuGo3rbpH5i7Zkp3ik6VHwPEdGcS', 'yufXK0Yb9uptIjf4FtTD4ROLugDDGlxdglGqX9dF2xCO56Rp6gbvAKMkAQMg', '2020-03-24 05:00:55', '2020-03-30 03:44:56'),
(4, 'first', 'first@gg.gg', NULL, '$2y$10$vcMdmxLziQveXOvI2228..Y3vsuhK8FKhRnPT1S5909PNbCjfJS3W', NULL, '2020-03-22 11:00:45', '2020-03-30 03:45:00'),
(3, 'next', 'next@gg.gg', NULL, '$2y$10$D8w8avoRWw/ji6MqBpJMVumL.nWKYzTzchmuAagv.Py8nMDrx8jkS', NULL, '2020-03-22 13:39:43', '2020-03-30 03:48:32'),
(1, 'Second', 'second@gg.gg', NULL, '$2y$10$D8w8avoRWw/ji6MqBpJMVumL.nWKYzTzchmuAagv.Py8nMDrx8jkS', NULL, '2020-03-22 11:16:30', '2020-03-30 03:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `resizes`
--
ALTER TABLE `resizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `resizes`
--
ALTER TABLE `resizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
