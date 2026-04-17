-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2026 at 09:57 AM
-- Server version: 5.7.33
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cashier',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `role`, `position`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lucas Stiedemann MD', 'wdickinson', 'jerrold92@example.net', '+1-952-871-0798', 'supervisor', 'Aircraft Assembler', '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'bqUnHUHMsb', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(2, 'Prof. Nicklaus Blick', 'josie24', 'wintheiser.cary@example.com', '+1.650.878.6890', 'supervisor', NULL, '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'mjEcePYeK8', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(3, 'Bernadette Murphy', 'dkutch', 'fschultz@example.com', '(608) 258-3766', 'admin', NULL, '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, '1tdMu2I1az', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(4, 'Ms. Jailyn O\'Connell IV', 'vjast', 'terry.lorenzo@example.org', '+16807959692', 'admin', NULL, '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'JL8CD2yDxW', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(5, 'Miss Madie Cronin V', 'crystal60', 'uspinka@example.net', '1-682-621-5240', 'cashier', NULL, '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, '2gtNt3MNzv', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(6, 'Josephine O\'Hara V', 'ureichert', 'idell.pacocha@example.net', '(956) 658-8842', 'supervisor', 'Petroleum Engineer', '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'YyYFheRoyz', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(7, 'Sterling Walker', 'awisoky', 'trantow.gregory@example.org', '(847) 402-7804', 'admin', 'Plastic Molding Machine Operator', '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'ZMwnkSEw8C', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(8, 'Ms. Angelina Reynolds', 'celia.cartwright', 'donna05@example.net', '+1-856-370-0099', 'cashier', 'Embossing Machine Operator', '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'Sl0a65OHS8', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(9, 'Leif Ward', 'lehner.roxane', 'reba.kshlerin@example.org', '+1 (804) 878-7281', 'admin', NULL, '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'kIsjjW83c0', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(10, 'Dr. Stanford Cummerata', 'qgoodwin', 'dreichel@example.com', '(458) 797-4973', 'supervisor', 'Floral Designer', '$2y$12$jxHqdwi0GnAOu/kr850ADudgNbl/UasXtTENfh6hX4Bs5klLP7H1C', NULL, 'W3WoaoGhhP', '2026-03-27 09:53:05', '2026-03-27 09:53:05'),
(11, 'Admin', 'admin', 'ddoyle@example.org', '1-580-680-6496', 'owner', NULL, '$2y$12$Jezq36A3Zif1xeok9WlVx.UOErF8P3VsPis4icKgXJa.mNRJsMou6', NULL, 'qdjN6PII6L', '2026-03-27 09:53:05', '2026-03-27 09:53:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
