-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2020 at 09:37 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 1, 'assets/gallery/hEXR3bQ7Hhy09tqnUvNc5h0OKFsuhqxC45g66caK.jpeg', '2020-05-27 23:11:08', '2020-05-27 02:01:31', '2020-05-27 23:11:08'),
(3, 4, 'assets/gallery/4WE1YSbqN5wqrjq4rJpJFHJYr8tsJRNZcMlpLJtZ.jpeg', '2020-05-27 23:11:15', '2020-05-27 19:38:36', '2020-05-27 23:11:15'),
(4, 3, 'assets/gallery/0Dx5JrAySlQl1284guCf1bwuOv38NSZynURWnLP0.png', '2020-05-27 23:11:21', '2020-05-27 19:39:16', '2020-05-27 23:11:21'),
(5, 1, 'assets/gallery/9Lk6wULNWdbk0IUl7wPB27XsnWeoJQY61GQf8QYA.jpeg', NULL, '2020-05-27 23:21:01', '2020-05-27 23:21:01'),
(6, 2, 'assets/gallery/JeVKwJtK1qMUAhRQhOpRUmTHRvaakEI6C7pqUJ5T.jpeg', NULL, '2020-05-27 23:21:35', '2020-05-27 23:21:35'),
(7, 3, 'assets/gallery/E1xIrhPbLm0WC94k9c46wPD0qbL09pKiLGEpn2A8.jpeg', NULL, '2020-05-27 23:21:59', '2020-05-27 23:21:59'),
(8, 4, 'assets/gallery/aYF8WoKJojdmfMEnMjz08y2SfHcCdSsbQswinkxO.jpeg', NULL, '2020-05-27 23:22:23', '2020-05-27 23:22:23');

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
(3, '2020_05_21_061256_create_table_packages_table', 1),
(4, '2020_05_21_063248_create_galleries_table', 2),
(5, '2020_05_21_065959_create_transactions_table', 3),
(6, '2020_05_21_071253_create_transaction_details_table', 4),
(7, '2020_05_21_074004_add_roles_filed_to_users_table', 5),
(8, '2014_10_12_100000_create_password_resets_table', 6),
(9, '2020_05_22_035102_add_username_field_to_users_table', 6),
(10, '2020_05_27_132546_create_transaction_details_table', 7);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transactions_total` int(11) NOT NULL,
  `transactions_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transactions_total`, `transactions_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 123, 123, 'SUCCESS', '2020-05-27 23:14:03', '2020-05-27 13:08:32', '2020-05-27 23:14:03'),
(11, 1, 4, 0, 200, 'IN_CART', NULL, '2020-05-27 23:57:54', '2020-05-27 23:57:54'),
(12, 1, 3, 0, 400, 'PENDING', NULL, '2020-05-28 00:01:31', '2020-05-28 00:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'pirmansah', 'ID', 1, '2020-05-27', NULL, '2020-05-27 13:37:14', '2020-05-27 13:37:14'),
(11, 11, 'sulastro', 'ID', 0, '2025-05-28', NULL, '2020-05-27 23:57:54', '2020-05-27 23:57:54'),
(12, 12, 'bajing', 'ID', 0, '2025-05-28', NULL, '2020-05-28 00:01:31', '2020-05-28 00:01:31'),
(13, 12, 'sulastro', 'Indonesia', 1, '2020-04-29', NULL, '2020-05-28 00:42:56', '2020-05-28 00:42:56'),
(14, 12, 'sulastro', 'Indonesia', 1, '2020-04-29', '2020-05-28 00:44:38', '2020-05-28 00:44:22', '2020-05-28 00:44:38'),
(15, 12, 'sulastro', 'Indonesia', 0, '2020-06-03', NULL, '2020-05-28 00:53:32', '2020-05-28 00:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Trip To Japan', 'trip-to-japan', 'Tokyo', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga voluptatem quae ipsam, nisi minima ad id necessitatibus velit at asperiores quaerat provident doloremque accusamus porro omnis sed laudantium earum accusantium eveniet corrupti nobis. Cupiditate sapiente minima odit soluta ratione amet reiciendis est non quaerat quibusdam dignissimos, officia sit temporibus dolorum nesciunt reprehenderit fugiat commodi id sunt veniam, fuga accusamus! Temporibus reiciendis ut quas quidem ea at consequatur illum deserunt provident facere reprehenderit eveniet quis quos repellendus, modi aut adipisci sed impedit alias inventore magnam soluta aliquid sunt magni. Quae pariatur aspernatur magni ratione vel dolor quos quibusdam libero a voluptas!', 'Samurai', 'Japanese', 'Ramen Saga', '2020-05-27', '3d', 'Open Trip', 200, NULL, '2020-05-26 02:13:35', '2020-05-27 23:26:26'),
(2, 'France', 'france', 'Paris France', 'France Is Beautiful', 'Hanabi', 'France', 'Nuts', '2020-05-27', '4D', 'Open Trip', 500, NULL, '2020-05-26 19:00:15', '2020-05-27 23:18:19'),
(3, 'Japan', 'japan', 'Hokaido', 'Hoakido In japan', 'Sumo', 'Japanese', 'Sake', '2020-05-28', '4Y', 'Open Trip', 450, NULL, '2020-05-27 19:36:37', '2020-05-27 23:19:19'),
(4, 'Korean', 'korean', 'Seoul', 'Seoul in City The Dark', 'Wingchun', 'Korean', 'Soju', '2020-05-28', '4D', 'Open Trip', 356, NULL, '2020-05-27 19:38:04', '2020-05-27 23:20:35');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'lukman', 'lukman@gmail.com', '2020-05-27 23:55:22', '$2y$10$McZNTy4Ih9DaNBqLQJeR/.0LNx9t/gwawsKiPtrNtI2IHHxNqyyla', 'kdOmvnLoT8jlbqh3PYHQy4fhTGy9NmXzjjIBbSShS3ItuS8pRh0SUaMe4FjO', '2020-05-21 21:07:50', '2020-05-27 23:55:22', 'ADMIN', 'pirmansah'),
(2, 'awan', 'wantoro@gmail.com', '2020-05-21 20:30:26', '$2y$10$jSn93ylEVBV1govxcmc1Auf491u6Bbm1ZIIM.gI8XytGf2l/2J3by', 'PHL5yT9cCe3IZqAVcHeDyECgbYGePUoyMljcxqm8UKkjqp5h3FCOTYKHOLzX', '2020-05-21 20:28:05', '2020-05-21 20:30:26', 'USER', ''),
(3, 'kujang', 'kujang@gmail.com', '2020-05-28 00:00:55', '$2y$10$y8vPNr09uNROhcbEQFbq7u8cKxPu4WZ2Tjhy7bPJC3M9EPtwKWCf2', NULL, '2020-05-26 22:59:15', '2020-05-28 00:00:55', 'USER', 'bajing'),
(4, 'toro', 'toro@gmail.com', '2020-05-27 23:57:34', '$2y$10$AYsbwifUBUSt8hR.jBLQVeqJnQu0yhI8LAJlRIu3aGM2Oq1.y38jO', NULL, '2020-05-27 23:56:49', '2020-05-27 23:57:34', 'USER', 'sulastro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
