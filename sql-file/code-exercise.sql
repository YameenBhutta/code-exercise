-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2024 at 11:08 AM
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
-- Database: `code-exercise`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_16_084953_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'images/1716280984.jpg', 'Lorem ipsum dolor sit amet, consectetu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget orci non ex malesuada gravida. Aliquam a elit condimentum, pellentesque leo ut, dignissim nisl. Curabitur rhoncus mi quam, quis iaculis risus vestibulum interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis venenatis vehicula erat, vel consequat orci rhoncus sed. Nullam viverra eu urna in commodo. Nulla blandit fermentum bibendum. Duis faucibus sem nunc, in sagittis risus gravida id.\r\n\r\nDuis a rutrum nisi, at posuere turpis. Nulla eget massa placerat, lobortis eros a, lobortis ipsum. Curabitur sapien tortor, viverra quis sem sit amet, ullamcorper interdum enim. Morbi porta leo orci, in gravida magna laoreet ac. Mauris elementum non sem quis consequat. Mauris posuere vehicula leo. Proin elementum est sit amet ligula convallis, at venenatis augue aliquet. Maecenas neque elit, placerat in enim sit amet, dictum volutpat lectus. Ut sagittis molestie elit vitae ultrices. Praesent ac sapien vel urna volutpat congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut viverra sed risus ullamcorper aliquet. In hac habitasse platea dictumst. Morbi molestie dignissim sagittis.\r\n\r\nCras diam mauris, maximus ac imperdiet a, accumsan in ipsum. Praesent vel ligula malesuada, aliquet leo sit amet, tincidunt nisi. Nullam ut arcu pellentesque, porttitor elit eget, venenatis augue. Proin pellentesque arcu et felis eleifend, in iaculis nisi hendrerit. Nunc sed nisi diam. Nam nec mauris non metus commodo dictum quis sed arcu. Praesent eget enim commodo, hendrerit odio quis, aliquet justo.\r\n\r\nMauris enim dolor, malesuada non sapien tempor, tempus elementum dolor. Morbi risus felis, eleifend sit amet gravida sed, vulputate a risus. Donec molestie felis nec gravida luctus. Duis mattis ex eget ipsum tristique finibus. Morbi nibh est, molestie eget nisl mattis, faucibus molestie nisi. Curabitur a luctus arcu, in egestas elit. Aenean congue leo erat. Phasellus nec velit tortor. Cras euismod venenatis porttitor. Cras imperdiet, nibh a malesuada lobortis, mauris augue aliquam metus, sit amet ullamcorper tortor urna sit amet neque. Vivamus ac volutpat urna. Donec vulputate venenatis varius. Suspendisse potenti. Mauris neque neque, pretium vel est sit amet, malesuada dictum justo. Aenean malesuada, lectus et convallis faucibus, libero nibh fermentum erat, a tempus erat quam et sem.\r\n\r\nQuisque finibus nisl id lacus placerat interdum. Cras eu nunc in lectus bibendum interdum. Duis viverra ligula sit amet rhoncus iaculis. Pellentesque non tempor dolor. Aliquam fermentum laoreet quam, id faucibus justo placerat a. Aenean vitae ultrices erat. Sed cursus magna tortor, vel tristique diam pellentesque vitae. Nullam sed turpis hendrerit nisi accumsan egestas non sit amet lorem.', '2024-05-21 03:43:04', '2024-05-21 03:43:04'),
(2, 2, 'images/1716281007.jpg', 'Duis a rutrum nisi, at posuere turpis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget orci non ex malesuada gravida. Aliquam a elit condimentum, pellentesque leo ut, dignissim nisl. Curabitur rhoncus mi quam, quis iaculis risus vestibulum interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis venenatis vehicula erat, vel consequat orci rhoncus sed. Nullam viverra eu urna in commodo. Nulla blandit fermentum bibendum. Duis faucibus sem nunc, in sagittis risus gravida id.\r\n\r\nDuis a rutrum nisi, at posuere turpis. Nulla eget massa placerat, lobortis eros a, lobortis ipsum. Curabitur sapien tortor, viverra quis sem sit amet, ullamcorper interdum enim. Morbi porta leo orci, in gravida magna laoreet ac. Mauris elementum non sem quis consequat. Mauris posuere vehicula leo. Proin elementum est sit amet ligula convallis, at venenatis augue aliquet. Maecenas neque elit, placerat in enim sit amet, dictum volutpat lectus. Ut sagittis molestie elit vitae ultrices. Praesent ac sapien vel urna volutpat congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut viverra sed risus ullamcorper aliquet. In hac habitasse platea dictumst. Morbi molestie dignissim sagittis.\r\n\r\nCras diam mauris, maximus ac imperdiet a, accumsan in ipsum. Praesent vel ligula malesuada, aliquet leo sit amet, tincidunt nisi. Nullam ut arcu pellentesque, porttitor elit eget, venenatis augue. Proin pellentesque arcu et felis eleifend, in iaculis nisi hendrerit. Nunc sed nisi diam. Nam nec mauris non metus commodo dictum quis sed arcu. Praesent eget enim commodo, hendrerit odio quis, aliquet justo.\r\n\r\nMauris enim dolor, malesuada non sapien tempor, tempus elementum dolor. Morbi risus felis, eleifend sit amet gravida sed, vulputate a risus. Donec molestie felis nec gravida luctus. Duis mattis ex eget ipsum tristique finibus. Morbi nibh est, molestie eget nisl mattis, faucibus molestie nisi. Curabitur a luctus arcu, in egestas elit. Aenean congue leo erat. Phasellus nec velit tortor. Cras euismod venenatis porttitor. Cras imperdiet, nibh a malesuada lobortis, mauris augue aliquam metus, sit amet ullamcorper tortor urna sit amet neque. Vivamus ac volutpat urna. Donec vulputate venenatis varius. Suspendisse potenti. Mauris neque neque, pretium vel est sit amet, malesuada dictum justo. Aenean malesuada, lectus et convallis faucibus, libero nibh fermentum erat, a tempus erat quam et sem.\r\n\r\nQuisque finibus nisl id lacus placerat interdum. Cras eu nunc in lectus bibendum interdum. Duis viverra ligula sit amet rhoncus iaculis. Pellentesque non tempor dolor. Aliquam fermentum laoreet quam, id faucibus justo placerat a. Aenean vitae ultrices erat. Sed cursus magna tortor, vel tristique diam pellentesque vitae. Nullam sed turpis hendrerit nisi accumsan egestas non sit amet lorem.', '2024-05-21 03:43:27', '2024-05-21 03:43:27'),
(3, 2, 'images/1716281080.jpg', 'Duis a rutrum nisi, at posuere turpis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget orci non ex malesuada gravida. Aliquam a elit condimentum, pellentesque leo ut, dignissim nisl. Curabitur rhoncus mi quam, quis iaculis risus vestibulum interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis venenatis vehicula erat, vel consequat orci rhoncus sed. Nullam viverra eu urna in commodo. Nulla blandit fermentum bibendum. Duis faucibus sem nunc, in sagittis risus gravida id.\r\n\r\nDuis a rutrum nisi, at posuere turpis. Nulla eget massa placerat, lobortis eros a, lobortis ipsum. Curabitur sapien tortor, viverra quis sem sit amet, ullamcorper interdum enim. Morbi porta leo orci, in gravida magna laoreet ac. Mauris elementum non sem quis consequat. Mauris posuere vehicula leo. Proin elementum est sit amet ligula convallis, at venenatis augue aliquet. Maecenas neque elit, placerat in enim sit amet, dictum volutpat lectus. Ut sagittis molestie elit vitae ultrices. Praesent ac sapien vel urna volutpat congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut viverra sed risus ullamcorper aliquet. In hac habitasse platea dictumst. Morbi molestie dignissim sagittis.\r\n\r\nCras diam mauris, maximus ac imperdiet a, accumsan in ipsum. Praesent vel ligula malesuada, aliquet leo sit amet, tincidunt nisi. Nullam ut arcu pellentesque, porttitor elit eget, venenatis augue. Proin pellentesque arcu et felis eleifend, in iaculis nisi hendrerit. Nunc sed nisi diam. Nam nec mauris non metus commodo dictum quis sed arcu. Praesent eget enim commodo, hendrerit odio quis, aliquet justo.\r\n\r\nMauris enim dolor, malesuada non sapien tempor, tempus elementum dolor. Morbi risus felis, eleifend sit amet gravida sed, vulputate a risus. Donec molestie felis nec gravida luctus. Duis mattis ex eget ipsum tristique finibus. Morbi nibh est, molestie eget nisl mattis, faucibus molestie nisi. Curabitur a luctus arcu, in egestas elit. Aenean congue leo erat. Phasellus nec velit tortor. Cras euismod venenatis porttitor. Cras imperdiet, nibh a malesuada lobortis, mauris augue aliquam metus, sit amet ullamcorper tortor urna sit amet neque. Vivamus ac volutpat urna. Donec vulputate venenatis varius. Suspendisse potenti. Mauris neque neque, pretium vel est sit amet, malesuada dictum justo. Aenean malesuada, lectus et convallis faucibus, libero nibh fermentum erat, a tempus erat quam et sem.\r\n\r\nQuisque finibus nisl id lacus placerat interdum. Cras eu nunc in lectus bibendum interdum. Duis viverra ligula sit amet rhoncus iaculis. Pellentesque non tempor dolor. Aliquam fermentum laoreet quam, id faucibus justo placerat a. Aenean vitae ultrices erat. Sed cursus magna tortor, vel tristique diam pellentesque vitae. Nullam sed turpis hendrerit nisi accumsan egestas non sit amet lorem.', '2024-05-21 03:44:40', '2024-05-21 03:44:40'),
(4, 2, 'images/1716281117.webp', 'Mauris enim dolor, malesuada non sapien', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget orci non ex malesuada gravida. Aliquam a elit condimentum, pellentesque leo ut, dignissim nisl. Curabitur rhoncus mi quam, quis iaculis risus vestibulum interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Duis venenatis vehicula erat, vel consequat orci rhoncus sed. Nullam viverra eu urna in commodo. Nulla blandit fermentum bibendum. Duis faucibus sem nunc, in sagittis risus gravida id.\r\n\r\nDuis a rutrum nisi, at posuere turpis. Nulla eget massa placerat, lobortis eros a, lobortis ipsum. Curabitur sapien tortor, viverra quis sem sit amet, ullamcorper interdum enim. Morbi porta leo orci, in gravida magna laoreet ac. Mauris elementum non sem quis consequat. Mauris posuere vehicula leo. Proin elementum est sit amet ligula convallis, at venenatis augue aliquet. Maecenas neque elit, placerat in enim sit amet, dictum volutpat lectus. Ut sagittis molestie elit vitae ultrices. Praesent ac sapien vel urna volutpat congue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut viverra sed risus ullamcorper aliquet. In hac habitasse platea dictumst. Morbi molestie dignissim sagittis.\r\n\r\nCras diam mauris, maximus ac imperdiet a, accumsan in ipsum. Praesent vel ligula malesuada, aliquet leo sit amet, tincidunt nisi. Nullam ut arcu pellentesque, porttitor elit eget, venenatis augue. Proin pellentesque arcu et felis eleifend, in iaculis nisi hendrerit. Nunc sed nisi diam. Nam nec mauris non metus commodo dictum quis sed arcu. Praesent eget enim commodo, hendrerit odio quis, aliquet justo.\r\n\r\nMauris enim dolor, malesuada non sapien tempor, tempus elementum dolor. Morbi risus felis, eleifend sit amet gravida sed, vulputate a risus. Donec molestie felis nec gravida luctus. Duis mattis ex eget ipsum tristique finibus. Morbi nibh est, molestie eget nisl mattis, faucibus molestie nisi. Curabitur a luctus arcu, in egestas elit. Aenean congue leo erat. Phasellus nec velit tortor. Cras euismod venenatis porttitor. Cras imperdiet, nibh a malesuada lobortis, mauris augue aliquam metus, sit amet ullamcorper tortor urna sit amet neque. Vivamus ac volutpat urna. Donec vulputate venenatis varius. Suspendisse potenti. Mauris neque neque, pretium vel est sit amet, malesuada dictum justo. Aenean malesuada, lectus et convallis faucibus, libero nibh fermentum erat, a tempus erat quam et sem.\r\n\r\nQuisque finibus nisl id lacus placerat interdum. Cras eu nunc in lectus bibendum interdum. Duis viverra ligula sit amet rhoncus iaculis. Pellentesque non tempor dolor. Aliquam fermentum laoreet quam, id faucibus justo placerat a. Aenean vitae ultrices erat. Sed cursus magna tortor, vel tristique diam pellentesque vitae. Nullam sed turpis hendrerit nisi accumsan egestas non sit amet lorem.', '2024-05-21 03:45:18', '2024-05-21 03:45:18');

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
('P3dunEtA3XE0EEt3r69kIq4FZOq3Xqf5MnTtwmEq', 2, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2VmOThxRGRkS3BHakJkMXlmOURKTGlJazBoRnBucDA0eUhkTWtmbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1716281979);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Yameen Ayub', 'yameenbhutta001@gmail.com', NULL, '$2y$12$72T5U8lo3ycMSm2IiGlFseWMQacLmV3xsCE0KBl/pjiUZ45LsHZki', NULL, '2024-05-21 01:05:14', '2024-05-21 01:05:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
