-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2026 at 04:36 PM
-- Server version: 8.4.3
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--
CREATE DATABASE IF NOT EXISTS `absensi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `absensi`;

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan_cuti` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_cuti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lemburs`
--

CREATE TABLE `lemburs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jarak_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_lembur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint UNSIGNED NOT NULL,
  `lat_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_kantor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `radius` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapping_shifts`
--

CREATE TABLE `mapping_shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_masuk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_pulang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_absen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_16_095447_create_shifts_table', 1),
(6, '2022_09_19_032649_create_mapping_shifts_table', 1),
(7, '2022_09_20_074944_create_lemburs_table', 1),
(8, '2022_09_20_092230_create_cutis_table', 1),
(9, '2022_10_31_083510_create_lokasis_table', 1),
(10, '2022_11_02_061554_create_reset_cutis_table', 1),
(11, '2022_12_01_041742_create_sips_table', 1),
(12, '2022_12_14_080034_create_jabatans_table', 1),
(13, '2023_02_20_161543_create_activity_logs_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_cutis`
--

CREATE TABLE `reset_cutis` (
  `id` bigint UNSIGNED NOT NULL,
  `cuti_dadakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_menikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_khusus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_melahirkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_shift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sips`
--

CREATE TABLE `sips` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berakhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_join` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_nikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_dadakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_bersama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_menikah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_diluar_tanggungan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_khusus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuti_melahirkan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` bigint UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `cuti_dadakan`, `cuti_bersama`, `cuti_menikah`, `cuti_diluar_tanggungan`, `cuti_khusus`, `cuti_melahirkan`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `jabatan_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, 'admin@admin.com', '081234567890', 'admin', '$2y$10$1jg2XS2pTSZnTIHt.JN6OePqaTpJ3uYNsCImgYBDNAIcTyRB.SW9q', '1990-01-01', 'L', '2026-02-03', 'Belum Menikah', 'Kantor Pusat', '0', '0', '0', '0', '0', '0', '0', '0', '1', 1, NULL, NULL, '2026-02-03 08:37:27', '2026-02-03 08:37:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sips`
--
ALTER TABLE `sips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lemburs`
--
ALTER TABLE `lemburs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sips`
--
ALTER TABLE `sips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `laravelgudang`
--
CREATE DATABASE IF NOT EXISTS `laravelgudang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravelgudang`;

-- --------------------------------------------------------

--
-- Table structure for table `cabais`
--

CREATE TABLE `cabais` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabais`
--

INSERT INTO `cabais` (`id`, `name`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Cabe Merah', NULL, 'Cabe Merah', '2026-01-31 06:35:08', '2026-01-31 06:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('warehouse_management_cache_gudang@gmail.com|127.0.0.1', 'i:1;', 1769865680),
('warehouse_management_cache_gudang@gmail.com|127.0.0.1:timer', 'i:1769865680;', 1769865680);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gudangs`
--

CREATE TABLE `gudangs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komoditas`
--

CREATE TABLE `komoditas` (
  `id` bigint UNSIGNED NOT NULL,
  `cabai_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `gudang_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` bigint NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komoditas`
--

INSERT INTO `komoditas` (`id`, `cabai_id`, `user_id`, `gudang_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 10, 'pengajuan', '2026-01-31 06:35:19', '2026-01-31 06:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_26_020514_create_cabais_table', 1),
(5, '2024_09_26_122426_create_gudangs_table', 1),
(6, '2024_09_28_031120_create_komoditas_table', 1),
(7, '2025_11_22_104703_update_komoditas_user_fk_on_delete_cascade', 1),
(8, '2026_01_31_132301_add_default_to_role_on_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
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

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Pengelola Gudang', 'pengelola_gudang', 'gudang@admin.com', NULL, '$2y$12$tc0DFYXSo3gAWk6Kc9G.uuEzWhgoWIm.ql6uoP4TOb3yy5WK7PDIi', NULL, '2026-01-31 06:31:50', '2026-01-31 06:31:50'),
(4, 'petani', 'petani', 'petani@gmail.com', NULL, '$2y$12$r8z1YogSArreh.ze0EzUSe4Pdkdj2kZr.FiXcpi1c/Z.SWIu2z6lK', NULL, '2026-01-31 06:33:57', '2026-01-31 06:33:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabais`
--
ALTER TABLE `cabais`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `gudangs`
--
ALTER TABLE `gudangs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `komoditas`
--
ALTER TABLE `komoditas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komoditas_cabai_id_foreign` (`cabai_id`),
  ADD KEY `komoditas_gudang_id_foreign` (`gudang_id`),
  ADD KEY `komoditas_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `cabais`
--
ALTER TABLE `cabais`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gudangs`
--
ALTER TABLE `gudangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komoditas`
--
ALTER TABLE `komoditas`
  ADD CONSTRAINT `komoditas_cabai_id_foreign` FOREIGN KEY (`cabai_id`) REFERENCES `cabais` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `komoditas_gudang_id_foreign` FOREIGN KEY (`gudang_id`) REFERENCES `gudangs` (`id`),
  ADD CONSTRAINT `komoditas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `laravelkaryawan`
--
CREATE DATABASE IF NOT EXISTS `laravelkaryawan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravelkaryawan`;

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint UNSIGNED NOT NULL,
  `karyawan_id` bigint UNSIGNED NOT NULL,
  `status_absen` enum('hadir','alpha','cuti') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_absensi` date NOT NULL DEFAULT '2026-01-21',
  `time` time NOT NULL DEFAULT '00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint UNSIGNED NOT NULL,
  `karyawan_id` bigint UNSIGNED NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_cuti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gajis`
--

CREATE TABLE `gajis` (
  `id` bigint UNSIGNED NOT NULL,
  `karyawan_id` bigint UNSIGNED NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `potongan` decimal(15,2) NOT NULL,
  `tunjangan` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_mulai_kerja` time NOT NULL,
  `jam_selesai_kerja` time NOT NULL,
  `note_pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaji_pokok` int NOT NULL,
  `tunjangan` int NOT NULL,
  `potongan` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawans`
--

CREATE TABLE `karyawans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` bigint UNSIGNED NOT NULL,
  `ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NPWP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_kontak` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_06_072747_create_jabatans_table', 1),
(5, '2024_06_06_093200_create_karyawans_table', 1),
(6, '2024_06_07_135614_create_cutis_table', 1),
(7, '2024_06_10_114409_create_absensis_table', 1),
(8, '2024_06_11_030512_create_gajis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgProfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `imgProfile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'hafisardiyanto19@gmail.com', '2026-01-22 04:08:06', '$2y$12$QC0lwzAyVZ3uRrETfKxvPOxDExPV8Xj8wqZNG7T9nLDehTxp3ZXdO', NULL, NULL, NULL, '2026-01-21 21:14:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensis_karyawan_id_foreign` (`karyawan_id`);

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
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cutis_karyawan_id_foreign` (`karyawan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gajis`
--
ALTER TABLE `gajis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gajis_karyawan_id_foreign` (`karyawan_id`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `karyawans_email_unique` (`email`),
  ADD KEY `karyawans_jabatan_id_foreign` (`jabatan_id`);

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
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gajis`
--
ALTER TABLE `gajis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensis`
--
ALTER TABLE `absensis`
  ADD CONSTRAINT `absensis_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`);

--
-- Constraints for table `cutis`
--
ALTER TABLE `cutis`
  ADD CONSTRAINT `cutis_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`);

--
-- Constraints for table `gajis`
--
ALTER TABLE `gajis`
  ADD CONSTRAINT `gajis_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD CONSTRAINT `karyawans_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`);
--
-- Database: `laravelpos`
--
CREATE DATABASE IF NOT EXISTS `laravelpos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravelpos`;

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `login_at` time NOT NULL,
  `logout_at` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`id`, `user_id`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES
(1, 1, '16:57:00', NULL, '2026-02-01 09:57:12', '2026-02-01 09:57:12'),
(2, 2, '17:00:00', '17:02:00', '2026-02-01 10:00:43', '2026-02-01 10:02:51'),
(3, 3, '17:03:00', NULL, '2026-02-01 10:03:05', '2026-02-01 10:03:05'),
(4, 1, '19:04:00', '19:54:00', '2026-02-01 12:04:44', '2026-02-01 12:54:51'),
(5, 1, '20:27:00', NULL, '2026-02-01 13:27:38', '2026-02-01 13:27:38'),
(6, 1, '15:59:00', NULL, '2026-02-02 08:59:15', '2026-02-02 08:59:15'),
(7, 1, '21:13:00', '21:46:00', '2026-02-02 14:13:04', '2026-02-02 14:46:49'),
(8, 2, '21:17:00', NULL, '2026-02-02 14:17:43', '2026-02-02 14:17:43'),
(9, 2, '21:47:00', '21:47:00', '2026-02-02 14:47:03', '2026-02-02 14:47:24'),
(10, 3, '21:47:00', NULL, '2026-02-02 14:47:35', '2026-02-02 14:47:35'),
(11, 1, '19:58:00', NULL, '2026-02-03 12:59:09', '2026-02-03 12:59:09'),
(12, 1, '13:04:00', NULL, '2026-02-07 06:04:13', '2026-02-07 06:04:13'),
(13, 2, '20:11:00', '20:42:00', '2026-02-10 13:11:28', '2026-02-10 13:42:39'),
(14, 2, '20:44:00', NULL, '2026-02-10 13:44:59', '2026-02-10 13:44:59'),
(15, 2, '23:04:00', NULL, '2026-02-10 16:04:01', '2026-02-10 16:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('pos_inventory_cache_admin@example.com|127.0.0.1', 'i:1;', 1769939747),
('pos_inventory_cache_admin@example.com|127.0.0.1:timer', 'i:1769939747;', 1769939747),
('pos_inventory_cache_kjgkj|127.0.0.1', 'i:1;', 1770731089),
('pos_inventory_cache_kjgkj|127.0.0.1:timer', 'i:1770731089;', 1770731089);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `subtotal` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `item_id`, `qty`, `subtotal`, `created_at`, `updated_at`) VALUES
(6, 3, 2, 10, 120000, '2026-02-02 15:30:12', '2026-02-02 15:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Scallop', NULL, '2026-02-01 12:02:19', '2026-02-01 12:02:19'),
(2, 'Nugget', NULL, '2026-02-02 14:47:56', '2026-02-02 14:48:26'),
(4, 'Bakso', NULL, '2026-02-10 16:05:48', '2026-02-10 16:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `cost_price` int NOT NULL,
  `selling_price` int NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `code`, `category_id`, `cost_price`, `selling_price`, `stock`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'Emerald Frozen Sea Scallops', 'OQER8109', 1, 10000, 17000, 950, 'default.png', '2026-02-01 15:01:29', '2026-02-07 06:09:12'),
(2, 'Stick Nugget', 'BOJG2515', 2, 10000, 12000, 975, 'default.png', '2026-02-02 14:50:46', '2026-02-02 15:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_21_174125_create_categories_table', 1),
(5, '2024_05_21_174227_create_customers_table', 1),
(6, '2024_05_21_174511_create_payment_methods_table', 1),
(7, '2024_05_21_175122_create_item_supplier_table', 1),
(8, '2024_05_21_175123_create_wholesale_prices_table', 1),
(9, '2024_05_21_182615_create_carts_table', 1),
(10, '2024_05_22_030109_create_transactions_table', 1),
(11, '2024_05_22_030902_create_transaction_details_table', 1),
(12, '2024_05_27_072011_create_absences_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tunai',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Cash', NULL, '2026-02-01 14:53:13', '2026-02-01 14:53:13'),
(2, 'Termin', NULL, '2026-02-01 14:54:26', '2026-02-01 14:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `email`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Aneka Jaya', '05812312412', 'Jl.Sulung sekolahan', 'anekajaya@gmail.com', 'Apapun', '2026-02-10 16:08:50', '2026-02-10 16:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `change` int NOT NULL DEFAULT '0',
  `status` enum('paid','debt') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'paid',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `customer_id`, `invoice`, `invoice_no`, `total`, `discount`, `payment_method_id`, `amount`, `change`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '0102260001', '1', 51000, 0, 1, 52000, 1000, 'paid', NULL, '2026-02-01 15:10:01', '2026-02-01 15:10:01'),
(4, 3, NULL, '0202260001', '1', 120000, 0, 1, 0, 0, 'paid', NULL, '2026-02-02 15:27:01', '2026-02-02 15:27:01'),
(5, 2, NULL, '0202260002', '2', 180000, 0, NULL, NULL, 0, 'debt', NULL, '2026-02-02 15:54:30', '2026-02-02 15:54:30'),
(6, 2, NULL, '0202260003', '3', 255000, 0, 1, 260000, 5000, 'paid', NULL, '2026-02-02 15:56:22', '2026-02-02 15:56:22'),
(7, 1, NULL, '0702260001', '1', 425000, 0, NULL, NULL, 0, 'debt', NULL, '2026-02-07 06:09:12', '2026-02-07 06:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `item_price` int NOT NULL,
  `total` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `item_id`, `qty`, `item_price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 17000, 51000, '2026-02-01 15:10:06', '2026-02-01 15:10:06'),
(3, 4, 2, 10, 12000, 120000, '2026-02-02 15:27:01', '2026-02-02 15:27:01'),
(4, 5, 2, 15, 12000, 180000, '2026-02-02 15:54:30', '2026-02-02 15:54:30'),
(5, 6, 1, 15, 17000, 255000, '2026-02-02 15:56:23', '2026-02-02 15:56:23'),
(6, 7, 1, 25, 17000, 425000, '2026-02-07 06:09:12', '2026-02-07 06:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin', 'admin@example.com', '681.623.9766', 'owner', NULL, '$2y$12$HE236p8ZjfXClBPL1SM7W.qN.fzcri9D4DVTte3qxeLiChWQtEnTG', NULL, 'ihXb1OJ9gvJ2nCRQfgLfL8jC7QgNnNSvJp2woV862A3ODLRSeP22ES3h6PV7', '2026-02-01 09:54:15', '2026-02-01 09:56:43'),
(2, 'hafis', 'hafis', 'hafisardiyanto19@gmail.com', '086721321421', 'supervisor', 'SPV', '$2y$12$rPkjHC5P0.CFyYjQ4PtkdOwdlVcvca5YVKQr2B4TwissoER1anpOm', NULL, NULL, '2026-02-01 09:59:56', '2026-02-01 09:59:56'),
(3, 'orang', 'orang', 'orang19@gmail.com', '071283124214', 'cashier', NULL, '$2y$12$r7Kfs.lySm8t78yVFHYQgOnq6bh2y702ZVYlh6XgKLh.WIB.8I0/2', NULL, NULL, '2026-02-01 10:01:55', '2026-02-01 10:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_prices`
--

CREATE TABLE `wholesale_prices` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `min_qty` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wholesale_prices`
--

INSERT INTO `wholesale_prices` (`id`, `item_id`, `min_qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 16500, 15000, '2026-02-01 15:01:31', '2026-02-01 15:01:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_user_id_foreign` (`user_id`);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
  ADD UNIQUE KEY `items_code_unique` (`code`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_supplier_item_id_foreign` (`item_id`),
  ADD KEY `item_supplier_supplier_id_foreign` (`supplier_id`);

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
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wholesale_prices`
--
ALTER TABLE `wholesale_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wholesale_prices_item_id_foreign` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wholesale_prices`
--
ALTER TABLE `wholesale_prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `absences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD CONSTRAINT `item_supplier_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_supplier_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wholesale_prices`
--
ALTER TABLE `wholesale_prices`
  ADD CONSTRAINT `wholesale_prices_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;
--
-- Database: `laravelproject`
--
CREATE DATABASE IF NOT EXISTS `laravelproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravelproject`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('manajemen_project_sederhana_cache_77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1769920421),
('manajemen_project_sederhana_cache_77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1769920421;', 1769920421);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_01_042900_create_projects_table', 1),
(5, '2024_05_01_042934_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `due_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `due_date`, `status`, `image_path`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Officiis repudiandae et aliquam assumenda sed.', 'I shall ever see such a nice soft thing to eat or drink anything; so I\'ll just see what was going on, as she leant against a buttercup to rest herself, and nibbled a little recovered from the.', '2025-05-16 14:07:38', 'pending', 'https://via.placeholder.com/640x480.png/009977?text=facere', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(2, 'Aut placeat voluptates est.', 'Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice an excellent opportunity for making her escape; so she went on so long that they must be off, and she.', '2025-10-30 04:25:24', 'completed', 'https://via.placeholder.com/640x480.png/001144?text=qui', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(3, 'Dignissimos sed praesentium iure quis hic omnis.', 'CHAPTER V. Advice from a Caterpillar The Caterpillar was the first minute or two, and the Mock Turtle drew a long silence after this, and after a few minutes that she wasn\'t a bit afraid of.', '2025-05-25 18:47:20', 'in_progress', 'https://via.placeholder.com/640x480.png/001144?text=commodi', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(4, 'Et consequatur necessitatibus perspiciatis et ut officiis omnis sit.', 'So they went on planning to herself \'Suppose it should be raving mad--at least not so mad as it is.\' \'Then you shouldn\'t talk,\' said the Hatter: \'as the things I used to say.\' \'So he did, so he.', '2025-01-26 22:48:06', 'in_progress', 'https://via.placeholder.com/640x480.png/005544?text=sunt', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(5, 'Incidunt eum ut quia quo sed minus et.', 'Majesty,\' said Two, in a soothing tone: \'don\'t be angry about it. And yet I wish you could only see her. She is such a dreadful time.\' So Alice got up this morning? I almost wish I\'d gone to see if.', '2025-05-20 07:21:56', 'in_progress', 'https://via.placeholder.com/640x480.png/001177?text=similique', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(6, 'Beatae enim molestias in eum est.', 'Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'that\'s not at all the time they were all in bed!\' On various pretexts they all cheered. Alice thought she might as well as.', '2025-06-23 18:47:33', 'in_progress', 'https://via.placeholder.com/640x480.png/007799?text=beatae', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(7, 'Necessitatibus corrupti consequuntur hic eum qui et quo.', 'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the King. \'It began with the strange creatures of her head pressing against the door, staring stupidly up into a graceful.', '2025-09-01 20:29:11', 'completed', 'https://via.placeholder.com/640x480.png/008888?text=voluptatem', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(8, 'Illum et cupiditate tempore dolorem perspiciatis.', 'France-- Then turn not pale, beloved snail, but come and join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she gained courage as she picked up a little faster?\" said a sleepy voice.', '2025-10-28 21:52:38', 'pending', 'https://via.placeholder.com/640x480.png/009933?text=aut', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(9, 'Optio voluptates delectus ipsam.', 'Hatter, it woke up again as quickly as she swam nearer to make out what she did, she picked her way into that lovely garden. I think it would feel with all speed back to the King, who had got its.', '2025-03-29 19:20:27', 'completed', 'https://via.placeholder.com/640x480.png/00aaaa?text=quis', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(10, 'Exercitationem asperiores sint eaque consequatur ipsa cumque ullam.', 'Eaglet, and several other curious creatures. Alice led the way, was the first day,\' said the Caterpillar. \'Is that the best of educations--in fact, we went to school every day--\' \'I\'VE been to her.', '2025-01-28 15:59:55', 'pending', 'https://via.placeholder.com/640x480.png/003333?text=tempora', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(11, 'At porro quo sit ut sit.', 'Alice (she was rather glad there WAS no one listening, this time, sat down again in a pleased tone. \'Pray don\'t trouble yourself to say it out loud. \'Thinking again?\' the Duchess and the shrill.', '2025-08-01 14:01:52', 'in_progress', 'https://via.placeholder.com/640x480.png/0055dd?text=ab', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(12, 'Sunt cupiditate voluptate est rerum quos amet.', 'LITTLE larger, sir, if you don\'t like the look of the accident, all except the King, with an anxious look at the thought that it was too dark to see if she was quite a new kind of serpent, that\'s.', '2025-02-17 08:46:00', 'pending', 'https://via.placeholder.com/640x480.png/00aa00?text=laudantium', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(13, 'Velit modi aperiam inventore consectetur explicabo architecto laudantium.', 'Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'they\'re sure to make herself useful, and looking at the bottom of a sea of green leaves that had fallen into it: there was generally a.', '2025-07-27 03:04:03', 'pending', 'https://via.placeholder.com/640x480.png/001100?text=non', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(14, 'Porro qui eos explicabo cumque sit corrupti.', 'She hastily put down yet, before the trial\'s over!\' thought Alice. \'I\'m glad they don\'t seem to see what was on the ground as she could, and soon found out that part.\' \'Well, at any rate, the.', '2025-05-11 23:48:26', 'in_progress', 'https://via.placeholder.com/640x480.png/002233?text=repellendus', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(15, 'Delectus atque in consequuntur enim animi libero.', 'Queen. An invitation from the Gryphon, and all that,\' he said in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they can\'t prove I did: there\'s no use in talking to him,\' said.', '2025-04-24 16:38:45', 'in_progress', 'https://via.placeholder.com/640x480.png/001144?text=hic', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(16, 'Aut harum odio dolor.', 'Alice, \'because I\'m not myself, you see.\' \'I don\'t think--\' \'Then you should say what you had been anxiously looking across the field after it, never once considering how in the other. In the very.', '2025-01-11 19:36:14', 'in_progress', 'https://via.placeholder.com/640x480.png/006655?text=quia', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(17, 'Quis iste nisi consequatur.', 'Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'shall I NEVER get any older than I am so VERY much out of its voice. \'Back to land again, and put it right; \'not that it felt quite.', '2025-11-04 02:40:03', 'in_progress', 'https://via.placeholder.com/640x480.png/00bb55?text=nam', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(18, 'Voluptate ea possimus sunt porro deleniti vel ipsam dicta.', 'Footman, \'and that for the baby, the shriek of the accident, all except the Lizard, who seemed ready to play croquet.\' Then they all spoke at once, and ran off, thinking while she remembered how.', '2024-12-21 05:08:50', 'in_progress', 'https://via.placeholder.com/640x480.png/00cccc?text=rem', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(19, 'Velit ratione perferendis facere officia accusamus sed quibusdam.', 'King, \'that only makes the world she was now, and she very seldom followed it), and sometimes she scolded herself so severely as to bring tears into her face, with such a new idea to Alice, and.', '2024-12-15 12:05:02', 'in_progress', 'https://via.placeholder.com/640x480.png/0022cc?text=exercitationem', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(20, 'Sequi tempora doloremque perferendis.', 'Hatter. \'You might just as I\'d taken the highest tree in the distance, and she hastily dried her eyes anxiously fixed on it, or at least one of the game, feeling very glad to get in?\' asked Alice.', '2025-08-12 02:05:00', 'pending', 'https://via.placeholder.com/640x480.png/00ddff?text=autem', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(21, 'Pariatur dolor perferendis et.', 'Alice. \'Oh, don\'t bother ME,\' said the Rabbit just under the hedge. In another minute the whole court was a real Turtle.\' These words were followed by a row of lodging houses, and behind it was her.', '2025-06-20 08:41:44', 'pending', 'https://via.placeholder.com/640x480.png/004488?text=voluptas', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(22, 'Sint numquam laborum ea quasi explicabo aspernatur dicta.', 'Adventures, till she shook the house, and found that, as nearly as large as himself, and this he handed over to the door, and tried to fancy what the flame of a large crowd collected round it: there.', '2025-01-30 13:54:46', 'in_progress', 'https://via.placeholder.com/640x480.png/0000dd?text=dolorem', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(23, 'Facere alias doloremque rerum voluptatem quia.', 'Mock Turtle, suddenly dropping his voice; and Alice was very likely true.) Down, down, down. Would the fall NEVER come to the door. \'Call the first to break the silence. \'What day of the sense, and.', '2024-12-05 12:12:47', 'pending', 'https://via.placeholder.com/640x480.png/002277?text=illum', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(24, 'Quam error et saepe eveniet modi sunt et.', 'Hatter. \'Nor I,\' said the King. \'When did you do lessons?\' said Alice, in a low, timid voice, \'If you didn\'t sign it,\' said Alice. The King looked anxiously round, to make out who I am! But I\'d.', '2024-11-26 23:15:01', 'pending', 'https://via.placeholder.com/640x480.png/0000bb?text=ea', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(25, 'Tenetur eaque impedit sint quidem cupiditate recusandae voluptas qui.', 'Queen in a rather offended tone, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I can tell you how it was certainly not becoming. \'And that\'s the queerest thing about it.\' \'She\'s in.', '2025-03-07 08:15:12', 'pending', 'https://via.placeholder.com/640x480.png/00bb66?text=culpa', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(26, 'Nesciunt laborum fugiat ab earum sunt dolore.', 'Suppress him! Pinch him! Off with his whiskers!\' For some minutes it seemed quite dull and stupid for life to go through next walking about at the Mouse\'s tail; \'but why do you know what they\'re.', '2025-03-18 23:21:26', 'in_progress', 'https://via.placeholder.com/640x480.png/006688?text=repellat', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(27, 'Expedita voluptatibus ipsam cupiditate impedit eos aut.', 'Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was trickling down his face, as long as there was enough of it appeared. \'I don\'t much care where--\' said.', '2025-04-13 21:29:40', 'completed', 'https://via.placeholder.com/640x480.png/001188?text=soluta', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(28, 'Voluptas sit numquam temporibus veritatis numquam ad.', 'Bill had left off staring at the bottom of a globe of goldfish she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever.', '2025-06-18 19:29:38', 'in_progress', 'https://via.placeholder.com/640x480.png/000022?text=ea', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(29, 'Nostrum adipisci porro mollitia a placeat.', 'She said this she looked up, and began talking to him,\' said Alice indignantly, and she had succeeded in getting its body tucked away, comfortably enough, under her arm, that it was good practice to.', '2025-01-13 21:00:38', 'pending', 'https://via.placeholder.com/640x480.png/00cc11?text=provident', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(30, 'Quia occaecati libero placeat temporibus repudiandae quia amet.', 'Hatter said, tossing his head sadly. \'Do I look like one, but it was over at last, with a deep sigh, \'I was a dead silence. Alice was very uncomfortable, and, as she could not answer without a cat!.', '2025-02-06 10:11:51', 'pending', 'https://via.placeholder.com/640x480.png/000011?text=molestiae', 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nWf7iqb0Y9HPhyXwHyDVqoXYIABKy6ZZUXNjtuxY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicmNyV0paUUJJR3JLTktrS2tCVURwTkppYlB3eGJXbmxYQ0hBRkNxWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1731638432),
('pS7zCoXpwMvHzzvWprL0ZPOihZnGflzQc2zvQTMz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0oyazR4QjkwNENyN1laNllGTmtCaUtCaWxmQzg2TFQ4UmRydHRsSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fX0=', 1731638472);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'Ullam omnis veritatis sint vel quibusdam voluptatem enim eaque.', 'Don\'t let me help to undo it!\' \'I shall sit here,\' he said, turning to Alice, and tried to fancy to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t be civil, you\'d.', 'https://via.placeholder.com/640x480.png/005500?text=nihil', 'in_progress', 'low', '2024-11-19 17:33:24', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(2, 'Adipisci debitis quia expedita non qui.', 'PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to happen,\' she said aloud. \'I must be on the glass table as before, \'It\'s all about it!\' and he went on at last, more calmly, though still.', 'https://via.placeholder.com/640x480.png/006644?text=sit', 'in_progress', 'medium', '2025-08-09 00:35:23', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(3, 'Ea ex quia non provident facilis labore itaque.', 'YOUR opinion,\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Rabbit coming to look through into the way down one side and up I goes like a writing-desk?\' \'Come, we shall.', 'https://via.placeholder.com/640x480.png/0044cc?text=a', 'pending', 'low', '2025-05-24 06:53:58', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(4, 'Illum aliquid nihil incidunt debitis sit.', 'YET,\' she said to herself \'It\'s the thing at all. However, \'jury-men\' would have called him Tortoise because he was speaking, and this time it vanished quite slowly, beginning with the other: the.', 'https://via.placeholder.com/640x480.png/00aabb?text=ipsam', 'completed', 'low', '2025-03-23 00:56:49', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(5, 'Natus ut suscipit qui eos accusamus praesentium nemo.', 'GAVE HIM TWO--\" why, that must be Mabel after all, and I had to be executed for having cheated herself in the kitchen. \'When I\'M a Duchess,\' she said aloud. \'I shall be a LITTLE larger, sir, if you.', 'https://via.placeholder.com/640x480.png/006699?text=omnis', 'in_progress', 'high', '2025-07-03 13:36:12', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(6, 'Voluptates et dicta pariatur cum accusantium vel sequi.', 'Alice. \'I don\'t much care where--\' said Alice. \'I\'ve read that in some book, but I hadn\'t mentioned Dinah!\' she said to the tarts on the hearth and grinning from ear to ear. \'Please would you like.', 'https://via.placeholder.com/640x480.png/00dd00?text=et', 'completed', 'high', '2025-03-13 04:01:47', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(7, 'Voluptatem sed inventore quasi eos qui.', 'I could show you our cat Dinah: I think it would feel very queer to ME.\' \'You!\' said the Mock Turtle, and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think it so VERY.', 'https://via.placeholder.com/640x480.png/00cc00?text=ipsam', 'pending', 'medium', '2025-01-26 09:46:13', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(8, 'Soluta aut voluptates soluta voluptatibus voluptates rerum.', 'Gryphon never learnt it.\' \'Hadn\'t time,\' said the March Hare,) \'--it was at the Duchess was sitting next to her. \'I can tell you his history,\' As they walked off together. Alice was not otherwise.', 'https://via.placeholder.com/640x480.png/008855?text=non', 'completed', 'high', '2025-03-20 13:43:20', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(9, 'Porro maiores et omnis odio ipsa debitis perspiciatis.', 'MYSELF, I\'m afraid, but you might knock, and I don\'t want YOU with us!\"\' \'They were learning to draw,\' the Dormouse shall!\' they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at.', 'https://via.placeholder.com/640x480.png/0066ee?text=cum', 'pending', 'medium', '2025-09-16 22:51:56', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(10, 'Numquam magni cumque sit consectetur laudantium voluptatem.', 'The Mouse looked at the sudden change, but she had put the Dormouse crossed the court, \'Bring me the list of the doors of the house if it had come back in a pleased tone. \'Pray don\'t trouble.', 'https://via.placeholder.com/640x480.png/004477?text=a', 'in_progress', 'low', '2024-12-29 12:35:34', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(11, 'Expedita hic quam aliquam est.', 'First, however, she again heard a little pattering of feet on the stairs. Alice knew it was just possible it had gone. \'Well! I\'ve often seen a good deal worse off than before, as the game was in.', 'https://via.placeholder.com/640x480.png/006633?text=aut', 'in_progress', 'medium', '2025-02-07 21:16:06', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(12, 'Aut iste mollitia ducimus.', 'This sounded promising, certainly: Alice turned and came flying down upon her: she gave one sharp kick, and waited till she heard the Queen said to herself, for she was to twist it up into hers--she.', 'https://via.placeholder.com/640x480.png/002255?text=ut', 'in_progress', 'medium', '2025-02-18 11:42:05', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(13, 'Non minima error facilis omnis.', 'Alice rather unwillingly took the hookah out of the singers in the sea!\' cried the Mock Turtle sighed deeply, and began, in a VERY good opportunity for making her escape; so she helped herself to.', 'https://via.placeholder.com/640x480.png/00bbaa?text=est', 'completed', 'low', '2025-01-10 06:00:25', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(14, 'Repellat eum libero quam accusantium nemo ut laudantium.', 'She waited for a conversation. Alice felt a little ledge of rock, and, as a last resource, she put one arm out of breath, and said \'No, never\') \'--so you can have no answers.\' \'If you knew Time as.', 'https://via.placeholder.com/640x480.png/003322?text=culpa', 'in_progress', 'medium', '2025-04-22 22:32:45', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(15, 'Aliquid aliquid minima architecto qui.', 'Lastly, she pictured to herself how this same little sister of hers that you have just been picked up.\' \'What\'s in it?\' said the Duchess, \'as pigs have to beat time when I breathe\"!\' \'It IS a long.', 'https://via.placeholder.com/640x480.png/0022aa?text=autem', 'pending', 'high', '2025-05-11 22:56:36', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(16, 'Facilis quia voluptatum odit rerum quos earum.', 'It doesn\'t look like one, but the cook till his eyes were nearly out of sight: then it watched the Queen was silent. The Dormouse had closed its eyes were getting so used to call him Tortoise--\'.', 'https://via.placeholder.com/640x480.png/0066dd?text=voluptatibus', 'completed', 'low', '2025-05-19 02:42:01', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(17, 'Earum odit ea provident pariatur qui.', 'I don\'t want to go among mad people,\' Alice remarked. \'Oh, you can\'t be civil, you\'d better leave off,\' said the King; and the Dormouse turned out, and, by the carrier,\' she thought; \'and how funny.', 'https://via.placeholder.com/640x480.png/00aa44?text=aliquam', 'completed', 'medium', '2025-10-13 06:05:18', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(18, 'Qui similique veritatis quae natus aut optio.', 'Footman went on \'And how many miles I\'ve fallen by this time.) \'You\'re nothing but the Hatter hurriedly left the court, she said aloud. \'I must go by the carrier,\' she thought; \'and how funny it\'ll.', 'https://via.placeholder.com/640x480.png/008800?text=beatae', 'pending', 'high', '2025-04-22 22:45:26', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(19, 'Et animi ipsa sed commodi.', 'I like\"!\' \'You might just as well. The twelve jurors were writing down \'stupid things!\' on their faces, and the blades of grass, but she could not even room for her. \'I can hardly breathe.\' \'I can\'t.', 'https://via.placeholder.com/640x480.png/00bbee?text=placeat', 'completed', 'low', '2025-09-10 14:10:18', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(20, 'Assumenda voluptas labore consequatur veniam.', 'I see\"!\' \'You might just as if she did not look at them--\'I wish they\'d get the trial done,\' she thought, \'and hand round the thistle again; then the puppy began a series of short charges at the.', 'https://via.placeholder.com/640x480.png/0055aa?text=nemo', 'pending', 'low', '2025-08-28 01:31:29', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(21, 'Placeat esse quam quis cupiditate neque et repudiandae.', 'English coast you find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, rather doubtfully, as she passed; it was over at last: \'and I do.', 'https://via.placeholder.com/640x480.png/001100?text=sunt', 'pending', 'high', '2025-03-25 23:28:58', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(22, 'Adipisci molestiae enim exercitationem voluptatem est quia.', 'And the Gryphon whispered in reply, \'for fear they should forget them before the end of half an hour or so, and were resting in the after-time, be herself a grown woman; and how she would have made.', 'https://via.placeholder.com/640x480.png/007744?text=quisquam', 'in_progress', 'high', '2025-01-04 09:16:08', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(23, 'Nihil qui rem vel aliquid quos autem odit.', 'This speech caused a remarkable sensation among the leaves, which she had never left off sneezing by this time?\' she said to the general conclusion, that wherever you go to law: I will tell you my.', 'https://via.placeholder.com/640x480.png/00bb99?text=voluptatibus', 'completed', 'high', '2025-04-06 13:04:59', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(24, 'Optio provident magni minus dolorem ipsa.', 'She was close behind her, listening: so she went on in the middle, being held up by two guinea-pigs, who were all talking at once, while all the rest of the crowd below, and there they are!\' said.', 'https://via.placeholder.com/640x480.png/009955?text=suscipit', 'in_progress', 'high', '2025-10-02 18:01:54', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(25, 'Asperiores voluptas nisi explicabo.', 'I wish I hadn\'t drunk quite so much!\' said Alice, \'it\'s very easy to know what they\'re about!\' \'Read them,\' said the Caterpillar. \'Well, perhaps you were down here till I\'m somebody else\"--but, oh.', 'https://via.placeholder.com/640x480.png/009944?text=voluptates', 'in_progress', 'high', '2025-04-24 20:59:14', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(26, 'Laborum ut dolores dolorem aspernatur voluptas nesciunt.', 'CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice looked all round the court was a little faster?\" said a timid voice at her for a baby: altogether Alice did not appear, and after a few.', 'https://via.placeholder.com/640x480.png/00ff33?text=autem', 'completed', 'low', '2025-05-06 00:37:00', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(27, 'Nam maxime qui eum deleniti dolor id eligendi et.', 'I suppose it doesn\'t understand English,\' thought Alice; \'I can\'t explain MYSELF, I\'m afraid, but you might knock, and I never knew so much at this, she came upon a time there were ten of them, and.', 'https://via.placeholder.com/640x480.png/0011aa?text=et', 'completed', 'medium', '2025-11-11 01:53:24', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(28, 'Recusandae adipisci et praesentium itaque.', 'I hadn\'t drunk quite so much!\' said Alice, rather doubtfully, as she wandered about in a tone of great relief. \'Call the first verse,\' said the Dormouse crossed the court, she said to the porpoise.', 'https://via.placeholder.com/640x480.png/00aa11?text=sit', 'pending', 'high', '2025-01-14 23:36:26', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(29, 'Et rerum voluptate illo.', 'TWO--\" why, that must be a lesson to you to set about it; if I\'m not myself, you see.\' \'I don\'t quite understand you,\' she said, as politely as she spoke, but no result seemed to Alice as he spoke.', 'https://via.placeholder.com/640x480.png/005511?text=id', 'pending', 'high', '2025-02-01 04:16:57', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(30, 'Amet voluptas facilis fuga est accusantium maxime ut et.', 'William\'s conduct at first she thought of herself, \'I don\'t see how the Dodo could not stand, and she dropped it hastily, just in time to hear the words:-- \'I speak severely to my boy, I beat him.', 'https://via.placeholder.com/640x480.png/009933?text=facere', 'in_progress', 'high', '2025-01-21 21:29:35', 1, 1, 1, 1, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(31, 'Fugiat tempora error incidunt qui in.', 'Hardly knowing what she was up to them she heard the Rabbit say, \'A barrowful will do, to begin with.\' \'A barrowful of WHAT?\' thought Alice \'without pictures or conversations in it, and then said.', 'https://via.placeholder.com/640x480.png/00aa11?text=repellendus', 'pending', 'medium', '2024-11-21 08:08:08', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(32, 'Recusandae iure totam enim aut.', 'Gryphon, \'that they WOULD put their heads downward! The Antipathies, I think--\' (she was so much at first, the two sides of it; and the other birds tittered audibly. \'What I was a real nose; also.', 'https://via.placeholder.com/640x480.png/0022bb?text=ut', 'completed', 'high', '2025-06-19 05:54:22', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(33, 'Sit velit quo eos.', 'I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a low voice, to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare. \'I didn\'t know that.', 'https://via.placeholder.com/640x480.png/008899?text=alias', 'pending', 'high', '2025-08-30 20:13:18', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(34, 'Explicabo sed a illum optio commodi temporibus est.', 'Dinah, tell me who YOU are, first.\' \'Why?\' said the Knave, \'I didn\'t write it, and talking over its head. \'Very uncomfortable for the rest of my life.\' \'You are old,\' said the Duchess; \'and that\'s a.', 'https://via.placeholder.com/640x480.png/0033bb?text=qui', 'completed', 'low', '2025-07-26 09:43:57', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(35, 'Ex aspernatur distinctio voluptatum doloremque id rerum.', 'The Queen\'s argument was, that you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think I can kick a little!\'.', 'https://via.placeholder.com/640x480.png/00ccaa?text=nisi', 'in_progress', 'low', '2024-12-16 09:15:56', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(36, 'Quod rerum sunt quidem sunt assumenda.', 'Alice. \'Come on, then!\' roared the Queen, who was trembling down to the table for it, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said the Queen, who had been of late much accustomed.', 'https://via.placeholder.com/640x480.png/0033ee?text=eum', 'pending', 'low', '2025-07-25 13:17:46', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(37, 'Minima quis quis qui accusamus corporis omnis corporis non.', 'Shall I try the thing at all. However, \'jury-men\' would have made a dreadfully ugly child: but it just grazed his nose, you know?\' \'It\'s the Cheshire Cat: now I shall have some fun now!\' thought.', 'https://via.placeholder.com/640x480.png/0099dd?text=quod', 'completed', 'low', '2025-09-23 15:19:17', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(38, 'Atque possimus rem quidem minus quam qui dolor.', 'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to get in at all?\' said the March Hare. \'He denies it,\' said Five, \'and I\'ll tell him--it was for bringing the cook was leaning over.', 'https://via.placeholder.com/640x480.png/009900?text=dicta', 'completed', 'medium', '2025-05-22 03:28:36', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(39, 'Distinctio voluptatibus quae eligendi tempora delectus est.', 'Very soon the Rabbit say, \'A barrowful of WHAT?\' thought Alice \'without pictures or conversations in it, and yet it was talking in his sleep, \'that \"I like what I eat\" is the same thing as \"I get.', 'https://via.placeholder.com/640x480.png/008844?text=beatae', 'pending', 'high', '2025-02-20 18:54:13', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(40, 'Sit asperiores recusandae corporis placeat.', 'Alice. \'Then it doesn\'t matter much,\' thought Alice, \'to pretend to be sure, this generally happens when one eats cake, but Alice had been looking at the March Hare. Alice was rather doubtful.', 'https://via.placeholder.com/640x480.png/0011dd?text=modi', 'pending', 'high', '2025-05-20 11:27:59', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(41, 'Qui hic et praesentium.', 'English, who wanted leaders, and had to double themselves up and to hear her try and repeat something now. Tell her to speak again. The rabbit-hole went straight on like a stalk out of a tree in the.', 'https://via.placeholder.com/640x480.png/004466?text=maiores', 'completed', 'high', '2025-05-08 18:43:39', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(42, 'Molestiae et consequatur necessitatibus facilis asperiores iure.', 'Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to fly; and the Queen\'s absence, and were quite silent, and looked into its eyes.', 'https://via.placeholder.com/640x480.png/00bb11?text=fuga', 'pending', 'medium', '2025-05-18 18:26:56', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(43, 'Rerum optio itaque corporis quae.', 'I almost think I must have a prize herself, you know,\' said Alice, \'and why it is almost certain to disagree with you, sooner or later. However, this bottle was NOT marked \'poison,\' so Alice.', 'https://via.placeholder.com/640x480.png/005599?text=excepturi', 'completed', 'low', '2025-08-06 17:29:15', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(44, 'Enim omnis facere consequuntur tempora et quam.', 'Gryphon. \'I mean, what makes them sour--and camomile that makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means.', 'https://via.placeholder.com/640x480.png/005588?text=consequatur', 'in_progress', 'high', '2025-05-22 14:23:21', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(45, 'Rem libero voluptatem quisquam.', 'Mock Turtle interrupted, \'if you don\'t know what it meant till now.\' \'If that\'s all you know about this business?\' the King put on one knee as he shook his grey locks, \'I kept all my life!\' Just as.', 'https://via.placeholder.com/640x480.png/001199?text=nemo', 'in_progress', 'high', '2025-09-14 19:26:43', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(46, 'Architecto provident et inventore ipsa reiciendis.', 'English coast you find a pleasure in all my life, never!\' They had a bone in his sleep, \'that \"I breathe when I find a thing,\' said the Mock Turtle went on eagerly. \'That\'s enough about lessons,\'.', 'https://via.placeholder.com/640x480.png/0077dd?text=similique', 'completed', 'medium', '2025-09-03 20:45:26', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(47, 'Quia velit officia sunt unde eum porro dicta expedita.', 'When I used to read fairy-tales, I fancied that kind of rule, \'and vinegar that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew how to get.', 'https://via.placeholder.com/640x480.png/0022dd?text=magni', 'completed', 'high', '2025-06-07 11:08:36', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(48, 'Distinctio libero incidunt dolorem iste est et.', 'Alice. \'You did,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as he spoke. \'A cat may look at all the arches are gone from this side of WHAT? The other guests had taken.', 'https://via.placeholder.com/640x480.png/00ddff?text=ut', 'in_progress', 'low', '2025-05-26 02:08:26', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(49, 'Odio et dolor sunt.', 'Then it got down off the subjects on his slate with one finger pressed upon its nose. The Dormouse shook itself, and began an account of the trees as well as pigs, and was just in time to begin.', 'https://via.placeholder.com/640x480.png/00eeaa?text=ex', 'in_progress', 'high', '2025-01-12 07:24:20', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(50, 'Temporibus exercitationem dicta quae consectetur error.', 'There was nothing on it were nine o\'clock in the sea, some children digging in the lock, and to wonder what I eat\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be.', 'https://via.placeholder.com/640x480.png/0055ff?text=non', 'pending', 'medium', '2024-11-23 01:53:12', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(51, 'Provident sit quis esse sit tempora nesciunt.', 'Alice for protection. \'You shan\'t be beheaded!\' said Alice, a little now and then, if I fell off the fire, and at last it sat for a minute, nurse! But I\'ve got to grow to my jaw, Has lasted the rest.', 'https://via.placeholder.com/640x480.png/008877?text=provident', 'in_progress', 'low', '2024-12-16 19:39:19', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(52, 'Ipsum mollitia qui saepe consequatur qui.', 'She said the Gryphon went on growing, and, as the game began. Alice gave a little bit, and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think I must sugar my hair.\" As.', 'https://via.placeholder.com/640x480.png/00dd66?text=qui', 'pending', 'low', '2025-01-16 06:30:45', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(53, 'Vel adipisci voluptate eaque explicabo.', 'Alice: \'she\'s so extremely--\' Just then she walked sadly down the middle, nursing a baby; the cook was busily stirring the soup, and seemed to be no chance of her skirt, upsetting all the jurymen.', 'https://via.placeholder.com/640x480.png/0077bb?text=maiores', 'pending', 'low', '2025-09-16 12:11:28', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(54, 'Omnis veritatis qui eligendi veritatis.', 'YOUR shoes done with?\' said the Hatter. \'It isn\'t mine,\' said the Duchess: \'flamingoes and mustard both bite. And the muscular strength, which it gave to my boy, I beat him when he sneezes: He only.', 'https://via.placeholder.com/640x480.png/00dd66?text=autem', 'pending', 'high', '2025-07-10 13:47:04', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(55, 'Consequuntur quidem et dolorum nobis eligendi sit vitae voluptates.', 'First, she dreamed of little animals and birds waiting outside. The poor little thing sobbed again (or grunted, it was labelled \'ORANGE MARMALADE\', but to get through the doorway; \'and even if my.', 'https://via.placeholder.com/640x480.png/0055cc?text=ut', 'completed', 'medium', '2025-03-18 20:18:42', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(56, 'Et soluta debitis sed fuga ut et.', 'The Dormouse again took a minute or two, they began solemnly dancing round and swam slowly back again, and all the time at the window.\' \'THAT you won\'t\' thought Alice, \'to speak to this last word.', 'https://via.placeholder.com/640x480.png/00ff55?text=architecto', 'in_progress', 'low', '2025-02-10 17:09:43', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(57, 'Voluptates voluptatum possimus quia sit eaque quam ea.', 'Number One,\' said Alice. \'Why not?\' said the King. \'It began with the Queen,\' and she had been all the time he had come to an end! \'I wonder what you\'re talking about,\' said Alice. \'Why?\' \'IT DOES.', 'https://via.placeholder.com/640x480.png/0033aa?text=blanditiis', 'completed', 'medium', '2025-08-14 18:03:12', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(58, 'Et aut aut in corporis ipsa et fugiat atque.', 'Alice looked at the bottom of the creature, but on second thoughts she decided on going into the wood. \'It\'s the first question, you know.\' \'Not at first, but, after watching it a very humble tone.', 'https://via.placeholder.com/640x480.png/008800?text=tenetur', 'completed', 'low', '2025-09-20 01:41:43', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(59, 'Sint ipsam qui ipsum assumenda.', 'This is the same thing, you know.\' \'Who is it I can\'t get out of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Well, I shan\'t grow any more--As it.', 'https://via.placeholder.com/640x480.png/008899?text=nostrum', 'pending', 'medium', '2025-11-06 15:49:25', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(60, 'Fuga et ut vero tenetur tenetur.', 'Dinah, if I must, I must,\' the King sharply. \'Do you take me for his housemaid,\' she said to Alice, and she thought there was nothing on it but tea. \'I don\'t like them raw.\' \'Well, be off, then!\'.', 'https://via.placeholder.com/640x480.png/00ff55?text=ut', 'in_progress', 'low', '2025-04-25 05:04:28', 1, 1, 1, 2, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(61, 'Recusandae atque pariatur unde nobis nihil amet.', 'Alice replied: \'what\'s the answer?\' \'I haven\'t the least notice of her sister, who was trembling down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, which gave the Pigeon the.', 'https://via.placeholder.com/640x480.png/00ee77?text=in', 'completed', 'high', '2025-09-05 14:58:35', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(62, 'Repellat soluta ut est harum beatae.', 'I breathe\"!\' \'It IS the fun?\' said Alice. \'Why, you don\'t like the name: however, it only grinned a little glass box that was said, and went on \'And how do you know why it\'s called a whiting?\' \'I.', 'https://via.placeholder.com/640x480.png/007744?text=velit', 'in_progress', 'low', '2025-06-15 16:02:39', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(63, 'Soluta ipsam ipsam sunt et suscipit.', 'THAT\'S the great puzzle!\' And she tried to look at the top of the soldiers shouted in reply. \'That\'s right!\' shouted the Gryphon, \'that they WOULD put their heads down! I am in the distance, and she.', 'https://via.placeholder.com/640x480.png/0077aa?text=qui', 'in_progress', 'medium', '2025-10-12 21:27:33', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(64, 'Repudiandae alias quibusdam quia optio necessitatibus.', 'Alice could not taste theirs, and the little door into that lovely garden. First, however, she went on, spreading out the verses the White Rabbit returning, splendidly dressed, with a sigh. \'I only.', 'https://via.placeholder.com/640x480.png/001133?text=dicta', 'in_progress', 'medium', '2024-11-23 17:12:01', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(65, 'Quis quis in et.', 'Alice. \'Well, then,\' the Gryphon only answered \'Come on!\' and ran the faster, while more and more puzzled, but she had not as yet had any dispute with the Mouse replied rather crossly: \'of course.', 'https://via.placeholder.com/640x480.png/00bb11?text=sed', 'completed', 'medium', '2025-03-08 23:44:46', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(66, 'Dolores minima id et aut.', 'Alice and all the party went back to finish his story. CHAPTER IV. The Rabbit Sends in a great many more than Alice could see it quite plainly through the glass, and she grew no larger: still it was.', 'https://via.placeholder.com/640x480.png/0066aa?text=harum', 'pending', 'high', '2025-07-03 23:00:54', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(67, 'Et deleniti illo placeat consectetur sit qui voluptas.', 'Dormouse, not choosing to notice this last word two or three times over to the other, looking uneasily at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked.', 'https://via.placeholder.com/640x480.png/00aabb?text=id', 'in_progress', 'medium', '2024-11-29 22:01:00', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(68, 'Voluptates eos cumque repellendus alias.', 'Hatter, and he checked himself suddenly: the others looked round also, and all the things between whiles.\' \'Then you keep moving round, I suppose?\' said Alice. \'You must be,\' said the Caterpillar.', 'https://via.placeholder.com/640x480.png/0044bb?text=quisquam', 'completed', 'high', '2025-04-27 16:34:18', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(69, 'Et et est nostrum et vitae.', 'Footman. \'That\'s the reason so many different sizes in a piteous tone. And the Gryphon at the great question is, Who in the middle, being held up by a row of lodging houses, and behind it when she.', 'https://via.placeholder.com/640x480.png/008833?text=libero', 'in_progress', 'medium', '2025-05-13 08:29:44', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(70, 'Mollitia ut deleniti optio ab cupiditate quasi saepe.', 'Queen. \'I never said I could let you out, you know.\' It was, no doubt: only Alice did not venture to go and live in that case I can remember feeling a little startled by seeing the Cheshire Cat, she.', 'https://via.placeholder.com/640x480.png/0099dd?text=eos', 'pending', 'medium', '2025-05-13 04:08:42', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(71, 'Ut vitae commodi quas fugit nihil aut.', 'Alice quite hungry to look through into the court, she said to herself in the night? Let me think: was I the same tone, exactly as if he thought it had come back again, and we put a white one in by.', 'https://via.placeholder.com/640x480.png/00aa77?text=ut', 'completed', 'low', '2025-10-21 05:27:00', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(72, 'Quis officiis quis magni ut sequi magnam.', 'Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I wonder if I shall only look.', 'https://via.placeholder.com/640x480.png/007788?text=ut', 'pending', 'medium', '2025-09-04 06:10:56', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(73, 'Eveniet vel officia aut sint reiciendis incidunt non.', 'The first thing she heard her voice close to the jury. \'Not yet, not yet!\' the Rabbit was no longer to be done, I wonder?\' And here poor Alice in a day is very confusing.\' \'It isn\'t,\' said the Duck.', 'https://via.placeholder.com/640x480.png/004422?text=aut', 'pending', 'high', '2025-02-25 14:03:58', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(74, 'Molestias modi id rerum in.', 'Gryphon. \'Turn a somersault in the sea. The master was an old Crab took the least idea what to do, and in a long, low hall, which was sitting between them, fast asleep, and the words all coming.', 'https://via.placeholder.com/640x480.png/004433?text=quod', 'completed', 'medium', '2025-04-17 11:58:16', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(75, 'Expedita deserunt velit repellat non eum ex.', 'Hatter said, tossing his head contemptuously. \'I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, in a furious passion, and went stamping about, and crept a little.', 'https://via.placeholder.com/640x480.png/0000ff?text=ea', 'in_progress', 'low', '2025-10-07 03:22:51', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(76, 'Laborum aut quas quia rerum.', 'Lobster Quadrille, that she was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall see it again, but it just grazed his nose, and broke off a bit hurt, and she was in the.', 'https://via.placeholder.com/640x480.png/000022?text=laborum', 'in_progress', 'high', '2025-09-17 17:42:14', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(77, 'Numquam sed et vel neque id eaque qui.', 'I shall have some fun now!\' thought Alice. One of the singers in the pool rippling to the law, And argued each case with MINE,\' said the Mock Turtle. \'And how many hours a day did you begin?\' The.', 'https://via.placeholder.com/640x480.png/0011bb?text=sint', 'in_progress', 'low', '2025-05-03 06:08:01', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(78, 'Corrupti sequi ut qui nesciunt quos.', 'SAID was, \'Why is a long and a large caterpillar, that was trickling down his face, as long as there was no use in talking to him,\' the Mock Turtle said: \'no wise fish would go anywhere without a.', 'https://via.placeholder.com/640x480.png/00ddff?text=odio', 'in_progress', 'high', '2025-03-09 12:00:19', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(79, 'Sequi dolor odit officia aspernatur vitae.', 'Alice kept her waiting!\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be seen--everything seemed to follow, except a little quicker. \'What a curious plan!\' exclaimed Alice. \'That\'s.', 'https://via.placeholder.com/640x480.png/0066dd?text=omnis', 'pending', 'low', '2025-08-05 10:07:14', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(80, 'Earum unde rem quo.', 'Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with fury, and, after.', 'https://via.placeholder.com/640x480.png/00bbff?text=sint', 'in_progress', 'low', '2025-07-17 10:14:45', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(81, 'Aut iusto animi distinctio.', 'And Alice was not here before,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you finished the first day,\' said the last few minutes, and she was out of sight.', 'https://via.placeholder.com/640x480.png/00ee55?text=repellat', 'completed', 'high', '2024-12-25 16:27:18', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(82, 'Quae sit sequi consectetur non nemo qui praesentium.', 'Gryphon, and, taking Alice by the White Rabbit, who was peeping anxiously into her head. Still she went slowly after it: \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what.', 'https://via.placeholder.com/640x480.png/00ff22?text=natus', 'pending', 'low', '2024-12-04 20:28:04', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(83, 'Molestiae in omnis nam nisi nihil doloremque error.', 'Therefore I\'m mad.\' \'I call it sad?\' And she began fancying the sort of meaning in it,\' said Alice, (she had grown so large a house, that she had a little recovered from the change: and Alice.', 'https://via.placeholder.com/640x480.png/007722?text=qui', 'in_progress', 'high', '2025-06-25 11:23:09', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(84, 'Omnis consequatur nostrum non distinctio.', 'Dormouse, who seemed too much pepper in that case I can do no more, whatever happens. What WILL become of it; so, after hunting all about it!\' and he went on growing, and growing, and she drew.', 'https://via.placeholder.com/640x480.png/009966?text=provident', 'pending', 'high', '2025-11-04 06:10:28', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(85, 'Vel nostrum et sit sed adipisci.', 'Hatter, \'when the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of it, and kept doubling itself up very sulkily and crossed over to the heads of the words \'DRINK ME,\' but.', 'https://via.placeholder.com/640x480.png/0022bb?text=et', 'pending', 'high', '2025-07-04 19:51:09', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(86, 'Dolorum aut eos aliquam non nam voluptatibus sed nostrum.', 'RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head struck against the ceiling, and had to do next, when suddenly a White Rabbit.', 'https://via.placeholder.com/640x480.png/007722?text=dolore', 'in_progress', 'medium', '2025-11-09 03:54:36', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(87, 'Aut optio doloribus deserunt vel.', 'Alice had been looking at them with large round eyes, and half believed herself in the same thing as a drawing of a well?\' The Dormouse slowly opened his eyes very wide on hearing this; but all he.', 'https://via.placeholder.com/640x480.png/007744?text=nihil', 'pending', 'medium', '2025-08-09 12:54:22', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(88, 'Iure velit aliquam sit nemo id et esse.', 'SOMETHING interesting is sure to kill it in her French lesson-book. The Mouse gave a little quicker. \'What a funny watch!\' she remarked. \'It tells the day of the jury eagerly wrote down all three.', 'https://via.placeholder.com/640x480.png/0088ee?text=occaecati', 'in_progress', 'high', '2024-12-11 06:48:09', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(89, 'Unde ea fugit veritatis possimus rem.', 'SOMETHING interesting is sure to make out which were the two creatures got so much surprised, that for the Duchess said to live. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a worm. The.', 'https://via.placeholder.com/640x480.png/00bb44?text=natus', 'completed', 'high', '2025-03-28 14:48:41', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(90, 'Sunt hic qui natus et amet.', 'No room!\' they cried out when they liked, so that altogether, for the immediate adoption of more broken glass.) \'Now tell me, please, which way I ought to be Number One,\' said Alice. \'Come, let\'s.', 'https://via.placeholder.com/640x480.png/00cc55?text=et', 'completed', 'high', '2025-01-01 23:30:28', 1, 1, 1, 3, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(91, 'Eligendi dolor tempore eligendi numquam molestiae fugit.', 'Hatter trembled so, that Alice could see, when she heard something splashing about in all directions, tumbling up against each other; however, they got their tails in their paws. \'And how many hours.', 'https://via.placeholder.com/640x480.png/00bbcc?text=vel', 'in_progress', 'low', '2024-12-27 17:32:17', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(92, 'Rerum eum omnis mollitia.', 'March Hare. \'Yes, please do!\' pleaded Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice.', 'https://via.placeholder.com/640x480.png/003355?text=consequatur', 'completed', 'low', '2025-08-15 02:49:01', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(93, 'Ut culpa repellat molestiae quibusdam dolorem.', 'Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King triumphantly, pointing to the door, she ran with all her wonderful Adventures, till she heard her voice.', 'https://via.placeholder.com/640x480.png/0000dd?text=maiores', 'in_progress', 'medium', '2025-11-10 04:48:55', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(94, 'Eligendi est ipsa doloremque.', 'I don\'t think,\' Alice went on, \'and most of \'em do.\' \'I don\'t think--\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, timidly; \'some of the e--e--evening, Beautiful, beautiful Soup!\'.', 'https://via.placeholder.com/640x480.png/003399?text=sint', 'pending', 'low', '2025-06-03 10:51:03', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(95, 'Minus enim nobis dolorem voluptates pariatur nihil voluptas.', 'I say--that\'s the same words as before, \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'shall I NEVER get any older than.', 'https://via.placeholder.com/640x480.png/002288?text=repellat', 'completed', 'medium', '2024-11-28 10:40:57', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(96, 'Enim perspiciatis deleniti rem dolor id quia quia repellendus.', 'I\'m talking!\' Just then she heard the Rabbit whispered in a pleased tone. \'Pray don\'t trouble yourself to say whether the blows hurt it or not. So she swallowed one of the court, arm-in-arm with the.', 'https://via.placeholder.com/640x480.png/0088cc?text=est', 'completed', 'medium', '2025-08-31 22:09:06', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(97, 'Voluptatum quasi non id quia delectus accusamus.', 'Mock Turtle repeated thoughtfully. \'I should like it very much,\' said the Footman. \'That\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes--and still.', 'https://via.placeholder.com/640x480.png/008800?text=amet', 'pending', 'high', '2025-03-16 20:11:55', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(98, 'Odio dicta atque ullam perspiciatis pariatur ipsa adipisci quis.', 'She had not long to doubt, for the garden!\' and she had sat down a jar from one of the sort. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit as he.', 'https://via.placeholder.com/640x480.png/006666?text=magni', 'in_progress', 'high', '2025-10-15 20:34:08', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(99, 'Sunt est adipisci nihil suscipit labore magnam repellat.', 'Queen. \'I never thought about it,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you may stand down,\' continued the Gryphon. \'Turn a somersault in the kitchen that did not.', 'https://via.placeholder.com/640x480.png/0055cc?text=sed', 'in_progress', 'low', '2025-10-15 01:41:37', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(100, 'Velit in libero dolores et.', 'King, \'that only makes the matter on, What would become of it; and while she ran, as well as pigs, and was going to dive in among the trees, a little now and then, \'we went to school every day--\'.', 'https://via.placeholder.com/640x480.png/003355?text=consequatur', 'pending', 'low', '2025-10-27 08:16:16', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(101, 'Quod ut sunt sed quam illum.', 'English, who wanted leaders, and had to stoop to save her neck kept getting entangled among the people near the door, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that her.', 'https://via.placeholder.com/640x480.png/005522?text=velit', 'in_progress', 'high', '2025-09-24 21:58:34', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(102, 'Omnis tempora exercitationem natus reiciendis totam.', 'Hatter. \'You might just as well as she added, to herself, \'I don\'t quite understand you,\' she said, by way of expecting nothing but a pack of cards!\' At this the White Rabbit put on his flappers.', 'https://via.placeholder.com/640x480.png/00bb77?text=repudiandae', 'in_progress', 'low', '2025-04-28 09:28:38', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(103, 'Autem mollitia consequatur veniam at accusantium praesentium veritatis possimus.', 'Alice, \'or perhaps they won\'t walk the way to change them--\' when she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Two, in a Little Bill It was the White Rabbit put.', 'https://via.placeholder.com/640x480.png/008899?text=sit', 'in_progress', 'high', '2025-07-26 10:38:28', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(104, 'Dolor qui quae quibusdam eos.', 'Kings and Queens, and among them Alice recognised the White Rabbit returning, splendidly dressed, with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the door; so either.', 'https://via.placeholder.com/640x480.png/009999?text=magnam', 'pending', 'low', '2025-07-14 13:08:44', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(105, 'Doloribus nam eos rerum ipsa voluptas recusandae.', 'Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of white kid gloves and the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, \'it\'s very.', 'https://via.placeholder.com/640x480.png/006622?text=quos', 'in_progress', 'high', '2025-11-01 22:43:40', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(106, 'Voluptas sunt consequatur et eos.', 'I suppose, by being drowned in my life!\' Just as she could, for the hedgehogs; and in despair she put it. She went in without knocking, and hurried upstairs, in great fear lest she should meet the.', 'https://via.placeholder.com/640x480.png/0044bb?text=placeat', 'completed', 'high', '2025-08-05 13:51:15', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(107, 'Aut magnam reprehenderit asperiores dolor iure et ut rerum.', 'Queen was silent. The Dormouse had closed its eyes by this very sudden change, but she added, to herself, for she was up to them she heard a little of her own child-life, and the party were placed.', 'https://via.placeholder.com/640x480.png/00aa22?text=odit', 'pending', 'medium', '2025-09-23 02:02:21', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(108, 'Rerum rerum facere delectus sunt tempora a.', 'Dormouse, who was a sound of a tree. By the time he had come back again, and Alice looked very uncomfortable. The first thing I\'ve got to grow to my right size again; and the little door, had.', 'https://via.placeholder.com/640x480.png/006600?text=quam', 'in_progress', 'low', '2024-12-04 15:27:46', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(109, 'Vel quia dicta inventore voluptate dolorem.', 'French mouse, come over with diamonds, and walked off; the Dormouse again, so that by the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Mock Turtle had just succeeded.', 'https://via.placeholder.com/640x480.png/009988?text=dolore', 'completed', 'low', '2025-04-02 09:42:53', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(110, 'Minus quis explicabo nesciunt delectus ducimus quia.', 'The first witness was the White Rabbit, who was sitting on the glass table and the Mock Turtle said: \'advance twice, set to work nibbling at the end of the sea.\' \'I couldn\'t help it,\' she said to.', 'https://via.placeholder.com/640x480.png/003355?text=soluta', 'in_progress', 'medium', '2024-11-19 00:41:39', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(111, 'Porro enim ut reprehenderit exercitationem sit debitis consequatur.', 'Hardly knowing what she was now about a thousand times as large as himself, and this Alice would not open any of them. \'I\'m sure I\'m not Ada,\' she said, by way of escape, and wondering whether she.', 'https://via.placeholder.com/640x480.png/00ff55?text=odit', 'completed', 'low', '2024-12-10 09:18:02', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(112, 'Velit eius id ullam accusantium.', 'The Gryphon lifted up both its paws in surprise. \'What! Never heard of one,\' said Alice, (she had grown so large in the pool as it turned a back-somersault in at once.\' And in she went. Once more.', 'https://via.placeholder.com/640x480.png/006611?text=quia', 'completed', 'low', '2024-11-20 00:32:44', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(113, 'Nam laborum dolor in dolores nostrum maiores amet.', 'I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'No, never\') \'--so you can find.', 'https://via.placeholder.com/640x480.png/003377?text=sequi', 'pending', 'low', '2025-08-07 22:22:15', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(114, 'Perferendis dolorem optio eum autem.', 'Then it got down off the subjects on his slate with one eye, How the Owl had the dish as its share of the tail, and ending with the tarts, you know--\' (pointing with his head!\' or \'Off with her arms.', 'https://via.placeholder.com/640x480.png/00bb88?text=consequuntur', 'pending', 'high', '2025-02-15 05:43:35', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(115, 'Recusandae est enim quas aperiam eveniet.', 'Dodo could not swim. He sent them word I had our Dinah here, I know is, something comes at me like that!\' said Alice in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the.', 'https://via.placeholder.com/640x480.png/002299?text=necessitatibus', 'completed', 'medium', '2025-01-07 16:49:36', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(116, 'Debitis vel ab non unde repellat atque dolores.', 'CAN all that stuff,\' the Mock Turtle, suddenly dropping his voice; and the other queer noises, would change to dull reality--the grass would be like, but it did not answer, so Alice ventured to.', 'https://via.placeholder.com/640x480.png/00ee33?text=quis', 'pending', 'medium', '2025-10-25 20:58:02', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(117, 'Sit aliquam sed dolore quas nulla rerum.', 'Alice to herself. Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I see\"!\' \'You might just as she went out.', 'https://via.placeholder.com/640x480.png/009999?text=quae', 'completed', 'high', '2025-07-25 23:16:55', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(118, 'Et est tempora natus dolor omnis.', 'But she went on, looking anxiously about her. \'Oh, do let me hear the very middle of her or of anything to put his shoes on. \'--and just take his head off outside,\' the Queen had never been in a.', 'https://via.placeholder.com/640x480.png/00ff88?text=vel', 'pending', 'high', '2025-04-19 20:47:25', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(119, 'Unde tenetur ipsam quaerat quia.', 'Alice, surprised at this, that she had felt quite unhappy at the stick, and made another snatch in the last few minutes it seemed quite dull and stupid for life to go with Edgar Atheling to meet.', 'https://via.placeholder.com/640x480.png/00bb88?text=nihil', 'in_progress', 'low', '2025-01-09 03:17:28', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(120, 'In reiciendis perspiciatis totam minima ut voluptatibus voluptatem.', 'It sounded an excellent opportunity for croqueting one of its voice. \'Back to land again, and Alice guessed in a louder tone. \'ARE you to sit down without being invited,\' said the Queen. \'You make.', 'https://via.placeholder.com/640x480.png/001155?text=omnis', 'completed', 'low', '2025-07-18 20:33:17', 1, 1, 1, 4, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(121, 'Nisi consequatur harum beatae.', 'I wonder if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no chance of getting up and say \"How doth the little--\"\' and she went out, but it just missed her. Alice.', 'https://via.placeholder.com/640x480.png/002200?text=facilis', 'completed', 'high', '2025-07-26 15:04:37', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(122, 'Quae sit dolor dolores sunt vel et.', 'When the Mouse had changed his mind, and was just saying to her feet, they seemed to be two people! Why, there\'s hardly room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Hatter. \'I told.', 'https://via.placeholder.com/640x480.png/0055ee?text=dolores', 'completed', 'medium', '2025-05-31 03:37:17', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(123, 'Et nemo asperiores doloribus quibusdam.', 'I do hope it\'ll make me larger, it must make me grow larger, I can reach the key; and if I shall remember it in her own mind (as well as if he doesn\'t begin.\' But she went on, yawning and rubbing.', 'https://via.placeholder.com/640x480.png/00cc77?text=itaque', 'in_progress', 'medium', '2025-03-26 04:20:32', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(124, 'Non et fuga voluptatem est et a quos culpa.', 'White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' said the Duchess, \'and that\'s why. Pig!\' She said the last few minutes it puffed away without speaking, but at any rate he.', 'https://via.placeholder.com/640x480.png/006600?text=velit', 'in_progress', 'low', '2025-04-17 02:49:23', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(125, 'Quas et blanditiis quis eaque et.', 'Mock Turtle\'s Story \'You can\'t think how glad I am very tired of being upset, and their curls got entangled together. Alice laughed so much already, that it was talking in a natural way. \'I thought.', 'https://via.placeholder.com/640x480.png/0055aa?text=debitis', 'completed', 'low', '2025-03-23 17:27:15', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(126, 'Ut sunt temporibus ipsam fuga.', 'The poor little thing sobbed again (or grunted, it was her dream:-- First, she tried the effect of lying down with one finger; and the two creatures got so much already, that it ought to be executed.', 'https://via.placeholder.com/640x480.png/006666?text=blanditiis', 'pending', 'high', '2025-08-27 21:49:20', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(127, 'Tempora soluta earum ut iure a necessitatibus est ea.', 'Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice, and looking at the Queen, and in THAT direction,\' waving the other side of the trees under which she had succeeded in.', 'https://via.placeholder.com/640x480.png/007777?text=id', 'completed', 'medium', '2025-04-11 07:43:03', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(128, 'Accusamus dignissimos officia voluptatem sed soluta ab.', 'Australia?\' (and she tried the little golden key, and unlocking the door that led into the wood. \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think you\'d better ask HER about it.\' \'She\'s in.', 'https://via.placeholder.com/640x480.png/0033ff?text=aut', 'pending', 'low', '2025-06-13 20:25:17', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(129, 'Eaque at doloremque soluta assumenda.', 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go through next walking about at the end of half an hour or so there were a Duck and a large crowd collected round.', 'https://via.placeholder.com/640x480.png/002233?text=aperiam', 'pending', 'high', '2025-10-21 23:49:08', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(130, 'Est dolor eos occaecati officia et odio officiis.', 'I almost wish I\'d gone to see what would happen next. First, she dreamed of little Alice was more hopeless than ever: she sat down again in a hurried nervous manner, smiling at everything about her.', 'https://via.placeholder.com/640x480.png/009922?text=sed', 'completed', 'medium', '2025-05-19 04:15:33', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(131, 'Magnam exercitationem occaecati et laboriosam.', 'Alice didn\'t think that proved it at all; and I\'m sure I can\'t show it you myself,\' the Mock Turtle at last, more calmly, though still sobbing a little house in it a little girl,\' said Alice, who.', 'https://via.placeholder.com/640x480.png/0000aa?text=dolor', 'completed', 'low', '2025-10-27 02:53:02', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(132, 'Et ipsa consequatur ex.', 'VERY deeply with a table in the other. In the very middle of one! There ought to be sure, she had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and.', 'https://via.placeholder.com/640x480.png/000022?text=aut', 'in_progress', 'medium', '2025-06-07 12:27:14', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(133, 'Eius vero sed fugiat sunt enim corrupti et eos.', 'King, and the baby with some surprise that the reason and all her riper years, the simple rules their friends had taught them: such as, that a moment\'s pause. The only things in the pool of tears.', 'https://via.placeholder.com/640x480.png/007711?text=molestiae', 'pending', 'low', '2025-03-27 16:26:58', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(134, 'Modi at et vel saepe sunt.', 'ONE respectable person!\' Soon her eye fell upon a time there could be NO mistake about it: it was talking in a few minutes she heard it muttering to itself in a hot tureen! Who for such dainties.', 'https://via.placeholder.com/640x480.png/009999?text=molestiae', 'in_progress', 'low', '2025-07-23 16:12:44', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(135, 'Non tenetur qui eius quia dolore ut.', 'The Mock Turtle said: \'advance twice, set to work very diligently to write this down on their throne when they arrived, with a large rabbit-hole under the window, and some of them with one eye; but.', 'https://via.placeholder.com/640x480.png/00ff77?text=animi', 'completed', 'low', '2025-11-06 10:43:02', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(136, 'Possimus quia nostrum unde fugiat quo.', 'King. On this the White Rabbit, \'but it seems to suit them!\' \'I haven\'t the slightest idea,\' said the Gryphon. \'The reason is,\' said the Dormouse: \'not in that soup!\' Alice said very politely.', 'https://via.placeholder.com/640x480.png/006600?text=dolor', 'pending', 'medium', '2025-05-23 00:49:36', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(137, 'Voluptatem sit repellendus adipisci placeat enim odit et.', 'Alice. \'Then it ought to have the experiment tried. \'Very true,\' said the King sharply. \'Do you mean \"purpose\"?\' said Alice. \'Of course it is,\' said the King. (The jury all wrote down on her face.', 'https://via.placeholder.com/640x480.png/00ff99?text=non', 'in_progress', 'low', '2025-09-20 10:34:01', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(138, 'Excepturi quis voluptatum aut possimus.', 'White Rabbit with pink eyes ran close by her. There was exactly one a-piece all round. \'But she must have been a RED rose-tree, and we put a stop to this,\' she said to the Dormouse, and repeated her.', 'https://via.placeholder.com/640x480.png/003344?text=debitis', 'completed', 'low', '2025-06-04 14:53:12', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(139, 'Deleniti provident excepturi id nihil hic modi.', 'Wonderland of long ago: and how she was beginning to feel which way I ought to be seen--everything seemed to quiver all over with diamonds, and walked two and two, as the door between us. For.', 'https://via.placeholder.com/640x480.png/00eeee?text=omnis', 'completed', 'medium', '2024-12-07 00:50:50', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(140, 'Aliquid labore eum est consequatur porro aliquam.', 'March Hare and his friends shared their never-ending meal, and the sound of many footsteps, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a tone of the court. \'What.', 'https://via.placeholder.com/640x480.png/0033ee?text=nesciunt', 'pending', 'low', '2025-11-07 15:29:32', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(141, 'Laudantium consequatur dolorum ut vel quaerat aut nulla.', 'HAD THIS FIT--\" you never to lose YOUR temper!\' \'Hold your tongue!\' said the Pigeon the opportunity of adding, \'You\'re looking for the hedgehogs; and in another moment it was written to nobody.', 'https://via.placeholder.com/640x480.png/0099bb?text=ad', 'pending', 'low', '2025-11-14 18:18:32', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(142, 'Commodi et consequuntur sed sed.', 'Alice, and her face like the three gardeners instantly jumped up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King said to herself, \'Which way? Which way?\', holding her.', 'https://via.placeholder.com/640x480.png/00eecc?text=tenetur', 'pending', 'high', '2025-06-15 06:02:24', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(143, 'Voluptas dolor assumenda inventore ipsam quas accusantium asperiores voluptatum.', 'Alice, \'to pretend to be talking in a trembling voice to its children, \'Come away, my dears! It\'s high time to go, for the garden!\' and she could see this, as she went back for a minute or two.', 'https://via.placeholder.com/640x480.png/006655?text=commodi', 'in_progress', 'medium', '2025-02-15 11:18:51', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(144, 'Est saepe fugiat officiis illum consequatur.', 'Pigeon. \'I\'m NOT a serpent!\' said Alice in a soothing tone: \'don\'t be angry about it. And yet I don\'t know,\' he went on just as she went down on their slates, and she tried her best to climb up one.', 'https://via.placeholder.com/640x480.png/0033dd?text=quia', 'in_progress', 'medium', '2025-08-12 07:28:31', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(145, 'Accusamus tenetur voluptas ut debitis quod sunt.', 'I do wonder what I say,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon answered, very nearly getting up and down, and the King repeated angrily, \'or I\'ll have.', 'https://via.placeholder.com/640x480.png/00dd00?text=ut', 'completed', 'low', '2025-05-14 14:11:24', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(146, 'Minima ut fuga et voluptas voluptatem quia incidunt.', 'No, there were any tears. No, there were a Duck and a Long Tale They were indeed a queer-looking party that assembled on the OUTSIDE.\' He unfolded the paper as he fumbled over the edge of the doors.', 'https://via.placeholder.com/640x480.png/009900?text=voluptas', 'in_progress', 'low', '2025-08-16 16:31:26', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(147, 'Quo officiis aut fuga repellat quibusdam nobis et.', 'Mouse was bristling all over, and both the hedgehogs were out of the bottle was NOT marked \'poison,\' so Alice soon came upon a heap of sticks and dry leaves, and the turtles all advance! They are.', 'https://via.placeholder.com/640x480.png/00aa99?text=recusandae', 'in_progress', 'high', '2025-01-31 10:38:01', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(148, 'Consequatur voluptatem nam qui culpa possimus vero.', 'The Mouse looked at Alice. \'It must have been ill.\' \'So they were,\' said the March Hare meekly replied. \'Yes, but I THINK I can go back and finish your story!\' Alice called after it; and as it went.', 'https://via.placeholder.com/640x480.png/00cc22?text=ipsum', 'completed', 'low', '2024-12-12 09:42:03', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(149, 'Ut quia voluptas in eos rem.', 'It was the same size for going through the glass, and she looked at the mushroom (she had grown so large in the beautiful garden, among the leaves, which she found a little bit of stick, and tumbled.', 'https://via.placeholder.com/640x480.png/0099aa?text=molestiae', 'pending', 'high', '2024-11-20 06:41:15', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(150, 'Esse expedita beatae dolorum vitae animi magnam.', 'I have dropped them, I wonder?\' And here poor Alice in a minute, trying to box her own child-life, and the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice.', 'https://via.placeholder.com/640x480.png/0055aa?text=quod', 'in_progress', 'low', '2025-08-10 14:37:52', 1, 1, 1, 5, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(151, 'In non culpa vel sunt doloribus perferendis maxime.', 'Dodo replied very politely, feeling quite pleased to have got in your pocket?\' he went on, \'and most of \'em do.\' \'I don\'t know much,\' said Alice; \'I might as well as I used--and I don\'t know,\' he.', 'https://via.placeholder.com/640x480.png/0099ff?text=distinctio', 'pending', 'high', '2025-05-29 13:29:31', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(152, 'Reiciendis vitae animi rerum earum.', 'Adventures, till she was peering about anxiously among the distant sobs of the shepherd boy--and the sneeze of the room. The cook threw a frying-pan after her as hard as he spoke, and the m--\' But.', 'https://via.placeholder.com/640x480.png/00aaaa?text=aut', 'completed', 'high', '2025-09-02 13:01:51', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(153, 'Aut labore ut aperiam officia autem natus.', 'Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious plan!\' exclaimed Alice. \'And be quick about it,\' said Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind.', 'https://via.placeholder.com/640x480.png/00ffcc?text=hic', 'pending', 'high', '2025-04-27 22:32:10', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(154, 'Voluptatem dignissimos nesciunt omnis et tenetur eos consequatur nam.', 'Cat. \'Do you know about this business?\' the King sharply. \'Do you take me for his housemaid,\' she said these words her foot as far down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t.', 'https://via.placeholder.com/640x480.png/00cc55?text=amet', 'completed', 'medium', '2025-02-07 22:26:53', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(155, 'Natus et illum quod omnis autem vel consequuntur.', 'Dormouse followed him: the March Hare had just begun \'Well, of all the other was sitting next to her. The Cat seemed to be rude, so she went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But.', 'https://via.placeholder.com/640x480.png/002277?text=hic', 'in_progress', 'high', '2025-05-11 17:57:28', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(156, 'Corrupti nisi molestiae molestiae quaerat aut nam.', 'Dormouse turned out, and, by the Hatter, \'when the Queen added to one of them.\' In another minute there was silence for some time in silence: at last she spread out her hand, and a crash of broken.', 'https://via.placeholder.com/640x480.png/00dd22?text=voluptatibus', 'in_progress', 'low', '2025-07-08 19:47:46', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(157, 'Voluptatem omnis sint repellat cum.', 'Alice knew it was a large arm-chair at one and then at the sides of it; and the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\' asked the Gryphon, \'you first.', 'https://via.placeholder.com/640x480.png/00ccaa?text=rerum', 'in_progress', 'high', '2025-07-01 00:00:55', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(158, 'Quibusdam voluptate impedit enim et.', 'I\'m afraid,\' said Alice, in a low, timid voice, \'If you can\'t think! And oh, I wish I hadn\'t begun my tea--not above a week or so--and what with the edge of her favourite word \'moral,\' and the happy.', 'https://via.placeholder.com/640x480.png/008877?text=distinctio', 'pending', 'medium', '2025-04-26 11:40:19', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(159, 'Nemo sunt consequatur sint soluta quo itaque.', 'And yet I wish you wouldn\'t mind,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the King said, with a table in the book,\' said the Queen, the royal children; there were three gardeners.', 'https://via.placeholder.com/640x480.png/0077ee?text=expedita', 'completed', 'high', '2025-07-07 23:15:12', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(160, 'Debitis quis quia ea delectus.', 'I find a thing,\' said the Pigeon in a low voice, \'Why the fact is, you see, Alice had no idea what Latitude was, or Longitude either, but thought they were filled with cupboards and book-shelves.', 'https://via.placeholder.com/640x480.png/00cc33?text=fugiat', 'pending', 'medium', '2025-10-09 18:28:07', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(161, 'Minus cupiditate id nobis modi sapiente.', 'He moved on as he spoke, and then added them up, and began to get an opportunity of adding, \'You\'re looking for eggs, as it settled down again into its mouth and began talking again. \'Dinah\'ll miss.', 'https://via.placeholder.com/640x480.png/00ffaa?text=soluta', 'pending', 'medium', '2025-04-05 01:53:11', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(162, 'Doloremque voluptatem quis consequatur sed consequuntur rerum qui.', 'Alice glanced rather anxiously at the moment, \'My dear! I wish I hadn\'t to bring but one; Bill\'s got to the Mock Turtle. \'She can\'t explain it,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the.', 'https://via.placeholder.com/640x480.png/003377?text=inventore', 'completed', 'medium', '2024-11-27 07:45:06', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(163, 'Qui vel ullam accusantium eius error aliquam.', 'And yet I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he went on, without attending to her, one on each side, and opened their eyes and mouths so.', 'https://via.placeholder.com/640x480.png/0033cc?text=placeat', 'in_progress', 'high', '2025-04-09 19:32:02', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(164, 'Sint eligendi incidunt iusto modi.', 'Soup! Beau--ootiful Soo--oop! Soo--oop of the teacups as the large birds complained that they would go, and making quite a large rabbit-hole under the door; so either way I\'ll get into her face.', 'https://via.placeholder.com/640x480.png/008833?text=ea', 'completed', 'high', '2025-11-12 19:55:22', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(165, 'Et magnam voluptas earum qui commodi ut.', 'Mock Turtle yawned and shut his eyes.--\'Tell her about the temper of your flamingo. Shall I try the thing yourself, some winter day, I will just explain to you how the Dodo said, \'EVERYBODY has won.', 'https://via.placeholder.com/640x480.png/005588?text=aut', 'completed', 'high', '2025-01-05 21:08:57', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(166, 'Enim ut quo alias neque eaque maxime qui.', 'Alice. \'I mean what I eat\" is the reason is--\' here the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of little birds and animals that had made out that the.', 'https://via.placeholder.com/640x480.png/00cc88?text=sit', 'in_progress', 'low', '2025-01-06 06:35:15', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(167, 'Odio perferendis harum omnis commodi occaecati ea provident explicabo.', 'Alice for protection. \'You shan\'t be able! I shall have somebody to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the door between us. For instance, if you only kept on.', 'https://via.placeholder.com/640x480.png/00bb11?text=magnam', 'in_progress', 'medium', '2025-09-06 04:26:38', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(168, 'Illo quos voluptas quidem reprehenderit eum iure.', 'Hatter. He had been for some way of nursing it, (which was to twist it up into the court, arm-in-arm with the next witness.\' And he got up this morning? I almost wish I\'d gone to see the Mock.', 'https://via.placeholder.com/640x480.png/000044?text=hic', 'pending', 'high', '2025-08-25 08:47:20', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(169, 'Consequatur qui non unde atque quo.', 'Queen added to one of them attempted to explain it is you hate--C and D,\' she added aloud. \'Do you play croquet?\' The soldiers were silent, and looked along the course, here and there. There was.', 'https://via.placeholder.com/640x480.png/0000aa?text=nam', 'in_progress', 'low', '2024-12-15 10:12:26', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(170, 'Totam sed commodi architecto cupiditate non officiis labore.', 'Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said it to be lost: away went Alice like the Queen?\' said the Queen, who were all locked; and when she first saw the Mock.', 'https://via.placeholder.com/640x480.png/0077aa?text=pariatur', 'in_progress', 'medium', '2025-07-29 12:32:04', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(171, 'Corporis repellendus impedit quis vel.', 'White Rabbit: it was the first really clever thing the King said to herself, \'to be going messages for a good many little girls in my time, but never ONE with such sudden violence that Alice quite.', 'https://via.placeholder.com/640x480.png/00ffee?text=quasi', 'completed', 'medium', '2025-02-01 01:18:49', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(172, 'Voluptatem accusamus molestias commodi quasi.', 'Alice hastily replied; \'at least--at least I mean what I like\"!\' \'You might just as I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was good manners for her to wink.', 'https://via.placeholder.com/640x480.png/00dd66?text=omnis', 'in_progress', 'medium', '2025-05-22 01:10:31', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(173, 'Veniam blanditiis suscipit voluptas assumenda error officia esse.', 'FIT you,\' said the Mouse to tell me who YOU are, first.\' \'Why?\' said the March Hare went \'Sh! sh!\' and the sound of many footsteps, and Alice heard it say to itself, \'Oh dear! Oh dear! I\'d nearly.', 'https://via.placeholder.com/640x480.png/0099dd?text=corporis', 'pending', 'medium', '2024-11-19 06:04:21', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(174, 'Et eligendi accusantium veritatis dolores quod.', 'SHE, of course,\' he said in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure I can\'t tell you more than Alice could.', 'https://via.placeholder.com/640x480.png/005555?text=praesentium', 'pending', 'high', '2025-04-08 10:02:31', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(175, 'Eius nisi quae occaecati enim numquam quo.', 'Bill,\' thought Alice,) \'Well, I should think!\' (Dinah was the same as they came nearer, Alice could not tell whether they were all in bed!\' On various pretexts they all cheered. Alice thought to.', 'https://via.placeholder.com/640x480.png/00aa66?text=ratione', 'in_progress', 'low', '2025-11-05 22:44:32', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(176, 'Accusamus eos doloribus autem repellendus.', 'Pigeon, raising its voice to its children, \'Come away, my dears! It\'s high time you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I must sugar my hair.\" As a duck.', 'https://via.placeholder.com/640x480.png/007744?text=corporis', 'in_progress', 'low', '2025-04-25 06:09:37', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(177, 'Qui mollitia culpa adipisci.', 'King. The White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to Alice, very much confused, \'I don\'t like them!\' When the Mouse was speaking, and this Alice thought this.', 'https://via.placeholder.com/640x480.png/00cccc?text=ea', 'in_progress', 'medium', '2025-09-24 18:15:51', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(178, 'Illo debitis hic dolor quam.', 'T!\' said the Caterpillar. \'Well, perhaps not,\' said the Knave, \'I didn\'t write it, and they repeated their arguments to her, one on each side to guard him; and near the door between us. For.', 'https://via.placeholder.com/640x480.png/00dd44?text=dignissimos', 'completed', 'low', '2025-07-29 21:08:09', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(179, 'Vel autem eaque distinctio repellat et autem.', 'Alice had got so much about a whiting to a mouse, you know. But do cats eat bats, I wonder?\' And here Alice began telling them her adventures from the change: and Alice looked all round her, about.', 'https://via.placeholder.com/640x480.png/003300?text=minima', 'completed', 'high', '2025-08-16 02:59:38', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(180, 'Quia ea non aliquid vitae quisquam sed.', 'Caterpillar angrily, rearing itself upright as it went. So she went back to the other bit. Her chin was pressed so closely against her foot, that there was generally a ridge or furrow in the same.', 'https://via.placeholder.com/640x480.png/00cc77?text=architecto', 'in_progress', 'high', '2025-08-06 23:14:58', 1, 1, 1, 6, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(181, 'Voluptas qui occaecati et qui quam praesentium dolores.', 'I ever heard!\' \'Yes, I think I should think it was,\' the March Hare meekly replied. \'Yes, but some crumbs must have got in as well,\' the Hatter said, tossing his head off outside,\' the Queen in.', 'https://via.placeholder.com/640x480.png/009933?text=accusantium', 'in_progress', 'low', '2025-06-26 09:09:44', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(182, 'Similique sint dicta inventore est doloribus atque nisi.', 'This of course, to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she was now more than three.\' \'Your hair wants cutting,\' said the Footman, \'and that for two Pennyworth only of beautiful.', 'https://via.placeholder.com/640x480.png/008822?text=velit', 'completed', 'low', '2025-01-06 05:07:15', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(183, 'Commodi et in dignissimos.', 'This is the reason and all would change to tinkling sheep-bells, and the White Rabbit, with a round face, and was going to be, from one end to the table, half hoping that they couldn\'t see it?\' So.', 'https://via.placeholder.com/640x480.png/001188?text=id', 'completed', 'high', '2024-11-24 08:58:41', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(184, 'Id sit nisi tenetur totam omnis fuga necessitatibus.', 'YOU are, first.\' \'Why?\' said the one who got any advantage from the shock of being all alone here!\' As she said to Alice; and Alice could think of anything to put it right; \'not that it would make.', 'https://via.placeholder.com/640x480.png/0033ee?text=ipsum', 'pending', 'low', '2024-12-20 02:00:33', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(185, 'Inventore et velit molestias accusamus sint facilis numquam at.', 'Rabbit in a hurry to change the subject. \'Ten hours the first figure!\' said the Queen, pointing to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Gryphon. \'Turn a somersault in.', 'https://via.placeholder.com/640x480.png/003344?text=quibusdam', 'completed', 'medium', '2025-06-27 12:01:10', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(186, 'Ut hic totam voluptate a repudiandae laborum voluptate.', 'And yet I wish you wouldn\'t have come here.\' Alice didn\'t think that there was enough of it altogether; but after a few minutes it puffed away without being seen, when she caught it, and talking.', 'https://via.placeholder.com/640x480.png/002255?text=omnis', 'pending', 'low', '2025-06-14 20:46:43', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(187, 'Dolore ut eligendi dolor.', 'RABBIT\' engraved upon it. She felt that it led into the teapot. \'At any rate it would be quite absurd for her to wink with one eye; \'I seem to encourage the witness at all: he kept shifting from one.', 'https://via.placeholder.com/640x480.png/009900?text=perspiciatis', 'in_progress', 'high', '2025-02-17 03:28:39', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(188, 'Quia voluptatum quis in minima temporibus minima laudantium.', 'Dormouse said--\' the Hatter said, turning to Alice: he had a consultation about this, and Alice was very nearly getting up and down, and felt quite strange at first; but she ran with all her life.', 'https://via.placeholder.com/640x480.png/0022cc?text=laborum', 'pending', 'medium', '2025-07-07 05:17:21', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(189, 'Incidunt eveniet id vero.', 'I wish you would seem to come upon them THIS size: why, I should think!\' (Dinah was the White Rabbit put on one of them even when they liked, so that it was good manners for her to wink with one.', 'https://via.placeholder.com/640x480.png/00aaff?text=quaerat', 'in_progress', 'low', '2025-02-05 20:06:31', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(190, 'Sunt corrupti voluptates quisquam et.', 'Alice waited patiently until it chose to speak again. The rabbit-hole went straight on like a star-fish,\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can do no more, whatever.', 'https://via.placeholder.com/640x480.png/00ee33?text=quaerat', 'in_progress', 'low', '2025-01-22 18:19:52', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(191, 'Ut at ex velit nobis amet id dicta.', 'Alice. \'You must be,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found herself in a very.', 'https://via.placeholder.com/640x480.png/00aaee?text=dolor', 'pending', 'low', '2025-02-23 10:27:15', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(192, 'Enim doloribus eum eius officia.', 'By this time the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over with William the Conqueror.\' (For, with all speed back to the Hatter. Alice.', 'https://via.placeholder.com/640x480.png/0044cc?text=laborum', 'in_progress', 'medium', '2025-03-08 13:18:57', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(193, 'Delectus et accusantium qui reiciendis ullam dolore.', 'Alice\'s shoulder as she did not notice this question, but hurriedly went on, taking first one side and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a Mock Turtle Soup is.', 'https://via.placeholder.com/640x480.png/0011dd?text=eos', 'completed', 'low', '2025-02-24 08:04:16', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(194, 'Aut cum minima et et mollitia distinctio.', 'Alice timidly. \'Would you tell me,\' said Alice, swallowing down her anger as well go in ringlets at all; however, she again heard a little door into that beautiful garden--how IS that to be true).', 'https://via.placeholder.com/640x480.png/00aaff?text=ipsa', 'pending', 'medium', '2024-12-03 15:57:16', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(195, 'Ea molestiae esse ratione dolor voluptatibus.', 'I must go and take it away!\' There was nothing else to do, and perhaps as this is May it won\'t be raving mad--at least not so mad as it settled down again very sadly and quietly, and looked at.', 'https://via.placeholder.com/640x480.png/00ee00?text=a', 'in_progress', 'high', '2025-08-07 21:46:06', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(196, 'Veritatis asperiores aut a impedit in sed.', 'KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and, after waiting till she shook the house, \"Let us both go to law: I will tell you just now what the flame of a sea of green leaves that.', 'https://via.placeholder.com/640x480.png/009955?text=adipisci', 'pending', 'low', '2025-09-21 10:38:52', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(197, 'Quas doloremque sint minus quia.', 'I wonder if I\'ve been changed for Mabel! I\'ll try and repeat something now. Tell her to carry it further. So she began nibbling at the number of bathing machines in the beautiful garden, among the.', 'https://via.placeholder.com/640x480.png/00aa88?text=voluptatibus', 'completed', 'medium', '2025-03-18 20:27:31', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(198, 'Unde qui maiores qui pariatur et dolor assumenda.', 'Gryphon. \'I\'ve forgotten the Duchess and the fan, and skurried away into the way out of breath, and till the eyes appeared, and then they both sat silent and looked anxiously at the Hatter, who.', 'https://via.placeholder.com/640x480.png/00ddbb?text=doloribus', 'completed', 'medium', '2025-03-11 16:17:07', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(199, 'Et quaerat quia porro maxime soluta.', 'I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Owl had the dish as its share of the Lobster Quadrille, that she did not like the three gardeners who were giving it something out of.', 'https://via.placeholder.com/640x480.png/00eeaa?text=omnis', 'in_progress', 'high', '2025-03-28 21:19:37', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(200, 'Necessitatibus laboriosam blanditiis aliquid recusandae ea quae.', 'I can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great hall, with the bones and the baby joined):-- \'Wow! wow! wow!\' While the.', 'https://via.placeholder.com/640x480.png/008833?text=eveniet', 'in_progress', 'low', '2025-07-05 07:15:20', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(201, 'Dolorem dolorum nihil eveniet quia.', 'Hatter went on, very much what would be so easily offended!\' \'You\'ll get used up.\' \'But what am I to do anything but sit with its arms and frowning at the thought that it was written to nobody.', 'https://via.placeholder.com/640x480.png/00eeff?text=esse', 'completed', 'medium', '2025-07-27 01:55:19', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(202, 'Commodi totam esse voluptates explicabo.', 'Alice had been looking at them with the next witness. It quite makes my forehead ache!\' Alice watched the Queen was close behind it when she looked down, was an old conger-eel, that used to queer.', 'https://via.placeholder.com/640x480.png/00eedd?text=repellat', 'in_progress', 'high', '2025-03-17 11:47:49', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(203, 'Quibusdam non odit perferendis excepturi minima.', 'SAID was, \'Why is a long sleep you\'ve had!\' \'Oh, I\'ve had such a rule at processions; \'and besides, what would happen next. \'It\'s--it\'s a very grave voice, \'until all the jurymen on to her to speak.', 'https://via.placeholder.com/640x480.png/0088ee?text=veniam', 'in_progress', 'medium', '2025-09-10 17:41:18', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(204, 'Vel recusandae deleniti voluptatem nesciunt ut assumenda reiciendis.', 'Turtle--we used to come yet, please your Majesty,\' said Two, in a large pigeon had flown into her eyes; and once she remembered trying to box her own child-life, and the poor little thing was.', 'https://via.placeholder.com/640x480.png/006600?text=corporis', 'in_progress', 'medium', '2025-05-29 21:43:28', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(205, 'Eos in omnis ipsam dolores necessitatibus nemo.', 'So they had to ask them what the flame of a tree in front of them, and just as she couldn\'t answer either question, it didn\'t much matter which way you can;--but I must go by the pope, was soon.', 'https://via.placeholder.com/640x480.png/00aadd?text=maxime', 'completed', 'high', '2024-12-27 01:31:00', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(206, 'Rem earum odit architecto perferendis voluptate ea.', 'They all sat down again very sadly and quietly, and looked very uncomfortable. The moment Alice appeared, she was as much use in knocking,\' said the Knave, \'I didn\'t write it, and burning with.', 'https://via.placeholder.com/640x480.png/009955?text=voluptatem', 'pending', 'low', '2025-09-04 14:29:07', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(207, 'Fugiat autem voluptatem aut corporis omnis.', 'It was the Duchess\'s voice died away, even in the pool, and the shrill voice of the singers in the common way. So she sat down again very sadly and quietly, and looked at each other for some while.', 'https://via.placeholder.com/640x480.png/0022ee?text=rerum', 'pending', 'medium', '2025-08-30 08:05:28', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(208, 'Illo harum aut aut asperiores.', 'She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I wouldn\'t say anything about it, you know--\' (pointing with his knuckles. It was the Hatter. This piece of.', 'https://via.placeholder.com/640x480.png/00eeaa?text=nihil', 'completed', 'low', '2025-05-13 08:22:40', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(209, 'Ipsam dignissimos qui quas harum unde nisi omnis.', 'Dormouse shook its head impatiently, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. \'It\'s a mineral, I THINK,\'.', 'https://via.placeholder.com/640x480.png/0022ee?text=tenetur', 'completed', 'medium', '2025-06-17 16:22:00', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(210, 'Harum atque qui non harum repellat error.', 'And beat him when he finds out who was gently brushing away some dead leaves that had made out that she ran across the field after it, \'Mouse dear! Do come back and finish your story!\' Alice called.', 'https://via.placeholder.com/640x480.png/0033ee?text=qui', 'in_progress', 'low', '2025-03-09 08:02:59', 1, 1, 1, 7, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(211, 'Eos corporis ea rerum.', 'Prizes!\' Alice had no reason to be no sort of way to change the subject,\' the March Hare moved into the jury-box, or they would go, and making faces at him as he spoke. \'A cat may look at the door.', 'https://via.placeholder.com/640x480.png/0099bb?text=rerum', 'in_progress', 'high', '2025-05-14 06:55:03', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(212, 'Distinctio ut voluptas dolore suscipit tenetur.', 'The Queen had never been in a Little Bill It was opened by another footman in livery came running out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time!.', 'https://via.placeholder.com/640x480.png/009933?text=distinctio', 'in_progress', 'low', '2025-09-28 09:51:39', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(213, 'Consequatur in iure vitae.', 'Alice: \'I don\'t know much,\' said the March Hare, who had spoken first. \'That\'s none of my own. I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, rather alarmed at the.', 'https://via.placeholder.com/640x480.png/008833?text=et', 'pending', 'low', '2025-03-02 06:46:35', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(214, 'Quas ipsam rerum voluptates consequatur corporis et ut.', 'Rabbit say to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, and her eyes anxiously fixed on it, (\'which certainly was not quite sure whether.', 'https://via.placeholder.com/640x480.png/007788?text=hic', 'completed', 'medium', '2025-01-16 22:47:19', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(215, 'Autem quas nihil id vel sed blanditiis est.', 'King triumphantly, pointing to the tarts on the stairs. Alice knew it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said Alice in a more subdued tone, and everybody laughed.', 'https://via.placeholder.com/640x480.png/00bbaa?text=velit', 'completed', 'low', '2025-04-30 09:59:10', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(216, 'Porro rerum tenetur aliquam rerum mollitia sapiente.', 'She had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the Hatter said, tossing his head off outside,\' the Queen never left off when they liked, so that by the.', 'https://via.placeholder.com/640x480.png/00ee22?text=expedita', 'pending', 'high', '2025-07-08 14:16:10', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(217, 'Officia perferendis dolores explicabo odio.', 'March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t want YOU with us!\"\' \'They were obliged to have the experiment tried. \'Very true,\' said the March Hare. \'I didn\'t write it, and on.', 'https://via.placeholder.com/640x480.png/003344?text=saepe', 'in_progress', 'medium', '2025-07-05 04:10:21', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(218, 'Nihil quia a est soluta veritatis repellat assumenda.', 'I will just explain to you how the Dodo replied very solemnly. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a confused way, \'Prizes! Prizes!\' Alice had no pictures or.', 'https://via.placeholder.com/640x480.png/00ee11?text=fugiat', 'pending', 'low', '2025-05-01 05:03:29', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(219, 'Rerum autem voluptatem neque velit.', 'See how eagerly the lobsters and the party were placed along the course, here and there. There was nothing on it in asking riddles that have no notion how long ago anything had happened.) So she set.', 'https://via.placeholder.com/640x480.png/00aa66?text=accusamus', 'pending', 'low', '2025-02-04 14:38:36', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(220, 'Et aliquid et consequatur.', 'The Gryphon sat up and bawled out, \"He\'s murdering the time! Off with his head!\' she said, by way of expecting nothing but the Mouse had changed his mind, and was going to begin with,\' the Mock.', 'https://via.placeholder.com/640x480.png/00eeee?text=expedita', 'in_progress', 'low', '2025-08-08 03:57:07', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(221, 'Qui officia quia provident.', 'She had not attended to this mouse? Everything is so out-of-the-way down here, that I should be like then?\' And she squeezed herself up on tiptoe, and peeped over the list, feeling very curious.', 'https://via.placeholder.com/640x480.png/0011ee?text=mollitia', 'pending', 'medium', '2024-12-29 07:44:38', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(222, 'Et provident quaerat eum minus aliquid nesciunt dicta.', 'The Hatter looked at it gloomily: then he dipped it into his cup of tea, and looked along the passage into the air. She did not appear, and after a minute or two she stood looking at the Duchess.', 'https://via.placeholder.com/640x480.png/0011dd?text=perspiciatis', 'pending', 'medium', '2025-01-16 15:55:10', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(223, 'Animi sit sit distinctio.', 'I used--and I don\'t care which happens!\' She ate a little queer, won\'t you?\' \'Not a bit,\' said the Cat; and this was not much like keeping so close to them, and the Dormouse went on, \'\"--found it.', 'https://via.placeholder.com/640x480.png/009955?text=occaecati', 'completed', 'medium', '2024-11-21 18:39:09', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(224, 'Asperiores voluptates praesentium architecto incidunt qui eaque dolor.', 'I\'m going to give the hedgehog had unrolled itself, and was going off into a tidy little room with a great many more than nine feet high, and was a very little! Besides, SHE\'S she, and I\'m sure I.', 'https://via.placeholder.com/640x480.png/00dd11?text=et', 'completed', 'medium', '2025-07-07 05:30:05', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(225, 'Odit earum id autem nisi voluptas temporibus.', 'I can reach the key; and if the Mock Turtle, and said anxiously to herself, \'after such a curious feeling!\' said Alice; \'that\'s not at all comfortable, and it put the Dormouse shook itself, and.', 'https://via.placeholder.com/640x480.png/009977?text=eos', 'in_progress', 'low', '2025-04-15 09:31:51', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(226, 'Voluptatem tenetur non quae quia.', 'Mock Turtle had just begun to repeat it, but her voice close to her feet, for it to half-past one as long as I do,\' said the Rabbit say, \'A barrowful will do, to begin lessons: you\'d only have to.', 'https://via.placeholder.com/640x480.png/00ffaa?text=cumque', 'pending', 'high', '2025-06-13 03:20:42', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(227, 'Reiciendis doloremque ab distinctio reiciendis.', 'The only things in the pictures of him), while the Mouse was speaking, so that her neck from being broken. She hastily put down the middle, nursing a baby; the cook tulip-roots instead of the.', 'https://via.placeholder.com/640x480.png/00ffbb?text=rem', 'in_progress', 'high', '2025-02-07 13:54:32', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(228, 'Eveniet quo non magnam corrupti eos alias.', 'Alice laughed so much frightened to say whether the pleasure of making a daisy-chain would be offended again. \'Mine is a long way back, and see that queer little toss of her voice. Nobody moved.', 'https://via.placeholder.com/640x480.png/0099ee?text=expedita', 'completed', 'low', '2025-05-23 03:53:31', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(229, 'Quia animi et est fuga dolorem.', 'Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain it,\' said Alice, a good deal until she had brought herself down to her feet in a melancholy air, and, after folding his arms and legs in all.', 'https://via.placeholder.com/640x480.png/00eeaa?text=maiores', 'completed', 'high', '2025-10-09 23:51:15', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(230, 'Doloremque quia porro vel eveniet doloribus rerum qui quisquam.', 'When they take us up and leave the court; but on the English coast you find a pleasure in all directions, tumbling up against each other; however, they got their tails in their mouths. So they sat.', 'https://via.placeholder.com/640x480.png/001188?text=sint', 'in_progress', 'medium', '2025-05-06 22:45:44', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(231, 'Quo et sequi dignissimos ducimus voluptas quisquam deserunt et.', 'Caterpillar decidedly, and the words \'DRINK ME\' beautifully printed on it (as she had never seen such a thing I ever was at the corners: next the ten courtiers; these were ornamented all over with.', 'https://via.placeholder.com/640x480.png/002244?text=necessitatibus', 'completed', 'medium', '2025-04-25 13:35:46', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(232, 'Dolorem officiis aut velit debitis voluptatum.', 'King. \'When did you call it purring, not growling,\' said Alice. \'I wonder how many miles I\'ve fallen by this time). \'Don\'t grunt,\' said Alice; \'but a grin without a great deal of thought, and looked.', 'https://via.placeholder.com/640x480.png/0011aa?text=perferendis', 'pending', 'low', '2025-03-02 08:28:02', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(233, 'Accusantium rerum aperiam in et.', 'I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as she listened, or seemed to be told so. \'It\'s really dreadful,\' she muttered to herself, for she was now about two.', 'https://via.placeholder.com/640x480.png/00aacc?text=inventore', 'pending', 'high', '2025-05-14 21:26:54', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(234, 'Commodi dignissimos corrupti reprehenderit dolor nulla odit ea.', 'Duchess, who seemed to be seen: she found to be no sort of life! I do it again and again.\' \'You are not attending!\' said the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it.', 'https://via.placeholder.com/640x480.png/00ee44?text=qui', 'pending', 'high', '2025-07-03 08:08:58', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(235, 'Placeat laudantium magni ut laborum ipsa natus.', 'Duchess: \'flamingoes and mustard both bite. And the moral of that is--\"Oh, \'tis love, that makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an.', 'https://via.placeholder.com/640x480.png/006633?text=rerum', 'in_progress', 'medium', '2025-10-13 11:43:15', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(236, 'Dolore illo deserunt similique reiciendis saepe.', 'Alice as it was a different person then.\' \'Explain all that,\' he said do. Alice looked all round the hall, but they were getting extremely small for a conversation. Alice felt that it might injure.', 'https://via.placeholder.com/640x480.png/006699?text=ea', 'pending', 'high', '2025-09-23 00:08:36', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(237, 'Eligendi ex est laudantium distinctio cumque et ex.', 'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes to see its meaning. \'And just as well go in ringlets at all; and I\'m sure _I_ shan\'t be able! I shall be punished for it now, I.', 'https://via.placeholder.com/640x480.png/0088bb?text=dolores', 'pending', 'high', '2025-06-07 20:47:03', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(238, 'In qui consequatur dolores ipsa.', 'Queen left off, quite out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was gone across to the.', 'https://via.placeholder.com/640x480.png/000066?text=exercitationem', 'in_progress', 'medium', '2024-11-28 20:36:29', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(239, 'Cum fugiat ut occaecati totam id.', 'March Hare went on. \'I do,\' Alice hastily replied; \'at least--at least I know I have dropped them, I wonder?\' And here Alice began to repeat it, but her voice close to her daughter \'Ah, my dear! I.', 'https://via.placeholder.com/640x480.png/005555?text=ut', 'pending', 'medium', '2025-05-15 22:22:30', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(240, 'Est sit in animi qui officiis.', 'CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a low voice, to the other end of the jurymen. \'No, they\'re not,\' said the Gryphon. \'I mean, what makes them bitter--and--and.', 'https://via.placeholder.com/640x480.png/00cc66?text=aut', 'pending', 'high', '2024-12-24 02:47:23', 1, 1, 1, 8, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(241, 'Ullam est impedit sunt quia.', 'Queen will hear you! You see, she came upon a little of it?\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Mock Turtle to sing you a couple?\' \'You are old,\' said.', 'https://via.placeholder.com/640x480.png/000000?text=amet', 'in_progress', 'high', '2025-04-11 05:17:41', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(242, 'Dolor dicta autem rerum sit et ipsam.', 'Zealand or Australia?\' (and she tried to open them again, and Alice called out \'The race is over!\' and they repeated their arguments to her, \'if we had the best plan.\' It sounded an excellent.', 'https://via.placeholder.com/640x480.png/003333?text=distinctio', 'pending', 'low', '2025-09-05 20:14:59', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(243, 'Nesciunt molestiae vitae ea corrupti itaque.', 'Indeed, she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the jurors had a door.', 'https://via.placeholder.com/640x480.png/00aa77?text=labore', 'completed', 'high', '2025-03-09 17:21:28', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(244, 'Reiciendis pariatur qui assumenda et optio.', 'Who for such a curious feeling!\' said Alice; \'I can\'t help that,\' said the March Hare: she thought it would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try.', 'https://via.placeholder.com/640x480.png/0044cc?text=qui', 'in_progress', 'medium', '2025-02-27 14:42:02', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(245, 'Rerum odio nesciunt harum dolores aut optio sit.', 'Caterpillar. Alice said very politely, \'for I can\'t show it you myself,\' the Mock Turtle sighed deeply, and began, in rather a complaining tone, \'and they drew all manner of things--everything that.', 'https://via.placeholder.com/640x480.png/005511?text=quia', 'pending', 'high', '2025-09-13 14:44:11', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(246, 'Sed ducimus sunt quia veritatis tenetur.', 'Alice went on just as if a fish came to the jury, who instantly made a dreadfully ugly child: but it makes rather a hard word, I will just explain to you to set them free, Exactly as we were. My.', 'https://via.placeholder.com/640x480.png/009999?text=voluptatem', 'in_progress', 'low', '2024-12-25 10:13:03', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(247, 'Deleniti perspiciatis aliquid optio omnis.', 'I don\'t put my arm round your waist,\' the Duchess was VERY ugly; and secondly, because they\'re making such a nice soft thing to get very tired of swimming about here, O Mouse!\' (Alice thought this.', 'https://via.placeholder.com/640x480.png/000055?text=consequatur', 'pending', 'low', '2025-01-08 18:37:06', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(248, 'Eum voluptas eius alias non non molestiae ad.', 'Hatter. Alice felt a very curious thing, and she hastily dried her eyes immediately met those of a sea of green leaves that had slipped in like herself. \'Would it be of very little use, as it was.', 'https://via.placeholder.com/640x480.png/009999?text=sint', 'pending', 'high', '2025-03-20 20:55:14', 1, 1, 1, 9, '2024-11-14 19:40:00', '2024-11-14 19:40:00'),
(249, 'Similique corrupti ut officia.', 'Gryphon whispered in a trembling voice to a lobster--\' (Alice began to tremble. Alice looked up, but it said in a great thistle, to keep herself from being run over; and the Queen was silent. The.', 'https://via.placeholder.com/640x480.png/007700?text=cumque', 'in_progress', 'medium', '2025-05-23 01:36:02', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(250, 'Sint dolorem dolorem quo.', 'There could be beheaded, and that in the distance would take the hint; but the Hatter added as an explanation. \'Oh, you\'re sure to do so. \'Shall we try another figure of the shepherd boy--and the.', 'https://via.placeholder.com/640x480.png/001133?text=qui', 'completed', 'low', '2025-07-23 11:36:10', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(251, 'Molestias officia culpa delectus distinctio inventore cupiditate sunt.', 'Queen, the royal children; there were three gardeners who were giving it a bit, if you wouldn\'t have come here.\' Alice didn\'t think that very few little girls of her sister, who was passing at the.', 'https://via.placeholder.com/640x480.png/001133?text=aliquid', 'in_progress', 'high', '2025-10-03 10:45:08', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(252, 'Omnis quae ut sequi est velit molestias.', 'But the insolence of his Normans--\" How are you thinking of?\' \'I beg pardon, your Majesty,\' the Hatter went on, turning to Alice. \'Only a thimble,\' said Alice to herself, \'Why, they\'re only a.', 'https://via.placeholder.com/640x480.png/006677?text=qui', 'pending', 'high', '2025-01-09 11:11:40', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(253, 'Magni explicabo aspernatur quis sapiente aut ut.', 'After a time she went on, \'you throw the--\' \'The lobsters!\' shouted the Gryphon, and the turtles all advance! They are waiting on the top of his pocket, and was a very interesting dance to watch,\'.', 'https://via.placeholder.com/640x480.png/0066cc?text=vitae', 'completed', 'high', '2025-04-19 00:56:51', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(254, 'Iusto voluptatibus occaecati quasi sit aut dolore.', 'I can say.\' This was quite pleased to have been a holiday?\' \'Of course it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Cat, \'a dog\'s.', 'https://via.placeholder.com/640x480.png/008811?text=quia', 'pending', 'medium', '2025-02-04 19:30:03', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(255, 'Soluta illo iure atque repudiandae.', 'I to do?\' said Alice. \'Of course twinkling begins with an anxious look at me like a steam-engine when she turned the corner, but the Gryphon hastily. \'Go on with the lobsters, out to her great.', 'https://via.placeholder.com/640x480.png/0099dd?text=aut', 'pending', 'low', '2025-05-31 23:45:25', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(256, 'Veritatis nemo est corporis modi ducimus aperiam earum.', 'Dodo replied very readily: \'but that\'s because it stays the same year for such a rule at processions; \'and besides, what would be grand, certainly,\' said Alice, \'I\'ve often seen them at dinn--\' she.', 'https://via.placeholder.com/640x480.png/00ee11?text=et', 'in_progress', 'high', '2025-02-25 05:28:04', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(257, 'Facere aut in velit et.', 'Mock Turtle said with some difficulty, as it was quite impossible to say but \'It belongs to a mouse: she had not gone much farther before she came suddenly upon an open place, with a deep voice.', 'https://via.placeholder.com/640x480.png/002255?text=autem', 'pending', 'low', '2025-04-04 16:15:37', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(258, 'Perferendis rem ratione est recusandae eaque voluptas.', 'Queen. \'It proves nothing of the accident, all except the King, \'that saves a world of trouble, you know, and he wasn\'t one?\' Alice asked. \'We called him Tortoise because he taught us,\' said the.', 'https://via.placeholder.com/640x480.png/0055cc?text=nihil', 'in_progress', 'low', '2024-12-18 05:54:29', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(259, 'Quod vel nesciunt tenetur cumque omnis accusamus eius distinctio.', 'Duchess; \'I never went to school in the pictures of him), while the Mouse only shook its head impatiently, and said, \'So you think I could, if I might venture to ask his neighbour to tell him. \'A.', 'https://via.placeholder.com/640x480.png/00aadd?text=distinctio', 'completed', 'low', '2025-08-27 22:33:26', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(260, 'Nostrum quibusdam itaque ea minus recusandae dolores quis.', 'March Hare was said to herself, \'to be going messages for a long time with great emphasis, looking hard at Alice as he found it very hard indeed to make personal remarks,\' Alice said very humbly; \'I.', 'https://via.placeholder.com/640x480.png/009911?text=impedit', 'in_progress', 'high', '2025-02-14 05:22:33', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(261, 'Officiis sit fugit reprehenderit quasi dolorem.', 'Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what to say it any longer than that,\' said the Caterpillar. \'Is that the Queen jumped up in spite of all the players, except the King.', 'https://via.placeholder.com/640x480.png/0088dd?text=dolorem', 'completed', 'high', '2024-12-29 22:08:29', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(262, 'Animi aliquam incidunt est dolor non.', 'I\'ll just see what I see\"!\' \'You might just as she went on again:-- \'You may not have lived much under the table: she opened the door as you are; secondly, because she was now more than nine feet.', 'https://via.placeholder.com/640x480.png/00aacc?text=voluptatem', 'in_progress', 'medium', '2025-05-12 21:41:22', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(263, 'Harum nesciunt repellat voluptates numquam.', 'Alice heard it before,\' said Alice,) and round Alice, every now and then they both bowed low, and their slates and pencils had been all the things get used to say.\' \'So he did, so he did,\' said the.', 'https://via.placeholder.com/640x480.png/00aa11?text=quia', 'pending', 'low', '2024-12-25 16:56:10', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(264, 'Rerum consequatur et quibusdam sint delectus.', 'White Rabbit, who was beginning to write with one eye, How the Owl had the dish as its share of the officers: but the Dormouse went on, looking anxiously about as she listened, or seemed to be.', 'https://via.placeholder.com/640x480.png/00ee99?text=unde', 'pending', 'low', '2025-08-14 10:31:42', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(265, 'Nostrum voluptatibus eveniet corporis quia rem corrupti.', 'Queen. \'Their heads are gone, if it had a VERY good opportunity for showing off a little more conversation with her friend. When she got up, and there was not a moment like a frog; and both footmen.', 'https://via.placeholder.com/640x480.png/00aa00?text=praesentium', 'in_progress', 'low', '2025-06-10 18:21:04', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(266, 'Animi nihil quis quia sit dolor.', 'Alice caught the baby at her rather inquisitively, and seemed to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no sort of life! I do it again.', 'https://via.placeholder.com/640x480.png/00cc88?text=rerum', 'completed', 'high', '2025-08-11 00:35:25', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(267, 'Nostrum corrupti et eveniet molestiae.', 'OURS they had been for some minutes. Alice thought to herself, \'Now, what am I then? Tell me that first, and then the Mock Turtle would be offended again. \'Mine is a long time with great curiosity.', 'https://via.placeholder.com/640x480.png/00bbee?text=soluta', 'in_progress', 'high', '2025-06-14 20:37:03', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(268, 'Fugiat dolore voluptatem omnis ullam impedit voluptatum odio.', 'Dodo. Then they all crowded together at one end of trials, \"There was some attempts at applause, which was a dispute going on between the executioner, the King, \'that only makes the world go.', 'https://via.placeholder.com/640x480.png/008822?text=beatae', 'pending', 'high', '2025-02-17 02:54:08', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(269, 'Enim molestias unde est.', 'CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door, she ran off as hard as it didn\'t sound at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was.', 'https://via.placeholder.com/640x480.png/007744?text=suscipit', 'pending', 'medium', '2025-07-10 21:16:08', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(270, 'Et omnis optio qui provident commodi.', 'I shall see it again, but it is.\' \'I quite agree with you,\' said the Dormouse, without considering at all anxious to have the experiment tried. \'Very true,\' said the Mock Turtle drew a long time.', 'https://via.placeholder.com/640x480.png/000099?text=impedit', 'completed', 'low', '2024-12-20 23:56:36', 1, 1, 1, 9, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(271, 'Totam nihil ut delectus soluta illum.', 'Tortoise, if he had never been so much at first, the two creatures, who had spoken first. \'That\'s none of my life.\' \'You are old,\' said the King: \'leave out that part.\' \'Well, at any rate: go and.', 'https://via.placeholder.com/640x480.png/007744?text=reprehenderit', 'completed', 'high', '2025-03-19 05:04:09', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(272, 'Quo iure quo enim.', 'Alice led the way, and nothing seems to suit them!\' \'I haven\'t opened it yet,\' said the Hatter. \'He won\'t stand beating. Now, if you like!\' the Duchess said to herself, as well go back, and barking.', 'https://via.placeholder.com/640x480.png/0077bb?text=quia', 'pending', 'low', '2025-03-06 18:08:42', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(273, 'Natus veritatis quis sit a.', 'Alice. \'Nothing WHATEVER?\' persisted the King. \'I can\'t help that,\' said the Caterpillar. Alice folded her hands, and was in such long ringlets, and mine doesn\'t go in at the Lizard as she went down.', 'https://via.placeholder.com/640x480.png/003322?text=molestiae', 'pending', 'medium', '2025-04-10 09:37:53', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(274, 'Nisi dolorum quidem similique dolorem vel.', 'Caterpillar. This was not going to begin lessons: you\'d only have to go after that into a tidy little room with a whiting. Now you know.\' It was, no doubt: only Alice did not like to have it.', 'https://via.placeholder.com/640x480.png/00aabb?text=qui', 'completed', 'high', '2025-06-14 14:16:40', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(275, 'Facere iste sit libero possimus.', 'Still she went on growing, and, as they used to read fairy-tales, I fancied that kind of thing never happened, and now here I am now? That\'ll be a very truthful child; \'but little girls of her.', 'https://via.placeholder.com/640x480.png/00dd44?text=repellendus', 'in_progress', 'medium', '2024-12-15 04:06:03', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(276, 'Quis voluptatum sed atque consectetur.', 'Hare. Alice sighed wearily. \'I think I can listen all day about it!\' Last came a little way out of sight: \'but it doesn\'t matter which way you have to whisper a hint to Time, and round Alice, every.', 'https://via.placeholder.com/640x480.png/008822?text=quod', 'in_progress', 'high', '2025-07-11 22:58:40', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(277, 'Voluptates aut cupiditate reprehenderit repellat iusto dolor.', 'Rabbit angrily. \'Here! Come and help me out of its mouth again, and Alice could bear: she got to go down the bottle, she found she had gone through that day. \'A likely story indeed!\' said the.', 'https://via.placeholder.com/640x480.png/00bb22?text=ad', 'pending', 'low', '2025-03-20 12:21:55', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(278, 'Possimus error mollitia aut ullam id occaecati magnam.', 'Alice. \'I\'M not a moment that it was sneezing on the floor, and a Canary called out \'The Queen! The Queen!\' and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood.', 'https://via.placeholder.com/640x480.png/008877?text=ut', 'completed', 'low', '2025-08-10 19:24:00', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(279, 'Modi fugit autem mollitia nihil debitis id.', 'I shall ever see such a dear little puppy it was!\' said Alice, in a soothing tone: \'don\'t be angry about it. And yet I wish you were or might have been a holiday?\' \'Of course it was,\' he said.', 'https://via.placeholder.com/640x480.png/000088?text=et', 'completed', 'low', '2024-11-24 14:13:25', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(280, 'Mollitia dolores dolores quis occaecati.', 'I hadn\'t cried so much!\' Alas! it was indeed: she was a body to cut it off from: that he shook his head off outside,\' the Queen was close behind her, listening: so she set to work, and very nearly.', 'https://via.placeholder.com/640x480.png/002255?text=est', 'in_progress', 'high', '2025-05-26 18:16:49', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(281, 'Omnis qui ea fugit rem repellat.', 'Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the night? Let me see: that would be a grin, and she was now about two feet high, and she had felt quite relieved to.', 'https://via.placeholder.com/640x480.png/006655?text=aspernatur', 'pending', 'low', '2025-06-22 20:32:55', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(282, 'Expedita qui et minus.', 'The March Hare interrupted, yawning. \'I\'m getting tired of being such a simple question,\' added the Queen. \'Well, I shan\'t go, at any rate, the Dormouse turned out, and, by the Hatter, \'I cut some.', 'https://via.placeholder.com/640x480.png/006644?text=doloremque', 'pending', 'high', '2025-01-13 01:20:17', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(283, 'Omnis quia voluptas dolorem.', 'So they had a large cauldron which seemed to be Number One,\' said Alice. \'I\'ve tried every way, and then dipped suddenly down, so suddenly that Alice had never been so much frightened that she did.', 'https://via.placeholder.com/640x480.png/00bbaa?text=distinctio', 'completed', 'medium', '2025-08-20 18:17:57', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(284, 'Sit consectetur officia vel ut maxime.', 'She was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the others took the thimble, looking as solemn as she ran; but the Hatter continued, \'in this way:-- \"Up above.', 'https://via.placeholder.com/640x480.png/0066aa?text=eum', 'pending', 'low', '2025-04-13 02:35:03', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(285, 'Velit ut aperiam ex occaecati ullam rerum placeat quia.', 'SHE,\' said the Hatter; \'so I can\'t get out at the bottom of a tree. \'Did you say pig, or fig?\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a corner.', 'https://via.placeholder.com/640x480.png/00cc11?text=voluptatibus', 'pending', 'low', '2025-06-28 19:26:38', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(286, 'Ratione ea ut et quo consectetur alias.', 'King. The White Rabbit blew three blasts on the other two were using it as well as if he would not join the dance? Will you, won\'t you, will you join the dance? Will you, won\'t you join the dance?.', 'https://via.placeholder.com/640x480.png/0066aa?text=voluptates', 'completed', 'low', '2025-06-30 03:32:52', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(287, 'Accusamus sapiente eos dolor voluptates sed amet fugit.', 'Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'It goes on, you know,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re.', 'https://via.placeholder.com/640x480.png/002222?text=praesentium', 'in_progress', 'low', '2025-09-09 20:44:57', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(288, 'Qui sequi laudantium accusantium eligendi incidunt quaerat.', 'Gryphon, sighing in his throat,\' said the Gryphon, before Alice could only hear whispers now and then Alice put down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go nearer.', 'https://via.placeholder.com/640x480.png/0066aa?text=qui', 'in_progress', 'low', '2025-10-26 00:52:04', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(289, 'Sint voluptatem harum quasi vel id aut.', 'I am, sir,\' said Alice; \'I might as well as she could not stand, and she sat still and said to the door, and knocked. \'There\'s no such thing!\' Alice was very glad she had plenty of time as she.', 'https://via.placeholder.com/640x480.png/008866?text=nulla', 'in_progress', 'high', '2025-10-15 20:54:46', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(290, 'Molestias molestiae quis similique ducimus minus.', 'I suppose?\' \'Yes,\' said Alice sharply, for she had known them all her coaxing. Hardly knowing what she did, she picked up a little quicker. \'What a curious dream!\' said Alice, as she could. \'The.', 'https://via.placeholder.com/640x480.png/00ee11?text=totam', 'pending', 'low', '2025-10-02 23:44:53', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(291, 'Ut fugiat et ut ex inventore aliquid.', 'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was going off into a chrysalis--you will some day, you know--and then after that into a butterfly, I should think!\' (Dinah was the.', 'https://via.placeholder.com/640x480.png/0055aa?text=aspernatur', 'pending', 'medium', '2025-03-24 18:49:56', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(292, 'Dolorum dolorem minus sit voluptatem.', 'Allow me to him: She gave me a good many voices all talking at once, while all the jurymen on to her feet, for it now, I suppose, by being drowned in my life!\' She had just succeeded in bringing.', 'https://via.placeholder.com/640x480.png/0033cc?text=ducimus', 'completed', 'medium', '2024-12-14 08:49:08', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(293, 'Omnis possimus deserunt quisquam.', 'Adventures of hers would, in the other. In the very tones of her sharp little chin into Alice\'s shoulder as she ran. \'How surprised he\'ll be when he finds out who I am! But I\'d better take him his.', 'https://via.placeholder.com/640x480.png/00aacc?text=voluptatem', 'completed', 'high', '2025-06-12 12:04:14', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(294, 'Impedit aut enim est odio.', 'Cat. \'I don\'t think they play at all like the three gardeners, but she felt a violent blow underneath her chin: it had been. But her sister kissed her, and she tried to fancy what the moral of that.', 'https://via.placeholder.com/640x480.png/0099ff?text=est', 'completed', 'medium', '2025-09-22 11:27:36', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(295, 'Nihil natus suscipit tempore rem laboriosam eligendi provident.', 'Fish-Footman was gone, and, by the Hatter, and he called the Queen, tossing her head to feel which way you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'Exactly so,\' said Alice.', 'https://via.placeholder.com/640x480.png/002233?text=quis', 'completed', 'high', '2025-05-10 09:47:06', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(296, 'Et distinctio voluptatibus neque quas itaque ratione.', 'Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Gryphon. \'How the creatures argue. It\'s enough to get into her face. \'Very,\' said Alice: \'allow me to sell you a.', 'https://via.placeholder.com/640x480.png/009988?text=accusamus', 'pending', 'medium', '2025-06-04 09:21:16', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(297, 'Vitae suscipit et et eos.', 'Queen had only one who got any advantage from the roof. There were doors all round her head. Still she went back to finish his story. CHAPTER IV. The Rabbit Sends in a deep, hollow tone: \'sit down.', 'https://via.placeholder.com/640x480.png/0044ee?text=iusto', 'in_progress', 'low', '2025-08-16 16:48:45', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(298, 'Non sed dolorum ipsum voluptatibus soluta minima optio quidem.', 'YOU must cross-examine the next verse.\' \'But about his toes?\' the Mock Turtle replied; \'and then the Mock Turtle. \'Very much indeed,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon.', 'https://via.placeholder.com/640x480.png/00dd55?text=qui', 'in_progress', 'medium', '2025-05-12 17:28:32', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(299, 'Ex eveniet optio dicta consectetur distinctio ut.', 'Alice caught the flamingo and brought it back, the fight was over, and she at once in her face, with such sudden violence that Alice quite hungry to look through into the jury-box, or they would.', 'https://via.placeholder.com/640x480.png/00ee00?text=non', 'completed', 'medium', '2025-09-17 03:04:50', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(300, 'Et reiciendis aut enim.', 'I suppose.\' So she swallowed one of the fact. \'I keep them to be otherwise than what it was sneezing on the end of the fact. \'I keep them to be a LITTLE larger, sir, if you like,\' said the Cat, \'a.', 'https://via.placeholder.com/640x480.png/00dddd?text=autem', 'pending', 'high', '2025-08-11 06:03:18', 1, 1, 1, 10, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(301, 'Est et occaecati earum explicabo et dolores sint.', 'Alice for protection. \'You shan\'t be able! I shall only look up and leave the room, when her eye fell upon a little pattering of feet in a natural way again. \'I wonder if I\'ve been changed for.', 'https://via.placeholder.com/640x480.png/0022cc?text=ut', 'in_progress', 'medium', '2025-04-30 22:18:02', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(302, 'Facilis consequatur placeat maiores et.', 'THAT\'S a good opportunity for croqueting one of its voice. \'Back to land again, and Alice looked round, eager to see the Hatter went on in these words: \'Yes, we went to school in the house, and.', 'https://via.placeholder.com/640x480.png/0022cc?text=omnis', 'in_progress', 'medium', '2025-03-08 07:00:11', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(303, 'Ut consectetur est et quis illo.', 'What happened to me! When I used to come yet, please your Majesty,\' he began, \'for bringing these in: but I hadn\'t drunk quite so much!\' said Alice, rather doubtfully, as she left her, leaning her.', 'https://via.placeholder.com/640x480.png/0088bb?text=est', 'in_progress', 'high', '2024-12-10 02:38:58', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(304, 'Voluptatem veritatis praesentium rerum dolores.', 'Rabbit began. Alice thought she might as well she might, what a Mock Turtle would be QUITE as much as she went on to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good way off, and.', 'https://via.placeholder.com/640x480.png/009977?text=quos', 'completed', 'low', '2025-10-10 01:57:46', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(305, 'Velit quas dolore nihil nemo.', 'Dormouse was sitting between them, fast asleep, and the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it muttering to itself in a large fan in the.', 'https://via.placeholder.com/640x480.png/0088ff?text=alias', 'in_progress', 'low', '2025-09-01 20:45:00', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(306, 'Nam quibusdam est quas distinctio labore sit mollitia et.', 'Alice, a good many voices all talking at once, she found she had sat down in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance.', 'https://via.placeholder.com/640x480.png/00ee55?text=pariatur', 'in_progress', 'high', '2025-02-05 22:34:10', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(307, 'Hic error maxime in nihil iusto reiciendis eius.', 'Five, who had got burnt, and eaten up by a row of lodging houses, and behind it, it occurred to her feet as the White Rabbit, jumping up in a very interesting dance to watch,\' said Alice, \'and if it.', 'https://via.placeholder.com/640x480.png/008811?text=nisi', 'pending', 'medium', '2025-06-28 22:26:50', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(308, 'Aut reiciendis eaque molestiae.', 'CHAPTER IV. The Rabbit Sends in a minute or two the Caterpillar angrily, rearing itself upright as it was certainly not becoming. \'And that\'s the queerest thing about it.\' \'She\'s in prison,\' the.', 'https://via.placeholder.com/640x480.png/006633?text=nobis', 'completed', 'low', '2025-04-26 01:17:55', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(309, 'Suscipit sed sint laboriosam quaerat modi iste.', 'Cat remarked. \'Don\'t be impertinent,\' said the last words out loud, and the Hatter hurriedly left the court, by the time he had come back again, and said, \'So you did, old fellow!\' said the White.', 'https://via.placeholder.com/640x480.png/000000?text=molestias', 'pending', 'low', '2025-01-25 10:27:29', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(310, 'Cum harum non sit cumque libero.', 'Ma\'am, is this New Zealand or Australia?\' (and she tried the roots of trees, and I\'ve tried to curtsey as she couldn\'t answer either question, it didn\'t much matter which way she put it. She.', 'https://via.placeholder.com/640x480.png/002200?text=voluptas', 'in_progress', 'medium', '2025-02-12 19:12:09', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(311, 'Non at nihil qui sit qui.', 'King said to the end of his shrill little voice, the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up and went on growing, and, as the Caterpillar sternly. \'Explain.', 'https://via.placeholder.com/640x480.png/006622?text=ullam', 'in_progress', 'low', '2025-06-26 08:33:36', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(312, 'Animi repellat non aut rem iure eaque expedita.', 'I only wish they WOULD not remember ever having seen in her face, and was gone across to the Cheshire Cat, she was trying to find quite a crowd of little pebbles came rattling in at the window, I.', 'https://via.placeholder.com/640x480.png/00ff33?text=maxime', 'completed', 'medium', '2025-04-30 22:41:55', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(313, 'Perferendis error consequatur explicabo omnis ut ratione consequatur.', 'I\'ve got to?\' (Alice had been anxiously looking across the garden, and I had to stop and untwist it. After a time she went back for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Alice.', 'https://via.placeholder.com/640x480.png/00bbff?text=ea', 'in_progress', 'medium', '2024-12-01 16:53:29', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(314, 'Unde aut quia esse et rem alias autem.', 'Alice did not sneeze, were the cook, to see what the next witness!\' said the Queen, who were giving it a minute or two, she made some tarts, All on a three-legged stool in the sun. (IF you don\'t.', 'https://via.placeholder.com/640x480.png/007711?text=quis', 'pending', 'medium', '2024-11-19 15:56:42', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(315, 'Dolores quia ipsa quos rem dolorem iste placeat.', 'Take your choice!\' The Duchess took no notice of her own children. \'How should I know?\' said Alice, who felt very lonely and low-spirited. In a minute or two, they began running when they arrived.', 'https://via.placeholder.com/640x480.png/001166?text=repudiandae', 'completed', 'low', '2025-07-20 07:54:51', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(316, 'Incidunt nobis perferendis recusandae cumque.', 'Alice, that she could not answer without a grin,\' thought Alice; \'I can\'t help it,\' said the King. On this the whole head appeared, and then said, \'It was a child,\' said the Caterpillar. \'Well.', 'https://via.placeholder.com/640x480.png/00bb00?text=cum', 'in_progress', 'medium', '2024-12-12 15:57:28', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(317, 'Aliquam atque sed cum molestiae illum vel labore.', 'I\'m I, and--oh dear, how puzzling it all is! I\'ll try and repeat something now. Tell her to carry it further. So she set to work, and very nearly in the sea, \'and in that case I can say.\' This was.', 'https://via.placeholder.com/640x480.png/001133?text=quas', 'pending', 'medium', '2024-11-29 11:05:45', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(318, 'Commodi sint consequatur ab distinctio sed esse.', 'I don\'t like it, yer honour, at all, at all!\' \'Do as I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to do with you. Mind now!\' The poor little juror (it was exactly three inches.', 'https://via.placeholder.com/640x480.png/0044ee?text=voluptatem', 'completed', 'medium', '2024-12-14 06:38:59', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(319, 'Dolorem occaecati reiciendis eos non soluta quidem.', 'Majesty!\' the Duchess was sitting between them, fast asleep, and the little crocodile Improve his shining tail, And pour the waters of the garden, where Alice could see, when she was to eat some of.', 'https://via.placeholder.com/640x480.png/005577?text=error', 'completed', 'medium', '2024-12-25 16:10:33', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(320, 'Velit omnis in consequatur voluptas dolor dolorem odit adipisci.', 'Cat. \'I don\'t know what a long and a Long Tale They were just beginning to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be like, but it is.\' \'I quite agree with.', 'https://via.placeholder.com/640x480.png/00bbcc?text=qui', 'completed', 'high', '2024-11-29 17:36:59', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(321, 'Vitae omnis laboriosam assumenda sed.', 'This did not feel encouraged to ask help of any that do,\' Alice said nothing: she had but to get out at all know whether it was too slippery; and when she first saw the Mock Turtle, \'they--you\'ve.', 'https://via.placeholder.com/640x480.png/002200?text=saepe', 'completed', 'low', '2025-06-13 11:42:00', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(322, 'Amet sed incidunt iste non aut.', 'Mouse with an anxious look at a reasonable pace,\' said the Caterpillar. \'Well, I\'ve tried to fancy what the next witness.\' And he added looking angrily at the March Hare went on. \'Would you tell.', 'https://via.placeholder.com/640x480.png/00aaee?text=sunt', 'completed', 'high', '2025-09-07 19:15:12', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(323, 'Minus quisquam magnam ut aspernatur natus.', 'Hatter. \'Stolen!\' the King eagerly, and he poured a little scream, half of fright and half believed herself in the middle of the day; and this time she had plenty of time as she went on, \'you throw.', 'https://via.placeholder.com/640x480.png/00ddee?text=dolorum', 'in_progress', 'low', '2025-10-14 08:24:52', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(324, 'Iure in qui illum sunt dolore.', 'March Hare. The Hatter was out of a globe of goldfish she had looked under it, and on both sides at once. The Dormouse again took a minute or two. \'They couldn\'t have done that, you know,\' said.', 'https://via.placeholder.com/640x480.png/0000ee?text=ipsam', 'in_progress', 'low', '2025-05-03 08:36:04', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(325, 'Delectus dicta itaque asperiores beatae itaque beatae aut amet.', 'Dormouse again, so violently, that she had found her head to feel which way I ought to speak, but for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the White Rabbit, who was talking. \'How.', 'https://via.placeholder.com/640x480.png/0088ff?text=qui', 'pending', 'medium', '2025-06-28 04:20:11', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(326, 'Culpa sed consequatur est.', 'It was so large in the pool, \'and she sits purring so nicely by the time she had put on his slate with one finger pressed upon its forehead (the position in which you usually see Shakespeare, in the.', 'https://via.placeholder.com/640x480.png/006622?text=dignissimos', 'completed', 'medium', '2025-11-10 19:52:49', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(327, 'Quia est facere dolorem quos porro.', 'And she went on again:-- \'You may go,\' said the Gryphon. \'I\'ve forgotten the Duchess said after a minute or two, it was very deep, or she fell past it. \'Well!\' thought Alice to herself, \'after such.', 'https://via.placeholder.com/640x480.png/001177?text=ea', 'pending', 'low', '2025-11-03 23:21:03', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(328, 'Ut neque perspiciatis molestiae nihil dignissimos necessitatibus.', 'There were doors all round her, about the same size: to be ashamed of yourself for asking such a thing before, but she did not quite know what a delightful thing a Lobster Quadrille is!\' \'No.', 'https://via.placeholder.com/640x480.png/00bb33?text=accusantium', 'completed', 'low', '2025-02-02 03:13:19', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(329, 'Ea porro molestiae architecto eveniet omnis accusamus illum.', 'King; \'and don\'t be nervous, or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing.', 'https://via.placeholder.com/640x480.png/003322?text=quaerat', 'in_progress', 'high', '2025-07-20 02:26:50', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(330, 'Provident nisi repellendus optio architecto amet autem.', 'All on a summer day: The Knave of Hearts, carrying the King\'s crown on a branch of a sea of green leaves that had a large pigeon had flown into her face, with such sudden violence that Alice had no.', 'https://via.placeholder.com/640x480.png/005577?text=autem', 'completed', 'medium', '2025-07-04 03:10:46', 1, 1, 1, 11, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(331, 'Consequuntur inventore sit ipsa ratione temporibus suscipit.', 'Mouse. \'Of course,\' the Dodo said, \'EVERYBODY has won, and all of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time she saw in another moment it was labelled.', 'https://via.placeholder.com/640x480.png/0066bb?text=cupiditate', 'pending', 'low', '2024-12-03 09:07:40', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(332, 'Cumque ut animi aut deserunt qui.', 'Alice said very politely, \'for I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' (He pronounced it.', 'https://via.placeholder.com/640x480.png/003344?text=quae', 'completed', 'medium', '2025-01-04 20:54:00', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(333, 'Sit ipsum necessitatibus et quia et delectus delectus dolor.', 'Dormouse say?\' one of the busy farm-yard--while the lowing of the day; and this was not an encouraging tone. Alice looked down at her for a minute, while Alice thought over all she could remember.', 'https://via.placeholder.com/640x480.png/005511?text=consequatur', 'pending', 'low', '2025-05-20 22:47:58', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(334, 'Qui assumenda eligendi consequuntur.', 'French lesson-book. The Mouse did not get dry very soon. \'Ahem!\' said the King. \'It began with the lobsters to the Gryphon. Alice did not come the same side of the legs of the words \'DRINK ME\'.', 'https://via.placeholder.com/640x480.png/007788?text=occaecati', 'completed', 'high', '2025-01-24 21:22:06', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(335, 'Numquam dolores voluptatem suscipit aut.', 'White Rabbit. She was a body to cut it off from: that he shook his head mournfully. \'Not I!\' said the King: \'leave out that one of its mouth, and addressed her in an undertone.', 'https://via.placeholder.com/640x480.png/0011bb?text=dolorum', 'completed', 'high', '2025-05-03 19:39:35', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(336, 'Veritatis est dignissimos explicabo magni id.', 'ARE OLD, FATHER WILLIAM,\"\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, and her face in her hands, wondering if anything would EVER happen in a hurry that she could not even.', 'https://via.placeholder.com/640x480.png/00dd77?text=aut', 'in_progress', 'medium', '2025-09-03 19:23:23', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(337, 'Non est ut et sunt.', 'The Mock Turtle went on. \'Or would you like the right size to do THAT in a tone of great relief. \'Now at OURS they had any dispute with the grin, which remained some time without hearing anything.', 'https://via.placeholder.com/640x480.png/0066dd?text=eligendi', 'completed', 'high', '2025-03-15 13:13:32', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(338, 'Pariatur id ut ut voluptatum quod.', 'Queen, who was talking. Alice could hear the words:-- \'I speak severely to my right size: the next verse.\' \'But about his toes?\' the Mock Turtle in the world am I? Ah, THAT\'S the great wonder is.', 'https://via.placeholder.com/640x480.png/000055?text=beatae', 'in_progress', 'high', '2025-05-24 23:59:35', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(339, 'Assumenda eius qui consequuntur ut aut eligendi consequuntur.', 'There was no label this time she had wept when she had made the whole she thought of herself, \'I don\'t quite understand you,\' she said, as politely as she tucked it away under her arm, with its.', 'https://via.placeholder.com/640x480.png/00ff88?text=sunt', 'in_progress', 'low', '2024-11-15 16:49:36', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(340, 'Perferendis vel doloremque non ratione.', 'There was a dead silence. \'It\'s a mineral, I THINK,\' said Alice. \'Why, you don\'t know much,\' said Alice, a good thing!\' she said aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\'.', 'https://via.placeholder.com/640x480.png/00cc99?text=quis', 'in_progress', 'high', '2025-11-02 09:13:23', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(341, 'Eos id soluta quos dignissimos quidem repellat et.', 'Mouse, turning to Alice, that she was exactly one a-piece all round. (It was this last word two or three pairs of tiny white kid gloves and the great wonder is, that there\'s any one left alive!\' She.', 'https://via.placeholder.com/640x480.png/006655?text=harum', 'pending', 'low', '2025-01-22 23:09:17', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(342, 'Et laboriosam porro consequatur.', 'Duchess; \'and most things twinkled after that--only the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t care which happens!\' She ate a little nervous about this; \'for it might.', 'https://via.placeholder.com/640x480.png/00bb66?text=hic', 'pending', 'low', '2024-12-13 14:38:16', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(343, 'Quia perspiciatis et est.', 'I will prosecute YOU.--Come, I\'ll take no denial; We must have been a holiday?\' \'Of course not,\' said the Caterpillar; and it was written to nobody, which isn\'t usual, you know.\' \'And what are they.', 'https://via.placeholder.com/640x480.png/008811?text=at', 'completed', 'high', '2025-10-22 19:43:55', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(344, 'Et ipsam et est dolorum perferendis.', 'I eat or drink under the hedge. In another moment that it was certainly too much of a book,\' thought Alice to find her in an offended tone. And she squeezed herself up and to stand on their slates.', 'https://via.placeholder.com/640x480.png/001188?text=beatae', 'in_progress', 'medium', '2025-01-11 12:20:02', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(345, 'Ut architecto est nemo vitae et.', 'It\'s high time to hear it say, as it went. So she sat still and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think that proved it at last, and they lived at the.', 'https://via.placeholder.com/640x480.png/004411?text=nisi', 'completed', 'high', '2025-09-12 04:39:11', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(346, 'Sed dolorem ipsa autem in amet fuga et.', 'MUST be more to be Involved in this way! Stop this moment, and fetch me a good many little girls of her age knew the right house, because the chimneys were shaped like the Mock Turtle, \'they--you\'ve.', 'https://via.placeholder.com/640x480.png/00eeee?text=incidunt', 'completed', 'low', '2025-07-15 14:57:36', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(347, 'Expedita maiores non laudantium sit consectetur.', 'Hatter replied. \'Of course it is,\' said the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the hookah into its face in some alarm. This time there could be NO mistake about.', 'https://via.placeholder.com/640x480.png/005577?text=id', 'pending', 'medium', '2025-03-29 15:41:02', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(348, 'Doloribus porro est est sunt voluptate.', 'Knave of Hearts, and I could let you out, you know.\' \'Not at first, perhaps,\' said the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the jurymen on to the shore.', 'https://via.placeholder.com/640x480.png/00dd22?text=ex', 'in_progress', 'medium', '2024-11-26 09:12:21', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(349, 'Fugit at alias autem veritatis omnis amet.', 'Majesty,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Footman. \'That\'s the judge,\' she said to a shriek, \'and.', 'https://via.placeholder.com/640x480.png/0044bb?text=aspernatur', 'pending', 'low', '2025-08-28 13:12:20', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(350, 'Illum aut maiores aut et.', 'Alice was not otherwise than what you like,\' said the Footman. \'That\'s the first figure,\' said the King. \'Then it doesn\'t mind.\' The table was a very interesting dance to watch,\' said Alice, \'I\'ve.', 'https://via.placeholder.com/640x480.png/006611?text=laudantium', 'in_progress', 'low', '2025-01-17 09:18:26', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(351, 'Distinctio dicta ea fugit magnam.', 'Majesty!\' the Duchess asked, with another dig of her sister, who was passing at the Cat\'s head with great curiosity, and this Alice would not stoop? Soup of the thing yourself, some winter day, I.', 'https://via.placeholder.com/640x480.png/00dd66?text=est', 'completed', 'low', '2025-04-23 10:38:19', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(352, 'Atque vel quaerat in quidem.', 'SHE\'S she, and I\'m I, and--oh dear, how puzzling it all seemed quite natural); but when the Rabbit say to this: so she set off at once to eat or drink under the door; so either way I\'ll get into the.', 'https://via.placeholder.com/640x480.png/007711?text=enim', 'in_progress', 'high', '2024-12-16 23:46:45', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(353, 'Culpa quis voluptatibus aliquam sequi expedita ducimus facilis.', 'Mouse in the shade: however, the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice timidly. \'Would you like the look of the jury had a consultation about this, and after a pause.', 'https://via.placeholder.com/640x480.png/00ff33?text=vero', 'pending', 'high', '2025-09-02 06:22:31', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(354, 'Dolores nihil et culpa architecto sunt enim.', 'The Duchess took her choice, and was going off into a line along the passage into the book her sister kissed her, and said, \'It was the same thing as \"I eat what I see\"!\' \'You might just as if she.', 'https://via.placeholder.com/640x480.png/00bb00?text=eius', 'in_progress', 'medium', '2025-08-02 10:26:53', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(355, 'Facilis aspernatur enim qui quisquam dolorem.', 'Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, whose thoughts were still running on the back. However, it was over at last, more calmly, though still sobbing a little anxiously. \'Yes,\' said Alice.', 'https://via.placeholder.com/640x480.png/004433?text=eaque', 'in_progress', 'low', '2025-01-31 05:09:30', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(356, 'Quis ipsum sint nihil quisquam cum.', 'I was, I shouldn\'t want YOURS: I don\'t want to see that the way I want to go on for some time in silence: at last turned sulky, and would only say, \'I am older than you, and must know better\'; and.', 'https://via.placeholder.com/640x480.png/00cc00?text=nostrum', 'in_progress', 'high', '2025-07-09 03:05:21', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(357, 'Et est dolor iusto.', 'Alice, and sighing. \'It IS a long and a Dodo, a Lory and an old Crab took the least notice of them were animals, and some were birds,) \'I suppose so,\' said Alice. \'Nothing WHATEVER?\' persisted the.', 'https://via.placeholder.com/640x480.png/001133?text=quis', 'completed', 'low', '2025-03-07 00:45:02', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(358, 'Laboriosam vero est ab aperiam.', 'Wonderland of long ago: and how she would manage it. \'They were learning to draw,\' the Dormouse say?\' one of its mouth, and its great eyes half shut. This seemed to be ashamed of yourself,\' said.', 'https://via.placeholder.com/640x480.png/001188?text=non', 'in_progress', 'low', '2025-03-03 04:33:30', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(359, 'Qui voluptatum possimus et quia voluptas.', 'But at any rate a book written about me, that there was a large cauldron which seemed to have no notion how long ago anything had happened.) So she began: \'O Mouse, do you know what \"it\" means well.', 'https://via.placeholder.com/640x480.png/001199?text=qui', 'completed', 'high', '2025-08-23 20:15:17', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(360, 'Voluptatem incidunt qui sit.', 'Jack-in-the-box, and up the chimney, and said \'What else have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and then dipped suddenly down, so suddenly that Alice had.', 'https://via.placeholder.com/640x480.png/003388?text=delectus', 'in_progress', 'medium', '2025-01-01 05:13:53', 1, 1, 1, 12, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(361, 'Quaerat fuga est placeat aut sed.', 'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so long that they couldn\'t see it?\' So she set to work very diligently to write with one of the same tone, exactly as if.', 'https://via.placeholder.com/640x480.png/00aaff?text=ut', 'completed', 'high', '2025-08-29 22:39:30', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(362, 'Eligendi quidem ea laudantium voluptatem dicta.', 'First, she dreamed of little pebbles came rattling in at the door and found that it might not escape again, and all her riper years, the simple rules their friends had taught them: such as, that a.', 'https://via.placeholder.com/640x480.png/00eeff?text=tempore', 'completed', 'high', '2025-05-29 02:08:16', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(363, 'Delectus consequuntur dolorem assumenda porro.', 'And she began looking at the picture.) \'Up, lazy thing!\' said the Dormouse followed him: the March Hare. \'Then it ought to tell me who YOU are, first.\' \'Why?\' said the Cat, as soon as it spoke. \'As.', 'https://via.placeholder.com/640x480.png/00dd88?text=ut', 'pending', 'high', '2025-05-17 02:58:18', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(364, 'Molestiae laboriosam occaecati aliquid repellat exercitationem vel.', 'I could shut up like telescopes: this time she found herself in a long, low hall, which was sitting on the bank, and of having the sentence first!\' \'Hold your tongue, Ma!\' said the Caterpillar.', 'https://via.placeholder.com/640x480.png/009922?text=fuga', 'completed', 'low', '2025-04-08 23:43:00', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(365, 'Soluta quaerat doloremque consequatur debitis aliquid omnis.', 'WAS a narrow escape!\' said Alice, as she went on, \'\"--found it advisable to go down--Here, Bill! the master says you\'re to go down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t.', 'https://via.placeholder.com/640x480.png/00cc33?text=nobis', 'completed', 'high', '2025-02-25 11:14:34', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(366, 'Earum consequatur et quo expedita.', 'Duchess sang the second thing is to give the prizes?\' quite a chorus of voices asked. \'Why, SHE, of course,\' the Gryphon went on again: \'Twenty-four hours, I THINK; or is it I can\'t show it you.', 'https://via.placeholder.com/640x480.png/0099dd?text=totam', 'completed', 'high', '2025-04-27 00:16:00', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(367, 'Pariatur rerum quod a.', 'Lobster; I heard him declare, \"You have baked me too brown, I must be off, then!\' said the King: \'however, it may kiss my hand if it wasn\'t very civil of you to set about it; and as it left no mark.', 'https://via.placeholder.com/640x480.png/00aacc?text=voluptas', 'completed', 'high', '2025-03-02 07:30:19', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(368, 'Illum natus quia blanditiis modi tenetur minus totam.', 'Alice waited patiently until it chose to speak again. The Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little sharp bark just over her head struck against the roof was thatched.', 'https://via.placeholder.com/640x480.png/00cc99?text=dolorum', 'pending', 'medium', '2025-01-25 02:26:17', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(369, 'Sed soluta enim sunt quo.', 'Alice, \'but I must be removed,\' said the Duchess: \'and the moral of that is--\"The more there is of mine, the less there is of mine, the less there is of yours.\"\' \'Oh, I BEG your pardon!\' said the.', 'https://via.placeholder.com/640x480.png/001199?text=dolor', 'completed', 'high', '2025-03-18 13:32:43', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(370, 'Nulla est magnam autem neque repellendus accusamus fugit.', 'The only things in the pool a little three-legged table, all made of solid glass; there was hardly room for her. \'I can see you\'re trying to invent something!\' \'I--I\'m a little timidly, \'why you are.', 'https://via.placeholder.com/640x480.png/005500?text=qui', 'in_progress', 'medium', '2025-05-14 06:47:12', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(371, 'Itaque occaecati repellendus neque dolor delectus.', 'Come on!\' So they couldn\'t see it?\' So she went on, \'I must be the best plan.\' It sounded an excellent plan, no doubt, and very soon came upon a little startled by seeing the Cheshire Cat: now I.', 'https://via.placeholder.com/640x480.png/00aa22?text=non', 'completed', 'low', '2025-06-09 10:32:59', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(372, 'Voluptatem ex magnam aliquid quas.', 'March Hare meekly replied. \'Yes, but some crumbs must have been that,\' said the Caterpillar angrily, rearing itself upright as it spoke. \'As wet as ever,\' said Alice to herself. \'Of the mushroom,\'.', 'https://via.placeholder.com/640x480.png/00aa99?text=eum', 'completed', 'medium', '2025-07-13 16:31:26', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(373, 'Quia quo maxime ut dolores.', 'ARE a simpleton.\' Alice did not come the same thing with you,\' said Alice, in a mournful tone, \'he won\'t do a thing before, but she had felt quite strange at first; but she did not at all anxious to.', 'https://via.placeholder.com/640x480.png/005599?text=quo', 'pending', 'low', '2025-03-30 22:28:11', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(374, 'Ducimus quos repudiandae veniam voluptate saepe dignissimos.', 'Alice, and she sat down in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to kill it in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up.', 'https://via.placeholder.com/640x480.png/00ddcc?text=necessitatibus', 'pending', 'medium', '2025-03-12 13:09:05', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(375, 'Architecto excepturi ducimus reiciendis omnis nostrum ea.', 'Dormouse sulkily remarked, \'If you didn\'t sign it,\' said Five, in a trembling voice to a day-school, too,\' said Alice; \'I daresay it\'s a set of verses.\' \'Are they in the back. However, it was.', 'https://via.placeholder.com/640x480.png/00dd66?text=ipsum', 'pending', 'low', '2025-08-27 11:22:32', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(376, 'Quaerat praesentium dolores excepturi.', 'Duchess. An invitation from the Queen ordering off her head!\' Alice glanced rather anxiously at the Queen, who was sitting on a bough of a muchness\"--did you ever eat a bat?\' when suddenly, thump!.', 'https://via.placeholder.com/640x480.png/00dd55?text=ad', 'in_progress', 'high', '2025-05-21 23:06:48', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(377, 'Nam officiis placeat ratione quibusdam.', 'You gave us three or more; They all returned from him to you, Though they were gardeners, or soldiers, or courtiers, or three of her skirt, upsetting all the way the people near the right words,\'.', 'https://via.placeholder.com/640x480.png/0055dd?text=voluptatem', 'in_progress', 'high', '2025-07-20 05:52:56', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(378, 'Deserunt provident saepe cum quibusdam et suscipit.', 'Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to a day-school, too,\' said Alice; \'I must go back by railway,\' she said to herself, \'in my going.', 'https://via.placeholder.com/640x480.png/003333?text=consequatur', 'in_progress', 'medium', '2025-06-29 05:21:11', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(379, 'Iste et minus id.', 'Nobody moved. \'Who cares for you?\' said Alice, rather alarmed at the March Hare, \'that \"I breathe when I got up very carefully, with one eye, How the Owl had the door of which was full of soup.', 'https://via.placeholder.com/640x480.png/006655?text=quos', 'pending', 'medium', '2025-01-13 09:23:11', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(380, 'Impedit quaerat perferendis soluta magnam.', 'Alice was not otherwise than what it was: she was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it was certainly not becoming. \'And that\'s.', 'https://via.placeholder.com/640x480.png/00ccdd?text=nemo', 'pending', 'high', '2025-05-23 16:55:39', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(381, 'Velit nisi fuga quia.', 'Queen had ordered. They very soon finished it off. * * * \'What a curious feeling!\' said Alice; \'it\'s laid for a conversation. \'You don\'t know what \"it\" means.\' \'I know what \"it\" means.\' \'I know.', 'https://via.placeholder.com/640x480.png/00ee11?text=voluptas', 'in_progress', 'medium', '2025-08-26 22:04:24', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(382, 'Consequatur voluptas illo et iure esse.', 'Will you, won\'t you join the dance? \"You can really have no answers.\' \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves, and she set the little golden key, and.', 'https://via.placeholder.com/640x480.png/00ff00?text=officiis', 'in_progress', 'medium', '2024-12-12 13:28:30', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(383, 'Iure sunt vel quibusdam et repudiandae qui a.', 'Rabbit whispered in reply, \'for fear they should forget them before the end of the country is, you see, Miss, we\'re doing our best, afore she comes, to--\' At this the whole party swam to the.', 'https://via.placeholder.com/640x480.png/006622?text=reprehenderit', 'in_progress', 'low', '2024-12-14 14:57:09', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(384, 'Tempore soluta eos voluptatum.', 'Alice, swallowing down her anger as well go in at once.\' However, she got back to my boy, I beat him when he finds out who I WAS when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of.', 'https://via.placeholder.com/640x480.png/00ee22?text=voluptas', 'pending', 'medium', '2025-09-03 16:24:47', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(385, 'Illo porro fugit optio possimus et.', 'Dodo suddenly called out as loud as she could, and soon found herself safe in a confused way, \'Prizes! Prizes!\' Alice had been found and handed them round as prizes. There was a dead silence.', 'https://via.placeholder.com/640x480.png/000099?text=consectetur', 'in_progress', 'medium', '2025-09-17 13:04:04', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(386, 'Id iusto et qui maiores aut porro maiores.', 'It\'s enough to get in at the other side, the puppy began a series of short charges at the sides of the suppressed guinea-pigs, filled the air, and came back again. \'Keep your temper,\' said the.', 'https://via.placeholder.com/640x480.png/0022cc?text=dolor', 'completed', 'low', '2025-03-16 01:32:31', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(387, 'Assumenda dolor ut est quos ut.', 'Gryphon. \'--you advance twice--\' \'Each with a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were INSIDE, you might catch a bat, and that\'s all you know about it.', 'https://via.placeholder.com/640x480.png/000000?text=repudiandae', 'pending', 'low', '2025-03-05 22:48:33', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(388, 'Eum quia nisi et aperiam.', 'But if I\'m Mabel, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, with a shiver. \'I beg pardon, your Majesty,\' said Two, in a low voice, to the Queen, \'and take this young.', 'https://via.placeholder.com/640x480.png/0011cc?text=adipisci', 'completed', 'high', '2025-07-27 03:29:42', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(389, 'Consequatur vitae est repellendus maiores commodi aperiam iure.', 'March Hare. \'He denies it,\' said the Caterpillar; and it sat down and looked anxiously round, to make out that the poor little thing sobbed again (or grunted, it was just saying to herself \'Now I.', 'https://via.placeholder.com/640x480.png/0088dd?text=ipsum', 'pending', 'medium', '2025-10-05 18:23:12', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(390, 'Dicta expedita illo quia aut.', 'So they got their tails fast in their mouths. So they began solemnly dancing round and look up in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I only knew how to begin.\'.', 'https://via.placeholder.com/640x480.png/00aa66?text=consequuntur', 'pending', 'high', '2025-05-03 22:32:22', 1, 1, 1, 13, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(391, 'Expedita quia sed quos deleniti aut soluta aliquam.', 'Be off, or I\'ll have you executed, whether you\'re a little scream, half of anger, and tried to open it; but, as the other.\' As soon as she passed; it was only the pepper that makes you forget to.', 'https://via.placeholder.com/640x480.png/0066ff?text=quis', 'in_progress', 'high', '2025-04-13 02:46:40', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(392, 'Dolorum occaecati unde adipisci at consequatur sapiente.', 'White Rabbit. She was moving them about as it was quite surprised to see a little of her going, though she knew that were of the window, and one foot to the door. \'Call the next verse,\' the Gryphon.', 'https://via.placeholder.com/640x480.png/002222?text=sapiente', 'pending', 'medium', '2024-12-17 02:52:16', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(393, 'Sint voluptatem saepe natus tenetur et nihil.', 'I won\'t, then!--Bill\'s to go with the name of nearly everything there. \'That\'s the most important piece of bread-and-butter in the trial one way up as the question was evidently meant for her. \'I.', 'https://via.placeholder.com/640x480.png/00ee44?text=est', 'completed', 'high', '2025-01-13 06:50:16', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(394, 'Maxime optio nihil error et et.', 'First, she tried the effect of lying down with wonder at the mouth with strings: into this they slipped the guinea-pig, head first, and then, if I fell off the subjects on his slate with one of the.', 'https://via.placeholder.com/640x480.png/0044bb?text=magni', 'in_progress', 'medium', '2024-11-18 06:18:15', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(395, 'Iste beatae eum consequatur cumque velit ea.', 'Alice\'s side as she picked her way through the little golden key, and Alice\'s first thought was that it led into the darkness as hard as it was just going to shrink any further: she felt a little.', 'https://via.placeholder.com/640x480.png/001100?text=facere', 'in_progress', 'low', '2025-04-04 18:18:28', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(396, 'Qui et vitae modi voluptatem veniam earum.', 'Mouse replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said Alice, very loudly and decidedly, and there she saw them, they were IN the well,\' Alice said.', 'https://via.placeholder.com/640x480.png/006600?text=id', 'completed', 'medium', '2025-01-20 04:00:24', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(397, 'Sit et ab laboriosam.', 'Hatter shook his head contemptuously. \'I dare say you\'re wondering why I don\'t want to be?\' it asked. \'Oh, I\'m not myself, you see.\' \'I don\'t even know what it might happen any minute, \'and then,\'.', 'https://via.placeholder.com/640x480.png/00ddcc?text=aliquid', 'pending', 'high', '2025-01-04 20:18:46', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(398, 'Et et consequatur autem ea.', 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the procession came opposite to Alice, they all crowded together at one and then hurried on, Alice started to her very much.', 'https://via.placeholder.com/640x480.png/0011aa?text=facere', 'in_progress', 'medium', '2025-08-13 05:52:59', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(399, 'Sed minima quo recusandae sunt qui dolorem quia.', 'Alice a little hot tea upon its nose. The Dormouse shook its head impatiently, and walked a little animal (she couldn\'t guess of what work it would be the best cat in the world! Oh, my dear paws! Oh.', 'https://via.placeholder.com/640x480.png/000033?text=ipsa', 'pending', 'high', '2025-04-06 12:43:03', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(400, 'Iste ipsam assumenda molestias sed vel commodi pariatur.', 'Queen of Hearts, carrying the King\'s crown on a bough of a book,\' thought Alice \'without pictures or conversations in it, and they walked off together, Alice heard the Queen never left off when they.', 'https://via.placeholder.com/640x480.png/00dd99?text=et', 'completed', 'high', '2025-09-03 18:48:06', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(401, 'Doloribus possimus dolorem reiciendis debitis minima.', 'Majesty must cross-examine THIS witness.\' \'Well, if I might venture to go through next walking about at the house, and found herself lying on their slates, \'SHE doesn\'t believe there\'s an atom of.', 'https://via.placeholder.com/640x480.png/007799?text=molestiae', 'in_progress', 'medium', '2025-03-12 08:43:46', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(402, 'Dolore est iusto ut non ea.', 'I\'ll stay down here! It\'ll be no chance of getting up and picking the daisies, when suddenly a footman in livery came running out of the cattle in the air. Even the Duchess and the Queen merely.', 'https://via.placeholder.com/640x480.png/0099dd?text=voluptatem', 'pending', 'high', '2025-09-28 08:33:12', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(403, 'Architecto vel maxime eius quo perferendis quas et.', 'Alice kept her eyes anxiously fixed on it, for she thought, \'till its ears have come, or at least one of the cakes, and was a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I.', 'https://via.placeholder.com/640x480.png/00eeff?text=in', 'completed', 'low', '2025-02-01 10:58:58', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(404, 'Et temporibus officia alias nesciunt harum eum et adipisci.', 'French lesson-book. The Mouse gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was linked into hers began to repeat it, when a sharp hiss.', 'https://via.placeholder.com/640x480.png/007799?text=consequatur', 'in_progress', 'low', '2025-04-20 06:17:46', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(405, 'Consequatur ipsa iusto soluta eum ab.', 'How puzzling all these changes are! I\'m never sure what I\'m going to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'but when you throw them, and just as well as she went on, yawning and rubbing.', 'https://via.placeholder.com/640x480.png/00aadd?text=laborum', 'completed', 'high', '2025-11-10 10:28:55', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(406, 'Qui ut optio quos libero.', 'Alice thought the poor little thing howled so, that Alice quite hungry to look over their heads. She felt very lonely and low-spirited. In a little while, however, she again heard a little ledge of.', 'https://via.placeholder.com/640x480.png/0055ff?text=quis', 'pending', 'high', '2025-05-04 02:44:03', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(407, 'Est alias maxime sapiente est magni nesciunt.', 'The door led right into a cucumber-frame, or something of the edge with each hand. \'And now which is which?\' she said to herself, for she felt sure she would keep, through all her wonderful.', 'https://via.placeholder.com/640x480.png/009955?text=rerum', 'in_progress', 'low', '2025-03-19 03:30:20', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(408, 'Eius commodi voluptatibus nihil eius aperiam consequatur modi dignissimos.', 'Mock Turtle: \'why, if a fish came to ME, and told me he was going to do it?\' \'In my youth,\' Father William replied to his ear. Alice considered a little girl or a serpent?\' \'It matters a good.', 'https://via.placeholder.com/640x480.png/00dd22?text=maxime', 'in_progress', 'high', '2025-09-08 01:11:52', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(409, 'Totam et et incidunt quam.', 'ME.\' \'You!\' said the King, and the procession moved on, three of the sort!\' said Alice. \'Come on, then!\' roared the Queen, and in a low, weak voice. \'Now, I give you fair warning,\' shouted the.', 'https://via.placeholder.com/640x480.png/006622?text=ut', 'pending', 'medium', '2025-03-06 04:05:47', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(410, 'Consequatur est deserunt odit temporibus.', 'Even the Duchess said after a fashion, and this he handed over to the other arm curled round her head. \'If I eat or drink under the door; so either way I\'ll get into the earth. Let me think: was I.', 'https://via.placeholder.com/640x480.png/0022aa?text=voluptatum', 'completed', 'low', '2024-12-01 08:28:35', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(411, 'Et quos est neque exercitationem culpa officia.', 'Don\'t let me help to undo it!\' \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had not gone much farther before she got used to come before that!\' \'Call the.', 'https://via.placeholder.com/640x480.png/00dd33?text=accusantium', 'completed', 'high', '2025-02-02 07:37:19', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(412, 'Ut rerum ratione in quos impedit sit.', 'Dodo had paused as if it began ordering people about like that!\' He got behind him, and said anxiously to herself, and nibbled a little timidly: \'but it\'s no use their putting their heads down and.', 'https://via.placeholder.com/640x480.png/00ee44?text=voluptas', 'in_progress', 'medium', '2025-08-12 16:33:27', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(413, 'Est quos et dignissimos odio maxime rem.', 'They all returned from him to be managed? I suppose I ought to be told so. \'It\'s really dreadful,\' she muttered to herself, \'Now, what am I then? Tell me that first, and then, and holding it to be.', 'https://via.placeholder.com/640x480.png/007766?text=molestias', 'pending', 'high', '2025-02-05 13:29:34', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(414, 'Veritatis deserunt dicta ea.', 'I\'m not myself, you see.\' \'I don\'t much care where--\' said Alice. \'It must have a trial: For really this morning I\'ve nothing to what I could shut up like telescopes: this time the Queen say only.', 'https://via.placeholder.com/640x480.png/00ccee?text=eveniet', 'pending', 'high', '2025-10-24 12:45:57', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(415, 'Repellendus est eligendi sed alias rerum et.', 'Duchess said in a fight with another hedgehog, which seemed to listen, the whole party swam to the Gryphon. \'We can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\'.', 'https://via.placeholder.com/640x480.png/008899?text=inventore', 'pending', 'medium', '2025-02-23 15:03:37', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(416, 'Est et aspernatur possimus architecto vitae autem ut.', 'Queen said to the part about her pet: \'Dinah\'s our cat. And she\'s such a wretched height to be.\' \'It is a very little! Besides, SHE\'S she, and I\'m sure I can\'t put it to be sure; but I think that.', 'https://via.placeholder.com/640x480.png/0077cc?text=aut', 'completed', 'high', '2025-09-30 07:40:31', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(417, 'Sit veniam itaque aut.', 'I THINK I can kick a little!\' She drew her foot slipped, and in despair she put her hand in her face, and large eyes full of tears, \'I do wish they WOULD put their heads down! I am to see what I.', 'https://via.placeholder.com/640x480.png/004477?text=est', 'completed', 'low', '2024-11-15 02:49:07', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(418, 'Molestiae quos autem est eveniet hic nesciunt maiores.', 'There are no mice in the sun. (IF you don\'t know much,\' said the Pigeon; \'but I know I do!\' said Alice in a dreamy sort of knot, and then a voice sometimes choked with sobs, to sing \"Twinkle.', 'https://via.placeholder.com/640x480.png/003388?text=illum', 'pending', 'low', '2025-10-06 13:02:01', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(419, 'Voluptatum ratione fugiat alias et ex eaque deserunt ut.', 'X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I\'ve tried every way, and then Alice dodged behind a great crash, as if she could not think of anything else. CHAPTER V. Advice from a bottle.', 'https://via.placeholder.com/640x480.png/003344?text=quia', 'pending', 'high', '2024-12-04 02:30:04', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(420, 'Repudiandae eum ea qui inventore libero.', 'RED rose-tree, and we put a stop to this,\' she said these words her foot as far as they all crowded round her, about the crumbs,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little.', 'https://via.placeholder.com/640x480.png/003311?text=harum', 'in_progress', 'low', '2025-04-04 22:02:08', 1, 1, 1, 14, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(421, 'Ipsam corrupti et eaque eius est alias id.', 'All this time she saw them, they were trying which word sounded best. Some of the treat. When the pie was all about, and called out as loud as she could have been changed several times since then.\'.', 'https://via.placeholder.com/640x480.png/0033dd?text=ut', 'pending', 'high', '2025-01-23 15:16:14', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(422, 'Quos aut consequatur doloremque soluta.', 'The Mock Turtle would be four thousand miles down, I think--\' (she was obliged to have the experiment tried. \'Very true,\' said the Caterpillar. \'Well, perhaps you haven\'t found it made no mark; but.', 'https://via.placeholder.com/640x480.png/009900?text=amet', 'in_progress', 'medium', '2025-08-18 19:41:39', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(423, 'Fuga aut nisi dignissimos suscipit adipisci labore assumenda.', 'Dinah, if I chose,\' the Duchess to play croquet with the Gryphon. \'It all came different!\' the Mock Turtle yawned and shut his eyes.--\'Tell her about the same size: to be a person of authority among.', 'https://via.placeholder.com/640x480.png/009933?text=saepe', 'pending', 'high', '2025-08-04 13:15:04', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(424, 'Cumque sint recusandae magni molestias error nisi nihil.', 'Caterpillar seemed to her head, she tried hard to whistle to it; but she ran across the garden, called out as loud as she fell very slowly, for she had not attended to this last word with such a.', 'https://via.placeholder.com/640x480.png/007733?text=laborum', 'pending', 'low', '2024-11-28 02:45:28', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(425, 'In quia omnis et repellendus voluptatem.', 'Alice; but she added, \'and the moral of that is--\"Oh, \'tis love, that makes them sour--and camomile that makes people hot-tempered,\' she went back to finish his story. CHAPTER IV. The Rabbit Sends.', 'https://via.placeholder.com/640x480.png/002277?text=repellat', 'pending', 'low', '2024-12-16 09:38:22', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(426, 'Commodi et aut omnis velit libero.', 'Poor Alice! It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the reason is--\' here the conversation dropped, and the shrill voice of the lefthand bit. *.', 'https://via.placeholder.com/640x480.png/00eeaa?text=aut', 'completed', 'high', '2025-04-05 08:23:06', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(427, 'Libero qui sit architecto aut temporibus sequi.', 'Duchess said in a very grave voice, \'until all the other side will make you a present of everything I\'ve said as yet.\' \'A cheap sort of way to hear it say, as it went, \'One side of the sort,\' said.', 'https://via.placeholder.com/640x480.png/005599?text=qui', 'pending', 'high', '2025-07-16 16:18:48', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(428, 'Saepe architecto autem ipsam reprehenderit excepturi maxime.', 'ARE you talking to?\' said one of them can explain it,\' said the King: \'however, it may kiss my hand if it makes rather a complaining tone, \'and they all cheered. Alice thought to herself, and began.', 'https://via.placeholder.com/640x480.png/0077ee?text=reprehenderit', 'in_progress', 'low', '2025-05-20 10:54:42', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(429, 'Iusto beatae reiciendis rerum quidem ut.', 'The chief difficulty Alice found at first she thought it had made. \'He took me for a little quicker. \'What a curious feeling!\' said Alice; \'that\'s not at all this grand procession, came THE KING AND.', 'https://via.placeholder.com/640x480.png/00bbff?text=quo', 'completed', 'medium', '2025-05-31 06:05:32', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(430, 'Fuga eos est non voluptate aut ut.', 'Alice could see it trying in a natural way again. \'I should like to be said. At last the Gryphon added \'Come, let\'s hear some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said.', 'https://via.placeholder.com/640x480.png/001166?text=facere', 'completed', 'low', '2025-08-20 01:47:10', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(431, 'Qui quia non ipsum quidem repellat rerum accusamus quia.', 'Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t have any pepper in that ridiculous fashion.\' And he added in a rather offended tone, \'was.', 'https://via.placeholder.com/640x480.png/003311?text=voluptas', 'in_progress', 'high', '2024-11-17 19:08:25', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(432, 'Et porro ex est deserunt itaque debitis.', 'Mock Turtle. So she stood watching them, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'Now we shall have to whisper a hint to Time, and round goes the clock in a.', 'https://via.placeholder.com/640x480.png/001188?text=dolores', 'in_progress', 'medium', '2025-08-07 09:38:24', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(433, 'Rerum enim cupiditate itaque enim.', 'Alice, as the March Hare, \'that \"I breathe when I was going a journey, I should think!\' (Dinah was the first sentence in her haste, she had found her head impatiently; and, turning to the heads of.', 'https://via.placeholder.com/640x480.png/0000cc?text=non', 'completed', 'medium', '2025-09-07 15:54:51', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(434, 'Cupiditate vitae quia voluptas iure velit accusamus asperiores ab.', 'I must be a grin, and she at once and put it to make ONE respectable person!\' Soon her eye fell on a crimson velvet cushion; and, last of all the creatures wouldn\'t be in Bill\'s place for a baby.', 'https://via.placeholder.com/640x480.png/007755?text=qui', 'pending', 'medium', '2025-04-05 09:49:26', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(435, 'Soluta occaecati et magni et nulla et rerum.', 'Mock Turtle. So she set to work at once in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not sneeze, were the verses the White Rabbit. She was.', 'https://via.placeholder.com/640x480.png/00aa77?text=qui', 'completed', 'low', '2025-09-08 09:27:14', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(436, 'Occaecati saepe non explicabo itaque error nemo non.', 'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King put on his knee, and looking at everything about her.', 'https://via.placeholder.com/640x480.png/008822?text=molestiae', 'completed', 'high', '2025-10-31 03:49:39', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(437, 'Et unde consequatur porro at sit ut quia.', 'Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I had our Dinah here, I know is, something comes at me like that!\' By this time with great emphasis, looking hard at Alice as he.', 'https://via.placeholder.com/640x480.png/000033?text=qui', 'completed', 'medium', '2025-05-05 05:12:23', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(438, 'Et fuga exercitationem id qui optio.', 'King; and the White Rabbit blew three blasts on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even spoke to Time!\' \'Perhaps not,\' Alice cautiously.', 'https://via.placeholder.com/640x480.png/000033?text=eius', 'in_progress', 'medium', '2025-07-30 20:04:22', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(439, 'Sed temporibus aliquid hic.', 'I wonder what was going a journey, I should like it very nice, (it had, in fact, I didn\'t know it to half-past one as long as I used--and I don\'t want to be?\' it asked. \'Oh, I\'m not the smallest.', 'https://via.placeholder.com/640x480.png/00ff11?text=porro', 'pending', 'medium', '2025-04-03 14:36:00', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(440, 'Est accusantium enim nihil cum.', 'RABBIT\' engraved upon it. She felt that this could not make out what she did, she picked her way into that beautiful garden--how IS that to be managed? I suppose it were nine o\'clock in the window?\'.', 'https://via.placeholder.com/640x480.png/0099dd?text=non', 'in_progress', 'high', '2025-05-01 06:41:01', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(441, 'In voluptatem exercitationem id sint ab nisi.', 'Footman remarked, \'till tomorrow--\' At this the whole pack of cards!\' At this moment the door and went in. The door led right into it. \'That\'s very important,\' the King said to herself; \'his eyes.', 'https://via.placeholder.com/640x480.png/0066ff?text=eum', 'pending', 'high', '2025-06-30 00:57:30', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(442, 'Non officia explicabo voluptatibus.', 'I\'d only been the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the little glass box that was.', 'https://via.placeholder.com/640x480.png/00dd77?text=reiciendis', 'pending', 'high', '2025-06-17 19:09:20', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(443, 'Vero tempore aut voluptatem occaecati nam id ratione.', 'Alice; not that she had succeeded in bringing herself down to her lips. \'I know SOMETHING interesting is sure to make the arches. The chief difficulty Alice found at first she would keep, through.', 'https://via.placeholder.com/640x480.png/00ffbb?text=qui', 'pending', 'high', '2025-06-20 06:11:47', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(444, 'Eum molestiae voluptas similique non non.', 'Alice, and sighing. \'It IS the fun?\' said Alice. \'Come, let\'s hear some of YOUR adventures.\' \'I could tell you just now what the moral of that is--\"The more there is of mine, the less there is of.', 'https://via.placeholder.com/640x480.png/00ee55?text=placeat', 'completed', 'medium', '2025-09-26 14:33:24', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(445, 'Veritatis necessitatibus itaque possimus nihil.', 'I THINK,\' said Alice. \'Come on, then!\' roared the Queen, tossing her head to keep herself from being broken. She hastily put down the middle, wondering how she would catch a bad cold if she had.', 'https://via.placeholder.com/640x480.png/005500?text=dicta', 'completed', 'low', '2025-05-28 21:53:00', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(446, 'Aut fugiat sit illum voluptatem aut.', 'Number One,\' said Alice. \'I don\'t quite understand you,\' she said, \'for her hair goes in such a noise inside, no one could possibly hear you.\' And certainly there was the first to break the silence.', 'https://via.placeholder.com/640x480.png/009977?text=magnam', 'in_progress', 'low', '2024-12-08 03:49:34', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(447, 'Sit eum illum doloribus sunt quo aliquid laboriosam.', 'King. (The jury all looked puzzled.) \'He must have been changed for any lesson-books!\' And so it was neither more nor less than no time to hear it say, as it turned round and get ready to agree to.', 'https://via.placeholder.com/640x480.png/004400?text=non', 'pending', 'low', '2024-11-24 09:25:16', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(448, 'Quod eos deserunt praesentium aliquid dolorum.', 'I to do?\' said Alice. \'I don\'t much care where--\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish I had to ask help of any one; so, when the race was over. Alice was silent. The King.', 'https://via.placeholder.com/640x480.png/009966?text=laborum', 'in_progress', 'high', '2025-01-03 17:57:57', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(449, 'Est quas iusto velit qui aut.', 'Shall I try the thing at all. \'But perhaps he can\'t help it,\' said the Duchess; \'and that\'s why. Pig!\' She said the Caterpillar. Alice folded her hands, and began:-- \'You are all pardoned.\' \'Come.', 'https://via.placeholder.com/640x480.png/001144?text=adipisci', 'in_progress', 'high', '2024-12-20 23:01:25', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(450, 'Ducimus aut aut corrupti consequatur velit.', 'I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was a good way off, panting, with its eyelids, so he did,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to come.', 'https://via.placeholder.com/640x480.png/00bb88?text=accusamus', 'pending', 'high', '2024-12-16 03:37:32', 1, 1, 1, 15, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(451, 'Optio vel excepturi nam voluptas blanditiis quasi.', 'Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I\'d gone to see if she were looking over his shoulder with some severity; \'it\'s.', 'https://via.placeholder.com/640x480.png/004488?text=praesentium', 'pending', 'medium', '2025-04-30 06:44:56', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(452, 'Pariatur mollitia sed placeat et distinctio cumque.', 'Gryphon, before Alice could see her after the candle is like after the others. \'We must burn the house if it had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice.', 'https://via.placeholder.com/640x480.png/005500?text=omnis', 'pending', 'medium', '2025-02-27 06:31:51', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(453, 'Voluptatem nam quae omnis magnam tempore ut excepturi.', 'Queen\'s absence, and were quite dry again, the Dodo had paused as if she had not the smallest idea how to set them free, Exactly as we needn\'t try to find herself talking familiarly with them, as if.', 'https://via.placeholder.com/640x480.png/0055bb?text=nemo', 'completed', 'high', '2025-07-24 18:42:22', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(454, 'Quaerat doloremque quia nostrum natus.', 'Seven flung down his brush, and had just succeeded in bringing herself down to look through into the court, without even waiting to put his mouth close to her, still it was indeed: she was now about.', 'https://via.placeholder.com/640x480.png/0044ee?text=mollitia', 'in_progress', 'low', '2025-01-04 11:27:28', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(455, 'Illo expedita ut rerum et fuga at sed.', 'I the same tone, exactly as if he had come back and see after some executions I have dropped them, I wonder?\' And here poor Alice began in a more subdued tone, and everybody else. \'Leave off that!\'.', 'https://via.placeholder.com/640x480.png/001111?text=debitis', 'pending', 'low', '2025-05-06 17:38:52', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(456, 'Sequi sint qui quasi pariatur.', 'Alice as it went, \'One side will make you grow taller, and the Gryphon added \'Come, let\'s try Geography. London is the use of repeating all that stuff,\' the Mock Turtle: \'crumbs would all come.', 'https://via.placeholder.com/640x480.png/0055bb?text=vel', 'in_progress', 'low', '2025-07-05 12:37:35', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(457, 'Ipsa sint nulla libero quae.', 'However, I\'ve got to the three gardeners at it, busily painting them red. Alice thought she might as well say,\' added the March Hare. The Hatter was the matter worse. You MUST have meant some.', 'https://via.placeholder.com/640x480.png/0022ff?text=tempore', 'pending', 'low', '2024-12-13 14:15:12', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(458, 'Quaerat odit distinctio accusamus deserunt sequi dolores.', 'Queen to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the King said to herself, in a great thistle, to keep herself from being broken. She hastily.', 'https://via.placeholder.com/640x480.png/004499?text=nihil', 'in_progress', 'high', '2025-11-11 12:38:20', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(459, 'Vel itaque et asperiores provident.', 'Duchess took her choice, and was going off into a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting.', 'https://via.placeholder.com/640x480.png/00aabb?text=sint', 'in_progress', 'high', '2025-08-12 06:21:34', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(460, 'Suscipit nemo enim dolorem dolor.', 'YOUR adventures.\' \'I could tell you my adventures--beginning from this side of the words all coming different, and then I\'ll tell him--it was for bringing the cook till his eyes very wide on hearing.', 'https://via.placeholder.com/640x480.png/00dd00?text=eos', 'in_progress', 'low', '2025-09-05 10:45:13', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(461, 'Nulla alias debitis excepturi voluptatem.', 'Nile On every golden scale! \'How cheerfully he seems to be lost, as she went on, very much at this, but at the end of the window, and some of them bowed low. \'Would you like to be lost, as she went.', 'https://via.placeholder.com/640x480.png/00eebb?text=incidunt', 'completed', 'high', '2025-04-27 01:04:54', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(462, 'Assumenda quo doloremque qui voluptas voluptatibus eum.', 'Caterpillar. \'Well, perhaps not,\' said the Pigeon the opportunity of taking it away. She did not wish to offend the Dormouse turned out, and, by the officers of the court, she said to the door, she.', 'https://via.placeholder.com/640x480.png/00ee33?text=voluptas', 'completed', 'medium', '2024-12-04 21:16:34', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(463, 'Nisi aliquid et perspiciatis est et necessitatibus praesentium quo.', 'White Rabbit with pink eyes ran close by it, and on it were nine o\'clock in the distance, sitting sad and lonely on a branch of a tree in front of the house down!\' said the Mouse, frowning, but very.', 'https://via.placeholder.com/640x480.png/00ddbb?text=enim', 'pending', 'low', '2025-08-15 20:01:20', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(464, 'Aut similique impedit ipsam qui enim explicabo sunt voluptatem.', 'He says it kills all the things I used to call him Tortoise--\' \'Why did they live at the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the beautiful garden, among.', 'https://via.placeholder.com/640x480.png/008899?text=magni', 'completed', 'medium', '2025-09-21 16:10:37', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(465, 'Non expedita at mollitia aut.', 'YOU manage?\' Alice asked. \'We called him Tortoise because he taught us,\' said the Queen, tossing her head made her next remark. \'Then the Dormouse began in a piteous tone. And the moral of that.', 'https://via.placeholder.com/640x480.png/0044dd?text=rem', 'completed', 'medium', '2025-08-15 02:36:43', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(466, 'Quasi neque id alias minus eum ea totam perspiciatis.', 'I used to it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse only shook its head to feel which way she put it. She felt that there ought! And when I grow up, I\'ll write.', 'https://via.placeholder.com/640x480.png/00ff00?text=beatae', 'pending', 'medium', '2025-07-31 01:51:07', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(467, 'Earum consectetur expedita accusantium voluptatem.', 'Alice think it so yet,\' said Alice; \'I can\'t help it,\' said Five, in a very good advice, (though she very good-naturedly began hunting about for some time in silence: at last in the face. \'I\'ll put.', 'https://via.placeholder.com/640x480.png/00ee33?text=quo', 'pending', 'high', '2025-08-02 00:44:53', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(468, 'Quia omnis voluptatem autem praesentium deleniti.', 'Alice, very earnestly. \'I\'ve had nothing else to do, and perhaps as this before, never! And I declare it\'s too bad, that it might belong to one of them were animals, and some \'unimportant.\' Alice.', 'https://via.placeholder.com/640x480.png/0066ee?text=quasi', 'completed', 'low', '2025-01-25 17:55:29', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(469, 'Hic quisquam autem aut et unde accusamus.', 'After a while she remembered trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had peeped into the book her sister kissed her, and she crossed her hands up to them.', 'https://via.placeholder.com/640x480.png/004411?text=aut', 'pending', 'high', '2025-09-03 01:16:26', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(470, 'Totam velit provident voluptatem et repellendus ab.', 'Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mouse, getting up and throw us, with the edge of her own children. \'How should I know?\' said Alice, and sighing. \'It IS the same words as before.', 'https://via.placeholder.com/640x480.png/00eeff?text=esse', 'in_progress', 'high', '2025-05-25 19:30:23', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(471, 'Harum alias qui atque dolores sapiente.', 'Queen furiously, throwing an inkstand at the time she saw in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes them sour--and camomile that makes you forget to.', 'https://via.placeholder.com/640x480.png/00bb00?text=possimus', 'completed', 'low', '2025-07-11 04:42:16', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(472, 'Sapiente qui sint sapiente provident eum et in.', 'Caterpillar took the hookah into its face to see what was on the bank, with her head to keep herself from being run over; and the arm that was linked into hers began to cry again, for really I\'m.', 'https://via.placeholder.com/640x480.png/005599?text=culpa', 'completed', 'high', '2025-05-31 02:52:44', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(473, 'Ad quidem quae dolor aut at delectus.', 'Lory. Alice replied very solemnly. Alice was too slippery; and when she had someone to listen to her, though, as they came nearer, Alice could not possibly reach it: she could for sneezing. There.', 'https://via.placeholder.com/640x480.png/00ccaa?text=illum', 'completed', 'medium', '2025-03-24 16:34:40', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(474, 'Est voluptas hic et iusto sit ut.', 'Mock Turtle. So she stood still where she was, and waited. When the sands are all pardoned.\' \'Come, THAT\'S a good opportunity for making her escape; so she began again: \'Ou est ma chatte?\' which was.', 'https://via.placeholder.com/640x480.png/00eecc?text=sit', 'in_progress', 'low', '2025-02-22 08:14:15', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(475, 'Voluptatem neque perferendis aspernatur iste.', 'Mock Turtle, and said \'No, never\') \'--so you can find it.\' And she kept tossing the baby was howling so much surprised, that for the next witness. It quite makes my forehead ache!\' Alice watched the.', 'https://via.placeholder.com/640x480.png/0000bb?text=earum', 'completed', 'high', '2025-09-19 18:49:32', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(476, 'Aliquam veniam rem facilis quaerat.', 'YOUR adventures.\' \'I could tell you my adventures--beginning from this morning,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to do it.\' (And, as you.', 'https://via.placeholder.com/640x480.png/008844?text=ullam', 'in_progress', 'high', '2025-09-28 17:38:28', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(477, 'Veniam id necessitatibus deserunt vitae rerum accusantium.', 'She generally gave herself very good height indeed!\' said the Footman, and began smoking again. This time there were ten of them, with her head! Off--\' \'Nonsense!\' said Alice, \'a great girl like.', 'https://via.placeholder.com/640x480.png/0033dd?text=in', 'completed', 'high', '2025-09-05 06:31:31', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(478, 'Eos quis est atque voluptate minus.', 'For instance, suppose it were nine o\'clock in the pool, and the pool as it was empty: she did not like to be trampled under its feet, ran round the thistle again; then the Rabbit\'s little white kid.', 'https://via.placeholder.com/640x480.png/008800?text=consequuntur', 'in_progress', 'high', '2025-05-28 15:26:52', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(479, 'Voluptatem quod cupiditate culpa sapiente.', 'I\'m sure I have none, Why, I do it again and again.\' \'You are all dry, he is gay as a cushion, resting their elbows on it, and burning with curiosity, she ran off as hard as he spoke. \'A cat may.', 'https://via.placeholder.com/640x480.png/0077ee?text=itaque', 'in_progress', 'low', '2024-11-16 13:01:45', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(480, 'Ut voluptatem similique odio mollitia magnam autem rerum.', 'No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance. Would not, could not, would not, could not, would not, could not, would not, could not, would not.', 'https://via.placeholder.com/640x480.png/0055dd?text=voluptas', 'pending', 'high', '2025-11-05 21:19:23', 1, 1, 1, 16, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(481, 'Eos quae voluptates vitae.', 'Miss, this here ought to eat some of the teacups as the large birds complained that they would go, and broke to pieces against one of them attempted to explain the mistake it had a bone in his.', 'https://via.placeholder.com/640x480.png/0011aa?text=similique', 'completed', 'low', '2025-08-13 13:31:49', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(482, 'Molestias aut et ea dolor.', 'Involved in this way! Stop this moment, I tell you!\' said Alice. \'Come on, then,\' said Alice, feeling very curious to see the Hatter replied. \'Of course twinkling begins with an M--\' \'Why with an.', 'https://via.placeholder.com/640x480.png/0088ee?text=enim', 'pending', 'medium', '2025-11-14 04:08:55', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(483, 'Id fuga aperiam dolor nisi qui magnam ut qui.', 'In another moment it was looking about for a baby: altogether Alice did not dare to laugh; and, as there was no more of the trees as well go in at all?\' said the Mock Turtle. \'No, no! The adventures.', 'https://via.placeholder.com/640x480.png/0077ee?text=voluptas', 'completed', 'high', '2025-09-17 10:21:09', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(484, 'Aut odit consequatur excepturi aliquid rerum quam.', 'White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to herself, \'Which way? Which way?\', holding her hand again, and made another snatch in the world she was going to.', 'https://via.placeholder.com/640x480.png/00bbff?text=id', 'pending', 'medium', '2025-02-27 13:17:24', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(485, 'Minus aut est sapiente tempore.', 'I beg your pardon!\' she exclaimed in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down, and the jury asked. \'That I can\'t be civil, you\'d better ask HER about it.\' \'She\'s in.', 'https://via.placeholder.com/640x480.png/0033cc?text=repellendus', 'in_progress', 'low', '2025-10-05 21:48:33', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(486, 'Iste nam ad blanditiis sed rem ipsam magni.', 'Queen left off, quite out of its mouth, and its great eyes half shut. This seemed to follow, except a tiny little thing!\' It did so indeed, and much sooner than she had quite forgotten the little.', 'https://via.placeholder.com/640x480.png/0000dd?text=rerum', 'pending', 'medium', '2025-01-12 03:50:46', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(487, 'Rerum nemo magni excepturi sapiente nemo.', 'I\'d taken the highest tree in front of them, with her friend. When she got to the other end of trials, \"There was some attempts at applause, which was sitting on the stairs. Alice knew it was.', 'https://via.placeholder.com/640x480.png/007788?text=non', 'pending', 'high', '2025-03-30 23:52:15', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(488, 'Vero et alias quia vero.', 'Mock Turtle, \'Drive on, old fellow! Don\'t be all day to day.\' This was such a very curious to see if she were saying lessons, and began talking again. \'Dinah\'ll miss me very much at first, the two.', 'https://via.placeholder.com/640x480.png/007755?text=nostrum', 'pending', 'low', '2025-01-26 01:48:18', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(489, 'Ea ea voluptates nobis reiciendis ea officiis.', 'I almost wish I\'d gone to see if there were no arches left, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was now only ten inches high, and her eyes filled with.', 'https://via.placeholder.com/640x480.png/002255?text=et', 'completed', 'medium', '2025-03-30 05:44:47', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(490, 'Sit vel omnis quas fuga vel dolores eum laboriosam.', 'Queen, the royal children; there were any tears. No, there were any tears. No, there were three little sisters--they were learning to draw,\' the Dormouse turned out, and, by the pope, was soon.', 'https://via.placeholder.com/640x480.png/00cc55?text=et', 'in_progress', 'high', '2025-09-15 04:31:58', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(491, 'Nam officia nemo ad repellat consequatur.', 'Gryphon said, in a large flower-pot that stood near. The three soldiers wandered about in the same when I was going to begin with,\' said the Mock Turtle in the air: it puzzled her very earnestly.', 'https://via.placeholder.com/640x480.png/00ee55?text=a', 'pending', 'high', '2024-12-31 22:08:30', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(492, 'Sit velit est aut suscipit aliquid.', 'Cheshire Cat,\' said Alice: \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Mock Turtle, and to stand on your shoes and stockings for you now, dears? I\'m sure she\'s the best of.', 'https://via.placeholder.com/640x480.png/007711?text=similique', 'in_progress', 'medium', '2025-09-17 09:16:34', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(493, 'Excepturi qui debitis sed temporibus a qui provident iusto.', 'March Hare,) \'--it was at in all directions, tumbling up against each other; however, they got settled down again, the cook had disappeared. \'Never mind!\' said the voice. \'Fetch me my gloves this.', 'https://via.placeholder.com/640x480.png/004422?text=voluptatum', 'completed', 'high', '2025-09-30 08:55:21', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(494, 'Incidunt pariatur facilis quis minima minus.', 'In a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'it\'ll never do to hold it. As soon as she could not remember the simple rules their friends had taught them: such as, that a moment\'s.', 'https://via.placeholder.com/640x480.png/00aaff?text=porro', 'pending', 'high', '2025-10-15 10:28:46', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(495, 'Dicta rem natus officiis dignissimos.', 'Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to.', 'https://via.placeholder.com/640x480.png/000033?text=harum', 'in_progress', 'medium', '2025-05-30 10:07:44', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(496, 'Eligendi in suscipit quis.', 'Alice, and she could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the first sentence in her pocket) till she got to the jury. They were just beginning to see.', 'https://via.placeholder.com/640x480.png/00bb11?text=dolores', 'pending', 'medium', '2025-04-04 08:00:00', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(497, 'Cumque alias recusandae consectetur fugit nisi.', 'Alice)--\'and perhaps you were all writing very busily on slates. \'What are tarts made of?\' Alice asked in a moment like a sky-rocket!\' \'So you did, old fellow!\' said the Rabbit hastily interrupted.', 'https://via.placeholder.com/640x480.png/0033cc?text=eaque', 'completed', 'medium', '2025-04-30 02:26:50', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(498, 'Doloribus doloribus praesentium fuga consequatur magni fugit.', 'Let me see--how IS it to the other: the Duchess to play croquet.\' The Frog-Footman repeated, in the sea, \'and in that poky little house, and wondering whether she could not think of what work it.', 'https://via.placeholder.com/640x480.png/0055dd?text=quia', 'in_progress', 'low', '2025-06-15 15:02:41', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(499, 'Est tempore dolorem beatae voluptatem.', 'I shall have somebody to talk to.\' \'How are you thinking of?\' \'I beg pardon, your Majesty,\' said the King. \'It began with the bread-and-butter getting so used to it!\' pleaded poor Alice in a.', 'https://via.placeholder.com/640x480.png/002244?text=atque', 'in_progress', 'high', '2024-11-21 08:44:39', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(500, 'Recusandae tenetur mollitia enim ex.', 'Queen: so she went hunting about, and shouting \'Off with her friend. When she got back to her: its face in some book, but I hadn\'t quite finished my tea when I got up very sulkily and crossed over.', 'https://via.placeholder.com/640x480.png/005577?text=velit', 'in_progress', 'high', '2025-03-22 16:32:07', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(501, 'Quis laudantium nam aut.', 'And so she turned to the other side will make you grow taller, and the other players, and shouting \'Off with her head! Off--\' \'Nonsense!\' said Alice, (she had grown so large a house, that she hardly.', 'https://via.placeholder.com/640x480.png/0022ee?text=omnis', 'in_progress', 'high', '2025-10-24 05:14:43', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(502, 'Fuga dolores unde cupiditate eum recusandae.', 'When the pie was all dark overhead; before her was another long passage, and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice an excellent opportunity for making.', 'https://via.placeholder.com/640x480.png/0044ff?text=et', 'in_progress', 'low', '2025-08-23 19:38:33', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(503, 'Et nesciunt facilis necessitatibus et hic est enim illo.', 'King had said that day. \'No, no!\' said the Queen, \'and he shall tell you more than nine feet high. \'Whoever lives there,\' thought Alice, and she grew no larger: still it was a little of it?\' said.', 'https://via.placeholder.com/640x480.png/006677?text=repellendus', 'pending', 'high', '2025-11-06 05:29:07', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(504, 'Distinctio aperiam rerum assumenda debitis reprehenderit aut.', 'And here poor Alice began telling them her adventures from the Gryphon, half to herself, and began by producing from under his arm a great deal to ME,\' said Alice as he shook both his shoes on.', 'https://via.placeholder.com/640x480.png/0055bb?text=illum', 'pending', 'low', '2025-09-25 03:11:59', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(505, 'Nostrum atque consequatur esse quo.', 'I needn\'t be so kind,\' Alice replied, so eagerly that the Gryphon only answered \'Come on!\' cried the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little startled by seeing the.', 'https://via.placeholder.com/640x480.png/004488?text=aspernatur', 'in_progress', 'high', '2025-08-21 02:30:05', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(506, 'Consectetur omnis eum laborum id magni sequi.', 'Alice had got its head to hide a smile: some of the officers of the Rabbit\'s little white kid gloves in one hand, and Alice was so large a house, that she was coming back to the end of the window.', 'https://via.placeholder.com/640x480.png/001188?text=ex', 'in_progress', 'medium', '2025-04-26 23:36:41', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(507, 'Fugit laborum perspiciatis possimus ut quos natus.', 'All the time he had never seen such a wretched height to rest herself, and nibbled a little door into that lovely garden. First, however, she went hunting about, and shouting \'Off with her head!.', 'https://via.placeholder.com/640x480.png/006600?text=et', 'pending', 'low', '2025-06-20 18:44:22', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(508, 'Dolores eveniet sapiente et voluptatem ea voluptatem dolorem veritatis.', 'Gryphon. \'It all came different!\' Alice replied thoughtfully. \'They have their tails in their proper places--ALL,\' he repeated with great curiosity, and this was his first remark, \'It was the.', 'https://via.placeholder.com/640x480.png/005577?text=molestiae', 'completed', 'high', '2025-04-21 02:37:52', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(509, 'Sint velit ad est corrupti ratione.', 'Geography. London is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have a prize herself, you know,\' said Alice, in a low, trembling voice. \'There\'s more evidence to come.', 'https://via.placeholder.com/640x480.png/006688?text=est', 'pending', 'medium', '2025-06-04 07:55:14', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(510, 'Ut natus assumenda harum voluptates.', 'Why, there\'s hardly room to grow here,\' said the cook. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen till she had put on one knee as he spoke. \'UNimportant, of course.', 'https://via.placeholder.com/640x480.png/00aa22?text=quia', 'in_progress', 'high', '2024-12-26 13:44:53', 1, 1, 1, 17, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(511, 'Ex esse voluptatem velit dolor nemo autem porro.', 'Alice. \'And ever since that,\' the Hatter replied. \'Of course it was,\' the March Hare. \'Sixteenth,\' added the March Hare meekly replied. \'Yes, but some crumbs must have been that,\' said the Hatter.', 'https://via.placeholder.com/640x480.png/0000cc?text=totam', 'completed', 'medium', '2025-02-01 23:21:54', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(512, 'Quibusdam atque accusamus est rerum.', 'Gryphon, with a growl, And concluded the banquet--] \'What IS a long silence after this, and Alice heard it muttering to himself as he spoke. \'A cat may look at a reasonable pace,\' said the Queen, in.', 'https://via.placeholder.com/640x480.png/002200?text=distinctio', 'completed', 'high', '2025-11-12 17:46:35', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(513, 'Est facere cumque molestiae non.', 'I\'d only been the right height to rest her chin upon Alice\'s shoulder, and it put more simply--\"Never imagine yourself not to be sure, she had somehow fallen into a conversation. Alice replied.', 'https://via.placeholder.com/640x480.png/00ddff?text=doloremque', 'pending', 'high', '2025-07-12 14:40:48', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(514, 'Voluptas quibusdam ut corrupti.', 'Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said the King, rubbing his hands; \'so now let the jury--\' \'If any one of the players to be Number One,\' said Alice.', 'https://via.placeholder.com/640x480.png/0011ee?text=et', 'completed', 'low', '2025-01-31 04:56:21', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(515, 'Voluptatem commodi nemo commodi autem.', 'There was nothing else to say anything. \'Why,\' said the Lory hastily. \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Mock Turtle with a shiver. \'I beg pardon, your Majesty,\' said Alice in a.', 'https://via.placeholder.com/640x480.png/000066?text=laudantium', 'completed', 'medium', '2025-07-01 02:56:22', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(516, 'Omnis sint quaerat debitis explicabo itaque ad earum.', 'I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down--Here, Bill! the master says you\'re to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you.', 'https://via.placeholder.com/640x480.png/00cc55?text=qui', 'completed', 'low', '2025-02-06 12:23:33', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(517, 'Doloribus aspernatur dolores doloremque numquam.', 'There ought to be beheaded!\' \'What for?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter replied. \'Of course they were\', said the White Rabbit read out, at the stick, and made a.', 'https://via.placeholder.com/640x480.png/0055aa?text=ea', 'pending', 'low', '2025-10-14 00:08:11', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(518, 'Eveniet ad sint quis quibusdam sapiente iusto similique ex.', 'King, the Queen, pointing to Alice a good opportunity for making her escape; so she tried the effect of lying down with wonder at the Duchess was sitting on a little three-legged table, all made a.', 'https://via.placeholder.com/640x480.png/0077ee?text=et', 'in_progress', 'low', '2025-02-19 10:50:28', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(519, 'Et in delectus sunt.', 'I was going to turn into a pig,\' Alice quietly said, just as I do,\' said Alice in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they can\'t prove I did: there\'s no use in the.', 'https://via.placeholder.com/640x480.png/008866?text=ducimus', 'in_progress', 'low', '2025-09-07 16:25:39', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(520, 'Aspernatur facilis atque voluptates id qui et accusamus.', 'Don\'t let me hear the name \'W. RABBIT\' engraved upon it. She stretched herself up on to himself as he spoke, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can reach the.', 'https://via.placeholder.com/640x480.png/00aadd?text=voluptas', 'pending', 'low', '2025-04-19 05:43:13', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(521, 'Amet consequuntur et excepturi minima omnis aut.', 'Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the house!\' (Which was very provoking to find that her idea of the hall; but, alas! the little passage: and THEN--she found herself safe.', 'https://via.placeholder.com/640x480.png/002266?text=necessitatibus', 'completed', 'medium', '2024-12-06 00:24:22', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(522, 'Blanditiis consectetur eligendi quos voluptates dignissimos.', 'Mock Turtle Soup is made from,\' said the King. \'When did you manage on the song, she kept fanning herself all the other side. The further off from England the nearer is to give the prizes?\' quite a.', 'https://via.placeholder.com/640x480.png/0077bb?text=omnis', 'in_progress', 'medium', '2025-05-13 05:56:11', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(523, 'Porro ipsa molestias culpa laboriosam sit aut.', 'The players all played at once to eat her up in her lessons in here? Why, there\'s hardly enough of it appeared. \'I don\'t see how the Dodo solemnly presented the thimble, looking as solemn as she.', 'https://via.placeholder.com/640x480.png/00ee66?text=consequatur', 'pending', 'high', '2025-04-14 22:17:18', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(524, 'Aliquid recusandae debitis rerum vero dolorem.', 'THE VOICE OF THE SLUGGARD,\"\' said the King added in a shrill, passionate voice. \'Would YOU like cats if you like,\' said the King, looking round the refreshments!\' But there seemed to her in the.', 'https://via.placeholder.com/640x480.png/0066bb?text=molestiae', 'completed', 'low', '2025-04-02 20:57:45', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(525, 'Possimus eligendi repellendus eum eius.', 'After a while she remembered having seen in her haste, she had not noticed before, and he called the Queen, who was beginning to grow here,\' said the King: \'however, it may kiss my hand if it.', 'https://via.placeholder.com/640x480.png/006600?text=maxime', 'completed', 'low', '2025-08-10 03:41:03', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(526, 'Eveniet sit repudiandae quia consectetur sed voluptatum.', 'Dinah, and saying to herself, (not in a tone of great surprise. \'Of course they were\', said the Gryphon. \'Turn a somersault in the air. She did it so quickly that the poor child, \'for I can\'t be.', 'https://via.placeholder.com/640x480.png/0099cc?text=velit', 'completed', 'medium', '2025-08-12 04:45:10', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(527, 'Veritatis porro ut iusto maxime officiis maiores.', 'He got behind Alice as he found it very much,\' said Alice; \'but when you have of putting things!\' \'It\'s a Cheshire cat,\' said the King, and the jury wrote it down into its eyes again, to see it.', 'https://via.placeholder.com/640x480.png/00aa66?text=nulla', 'in_progress', 'low', '2025-04-15 16:18:40', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(528, 'Nulla dolore itaque tempora amet qui rerum.', 'Wonderland, though she knew that it felt quite relieved to see it trying in a low voice. \'Not at first, but, after watching it a little glass box that was said, and went on growing, and, as she.', 'https://via.placeholder.com/640x480.png/001100?text=nisi', 'pending', 'medium', '2025-08-17 20:46:31', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(529, 'Nulla qui quos quae consequatur.', 'MINE.\' The Queen turned crimson with fury, and, after glaring at her rather inquisitively, and seemed not to her, one on each side to guard him; and near the right size, that it led into the.', 'https://via.placeholder.com/640x480.png/003388?text=explicabo', 'pending', 'high', '2025-02-19 22:40:11', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(530, 'Et eos optio fugit minus et non.', 'But do cats eat bats, I wonder?\' And here poor Alice in a great deal to ME,\' said Alice angrily. \'It wasn\'t very civil of you to death.\"\' \'You are not attending!\' said the Duchess, the Duchess! Oh!.', 'https://via.placeholder.com/640x480.png/003311?text=reiciendis', 'in_progress', 'medium', '2025-02-02 06:38:23', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(531, 'Rerum enim esse odio facere ipsum tenetur.', 'I wonder what they WILL do next! As for pulling me out of its mouth and began by producing from under his arm a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they all spoke at.', 'https://via.placeholder.com/640x480.png/001199?text=quos', 'in_progress', 'high', '2025-11-07 06:42:04', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(532, 'Et unde quibusdam delectus deserunt cum.', 'And the executioner ran wildly up and down looking for the Duchess to play croquet.\' Then they all looked so grave that she was beginning to end,\' said the Hatter: \'it\'s very easy to take out of a.', 'https://via.placeholder.com/640x480.png/00aa33?text=culpa', 'pending', 'high', '2025-09-16 19:02:50', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(533, 'Distinctio ut est soluta nam culpa culpa id.', 'Duchess. \'I make you grow taller, and the words \'DRINK ME\' beautifully printed on it (as she had known them all her wonderful Adventures, till she was looking at everything about her, to pass away.', 'https://via.placeholder.com/640x480.png/0044aa?text=qui', 'pending', 'high', '2025-03-25 00:32:47', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(534, 'Quod velit eos veritatis voluptas ullam porro quasi rerum.', 'I could not remember ever having seen in her face, and large eyes like a writing-desk?\' \'Come, we shall have somebody to talk to.\' \'How are you thinking of?\' \'I beg your pardon,\' said Alice sadly.', 'https://via.placeholder.com/640x480.png/003388?text=quo', 'completed', 'high', '2025-08-04 23:58:38', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(535, 'Sint blanditiis a porro ab accusantium.', 'At last the Mouse, getting up and went in. The door led right into a large mustard-mine near here. And the executioner myself,\' said the King; and as Alice could think of any use, now,\' thought.', 'https://via.placeholder.com/640x480.png/005555?text=in', 'completed', 'low', '2025-07-27 07:21:47', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(536, 'Cupiditate nihil aut sapiente a.', 'WHAT?\' thought Alice \'without pictures or conversations in it, and finding it very much,\' said Alice, swallowing down her flamingo, and began to cry again, for she was as much as she fell very.', 'https://via.placeholder.com/640x480.png/009977?text=quia', 'in_progress', 'high', '2025-10-20 06:16:59', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(537, 'Tenetur non dignissimos cum quasi illum quo.', 'Mock Turtle said: \'no wise fish would go anywhere without a grin,\' thought Alice; \'I might as well as pigs, and was going off into a large arm-chair at one end of the way--\' \'THAT generally takes.', 'https://via.placeholder.com/640x480.png/005555?text=qui', 'completed', 'low', '2025-06-03 23:55:24', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(538, 'Consequatur explicabo sit sint eius omnis.', 'Alice, were in custody and under sentence of execution.\' \'What for?\' said the King very decidedly, and there was a dead silence instantly, and Alice could see, when she had hoped) a fan and gloves.', 'https://via.placeholder.com/640x480.png/0044bb?text=nisi', 'in_progress', 'medium', '2025-03-08 14:37:05', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(539, 'Sed omnis blanditiis est aut earum.', 'Jack-in-the-box, and up I goes like a Jack-in-the-box, and up I goes like a wild beast, screamed \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very important,\' the King had.', 'https://via.placeholder.com/640x480.png/007766?text=deleniti', 'pending', 'low', '2024-12-01 09:49:06', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(540, 'Consequuntur enim explicabo tempore perspiciatis.', 'Alice was very deep, or she fell very slowly, for she had someone to listen to her, one on each side to guard him; and near the King say in a mournful tone, \'he won\'t do a thing as \"I sleep when I.', 'https://via.placeholder.com/640x480.png/00ddff?text=dolorem', 'in_progress', 'medium', '2024-12-13 20:36:57', 1, 1, 1, 18, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(541, 'Ab et officiis quam minima quaerat consectetur expedita.', 'Rabbit coming to look through into the sky. Twinkle, twinkle--\"\' Here the other birds tittered audibly. \'What I was going on, as she spoke; \'either you or your head must be collected at once took up.', 'https://via.placeholder.com/640x480.png/00dddd?text=suscipit', 'completed', 'medium', '2025-05-16 03:24:30', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(542, 'Placeat quo id maiores.', 'Alice. \'Nothing WHATEVER?\' persisted the King. The White Rabbit put on her toes when they liked, and left foot, so as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you.', 'https://via.placeholder.com/640x480.png/00aacc?text=error', 'completed', 'low', '2025-03-23 19:14:29', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(543, 'Quibusdam esse quia minima beatae eaque est.', 'Gryphon said to the shore, and then added them up, and began to get dry very soon. \'Ahem!\' said the Duchess; \'and most of \'em do.\' \'I don\'t know of any one; so, when the White Rabbit blew three.', 'https://via.placeholder.com/640x480.png/004455?text=dolores', 'pending', 'medium', '2025-03-16 01:37:30', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(544, 'Rem illo ullam eveniet mollitia et minima.', 'Mock Turtle angrily: \'really you are very dull!\' \'You ought to go through next walking about at the other, saying, in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and repeat \"\'TIS.', 'https://via.placeholder.com/640x480.png/007755?text=dolorem', 'completed', 'low', '2025-04-16 18:09:44', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(545, 'Atque quod perferendis qui quibusdam quis est voluptatem.', 'I was sent for.\' \'You ought to tell him. \'A nice muddle their slates\'ll be in a very little use, as it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close behind us, and.', 'https://via.placeholder.com/640x480.png/003311?text=eveniet', 'pending', 'medium', '2025-08-20 05:21:07', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(546, 'Est a totam nemo et facilis sit culpa.', 'I must sugar my hair.\" As a duck with its arms folded, quietly smoking a long way. So she called softly after it, and on it were nine o\'clock in the shade: however, the moment they saw the Mock.', 'https://via.placeholder.com/640x480.png/005500?text=voluptas', 'in_progress', 'high', '2024-11-17 16:29:33', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(547, 'Possimus deserunt ut nihil officia voluptatem.', 'The King\'s argument was, that she let the Dormouse shall!\' they both sat silent for a minute or two. \'They couldn\'t have done that, you know,\' said the Dormouse: \'not in that case I can reach the.', 'https://via.placeholder.com/640x480.png/0044cc?text=quas', 'in_progress', 'low', '2025-01-03 04:30:50', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(548, 'Suscipit omnis et recusandae a at reiciendis.', 'Alice did not come the same words as before, \'and things are \"much of a candle is blown out, for she felt unhappy. \'It was a table, with a knife, it usually bleeds; and she went to the.', 'https://via.placeholder.com/640x480.png/00aaaa?text=reiciendis', 'in_progress', 'low', '2025-06-25 18:08:25', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(549, 'Et molestiae ipsum dolores ea.', 'CURTSEYING as you\'re falling through the door, and tried to fancy to herself as she could. \'The Dormouse is asleep again,\' said the Gryphon. \'Do you take me for asking! No, it\'ll never do to come.', 'https://via.placeholder.com/640x480.png/00ffaa?text=molestias', 'in_progress', 'medium', '2025-07-09 00:37:29', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(550, 'Minus exercitationem eveniet necessitatibus eius.', 'Dinah, tell me your history, you know,\' the Hatter went on, turning to the conclusion that it is!\' \'Why should it?\' muttered the Hatter. He had been all the same, the next question is, what did the.', 'https://via.placeholder.com/640x480.png/00dd66?text=mollitia', 'pending', 'medium', '2025-09-16 00:26:14', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(551, 'Eum et et voluptatem quibusdam autem et.', 'Hatter were having tea at it: a Dormouse was sitting on a little scream, half of anger, and tried to beat them off, and found herself at last the Mouse, sharply and very nearly carried it out to the.', 'https://via.placeholder.com/640x480.png/007733?text=ut', 'in_progress', 'low', '2025-05-10 03:08:44', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(552, 'Incidunt eveniet numquam et vel perspiciatis.', 'Gryphon added \'Come, let\'s try Geography. London is the same when I get it home?\' when it had been, it suddenly appeared again. \'By-the-bye, what became of the March Hare. \'Yes, please do!\' but the.', 'https://via.placeholder.com/640x480.png/00ff99?text=ipsa', 'completed', 'low', '2025-10-11 06:58:39', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(553, 'Et aspernatur corporis iste quam.', 'Alice, as she went on in the schoolroom, and though this was his first speech. \'You should learn not to her, \'if we had the door as you can--\' \'Swim after them!\' screamed the Queen. \'Sentence.', 'https://via.placeholder.com/640x480.png/00bb77?text=porro', 'in_progress', 'medium', '2025-02-23 03:23:16', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(554, 'Non totam dignissimos consequatur ipsa.', 'All the time he was gone, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her choice, and was delighted to find that the pebbles.', 'https://via.placeholder.com/640x480.png/002222?text=esse', 'in_progress', 'low', '2025-06-22 02:52:51', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(555, 'Molestiae saepe voluptates voluptates deserunt ullam quaerat.', 'Alice, and she hurried out of the March Hare: she thought it would,\' said the Pigeon; \'but I know is, it would be grand, certainly,\' said Alice, looking down at her feet in a low voice, \'Why the.', 'https://via.placeholder.com/640x480.png/00bb00?text=itaque', 'completed', 'high', '2024-11-27 20:45:01', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(556, 'Pariatur qui quas illum.', 'Alice could bear: she got used to call him Tortoise--\' \'Why did they draw the treacle from?\' \'You can draw water out of a candle is blown out, for she had expected: before she gave one sharp kick.', 'https://via.placeholder.com/640x480.png/00ff22?text=est', 'completed', 'high', '2025-09-11 09:54:58', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(557, 'Autem mollitia qui nihil dolores esse.', 'T!\' said the Hatter; \'so I can\'t take more.\' \'You mean you can\'t help it,\' said Alice sadly. \'Hand it over a little shriek, and went on growing, and very soon found out that the Mouse replied rather.', 'https://via.placeholder.com/640x480.png/004488?text=quisquam', 'completed', 'high', '2025-05-09 06:49:32', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(558, 'Vel ea ut necessitatibus harum et repudiandae iure optio.', 'Alice: \'three inches is such a thing. After a minute or two, it was talking in his sleep, \'that \"I breathe when I learn music.\' \'Ah! that accounts for it,\' said the Caterpillar; and it said nothing.', 'https://via.placeholder.com/640x480.png/00eeee?text=non', 'pending', 'medium', '2025-04-06 23:00:48', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(559, 'Molestiae aut quo blanditiis adipisci.', 'White Rabbit, trotting slowly back again, and Alice called out \'The race is over!\' and they repeated their arguments to her, \'if we had the door began sneezing all at once. The Dormouse shook.', 'https://via.placeholder.com/640x480.png/008866?text=molestias', 'pending', 'medium', '2025-04-30 01:53:02', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(560, 'Animi dolores quo dolor.', 'How puzzling all these strange Adventures of hers that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, very loudly and decidedly, and there was no more of it at last, with a.', 'https://via.placeholder.com/640x480.png/0077bb?text=sint', 'completed', 'low', '2025-10-26 19:00:02', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(561, 'Itaque laboriosam ea iusto eligendi dicta.', 'MUST be more to come, so she set to work nibbling at the top of her ever getting out of breath, and said \'What else had you to offer it,\' said the Mock Turtle had just upset the milk-jug into his.', 'https://via.placeholder.com/640x480.png/0033aa?text=minima', 'completed', 'high', '2025-07-31 03:30:04', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(562, 'Illum est beatae delectus a similique placeat.', 'Hatter were having tea at it: a Dormouse was sitting on the song, she kept on puzzling about it while the rest of the court. \'What do you mean by that?\' said the Caterpillar. \'Not QUITE right, I\'m.', 'https://via.placeholder.com/640x480.png/00ff11?text=a', 'in_progress', 'low', '2025-10-28 05:43:48', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(563, 'Quidem voluptatem voluptatem ut qui dolor consequatur.', 'Gryphon, and, taking Alice by the soldiers, who of course was, how to get an opportunity of taking it away. She did it so yet,\' said Alice; \'that\'s not at all comfortable, and it was quite pleased.', 'https://via.placeholder.com/640x480.png/006688?text=temporibus', 'in_progress', 'high', '2025-01-11 16:12:32', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(564, 'Repellat saepe omnis perspiciatis autem vel nostrum minima.', 'Gryphon, and all that,\' he said to herself as she spoke. (The unfortunate little Bill had left off quarrelling with the dream of Wonderland of long ago: and how she would feel with all her wonderful.', 'https://via.placeholder.com/640x480.png/000099?text=quisquam', 'in_progress', 'medium', '2025-02-18 15:25:50', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(565, 'Rerum qui ducimus in nulla excepturi id et in.', 'No, it\'ll never do to hold it. As soon as she could, for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in some book, but I don\'t keep the same solemn tone, only.', 'https://via.placeholder.com/640x480.png/006644?text=totam', 'in_progress', 'medium', '2025-09-20 02:08:55', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(566, 'Placeat error et velit.', 'For this must ever be A secret, kept from all the jurymen are back in a great hurry. An enormous puppy was looking for eggs, as it went, as if it had no idea what a Mock Turtle in a mournful tone.', 'https://via.placeholder.com/640x480.png/006666?text=et', 'completed', 'low', '2025-08-31 16:16:04', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(567, 'Consequatur debitis vel aperiam in pariatur laboriosam.', 'After a time she heard was a large cauldron which seemed to be told so. \'It\'s really dreadful,\' she muttered to herself, (not in a great many more than that, if you wouldn\'t keep appearing and.', 'https://via.placeholder.com/640x480.png/006688?text=distinctio', 'in_progress', 'low', '2025-08-17 18:31:23', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(568, 'Ratione et laborum voluptatibus aut quia quis.', 'Hatter: \'I\'m on the glass table and the March Hare went on. \'Would you tell me,\' said Alice, \'I\'ve often seen them so shiny?\' Alice looked down into a butterfly, I should be free of them say, \'Look.', 'https://via.placeholder.com/640x480.png/00ff00?text=veritatis', 'in_progress', 'medium', '2025-08-09 01:38:57', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(569, 'Omnis qui minus dolorum.', 'Dormouse went on, yawning and rubbing its eyes, for it was just possible it had come back again, and looking anxiously about her. \'Oh, do let me hear the very tones of her going, though she felt.', 'https://via.placeholder.com/640x480.png/006688?text=dolore', 'in_progress', 'low', '2025-02-20 05:15:58', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(570, 'Earum quia autem laboriosam laborum.', 'I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the top of it. Presently the Rabbit say to itself, \'Oh dear! Oh dear! I wish I hadn\'t to bring but one; Bill\'s got.', 'https://via.placeholder.com/640x480.png/009900?text=aliquid', 'completed', 'high', '2025-07-27 16:56:41', 1, 1, 1, 19, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(571, 'Molestiae odio rerum accusantium numquam adipisci.', 'I\'ve got to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Gryphon added \'Come, let\'s hear some of them can explain it,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t.', 'https://via.placeholder.com/640x480.png/005566?text=ipsam', 'pending', 'low', '2025-08-11 00:32:13', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(572, 'Sit est at ut in in.', 'Hatter: \'it\'s very rude.\' The Hatter looked at Alice, and tried to open it; but, as the other.\' As soon as look at the White Rabbit with pink eyes ran close by it, and burning with curiosity, she.', 'https://via.placeholder.com/640x480.png/00cc11?text=autem', 'pending', 'low', '2025-07-17 03:51:48', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(573, 'Exercitationem necessitatibus velit accusantium iure quo natus.', 'I must be the best way you go,\' said the Cat, as soon as look at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was not much like keeping so close to her great disappointment it.', 'https://via.placeholder.com/640x480.png/00ffff?text=explicabo', 'pending', 'low', '2025-05-23 18:12:20', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(574, 'Sequi inventore nulla enim laborum quibusdam voluptas.', 'Dormouse was sitting on the glass table as before, \'and things are worse than ever,\' thought the poor animal\'s feelings. \'I quite forgot how to begin.\' He looked anxiously round, to make out that.', 'https://via.placeholder.com/640x480.png/002288?text=perspiciatis', 'in_progress', 'low', '2025-07-17 12:01:16', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(575, 'Quidem similique consequuntur assumenda laborum esse corrupti.', 'Queen had only one who had got its head to keep back the wandering hair that curled all over their slates; \'but it doesn\'t understand English,\' thought Alice; but she heard a voice of the teacups as.', 'https://via.placeholder.com/640x480.png/007777?text=eos', 'in_progress', 'low', '2025-08-20 03:25:54', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(576, 'Deleniti ab asperiores rerum impedit sint sint mollitia dolores.', 'Alice. \'I mean what I see\"!\' \'You might just as well as the rest were quite silent, and looked at Alice. \'It must have been changed for Mabel! I\'ll try if I only wish it was,\' he said. \'Fifteenth,\'.', 'https://via.placeholder.com/640x480.png/00eeaa?text=qui', 'pending', 'medium', '2025-02-01 09:59:55', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(577, 'Eum delectus sunt ipsa error.', 'King added in an offended tone, and added with a kind of serpent, that\'s all I can kick a little!\' She drew her foot slipped, and in a low, timid voice, \'If you do. I\'ll set Dinah at you!\' There was.', 'https://via.placeholder.com/640x480.png/002255?text=ipsa', 'pending', 'low', '2025-11-08 18:49:26', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(578, 'Est eveniet voluptas et aut assumenda aut vitae voluptas.', 'March Hare. \'He denies it,\' said the Mouse. \'Of course,\' the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. \'I wonder what CAN have happened.', 'https://via.placeholder.com/640x480.png/0099cc?text=nobis', 'in_progress', 'high', '2025-04-05 06:21:27', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(579, 'Quia explicabo ea est.', 'I can\'t tell you how it was a very little use without my shoulders. Oh, how I wish you wouldn\'t squeeze so.\' said the Caterpillar. \'I\'m afraid I don\'t think,\' Alice went on, \'What HAVE you been.', 'https://via.placeholder.com/640x480.png/00aa11?text=velit', 'completed', 'high', '2025-09-07 14:53:29', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(580, 'Labore modi aliquid voluptatem est.', 'Duchess began in a melancholy tone: \'it doesn\'t seem to have got into a chrysalis--you will some day, you know--and then after that savage Queen: so she went on, yawning and rubbing its eyes, \'Of.', 'https://via.placeholder.com/640x480.png/00cc11?text=aut', 'completed', 'low', '2025-08-02 16:02:31', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(581, 'Accusamus dolores aut et et eaque.', 'Dinah, and saying to herself \'Now I can find it.\' And she began nibbling at the picture.) \'Up, lazy thing!\' said Alice, \'it\'s very interesting. I never knew whether it was talking in a great hurry.', 'https://via.placeholder.com/640x480.png/007744?text=beatae', 'pending', 'high', '2025-05-15 14:32:56', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(582, 'At aliquid dignissimos repudiandae ipsum.', 'She felt that she had finished, her sister on the top of his pocket, and was a most extraordinary noise going on between the executioner, the King, \'or I\'ll have you executed, whether you\'re nervous.', 'https://via.placeholder.com/640x480.png/008877?text=rerum', 'pending', 'low', '2025-05-02 11:24:07', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(583, 'Et molestias nemo similique a non molestiae.', 'Gryphon. \'Of course,\' the Dodo had paused as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter went on without.', 'https://via.placeholder.com/640x480.png/005599?text=et', 'completed', 'medium', '2025-10-03 23:56:17', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(584, 'Esse quo veritatis ipsa quia in amet.', 'He sent them word I had our Dinah here, I know who I am! But I\'d better take him his fan and a Canary called out \'The race is over!\' and they walked off together. Alice laughed so much frightened to.', 'https://via.placeholder.com/640x480.png/008844?text=consectetur', 'completed', 'low', '2025-05-15 07:42:00', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(585, 'Voluptatum quasi facere voluptatem deleniti vel omnis veritatis commodi.', 'Alice to herself, as usual. I wonder what CAN have happened to you? Tell us all about as curious as it is.\' \'Then you shouldn\'t talk,\' said the Duchess, \'chop off her knowledge, as there was a.', 'https://via.placeholder.com/640x480.png/00aacc?text=ipsum', 'in_progress', 'medium', '2025-03-09 15:52:43', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(586, 'Tenetur perferendis tempora eum nobis doloremque.', 'I\'ve tried to beat time when I get it home?\' when it grunted again, and went in. The door led right into a butterfly, I should think you might like to show you! A little bright-eyed terrier, you.', 'https://via.placeholder.com/640x480.png/002255?text=recusandae', 'in_progress', 'high', '2025-09-07 22:42:20', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(587, 'Eos quos expedita ad omnis qui commodi soluta.', 'Mock Turtle said with some severity; \'it\'s very easy to know what it was: she was ever to get out of its right paw round, \'lives a March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t.', 'https://via.placeholder.com/640x480.png/007700?text=porro', 'completed', 'low', '2025-09-04 19:43:24', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(588, 'Nobis doloremque nostrum culpa quos quibusdam esse minus.', 'Rabbit noticed Alice, as the Lory positively refused to tell them something more. \'You promised to tell me the truth: did you call it purring, not growling,\' said Alice. \'Come, let\'s hear some of.', 'https://via.placeholder.com/640x480.png/005500?text=omnis', 'pending', 'low', '2025-09-30 18:37:52', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(589, 'Magnam quam reiciendis nesciunt vel nihil voluptas beatae.', 'Alice, \'as all the unjust things--\' when his eye chanced to fall upon Alice, as she went on: \'But why did they live at the mushroom for a great deal to ME,\' said the Gryphon. \'Turn a somersault in.', 'https://via.placeholder.com/640x480.png/00bb99?text=beatae', 'pending', 'low', '2024-11-27 04:30:45', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(590, 'Unde impedit ut eos at atque.', 'And he got up in great fear lest she should meet the real Mary Ann, what ARE you doing out here? Run home this moment, I tell you, you coward!\' and at last turned sulky, and would only say, \'I am.', 'https://via.placeholder.com/640x480.png/001199?text=quis', 'pending', 'low', '2025-07-21 20:44:08', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(591, 'Adipisci velit iure quo commodi dolorem ut et.', 'Now you know.\' \'Who is it I can\'t get out again. That\'s all.\' \'Thank you,\' said the Lory, with a lobster as a cushion, resting their elbows on it, and fortunately was just in time to avoid shrinking.', 'https://via.placeholder.com/640x480.png/005555?text=labore', 'completed', 'low', '2025-09-01 10:08:00', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(592, 'Cupiditate ea excepturi quia culpa molestias officia officiis.', 'I THINK,\' said Alice. \'Anything you like,\' said the March Hare will be the right house, because the chimneys were shaped like the Queen?\' said the March Hare took the hookah into its face to see the.', 'https://via.placeholder.com/640x480.png/0044bb?text=magni', 'pending', 'high', '2025-09-10 06:51:34', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(593, 'Impedit magnam et quia voluptas et amet.', 'Will you, won\'t you join the dance. Would not, could not, could not, would not, could not, would not allow without knowing how old it was, even before she got to do,\' said Alice very politely; but.', 'https://via.placeholder.com/640x480.png/004477?text=recusandae', 'pending', 'low', '2025-02-05 02:21:21', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(594, 'Voluptas quis est rem laudantium eius explicabo velit.', 'King; and as Alice could not answer without a cat! It\'s the most interesting, and perhaps after all it might not escape again, and put it more clearly,\' Alice replied in an undertone to the.', 'https://via.placeholder.com/640x480.png/00ff22?text=architecto', 'in_progress', 'low', '2025-09-25 02:03:08', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(595, 'Sunt deserunt voluptatibus est consequatur nisi nostrum deserunt nihil.', 'CHAPTER V. Advice from a bottle marked \'poison,\' so Alice soon began talking to herself, as she could. \'The game\'s going on rather better now,\' she added in an offended tone, \'so I can\'t understand.', 'https://via.placeholder.com/640x480.png/00ccff?text=animi', 'in_progress', 'medium', '2024-12-13 09:53:43', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(596, 'Necessitatibus nisi praesentium excepturi culpa illo natus reprehenderit.', 'YOUR shoes done with?\' said the Duchess; \'and that\'s a fact.\' Alice did not sneeze, were the two sides of the Queen was in March.\' As she said these words her foot as far down the chimney close.', 'https://via.placeholder.com/640x480.png/00dd33?text=dolores', 'pending', 'medium', '2025-03-09 17:34:35', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(597, 'Iure nostrum quisquam vel ducimus recusandae.', 'I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat went on, taking first one side and up the conversation.', 'https://via.placeholder.com/640x480.png/00ee55?text=doloribus', 'pending', 'high', '2025-07-09 14:39:06', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(598, 'Sit doloremque quisquam aperiam quis.', 'I gave her one, they gave him two, You gave us three or more; They all sat down a very truthful child; \'but little girls of her knowledge. \'Just think of any use, now,\' thought poor Alice, that she.', 'https://via.placeholder.com/640x480.png/001144?text=recusandae', 'in_progress', 'low', '2025-03-23 14:33:06', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(599, 'Maiores et vel beatae quisquam adipisci quae non aut.', 'I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the Gryphon: and Alice could only see her. She is such a dear quiet thing,\' Alice went on, \'you throw the--\' \'The.', 'https://via.placeholder.com/640x480.png/00eedd?text=ut', 'pending', 'high', '2025-05-13 10:27:40', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(600, 'Modi quis aut vel accusamus expedita omnis.', 'Alice desperately: \'he\'s perfectly idiotic!\' And she began nibbling at the number of bathing machines in the distance would take the place of the tale was something like this:-- \'Fury said to.', 'https://via.placeholder.com/640x480.png/003311?text=sint', 'completed', 'high', '2025-01-09 11:27:55', 1, 1, 1, 20, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(601, 'Ut eveniet voluptatibus vel autem consequatur.', 'However, she did not see anything that looked like the Mock Turtle in a bit.\' \'Perhaps it doesn\'t mind.\' The table was a queer-shaped little creature, and held it out to sea as you liked.\' \'Is that.', 'https://via.placeholder.com/640x480.png/009911?text=sint', 'pending', 'medium', '2025-05-29 18:09:40', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(602, 'Qui odit aspernatur ab sequi possimus nemo exercitationem non.', 'Gryphon. \'Do you take me for a great hurry. \'You did!\' said the Mock Turtle persisted. \'How COULD he turn them out of the garden: the roses growing on it except a tiny little thing!\' said Alice.', 'https://via.placeholder.com/640x480.png/0088ee?text=odio', 'completed', 'medium', '2024-12-19 16:51:14', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(603, 'Dolorem quia sequi autem non officiis.', 'As she said to Alice, that she was looking up into the sky all the rats and--oh dear!\' cried Alice, jumping up and leave the court; but on the trumpet, and called out, \'Sit down, all of you, and.', 'https://via.placeholder.com/640x480.png/00aa77?text=incidunt', 'pending', 'low', '2025-04-11 22:44:32', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(604, 'Illum est sapiente placeat nulla aliquid eveniet.', 'I should be like then?\' And she tried another question. \'What sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it).', 'https://via.placeholder.com/640x480.png/00eecc?text=tempore', 'pending', 'medium', '2025-06-01 13:46:08', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(605, 'Incidunt et quas dolor incidunt dolore nam temporibus.', 'White Rabbit put on her spectacles, and began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the book,\' said the Cat, \'if you don\'t like them!\' When the sands are all dry, he is.', 'https://via.placeholder.com/640x480.png/0066dd?text=veniam', 'completed', 'low', '2025-03-01 01:50:10', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(606, 'Mollitia fuga ut mollitia.', 'Paris, and Paris is the reason of that?\' \'In my youth,\' said the White Rabbit; \'in fact, there\'s nothing written on the end of half those long words, and, what\'s more, I don\'t like it, yer honour.', 'https://via.placeholder.com/640x480.png/007722?text=hic', 'in_progress', 'low', '2025-10-31 00:10:05', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(607, 'Magnam non veniam quis quisquam magni mollitia.', 'Majesty!\' the Duchess said to herself, as well as she did not like the look of the reeds--the rattling teacups would change to dull reality--the grass would be very likely true.) Down, down, down.', 'https://via.placeholder.com/640x480.png/00dd99?text=occaecati', 'completed', 'low', '2025-04-05 21:14:02', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(608, 'Beatae tempore aut vero eligendi.', 'I am so VERY much out of sight: \'but it sounds uncommon nonsense.\' Alice said to the little magic bottle had now had its full effect, and she did not at all this time, and was going to say,\' said.', 'https://via.placeholder.com/640x480.png/0055dd?text=dolor', 'completed', 'high', '2024-11-22 00:18:26', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(609, 'Dolor aut tempore eveniet sunt temporibus illo.', 'Alice thought), and it was very hot, she kept tossing the baby at her for a long way. So she began very cautiously: \'But I don\'t put my arm round your waist,\' the Duchess replied, in a day did you.', 'https://via.placeholder.com/640x480.png/0077cc?text=fugiat', 'pending', 'low', '2025-01-03 08:49:37', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(610, 'Eligendi enim et ipsa aut.', 'Miss, this here ought to be lost: away went Alice like the three were all crowded round it, panting, and asking, \'But who is to France-- Then turn not pale, beloved snail, but come and join the.', 'https://via.placeholder.com/640x480.png/0055ee?text=amet', 'pending', 'low', '2025-08-28 22:40:48', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(611, 'Minus nulla suscipit quia dolor sequi.', 'Gryphon answered, very nearly carried it out to sea as you might like to drop the jar for fear of their wits!\' So she swallowed one of the sea.\' \'I couldn\'t help it,\' said the Eaglet. \'I don\'t know.', 'https://via.placeholder.com/640x480.png/0077bb?text=illum', 'in_progress', 'low', '2025-05-26 22:42:14', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(612, 'Expedita ut qui repudiandae veritatis fugit alias aut consequatur.', 'Pigeon, but in a very humble tone, going down on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of YOUR adventures.\' \'I could tell you what year it is?\' \'Of course.', 'https://via.placeholder.com/640x480.png/0011aa?text=debitis', 'completed', 'medium', '2025-03-30 19:04:13', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(613, 'Quisquam praesentium sed fuga consectetur.', 'I eat\" is the same words as before, \'and things are \"much of a well?\' The Dormouse again took a great many teeth, so she went out, but it puzzled her very much to-night, I should think!\' (Dinah was.', 'https://via.placeholder.com/640x480.png/0033dd?text=eos', 'completed', 'high', '2025-09-05 13:00:55', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(614, 'Corrupti aut aut maxime provident ut est.', 'Gryphon. \'They can\'t have anything to put his shoes on. \'--and just take his head contemptuously. \'I dare say you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the King, going up to the.', 'https://via.placeholder.com/640x480.png/0000ff?text=eum', 'pending', 'high', '2024-12-31 02:58:35', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(615, 'Ad magni qui quasi et consequatur voluptate ut.', 'I can reach the key; and if the Queen was to find herself still in existence; \'and now for the garden!\' and she had been anxiously looking across the garden, where Alice could see, as she went.', 'https://via.placeholder.com/640x480.png/004444?text=eos', 'pending', 'medium', '2024-12-09 23:01:56', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(616, 'Sed quas ea velit aut eius sunt quia.', 'Alice crouched down among the trees behind him. \'--or next day, maybe,\' the Footman continued in the air. She did it at all,\' said the Hatter were having tea at it: a Dormouse was sitting between.', 'https://via.placeholder.com/640x480.png/009900?text=voluptatem', 'completed', 'high', '2025-04-29 06:22:12', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(617, 'Recusandae quidem voluptatum rerum neque qui sapiente.', 'I shall have to ask them what the moral of that is, but I hadn\'t mentioned Dinah!\' she said to the jury. They were indeed a queer-looking party that assembled on the bank, and of having nothing to.', 'https://via.placeholder.com/640x480.png/00dd55?text=libero', 'completed', 'high', '2025-09-24 21:54:50', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(618, 'Voluptates nulla doloremque omnis.', 'PLEASE mind what you\'re talking about,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter asked triumphantly. Alice did not see anything that had slipped in like herself. \'Would it be.', 'https://via.placeholder.com/640x480.png/001166?text=quia', 'in_progress', 'high', '2025-02-04 23:52:38', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(619, 'Cum repellendus rem perferendis ipsum possimus accusamus iste.', 'So they sat down, and felt quite relieved to see if she were looking over their slates; \'but it doesn\'t matter which way I ought to be sure, this generally happens when you have of putting things!\'.', 'https://via.placeholder.com/640x480.png/000000?text=consectetur', 'pending', 'medium', '2025-07-11 13:27:24', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(620, 'Quisquam expedita ut molestiae molestias.', 'DOTH THE LITTLE BUSY BEE,\" but it did not notice this question, but hurriedly went on, yawning and rubbing its eyes, for it flashed across her mind that she tipped over the edge of her knowledge.', 'https://via.placeholder.com/640x480.png/004444?text=tempora', 'pending', 'medium', '2025-10-13 19:59:07', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(621, 'Quo quod autem quos quis et veritatis.', 'I had our Dinah here, I know I have ordered\'; and she said to Alice, and looking anxiously round to see that queer little toss of her head pressing against the door, she found she had a VERY.', 'https://via.placeholder.com/640x480.png/00ddcc?text=blanditiis', 'in_progress', 'low', '2025-10-30 00:12:46', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(622, 'At illum id itaque aut vitae.', 'This did not feel encouraged to ask them what the next witness was the only one way up as the game was in livery: otherwise, judging by his garden.\"\' Alice did not seem to see if she had nibbled.', 'https://via.placeholder.com/640x480.png/00aaff?text=architecto', 'in_progress', 'low', '2025-02-14 20:45:04', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(623, 'Iusto ipsum sed in non harum.', 'Mock Turtle. \'Very much indeed,\' said Alice. \'Exactly so,\' said the King. \'It began with the lobsters to the Knave of Hearts, she made some tarts, All on a bough of a sea of green leaves that had.', 'https://via.placeholder.com/640x480.png/0077ee?text=nihil', 'in_progress', 'medium', '2025-02-22 16:27:23', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(624, 'Doloremque repellendus soluta ut eum in ut.', 'A little bright-eyed terrier, you know, as we needn\'t try to find her way out. \'I shall sit here,\' the Footman continued in the distance, screaming with passion. She had just upset the milk-jug into.', 'https://via.placeholder.com/640x480.png/008833?text=mollitia', 'in_progress', 'medium', '2024-11-21 19:15:26', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(625, 'Officia et sed repellendus.', 'WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at the bottom of a well--\' \'What did they live on?\' said the Caterpillar. This was such a simple question,\' added the Gryphon; and then quietly marched.', 'https://via.placeholder.com/640x480.png/00eebb?text=aut', 'in_progress', 'high', '2025-09-10 04:18:06', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(626, 'Nam rem sit dolores rerum eius qui est amet.', 'At last the Caterpillar angrily, rearing itself upright as it went. So she began again. \'I should think you could draw treacle out of it, and behind them a new idea to Alice, and she set to work.', 'https://via.placeholder.com/640x480.png/00eedd?text=illo', 'completed', 'high', '2025-03-23 02:17:20', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(627, 'Minima quibusdam nihil laborum deleniti animi nihil id.', 'Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Duck. \'Found IT,\' the Mouse was swimming away from him, and very angrily. \'A knot!\' said Alice, very earnestly. \'I\'ve had nothing yet,\'.', 'https://via.placeholder.com/640x480.png/00ee88?text=porro', 'in_progress', 'high', '2025-02-25 00:14:38', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(628, 'Quam ea quaerat quia in non quam cumque.', 'I wish you could manage it?) \'And what are they made of?\' Alice asked in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and very nearly getting up and repeat \"\'TIS THE VOICE OF THE.', 'https://via.placeholder.com/640x480.png/0099cc?text=similique', 'in_progress', 'low', '2025-03-25 12:10:31', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(629, 'Consequatur voluptatem fugiat ullam est aut laborum.', 'Queen added to one of them can explain it,\' said Alice, \'it\'s very easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Of course they were\', said the Queen, but she did so.', 'https://via.placeholder.com/640x480.png/008866?text=tempora', 'completed', 'medium', '2025-03-15 14:38:55', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(630, 'Atque repudiandae nostrum nesciunt et doloribus maiores qui velit.', 'Alice asked in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Duchess: you\'d better leave off,\' said the Caterpillar, and the jury consider their verdict,\' the King was the same as.', 'https://via.placeholder.com/640x480.png/00bb99?text=possimus', 'pending', 'low', '2025-05-16 05:24:35', 1, 1, 1, 21, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(631, 'Consequatur voluptatibus quis recusandae.', 'Pigeon, but in a melancholy tone. \'Nobody seems to be sure; but I grow up, I\'ll write one--but I\'m grown up now,\' she added in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle.', 'https://via.placeholder.com/640x480.png/00cc66?text=molestiae', 'in_progress', 'medium', '2025-06-28 19:02:09', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(632, 'Maxime consequatur modi pariatur nobis.', 'Hatter. \'Nor I,\' said the Hatter: \'but you could draw treacle out of the hall; but, alas! either the locks were too large, or the key was lying on their slates, when the tide rises and sharks are.', 'https://via.placeholder.com/640x480.png/00ee55?text=rerum', 'in_progress', 'low', '2025-10-22 11:52:05', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(633, 'Non laboriosam est veritatis et modi voluptas eligendi voluptates.', 'I know all sorts of things--I can\'t remember half of fright and half of fright and half believed herself in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' he said. (Which he.', 'https://via.placeholder.com/640x480.png/006622?text=et', 'pending', 'high', '2024-12-04 13:12:06', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(634, 'Alias ratione est ipsum atque illo.', 'I wonder what was going to begin at HIS time of life. The King\'s argument was, that you had been running half an hour or so there were three gardeners who were giving it a bit, if you could draw.', 'https://via.placeholder.com/640x480.png/0000bb?text=voluptatibus', 'pending', 'medium', '2025-03-19 22:41:39', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(635, 'Voluptates voluptate perspiciatis necessitatibus culpa fugiat.', 'Never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first figure!\' said the King. \'Nothing whatever,\' said Alice. \'Of course not,\' said the Gryphon.', 'https://via.placeholder.com/640x480.png/0000bb?text=ex', 'in_progress', 'high', '2024-11-18 08:41:14', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(636, 'Amet sed voluptates perferendis aut.', 'They\'re dreadfully fond of beheading people here; the great wonder is, that there\'s any one left alive!\' She was looking about for a minute or two, they began solemnly dancing round and look up in.', 'https://via.placeholder.com/640x480.png/0077ee?text=maxime', 'pending', 'high', '2025-10-30 18:28:51', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(637, 'Dolores fugiat animi facere autem cumque similique mollitia aut.', 'The Dormouse shook itself, and was coming to, but it just missed her. Alice caught the baby with some surprise that the hedgehog to, and, as the White Rabbit, who was a little quicker. \'What a.', 'https://via.placeholder.com/640x480.png/00bb88?text=in', 'in_progress', 'low', '2025-09-14 02:14:45', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(638, 'Et eum dolore sed sit omnis.', 'Alice very politely; but she could for sneezing. There was nothing on it but tea. \'I don\'t see how he did it,) he did with the other birds tittered audibly. \'What I was going to do it! Oh dear! I.', 'https://via.placeholder.com/640x480.png/0000cc?text=et', 'completed', 'low', '2025-02-28 14:15:55', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(639, 'Consequatur velit quos distinctio.', 'Alice, and she heard a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen jumped up on tiptoe, and peeped over the fire, and at once took up the fan and two or three.', 'https://via.placeholder.com/640x480.png/00ff22?text=qui', 'completed', 'high', '2025-07-23 08:25:28', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(640, 'Quia optio consequatur iste voluptatum non ut libero.', 'I wonder?\' As she said these words her foot as far as they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' He got behind Alice as it.', 'https://via.placeholder.com/640x480.png/0077dd?text=vitae', 'pending', 'low', '2025-09-10 15:46:16', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(641, 'Aliquam eveniet accusamus omnis architecto omnis.', 'March Hare interrupted, yawning. \'I\'m getting tired of this. I vote the young lady to see the Mock Turtle in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen. \'It proves nothing.', 'https://via.placeholder.com/640x480.png/00ff33?text=qui', 'completed', 'medium', '2025-08-27 16:58:56', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(642, 'Laudantium blanditiis quos excepturi ad vitae.', 'Mouse, frowning, but very glad she had never before seen a good deal worse off than before, as the Lory hastily. \'I thought it over a little bottle that stood near the right height to be.\' \'It is.', 'https://via.placeholder.com/640x480.png/0033aa?text=delectus', 'in_progress', 'low', '2025-02-10 04:34:37', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(643, 'Dolore provident rerum ex nihil animi autem quo.', 'She did not see anything that looked like the look of it in the kitchen. \'When I\'M a Duchess,\' she said to herself how she would gather about her any more questions about it, even if my head would.', 'https://via.placeholder.com/640x480.png/0011ff?text=nihil', 'completed', 'high', '2025-03-07 16:07:01', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(644, 'Consequatur corporis consequatur qui praesentium.', 'Some of the garden: the roses growing on it except a tiny little thing!\' said Alice, in a low curtain she had not gone much farther before she got into a pig,\' Alice quietly said, just as she was.', 'https://via.placeholder.com/640x480.png/007788?text=excepturi', 'completed', 'medium', '2025-11-08 15:47:10', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(645, 'Aut maxime voluptas incidunt numquam molestiae.', 'I don\'t like it, yer honour, at all, as the game was going to happen next. The first question of course was, how to begin.\' For, you see, as well she might, what a dear quiet thing,\' Alice went on.', 'https://via.placeholder.com/640x480.png/0088ee?text=architecto', 'completed', 'high', '2025-09-23 13:00:49', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(646, 'Enim dicta aut officiis dolor dolorum perferendis ducimus.', 'They all returned from him to you, Though they were getting so far off). \'Oh, my poor hands, how is it directed to?\' said one of them were animals, and some were birds,) \'I suppose so,\' said the.', 'https://via.placeholder.com/640x480.png/004477?text=animi', 'completed', 'high', '2025-09-18 06:02:33', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(647, 'Error id magni laboriosam unde omnis libero.', 'Knave. The Knave shook his head mournfully. \'Not I!\' said the King. \'Then it ought to have changed since her swim in the court!\' and the whole place around her became alive with the glass table and.', 'https://via.placeholder.com/640x480.png/0044bb?text=vel', 'in_progress', 'medium', '2025-01-01 09:37:56', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(648, 'Aspernatur minus cupiditate quis iure tempora aut rerum.', 'Alice joined the procession, wondering very much of a dance is it?\' he said, turning to Alice to herself, \'whenever I eat or drink anything; so I\'ll just see what was coming. It was opened by.', 'https://via.placeholder.com/640x480.png/004422?text=libero', 'in_progress', 'low', '2025-02-02 16:37:02', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(649, 'Voluptatum temporibus numquam illum nulla sint.', 'YOU with us!\"\' \'They were learning to draw, you know--\' (pointing with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the judge,\' she said to live. \'I\'ve seen a rabbit with either a.', 'https://via.placeholder.com/640x480.png/009900?text=doloribus', 'completed', 'high', '2025-09-30 23:13:56', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(650, 'Voluptas sequi eum eligendi soluta totam.', 'Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was, and waited. When the sands are all dry, he is gay as a drawing of a tree. By the use of this rope--Will the.', 'https://via.placeholder.com/640x480.png/008833?text=aut', 'completed', 'high', '2025-04-30 18:29:13', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(651, 'Autem nostrum maxime quis eos itaque et.', 'I\'ve fallen by this time?\' she said to Alice, that she did not feel encouraged to ask them what the name again!\' \'I won\'t interrupt again. I dare say you never had fits, my dear, I think?\' he said.', 'https://via.placeholder.com/640x480.png/003300?text=sapiente', 'in_progress', 'low', '2025-04-01 10:50:46', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(652, 'Dolor in laboriosam dignissimos molestias est.', 'Seaography: then Drawling--the Drawling-master was an old conger-eel, that used to it as you liked.\' \'Is that all?\' said the Rabbit say to this: so she began fancying the sort of use in knocking,\'.', 'https://via.placeholder.com/640x480.png/00cc22?text=ratione', 'in_progress', 'low', '2025-07-11 15:23:10', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(653, 'Odit et dolorem ut dolorem eum id.', 'Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know why it\'s called a whiting?\' \'I never said I could say if I can go back and see that she had gone through that day. \'A likely story.', 'https://via.placeholder.com/640x480.png/008800?text=dicta', 'in_progress', 'low', '2025-07-23 03:26:56', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(654, 'Voluptate eveniet quia est sit officiis earum et.', 'The King looked anxiously at the Gryphon interrupted in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a frightened tone. \'The Queen will hear you! You see, she came upon a time.', 'https://via.placeholder.com/640x480.png/0033aa?text=et', 'completed', 'low', '2025-11-12 13:23:00', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(655, 'Soluta quo illum assumenda provident corporis magni.', 'Gryphon, and all sorts of things, and she, oh! she knows such a hurry to get us dry would be QUITE as much as serpents do, you know.\' \'Not at all,\' said the Hatter. \'Does YOUR watch tell you his.', 'https://via.placeholder.com/640x480.png/003311?text=occaecati', 'pending', 'medium', '2025-08-02 14:01:28', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(656, 'Magnam nemo aut qui.', 'I do,\' said the Pigeon; \'but I know THAT well enough; and what does it to be trampled under its feet, \'I move that the mouse to the Queen. An invitation from the shock of being upset, and their.', 'https://via.placeholder.com/640x480.png/0022bb?text=temporibus', 'pending', 'high', '2025-09-01 19:22:10', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(657, 'Libero est quo soluta reprehenderit consequatur aspernatur voluptate.', 'For the Mouse was bristling all over, and both the hedgehogs were out of his great wig.\' The judge, by the time he had never been so much frightened that she was considering in her life before, and.', 'https://via.placeholder.com/640x480.png/00ffaa?text=cum', 'pending', 'low', '2025-01-08 14:38:27', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(658, 'Veritatis voluptas vero dolorem dolores.', 'He looked anxiously over his shoulder with some severity; \'it\'s very interesting. I never knew so much into the air. She did it so VERY wide, but she did it at all. However, \'jury-men\' would have.', 'https://via.placeholder.com/640x480.png/00ffdd?text=sit', 'in_progress', 'medium', '2025-09-02 18:54:52', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(659, 'Ipsa dicta cum vel voluptatum nulla.', 'Alice had been for some time without hearing anything more: at last she stretched her arms round it as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess.', 'https://via.placeholder.com/640x480.png/00aa99?text=iste', 'completed', 'medium', '2025-10-14 23:31:25', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(660, 'Quam eligendi itaque a tempore magnam aperiam tempore hic.', 'That\'ll be a grin, and she jumped up in a very humble tone, going down on their hands and feet, to make it stop. \'Well, I\'d hardly finished the first question, you know.\' \'And what are YOUR shoes.', 'https://via.placeholder.com/640x480.png/000066?text=ea', 'pending', 'low', '2025-07-27 18:32:09', 1, 1, 1, 22, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(661, 'Pariatur optio soluta ab rerum non.', 'Alice went on in a low trembling voice, \'--and I hadn\'t begun my tea--not above a week or so--and what with the dream of Wonderland of long ago: and how she would keep, through all her life. Indeed.', 'https://via.placeholder.com/640x480.png/0077dd?text=earum', 'pending', 'high', '2024-11-27 10:25:25', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(662, 'Id ipsam ut commodi aperiam unde.', 'Alice thought the poor little juror (it was Bill, I fancy--Who\'s to go from here?\' \'That depends a good opportunity for croqueting one of the house, quite forgetting that she let the Dormouse.', 'https://via.placeholder.com/640x480.png/0033cc?text=officiis', 'in_progress', 'high', '2025-09-23 05:17:00', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(663, 'Architecto sit voluptatem eum.', 'I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for croqueting one of the trees upon her arm, and timidly said \'Consider, my dear: she is such a very interesting dance to watch,\'.', 'https://via.placeholder.com/640x480.png/002211?text=eligendi', 'pending', 'high', '2025-04-12 20:46:25', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(664, 'Voluptatem consequatur est enim labore ipsum.', 'Bill! I wouldn\'t say anything about it, you know--\' (pointing with his head!\' or \'Off with her friend. When she got into a tidy little room with a growl, And concluded the banquet--] \'What IS the.', 'https://via.placeholder.com/640x480.png/00cc33?text=dignissimos', 'completed', 'low', '2025-06-01 21:28:30', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(665, 'Eaque quo ut soluta modi autem quos magnam.', 'I should like it very nice, (it had, in fact, a sort of way to change the subject. \'Ten hours the first question, you know.\' Alice had learnt several things of this elegant thimble\'; and, when it.', 'https://via.placeholder.com/640x480.png/00ff88?text=est', 'pending', 'high', '2025-02-07 19:23:40', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(666, 'Animi tempore excepturi illo soluta aut est.', 'Alice, \'and those twelve creatures,\' (she was rather glad there WAS no one to listen to her. \'I can hardly breathe.\' \'I can\'t remember things as I do,\' said Alice to find herself still in sight, and.', 'https://via.placeholder.com/640x480.png/001155?text=fugiat', 'completed', 'low', '2025-06-05 08:53:47', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(667, 'Et aut iure tenetur consectetur.', 'Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, jumping up and picking the daisies, when suddenly a White Rabbit hurried by--the frightened Mouse.', 'https://via.placeholder.com/640x480.png/00bb00?text=est', 'in_progress', 'low', '2024-11-16 00:13:57', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(668, 'Autem pariatur repellendus inventore minima culpa quis nam.', 'Alice would not give all else for two reasons. First, because I\'m on the back. However, it was only the pepper that makes you forget to talk. I can\'t tell you his history,\' As they walked off.', 'https://via.placeholder.com/640x480.png/00aa99?text=dignissimos', 'pending', 'low', '2025-04-29 10:22:16', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(669, 'Assumenda sint ipsam mollitia repellendus.', 'The Mouse did not like to be lost, as she was shrinking rapidly; so she went on eagerly: \'There is such a thing. After a minute or two she walked up towards it rather timidly, as she had made out.', 'https://via.placeholder.com/640x480.png/0088aa?text=quasi', 'completed', 'medium', '2025-01-01 04:30:15', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(670, 'Nisi quidem omnis recusandae voluptatem.', 'I\'m somebody else\"--but, oh dear!\' cried Alice (she was obliged to write this down on the shingle--will you come to the door. \'Call the first minute or two, which gave the Pigeon the opportunity of.', 'https://via.placeholder.com/640x480.png/000066?text=laborum', 'completed', 'high', '2025-09-02 18:05:32', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(671, 'Dolorum consequatur sapiente dolores odit et vel.', 'Alice dodged behind a great crowd assembled about them--all sorts of things, and she, oh! she knows such a long sleep you\'ve had!\' \'Oh, I\'ve had such a subject! Our family always HATED cats: nasty.', 'https://via.placeholder.com/640x480.png/00dd22?text=minima', 'pending', 'high', '2025-05-20 10:14:20', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(672, 'Ipsam sit officia sed voluptas distinctio assumenda omnis.', 'Indeed, she had drunk half the bottle, she found that it would be so stingy about it, even if my head would go round and round the thistle again; then the Rabbit\'s little white kid gloves and the.', 'https://via.placeholder.com/640x480.png/004422?text=iste', 'completed', 'high', '2025-01-25 21:43:38', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(673, 'Explicabo quod dolorem nam consequatur.', 'The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how she would catch a bad cold if she did not come the same as they were IN the well,\' Alice said nothing: she had made the whole thing.', 'https://via.placeholder.com/640x480.png/0022ff?text=at', 'pending', 'low', '2024-11-26 09:09:56', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(674, 'Neque praesentium facere numquam recusandae enim ut fugit.', 'Dormouse go on for some while in silence. Alice noticed with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, who at last she stretched her arms folded, frowning like a star-fish,\'.', 'https://via.placeholder.com/640x480.png/00bbcc?text=est', 'completed', 'high', '2025-05-01 04:34:57', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(675, 'Assumenda voluptatem laborum ea.', 'Hatter: \'it\'s very easy to know what to do, and in despair she put one arm out of it, and talking over its head. \'Very uncomfortable for the immediate adoption of more energetic remedies--\' \'Speak.', 'https://via.placeholder.com/640x480.png/009955?text=sit', 'pending', 'high', '2025-04-26 17:26:56', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(676, 'Sunt ex qui eum ipsa.', 'Majesty,\' said Two, in a frightened tone. \'The Queen of Hearts were seated on their faces, and the poor little thing was waving its right paw round, \'lives a Hatter: and in another moment, splash!.', 'https://via.placeholder.com/640x480.png/00cccc?text=omnis', 'pending', 'low', '2024-11-26 09:49:52', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(677, 'Aliquid soluta et nulla eos ipsum ad recusandae.', 'March Hare and the sounds will take care of the busy farm-yard--while the lowing of the window, I only wish it was,\' he said. \'Fifteenth,\' said the voice. \'Fetch me my gloves this moment!\' Then came.', 'https://via.placeholder.com/640x480.png/00eeee?text=aperiam', 'completed', 'high', '2025-05-07 03:45:36', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(678, 'Corporis ea velit amet fuga alias eos ea.', 'Fish-Footman was gone, and, by the time at the stick, and made a rush at Alice the moment they saw her, they hurried back to the Dormouse, after thinking a minute or two, which gave the Pigeon went.', 'https://via.placeholder.com/640x480.png/007799?text=quia', 'in_progress', 'medium', '2025-08-19 02:52:49', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(679, 'Inventore nisi quia accusamus consequuntur enim.', 'Mock Turtle. \'Certainly not!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of the fact. \'I keep them to sell,\' the Hatter added as an unusually large saucepan flew close by it, and then.', 'https://via.placeholder.com/640x480.png/00aacc?text=sit', 'pending', 'high', '2025-06-07 00:23:12', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(680, 'Suscipit et quas porro nobis soluta sit.', 'Queen, in a wondering tone. \'Why, what are YOUR shoes done with?\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a corner, \'Oh my ears and whiskers, how.', 'https://via.placeholder.com/640x480.png/0000ee?text=non', 'pending', 'high', '2024-12-05 09:27:15', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(681, 'Architecto impedit veniam dolores et.', 'I wish I could let you out, you know.\' He was looking at everything that was said, and went on: \'But why did they draw the treacle from?\' \'You can draw water out of sight: \'but it doesn\'t understand.', 'https://via.placeholder.com/640x480.png/00aa00?text=id', 'completed', 'high', '2024-12-27 22:15:18', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(682, 'Et officiis consequatur culpa in sequi.', 'Lory, with a kind of serpent, that\'s all you know about it, so she went to the Queen. \'Can you play croquet?\' The soldiers were always getting up and down looking for eggs, I know is, it would not.', 'https://via.placeholder.com/640x480.png/005555?text=qui', 'in_progress', 'low', '2025-09-03 05:05:33', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(683, 'Occaecati vel blanditiis molestias qui suscipit.', 'Mouse was bristling all over, and she went slowly after it: \'I never thought about it,\' added the Dormouse, not choosing to notice this last remark. \'Of course not,\' Alice cautiously replied, not.', 'https://via.placeholder.com/640x480.png/00ccff?text=ea', 'completed', 'medium', '2025-09-25 13:08:40', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(684, 'Adipisci voluptatum voluptatem vero aliquam.', 'She said this she looked down at once, with a pair of boots every Christmas.\' And she squeezed herself up closer to Alice\'s side as she spoke; \'either you or your head must be collected at once to.', 'https://via.placeholder.com/640x480.png/0033ff?text=non', 'in_progress', 'medium', '2025-05-20 12:21:50', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(685, 'Omnis veritatis dolor aliquam amet mollitia.', 'Cat\'s head began fading away the moment she quite forgot you didn\'t sign it,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon never learnt it.\' \'Hadn\'t.', 'https://via.placeholder.com/640x480.png/0033ee?text=ex', 'completed', 'medium', '2025-09-29 10:02:54', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(686, 'Nesciunt et quis amet aut in quidem dolorem.', 'Duchess began in a hurry. \'No, I\'ll look first,\' she said, as politely as she could do, lying down with one foot. \'Get up!\' said the Mock Turtle angrily: \'really you are painting those roses?\' Five.', 'https://via.placeholder.com/640x480.png/00ffdd?text=et', 'completed', 'low', '2025-10-25 03:01:23', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(687, 'Tenetur commodi quasi suscipit dolores et eaque.', 'Dinah!\' she said this, she noticed that one of the busy farm-yard--while the lowing of the house opened, and a large crowd collected round it: there was a bright brass plate with the Queen,\' and she.', 'https://via.placeholder.com/640x480.png/008888?text=molestias', 'pending', 'high', '2025-08-20 11:12:43', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(688, 'Consectetur quae quas ducimus quasi cumque.', 'I wonder?\' As she said these words her foot as far as they would go, and making quite a commotion in the middle, nursing a baby; the cook was busily stirring the soup, and seemed to Alice as it.', 'https://via.placeholder.com/640x480.png/00ff66?text=quo', 'completed', 'high', '2025-03-09 20:58:57', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(689, 'Ea eum cupiditate quidem cum repellat.', 'How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the King. \'Nothing whatever,\' said Alice. \'Anything you like,\' said the.', 'https://via.placeholder.com/640x480.png/0077ee?text=accusamus', 'pending', 'medium', '2024-11-27 22:44:15', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(690, 'Itaque praesentium ex et culpa consequatur.', 'I could shut up like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into the roof off.\' After a minute or two the Caterpillar took the thimble, saying \'We beg your.', 'https://via.placeholder.com/640x480.png/00ee88?text=officiis', 'in_progress', 'low', '2025-08-13 12:27:27', 1, 1, 1, 23, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(691, 'Est expedita nemo sed et et optio.', 'Off with his nose, you know?\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think you\'d take a fancy to herself \'This is Bill,\' she gave one sharp kick, and waited to see what I should think.', 'https://via.placeholder.com/640x480.png/00aabb?text=quis', 'in_progress', 'low', '2025-07-19 16:38:14', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(692, 'Autem accusamus error ab neque.', 'Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it so VERY wide, but she thought it must be the right way to.', 'https://via.placeholder.com/640x480.png/000088?text=eum', 'pending', 'medium', '2025-07-12 04:18:52', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(693, 'Accusantium cum aut non magnam velit.', 'For this must be off, and that you have of putting things!\' \'It\'s a pun!\' the King say in a natural way. \'I thought you did,\' said the Queen, in a whisper, half afraid that it was perfectly round.', 'https://via.placeholder.com/640x480.png/0066ff?text=aut', 'in_progress', 'high', '2025-07-20 09:44:57', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(694, 'Quia ut pariatur itaque ut nostrum.', 'Go on!\' \'I\'m a poor man, your Majesty,\' said the Cat, as soon as she spoke--fancy CURTSEYING as you\'re falling through the little dears came jumping merrily along hand in hand, in couples: they were.', 'https://via.placeholder.com/640x480.png/0077ee?text=aspernatur', 'completed', 'medium', '2025-02-17 00:04:37', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(695, 'Voluptas officia modi quo ab quo.', 'Gryphon answered, very nearly getting up and throw us, with the clock. For instance, if you only walk long enough.\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be almost out of its.', 'https://via.placeholder.com/640x480.png/0077aa?text=dicta', 'in_progress', 'medium', '2025-06-15 18:48:30', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(696, 'Quis non sunt alias esse at est vel a.', 'Queen, \'and he shall tell you his history,\' As they walked off together, Alice heard the King repeated angrily, \'or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man,\' the.', 'https://via.placeholder.com/640x480.png/0077aa?text=fugit', 'pending', 'medium', '2025-03-13 02:41:45', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(697, 'Autem praesentium consequuntur quia consequatur reprehenderit minus iure.', 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at them with the other birds tittered audibly. \'What I was thinking I should think it so yet,\' said the Rabbit just.', 'https://via.placeholder.com/640x480.png/0077ff?text=enim', 'completed', 'medium', '2025-08-18 19:21:21', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(698, 'Ut id cupiditate ut.', 'Queen\'s voice in the distance, and she felt a violent shake at the house, and found quite a long sleep you\'ve had!\' \'Oh, I\'ve had such a thing before, but she saw them, they were lying round the.', 'https://via.placeholder.com/640x480.png/005522?text=voluptates', 'in_progress', 'high', '2025-10-24 20:51:49', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(699, 'Excepturi exercitationem ullam impedit cupiditate animi qui vero.', 'The Caterpillar and Alice looked all round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with.', 'https://via.placeholder.com/640x480.png/002244?text=non', 'pending', 'low', '2025-05-30 07:05:42', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(700, 'Reprehenderit inventore dolor neque qui nisi eum est modi.', 'Cat only grinned when it saw mine coming!\' \'How do you know the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to herself \'Now I can guess that,\' she added in a whisper.) \'That would.', 'https://via.placeholder.com/640x480.png/00ffcc?text=debitis', 'in_progress', 'medium', '2025-02-05 23:47:25', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(701, 'At aliquam sint provident blanditiis ex nihil autem omnis.', 'Alice guessed who it was, even before she got to go down the hall. After a time there could be no use denying it. I suppose it doesn\'t matter a bit,\' said the Queen. \'I never heard of such a simple.', 'https://via.placeholder.com/640x480.png/00eedd?text=consectetur', 'in_progress', 'medium', '2025-10-31 20:53:15', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(702, 'Dolor voluptate quia incidunt deserunt.', 'I\'m certain! I must go and get ready to play croquet.\' The Frog-Footman repeated, in the pool as it went, as if it had fallen into a large piece out of the bread-and-butter. Just at this corner--No.', 'https://via.placeholder.com/640x480.png/00ee88?text=autem', 'in_progress', 'low', '2025-07-31 07:17:58', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(703, 'Soluta id molestiae laudantium dolorem quis id totam iusto.', 'CHAPTER VI. Pig and Pepper For a minute or two she stood watching them, and it\'ll sit up and to stand on your shoes and stockings for you now, dears? I\'m sure I don\'t care which happens!\' She ate a.', 'https://via.placeholder.com/640x480.png/007766?text=eaque', 'completed', 'low', '2025-01-16 03:22:01', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(704, 'Id vero ullam aliquid fuga dolore consequatur.', 'Here the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a moment\'s delay would cost them their lives. All the time it all.', 'https://via.placeholder.com/640x480.png/001111?text=qui', 'in_progress', 'low', '2025-06-20 10:18:50', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(705, 'Reprehenderit illo accusantium accusantium.', 'I can reach the key; and if I can listen all day to day.\' This was not a moment to be a person of authority among them, called out, \'Sit down, all of them even when they arrived, with a bound into.', 'https://via.placeholder.com/640x480.png/000055?text=aut', 'pending', 'low', '2025-09-17 17:34:19', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(706, 'Aut dicta quo voluptatem.', 'King, who had spoken first. \'That\'s none of them with one finger pressed upon its forehead (the position in dancing.\' Alice said; but was dreadfully puzzled by the hand, it hurried off, without.', 'https://via.placeholder.com/640x480.png/00ddee?text=officia', 'pending', 'high', '2025-01-06 19:27:24', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(707, 'Quam quis nisi fugiat.', 'It was all very well without--Maybe it\'s always pepper that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish people knew that: then they both.', 'https://via.placeholder.com/640x480.png/001199?text=rerum', 'in_progress', 'medium', '2025-01-16 17:08:13', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(708, 'Nulla non in soluta nihil et perferendis.', 'As soon as the Caterpillar called after it; and as Alice could bear: she got up this morning, but I don\'t take this child away with me,\' thought Alice, \'they\'re sure to make herself useful, and.', 'https://via.placeholder.com/640x480.png/00bb88?text=et', 'completed', 'high', '2025-07-22 18:25:40', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(709, 'Voluptatibus ut et omnis repellendus aut sit.', 'Alice thought she might find another key on it, (\'which certainly was not here before,\' said the King very decidedly, and the words \'DRINK ME\' beautifully printed on it but tea. \'I don\'t know much,\'.', 'https://via.placeholder.com/640x480.png/007700?text=vitae', 'in_progress', 'low', '2025-08-27 21:19:48', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(710, 'Suscipit quisquam architecto aut distinctio provident.', 'King said to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be growing small again.\' She got up and went back to finish his story. CHAPTER IV. The Rabbit started.', 'https://via.placeholder.com/640x480.png/00ee88?text=minus', 'in_progress', 'medium', '2025-07-10 05:52:41', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(711, 'Qui ullam quia officiis sunt qui doloremque laudantium.', 'Footman went on growing, and she said to the other, saying, in a hurry. \'No, I\'ll look first,\' she said, as politely as she couldn\'t answer either question, it didn\'t sound at all anxious to have.', 'https://via.placeholder.com/640x480.png/002299?text=ratione', 'in_progress', 'high', '2025-03-22 00:44:59', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(712, 'Sint amet voluptas aliquam voluptatem.', 'The Rabbit started violently, dropped the white kid gloves while she remembered the number of bathing machines in the sky. Twinkle, twinkle--\"\' Here the other side. The further off from England the.', 'https://via.placeholder.com/640x480.png/009922?text=ut', 'pending', 'low', '2025-01-12 03:25:47', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(713, 'Laboriosam totam dolore sint qui voluptatem pariatur omnis.', 'I\'m sure _I_ shan\'t be able! I shall have some fun now!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day about it!\' and he wasn\'t one?\' Alice asked. \'We called.', 'https://via.placeholder.com/640x480.png/006677?text=illo', 'in_progress', 'low', '2025-01-20 08:53:59', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(714, 'Placeat sequi possimus sed cum.', 'For anything tougher than suet; Yet you balanced an eel on the trumpet, and called out, \'Sit down, all of them hit her in the air, and came flying down upon her: she gave one sharp kick, and waited.', 'https://via.placeholder.com/640x480.png/00ff99?text=quia', 'pending', 'medium', '2025-03-31 04:54:50', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(715, 'Fugiat sit vitae quisquam eligendi autem nesciunt rerum itaque.', 'Mock Turtle: \'nine the next, and so on.\' \'What a curious appearance in the other. \'I beg pardon, your Majesty,\' said Two, in a great hurry. \'You did!\' said the cook. The King and the Queen never.', 'https://via.placeholder.com/640x480.png/002233?text=odio', 'pending', 'medium', '2025-05-28 05:42:34', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(716, 'Dolores omnis consequatur deserunt quo quo molestiae.', 'Alice\'s first thought was that you weren\'t to talk to.\' \'How are you thinking of?\' \'I beg your pardon!\' cried Alice hastily, afraid that she was holding, and she jumped up in such a thing as a.', 'https://via.placeholder.com/640x480.png/00bb77?text=quia', 'pending', 'high', '2025-04-24 23:39:48', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(717, 'Quia adipisci qui consectetur qui.', 'Miss, we\'re doing our best, afore she comes, to--\' At this the whole cause, and condemn you to offer it,\' said Alice, (she had grown in the act of crawling away: besides all this, there was no \'One.', 'https://via.placeholder.com/640x480.png/008800?text=dolor', 'pending', 'medium', '2025-10-14 23:48:31', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(718, 'Molestiae totam dignissimos et illum voluptas aut.', 'Alice, and her face like the look of the singers in the air: it puzzled her very much confused, \'I don\'t think--\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, as she couldn\'t answer.', 'https://via.placeholder.com/640x480.png/004433?text=tenetur', 'pending', 'medium', '2025-10-20 21:13:29', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(719, 'Ea optio animi aut est voluptatem officia.', 'Caterpillar seemed to be no doubt that it led into a tidy little room with a bound into the sky all the time when she caught it, and yet it was perfectly round, she came suddenly upon an open place.', 'https://via.placeholder.com/640x480.png/0022dd?text=rerum', 'completed', 'medium', '2025-08-01 12:59:25', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(720, 'Sed iste quaerat est et labore a qui.', 'Queen of Hearts, who only bowed and smiled in reply. \'Please come back again, and we put a stop to this,\' she said to herself, \'whenever I eat one of the trees as well as if it please your Majesty?\'.', 'https://via.placeholder.com/640x480.png/0055bb?text=sit', 'in_progress', 'low', '2024-12-04 18:27:55', 1, 1, 1, 24, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(721, 'Perspiciatis quidem voluptate fugiat eaque aut quidem.', 'Dodo had paused as if he doesn\'t begin.\' But she waited patiently. \'Once,\' said the King, \'that saves a world of trouble, you know, with oh, such long ringlets, and mine doesn\'t go in at once.\' And.', 'https://via.placeholder.com/640x480.png/00bb00?text=animi', 'completed', 'high', '2025-10-05 05:05:46', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(722, 'Qui molestiae dolor culpa.', 'I don\'t care which happens!\' She ate a little hot tea upon its nose. The Dormouse shook itself, and began staring at the thought that it might not escape again, and the Queen was silent. The.', 'https://via.placeholder.com/640x480.png/00aacc?text=cumque', 'in_progress', 'high', '2025-05-06 05:29:21', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(723, 'Id in error possimus modi molestias voluptatum et.', 'Lizard as she ran. \'How surprised he\'ll be when he finds out who I am! But I\'d better take him his fan and the words did not at all for any of them. However, on the second time round, she came upon.', 'https://via.placeholder.com/640x480.png/00ffaa?text=nihil', 'pending', 'low', '2025-01-30 12:46:25', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(724, 'Eaque impedit dignissimos vel laboriosam quia ut et eveniet.', 'Queen, who was passing at the Lizard as she ran. \'How surprised he\'ll be when he sneezes: He only does it matter to me whether you\'re a little queer, won\'t you?\' \'Not a bit,\' said the Hatter. \'I.', 'https://via.placeholder.com/640x480.png/000066?text=et', 'in_progress', 'low', '2025-01-25 04:27:31', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(725, 'Quia quas blanditiis ea velit vitae et officia.', 'D,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Nothing.', 'https://via.placeholder.com/640x480.png/0000bb?text=quae', 'completed', 'high', '2024-12-17 23:34:50', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(726, 'Voluptatem blanditiis id amet magnam.', 'Turn that Dormouse out of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle yet?\' \'No,\' said the Dodo solemnly presented the thimble, saying \'We beg your.', 'https://via.placeholder.com/640x480.png/0011bb?text=quibusdam', 'in_progress', 'low', '2025-06-26 19:07:01', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(727, 'Ut fugiat nostrum et tenetur.', 'Alice angrily. \'It wasn\'t very civil of you to death.\"\' \'You are old,\' said the Caterpillar took the least idea what Latitude was, or Longitude either, but thought they were mine before. If I or she.', 'https://via.placeholder.com/640x480.png/008833?text=omnis', 'pending', 'high', '2025-02-08 03:21:17', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(728, 'Veniam quidem necessitatibus et.', 'But the insolence of his head. But at any rate, there\'s no meaning in it,\' said the Mock Turtle, \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes people hot-tempered,\' she.', 'https://via.placeholder.com/640x480.png/008811?text=ullam', 'in_progress', 'medium', '2025-03-29 12:26:20', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(729, 'In qui perspiciatis voluptatem molestiae ea nam recusandae.', 'Alice didn\'t think that proved it at all; and I\'m I, and--oh dear, how puzzling it all seemed quite natural); but when the race was over. Alice was thoroughly puzzled. \'Does the boots and shoes!\'.', 'https://via.placeholder.com/640x480.png/004466?text=non', 'completed', 'low', '2025-09-30 16:47:42', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(730, 'Atque sint et earum consequatur ratione repudiandae.', 'Mock Turtle, \'but if you\'ve seen them so often, of course was, how to set about it; and while she was out of breath, and said \'What else have you got in as well,\' the Hatter added as an unusually.', 'https://via.placeholder.com/640x480.png/001144?text=facilis', 'in_progress', 'low', '2025-09-13 08:30:31', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(731, 'Ut exercitationem placeat aliquid illo.', 'Alice, who was sitting on the top of its right paw round, \'lives a March Hare. Alice was not a regular rule: you invented it just now.\' \'It\'s the thing at all. However, \'jury-men\' would have made a.', 'https://via.placeholder.com/640x480.png/00ccff?text=repellat', 'in_progress', 'low', '2025-06-09 02:01:57', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(732, 'Quaerat sit rerum quo iste nihil corporis.', 'This question the Dodo suddenly called out in a shrill, passionate voice. \'Would YOU like cats if you like!\' the Duchess began in a tone of the Lobster Quadrille?\' the Gryphon in an encouraging.', 'https://via.placeholder.com/640x480.png/00ffdd?text=qui', 'in_progress', 'low', '2025-01-28 18:52:05', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(733, 'Expedita nobis voluptas veritatis vel ad.', 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, getting up and bawled out, \"He\'s murdering the time! Off with his tea spoon at the stick, and held it out into the book her sister was.', 'https://via.placeholder.com/640x480.png/000077?text=similique', 'in_progress', 'low', '2024-12-30 23:49:25', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(734, 'Eius commodi laboriosam totam est.', 'Good-bye, feet!\' (for when she heard one of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'all I know I have dropped them, I wonder?\' As she said to.', 'https://via.placeholder.com/640x480.png/00bb77?text=nemo', 'completed', 'high', '2025-11-10 09:48:42', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(735, 'Aut qui dolor aperiam commodi nam tempore nisi.', 'So she stood still where she was quite pleased to have wondered at this, that she was ever to get very tired of being all alone here!\' As she said to the tarts on the floor, as it didn\'t sound at.', 'https://via.placeholder.com/640x480.png/00aacc?text=doloribus', 'pending', 'high', '2025-03-31 17:49:17', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(736, 'Sit saepe voluptatem itaque minus est possimus.', 'Then came a rumbling of little animals and birds waiting outside. The poor little thing sobbed again (or grunted, it was too much overcome to do next, when suddenly a White Rabbit blew three blasts.', 'https://via.placeholder.com/640x480.png/00bb22?text=est', 'pending', 'high', '2025-09-23 14:12:12', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(737, 'Ab occaecati architecto quas vel neque voluptates vel.', 'Majesty!\' the Duchess said after a few minutes she heard a voice of thunder, and people began running about in a whisper, half afraid that she never knew whether it would all come wrong, and she.', 'https://via.placeholder.com/640x480.png/000033?text=error', 'in_progress', 'low', '2025-04-11 04:55:56', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(738, 'In sequi ut aliquid qui omnis doloribus tempore.', 'White Rabbit put on your head-- Do you think, at your age, it is all the jurymen on to himself in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, won\'t.', 'https://via.placeholder.com/640x480.png/005577?text=quas', 'in_progress', 'high', '2025-04-11 20:14:43', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(739, 'Maiores libero sit voluptates tempora odit possimus.', 'Twinkle, twinkle--\"\' Here the other side of the sort,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you balanced an eel on the spot.\' This did not answer, so Alice.', 'https://via.placeholder.com/640x480.png/009944?text=non', 'in_progress', 'low', '2025-01-30 03:05:03', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(740, 'Quod voluptatem ea accusamus maxime assumenda tenetur ut.', 'Pigeon went on, half to herself, as well as I do,\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Cat went on, turning to.', 'https://via.placeholder.com/640x480.png/0000ee?text=fuga', 'pending', 'medium', '2025-09-21 20:41:35', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(741, 'Quis quis veritatis et sed.', 'Gryphon. \'We can do without lobsters, you know. But do cats eat bats, I wonder?\' And here Alice began to cry again. \'You ought to go from here?\' \'That depends a good opportunity for making her.', 'https://via.placeholder.com/640x480.png/00aa88?text=iure', 'in_progress', 'medium', '2024-11-30 09:24:50', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(742, 'Omnis ut quod porro.', 'I\'m NOT a serpent, I tell you!\' But she did not seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got to see if she could remember them, all these.', 'https://via.placeholder.com/640x480.png/004466?text=rem', 'completed', 'medium', '2025-09-12 23:20:54', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(743, 'Ut facere assumenda dolores et et.', 'I beg your pardon,\' said Alice as he came, \'Oh! the Duchess, \'as pigs have to fly; and the words \'DRINK ME\' beautifully printed on it except a tiny golden key, and when she had this fit) An obstacle.', 'https://via.placeholder.com/640x480.png/00aa88?text=laboriosam', 'in_progress', 'high', '2025-01-09 12:50:42', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(744, 'Molestiae temporibus facilis id omnis.', 'And the executioner went off like an honest man.\' There was a long way. So they sat down again into its eyes by this time). \'Don\'t grunt,\' said Alice; not that she looked down at her as she could.', 'https://via.placeholder.com/640x480.png/0055bb?text=odio', 'in_progress', 'low', '2025-02-01 21:29:45', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(745, 'Consequatur dolores velit iusto ut enim et dolor.', 'It was opened by another footman in livery came running out of breath, and said to herself \'That\'s quite enough--I hope I shan\'t go, at any rate it would all wash off in the sand with wooden spades.', 'https://via.placeholder.com/640x480.png/001100?text=distinctio', 'pending', 'low', '2025-03-13 00:06:24', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(746, 'Alias ab autem architecto voluptatem laboriosam.', 'Duck and a long time together.\' \'Which is just the case with MINE,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little pattering of feet in a low curtain she had to sing this.', 'https://via.placeholder.com/640x480.png/0044ee?text=consectetur', 'completed', 'low', '2024-11-22 22:30:48', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(747, 'Dolorem odit repudiandae perferendis asperiores sed impedit.', 'You see the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the King added in a pleased tone. \'Pray don\'t trouble yourself to say to this: so she sat on, with.', 'https://via.placeholder.com/640x480.png/0044ee?text=et', 'completed', 'low', '2025-03-11 00:23:28', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(748, 'Non ipsa ea quo a adipisci ex.', 'Here the Dormouse went on, half to Alice. \'Only a thimble,\' said Alice hastily; \'but I\'m not used to it!\' pleaded poor Alice in a tone of this remark, and thought to herself. \'Of the mushroom,\' said.', 'https://via.placeholder.com/640x480.png/00bb88?text=beatae', 'pending', 'high', '2024-12-28 09:24:40', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(749, 'Debitis quas doloremque nihil ut illum suscipit.', 'The Fish-Footman began by producing from under his arm a great thistle, to keep herself from being run over; and the fall NEVER come to the general conclusion, that wherever you go to law: I will.', 'https://via.placeholder.com/640x480.png/00ccff?text=in', 'completed', 'low', '2025-11-07 22:30:36', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(750, 'Autem eum fuga incidunt consectetur aut harum.', 'Hatter: \'I\'m on the shingle--will you come to the heads of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'Stolen!\' the King said, for about the same side of.', 'https://via.placeholder.com/640x480.png/00eeee?text=veniam', 'completed', 'high', '2025-04-17 19:19:12', 1, 1, 1, 25, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(751, 'In at iure esse autem et nihil doloremque aut.', 'Alice. \'And be quick about it,\' added the Queen. \'You make me giddy.\' And then, turning to the confused clamour of the March Hare: she thought it had entirely disappeared; so the King and the.', 'https://via.placeholder.com/640x480.png/002288?text=dolore', 'pending', 'low', '2025-11-04 09:07:46', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(752, 'Vitae ipsam odio dicta iste.', 'Alice said; \'there\'s a large one, but the cook was busily stirring the soup, and seemed not to make out what it was getting so far off). \'Oh, my poor hands, how is it directed to?\' said one of them.', 'https://via.placeholder.com/640x480.png/0088aa?text=inventore', 'pending', 'medium', '2025-08-12 03:38:09', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(753, 'Qui officia quam temporibus illum harum aut.', 'Bill It was all about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Queen, and Alice looked at Alice, as she had made the whole court was a little different.', 'https://via.placeholder.com/640x480.png/00bbee?text=assumenda', 'in_progress', 'low', '2025-11-01 20:23:37', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(754, 'Harum et perspiciatis unde et corporis.', 'Gryphon, and all would change to dull reality--the grass would be four thousand miles down, I think--\' (she was obliged to have any rules in particular; at least, if there were three little.', 'https://via.placeholder.com/640x480.png/007777?text=a', 'completed', 'low', '2025-02-26 03:04:51', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(755, 'Debitis recusandae non earum id sit sed quo.', 'I shall have some fun now!\' thought Alice. \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' said the Hatter. \'I told you butter wouldn\'t suit the works!\' he added in a.', 'https://via.placeholder.com/640x480.png/003300?text=ut', 'completed', 'high', '2025-11-05 17:38:05', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(756, 'Iure illum esse quibusdam praesentium sint odio.', 'Don\'t let me help to undo it!\' \'I shall do nothing of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\'.', 'https://via.placeholder.com/640x480.png/0055dd?text=sed', 'pending', 'high', '2025-06-21 07:40:52', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(757, 'Quaerat eius totam perspiciatis ut incidunt maiores.', 'King: \'however, it may kiss my hand if it had no idea what you\'re doing!\' cried Alice, jumping up and throw us, with the distant sobs of the tale was something like this:-- \'Fury said to one of the.', 'https://via.placeholder.com/640x480.png/007733?text=consequatur', 'completed', 'low', '2025-01-21 10:28:04', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(758, 'Hic non fuga excepturi aliquid.', 'I to get her head to hide a smile: some of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think I could, if I was, I shouldn\'t like THAT!\' \'Oh, you foolish.', 'https://via.placeholder.com/640x480.png/00eedd?text=libero', 'completed', 'high', '2024-12-11 17:32:43', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(759, 'Sint velit quaerat cupiditate qui.', 'I\'ll never go THERE again!\' said Alice hastily; \'but I\'m not looking for eggs, I know all the rats and--oh dear!\' cried Alice, quite forgetting in the middle, nursing a baby; the cook was busily.', 'https://via.placeholder.com/640x480.png/009966?text=praesentium', 'pending', 'medium', '2025-09-10 18:32:26', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(760, 'Dicta doloremque assumenda voluptas maxime porro.', 'However, she soon made out the verses on his knee, and the little golden key was too slippery; and when she had never done such a noise inside, no one to listen to me! When I used to come upon them.', 'https://via.placeholder.com/640x480.png/00bb66?text=quibusdam', 'pending', 'high', '2025-01-03 01:55:44', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(761, 'Quia dolorum eligendi omnis rerum animi nihil dolorem.', 'Mock Turtle, who looked at Two. Two began in a low, trembling voice. \'There\'s more evidence to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said.', 'https://via.placeholder.com/640x480.png/00ffee?text=repellat', 'completed', 'low', '2025-07-01 03:20:40', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(762, 'Nisi aliquid aspernatur autem reiciendis.', 'Rabbit angrily. \'Here! Come and help me out of a treacle-well--eh, stupid?\' \'But they were lying on the second thing is to find that the Mouse to tell you--all I know all sorts of things--I can\'t.', 'https://via.placeholder.com/640x480.png/0066ff?text=architecto', 'in_progress', 'high', '2024-11-21 06:41:28', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(763, 'Nemo dolor quo magni hic voluptatem aut commodi.', 'Duchess! The Duchess! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she had nibbled some more bread-and-butter--\'.', 'https://via.placeholder.com/640x480.png/00ffbb?text=debitis', 'completed', 'high', '2025-01-07 10:14:08', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(764, 'Velit et cupiditate est dolorum.', 'HAVE their tails fast in their mouths--and they\'re all over with William the Conqueror.\' (For, with all her wonderful Adventures, till she too began dreaming after a few minutes, and she thought.', 'https://via.placeholder.com/640x480.png/007700?text=explicabo', 'in_progress', 'high', '2025-06-13 15:09:25', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(765, 'Repellat quo numquam facilis ea laboriosam accusamus quisquam.', 'Who for such a rule at processions; \'and besides, what would happen next. First, she dreamed of little animals and birds waiting outside. The poor little thing sobbed again (or grunted, it was done.', 'https://via.placeholder.com/640x480.png/00dd66?text=provident', 'in_progress', 'low', '2025-04-09 14:54:01', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(766, 'Velit quia iusto corrupti non rem unde.', 'Conqueror, whose cause was favoured by the officers of the evening, beautiful Soup! Soup of the moment she appeared; but she heard one of the ground.\' So she went round the thistle again; then the.', 'https://via.placeholder.com/640x480.png/00dd99?text=occaecati', 'completed', 'high', '2025-10-08 01:03:17', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(767, 'Atque soluta illo omnis est.', 'However, this bottle was NOT marked \'poison,\' it is you hate--C and D,\' she added aloud. \'Do you know why it\'s called a whiting?\' \'I never was so long that they could not answer without a great.', 'https://via.placeholder.com/640x480.png/00ff33?text=et', 'completed', 'high', '2025-08-10 00:45:30', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(768, 'In tenetur in qui tempore id sequi.', 'English. \'I don\'t quite understand you,\' she said, \'for her hair goes in such confusion that she had asked it aloud; and in THAT direction,\' the Cat said, waving its tail when it\'s angry, and wags.', 'https://via.placeholder.com/640x480.png/005522?text=blanditiis', 'in_progress', 'high', '2025-03-01 10:15:02', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(769, 'Corrupti optio deserunt dolorem dolorem nemo unde nisi.', 'Alice did not like to be sure; but I grow at a king,\' said Alice. \'And be quick about it,\' said Five, in a helpless sort of life! I do it again and again.\' \'You are old, Father William,\' the young.', 'https://via.placeholder.com/640x480.png/0022ee?text=labore', 'in_progress', 'high', '2025-08-22 21:17:56', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(770, 'Animi cum doloribus est eos suscipit.', 'They are waiting on the trumpet, and called out in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' the March Hare said--\' \'I didn\'t!\' the March Hare moved into the air. Even the.', 'https://via.placeholder.com/640x480.png/002222?text=quia', 'completed', 'medium', '2024-12-28 05:14:24', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(771, 'Corrupti aut explicabo accusamus optio velit ut.', 'WOULD always get into the air off all its feet at once, in a deep, hollow tone: \'sit down, both of you, and listen to her. \'I wish I hadn\'t begun my tea--not above a week or so--and what with the.', 'https://via.placeholder.com/640x480.png/003311?text=nemo', 'in_progress', 'medium', '2025-06-03 08:45:27', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(772, 'Sunt voluptatem id dicta aut.', 'Hatter grumbled: \'you shouldn\'t have put it into one of them hit her in a hoarse growl, \'the world would go anywhere without a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they.', 'https://via.placeholder.com/640x480.png/0088ee?text=enim', 'completed', 'low', '2025-08-21 01:55:01', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(773, 'Labore neque animi assumenda dicta quo dolores.', 'Alice caught the baby at her hands, and she set off at once: one old Magpie began wrapping itself up very sulkily and crossed over to the porpoise, \"Keep back, please: we don\'t want to get through.', 'https://via.placeholder.com/640x480.png/00eedd?text=incidunt', 'pending', 'low', '2025-11-03 10:12:13', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(774, 'Voluptas rerum dolores ipsa ea minus.', 'Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' But she waited patiently. \'Once,\' said the Mock Turtle went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m angry. Therefore.', 'https://via.placeholder.com/640x480.png/00ccaa?text=molestiae', 'in_progress', 'high', '2025-05-10 09:20:33', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(775, 'Aut recusandae voluptatem laudantium laboriosam ea et corrupti aut.', 'I grow at a reasonable pace,\' said the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been a RED rose-tree, and we won\'t talk about trouble!\' said the King, \'or I\'ll have you.', 'https://via.placeholder.com/640x480.png/003300?text=esse', 'in_progress', 'low', '2025-09-27 04:17:32', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(776, 'Magni et itaque ut id ducimus eum ex.', 'A secret, kept from all the arches are gone from this morning,\' said Alice to herself, for she was now the right way of settling all difficulties, great or small. \'Off with his nose, and broke to.', 'https://via.placeholder.com/640x480.png/00eeff?text=totam', 'pending', 'high', '2025-06-18 10:51:30', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(777, 'Ex qui illum necessitatibus voluptas.', 'And the Gryphon whispered in a moment to be a book written about me, that there ought! And when I got up in her hands, and was just possible it had no very clear notion how delightful it will be the.', 'https://via.placeholder.com/640x480.png/00ff44?text=rem', 'in_progress', 'medium', '2024-12-14 12:18:33', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(778, 'Suscipit possimus ut natus vel cum architecto.', 'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Of course not,\' said the Hatter. \'It isn\'t directed at all,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know.', 'https://via.placeholder.com/640x480.png/00cc99?text=odit', 'in_progress', 'medium', '2025-01-08 20:42:38', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(779, 'Quam neque quibusdam ut.', 'Alice. \'Nothing WHATEVER?\' persisted the King. The White Rabbit with pink eyes ran close by her. There was a table, with a trumpet in one hand and a sad tale!\' said the Eaglet. \'I don\'t know of any.', 'https://via.placeholder.com/640x480.png/000011?text=quaerat', 'pending', 'medium', '2025-10-18 09:08:02', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(780, 'Ea impedit reiciendis velit alias sunt temporibus.', 'I was, I shouldn\'t want YOURS: I don\'t want to be?\' it asked. \'Oh, I\'m not Ada,\' she said, without even looking round. \'I\'ll fetch the executioner ran wildly up and say \"How doth the little--\"\' and.', 'https://via.placeholder.com/640x480.png/00dd55?text=ut', 'in_progress', 'medium', '2025-05-11 20:17:53', 1, 1, 1, 26, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(781, 'Accusamus nobis provident dolores ut.', 'I to get through the doorway; \'and even if I would talk on such a nice little histories about children who had been for some time after the rest of the song. \'What trial is it?\' The Gryphon lifted.', 'https://via.placeholder.com/640x480.png/006600?text=voluptatibus', 'in_progress', 'high', '2025-06-22 18:22:41', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(782, 'Et aut et distinctio totam.', 'March Hare went on. \'Or would you tell me,\' said Alice, \'but I must sugar my hair.\" As a duck with its legs hanging down, but generally, just as well wait, as she spoke. \'I must be collected at once.', 'https://via.placeholder.com/640x480.png/0077bb?text=ullam', 'in_progress', 'low', '2025-07-14 05:18:07', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(783, 'Ad nulla suscipit fugit quis.', 'I shall think nothing of the Lizard\'s slate-pencil, and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a child,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to the executioner.', 'https://via.placeholder.com/640x480.png/003344?text=eos', 'pending', 'low', '2025-06-16 22:32:17', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(784, 'Provident et minima similique.', 'D,\' she added aloud. \'Do you mean by that?\' said the King. \'Shan\'t,\' said the Gryphon, half to Alice. \'Only a thimble,\' said Alice angrily. \'It wasn\'t very civil of you to death.\"\' \'You are all dry.', 'https://via.placeholder.com/640x480.png/00bbbb?text=qui', 'in_progress', 'high', '2024-11-27 17:18:45', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(785, 'Delectus cupiditate ratione autem earum ipsam.', 'White Rabbit, with a melancholy tone. \'Nobody seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not myself, you see.\' \'I don\'t quite.', 'https://via.placeholder.com/640x480.png/006666?text=distinctio', 'completed', 'medium', '2025-04-29 08:22:04', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(786, 'Consequatur aut dolore enim deleniti impedit ullam porro.', 'Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to herself, and nibbled a little snappishly. \'You\'re enough to look over their.', 'https://via.placeholder.com/640x480.png/003366?text=explicabo', 'in_progress', 'medium', '2025-06-21 18:25:13', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(787, 'Ipsa a corrupti dolor ipsa non.', 'Gryphon, \'she wants for to know what a dear quiet thing,\' Alice went on, half to itself, half to herself, for this curious child was very nearly carried it out into the jury-box, or they would die.', 'https://via.placeholder.com/640x480.png/00cc99?text=quo', 'pending', 'low', '2025-09-02 18:07:25', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(788, 'Est et dolor mollitia cum vel qui.', 'O Mouse!\' (Alice thought this must be a book of rules for shutting people up like a serpent. She had quite forgotten the Duchess by this time). \'Don\'t grunt,\' said Alice; \'that\'s not at all for any.', 'https://via.placeholder.com/640x480.png/006611?text=nulla', 'pending', 'medium', '2024-11-24 00:34:30', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(789, 'Expedita quis eos quia a aut.', 'This question the Dodo replied very readily: \'but that\'s because it stays the same size for going through the neighbouring pool--she could hear the Rabbit came near her, about four feet high. \'I.', 'https://via.placeholder.com/640x480.png/002299?text=et', 'pending', 'high', '2025-08-14 00:00:06', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(790, 'Natus sed quaerat dolore quo enim repudiandae voluptatem ut.', 'Duchess: \'and the moral of that dark hall, and wander about among those beds of bright flowers and the three gardeners instantly jumped up, and there was room for YOU, and no more of it altogether.', 'https://via.placeholder.com/640x480.png/00bb00?text=ut', 'in_progress', 'low', '2024-12-05 05:11:36', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(791, 'Rerum velit maiores enim facere iure.', 'Queen said--\' \'Get to your places!\' shouted the Queen, \'Really, my dear, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is to find any. And yet I.', 'https://via.placeholder.com/640x480.png/00bb99?text=iure', 'pending', 'medium', '2025-02-21 09:00:15', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(792, 'Est omnis maxime quia dolorem nulla sit.', 'DON\'T know,\' said the Cat said, waving its tail when it\'s angry, and wags its tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she tried the roots of.', 'https://via.placeholder.com/640x480.png/006688?text=aut', 'completed', 'low', '2025-04-17 13:47:14', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(793, 'Dolorem dolores laboriosam voluptatibus provident sit.', 'Dormouse say?\' one of the Gryphon, \'you first form into a cucumber-frame, or something of the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never to lose YOUR.', 'https://via.placeholder.com/640x480.png/002222?text=est', 'completed', 'low', '2025-02-18 06:08:28', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(794, 'Labore unde provident corporis magnam consequatur ut.', 'The Duchess took her choice, and was gone across to the garden at once; but, alas for poor Alice! when she caught it, and behind them a railway station.) However, she soon made out that part.\'.', 'https://via.placeholder.com/640x480.png/0022bb?text=cupiditate', 'in_progress', 'high', '2025-01-30 02:22:32', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(795, 'Voluptas temporibus expedita explicabo occaecati voluptatum delectus.', 'Dormouse say?\' one of the table. \'Have some wine,\' the March Hare, \'that \"I like what I used to say.\' \'So he did, so he did,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon.', 'https://via.placeholder.com/640x480.png/0011dd?text=perferendis', 'in_progress', 'low', '2025-06-08 06:46:50', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(796, 'Voluptatem laborum expedita veritatis quisquam ab odio libero.', 'Mock Turtle would be quite as much use in saying anything more till the Pigeon in a solemn tone, only changing the order of the sort!\' said Alice. \'What IS the use of this sort of chance of this, so.', 'https://via.placeholder.com/640x480.png/003377?text=labore', 'completed', 'high', '2025-10-14 08:35:24', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(797, 'Repellat dolore cum doloribus rerum adipisci cum.', 'Dormouse is asleep again,\' said the Dormouse. \'Write that down,\' the King hastily said, and went back to the end: then stop.\' These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the.', 'https://via.placeholder.com/640x480.png/0088cc?text=distinctio', 'in_progress', 'low', '2025-08-24 22:38:38', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(798, 'Non nulla ea est voluptatem.', 'OLD, FATHER WILLIAM,\' to the confused clamour of the court,\" and I shall have to whisper a hint to Time, and round Alice, every now and then keep tight hold of its mouth, and its great eyes half.', 'https://via.placeholder.com/640x480.png/008833?text=minus', 'completed', 'low', '2025-02-26 01:16:53', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(799, 'Maiores qui alias assumenda aut quia.', 'VERY much out of sight. Alice remained looking thoughtfully at the sudden change, but very glad to do so. \'Shall we try another figure of the right-hand bit to try the thing Mock Turtle drew a long.', 'https://via.placeholder.com/640x480.png/009922?text=quibusdam', 'completed', 'high', '2024-12-10 23:04:48', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(800, 'Iure porro aut dicta.', 'Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Lory hastily. \'I thought it over afterwards, it occurred to her very much of it now in sight, hurrying down it. There was a most.', 'https://via.placeholder.com/640x480.png/001155?text=dolore', 'pending', 'high', '2025-02-24 08:18:58', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(801, 'Laborum occaecati excepturi voluptatum quia ut deserunt.', 'March Hare said to herself; \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, very much confused, \'I don\'t know of any one; so, when the Rabbit.', 'https://via.placeholder.com/640x480.png/0033ff?text=vero', 'pending', 'high', '2025-03-24 02:01:57', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(802, 'Sed porro quia impedit nisi aut soluta doloribus.', 'Dodo solemnly presented the thimble, looking as solemn as she could. \'No,\' said the King. \'I can\'t help that,\' said the Mock Turtle replied; \'and then the Rabbit\'s voice along--\'Catch him, you by.', 'https://via.placeholder.com/640x480.png/00ccdd?text=consequatur', 'in_progress', 'low', '2025-02-16 07:15:58', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(803, 'Quam cumque consectetur laudantium ut consequuntur quo expedita.', 'Dodo said, \'EVERYBODY has won, and all must have a trial: For really this morning I\'ve nothing to what I say,\' the Mock Turtle: \'why, if a fish came to the law, And argued each case with MINE,\' said.', 'https://via.placeholder.com/640x480.png/007700?text=beatae', 'pending', 'low', '2025-04-05 14:36:22', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(804, 'Minus accusantium consequatur enim odio consequatur libero fugit.', 'Alice. \'Come on, then!\' roared the Queen, tossing her head down to look through into the earth. At last the Caterpillar took the watch and looked into its nest. Alice crouched down among the distant.', 'https://via.placeholder.com/640x480.png/00bb33?text=qui', 'in_progress', 'low', '2025-03-03 00:52:08', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(805, 'Omnis nam nulla magnam ex.', 'THE KING AND QUEEN OF HEARTS. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a long, low hall, which was lit up by two guinea-pigs, who were giving it something out of a.', 'https://via.placeholder.com/640x480.png/002200?text=ipsam', 'in_progress', 'medium', '2025-04-14 14:49:44', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(806, 'Velit ducimus eius occaecati sit est.', 'King said to one of them.\' In another moment that it seemed quite natural to Alice a little hot tea upon its nose. The Dormouse had closed its eyes again, to see some meaning in it,\' but none of.', 'https://via.placeholder.com/640x480.png/007799?text=ducimus', 'in_progress', 'high', '2025-11-04 13:12:45', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(807, 'Rerum dignissimos autem qui sequi.', 'Alice, quite forgetting in the last concert!\' on which the wretched Hatter trembled so, that Alice had got burnt, and eaten up by a very difficult game indeed. The players all played at once to eat.', 'https://via.placeholder.com/640x480.png/00aadd?text=velit', 'pending', 'low', '2024-11-28 07:57:21', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(808, 'Nulla soluta aut animi qui ratione id labore.', 'EVER happen in a hurry: a large crowd collected round it: there was silence for some while in silence. Alice was not a moment that it might end, you know,\' said the Duchess; \'and most things.', 'https://via.placeholder.com/640x480.png/009911?text=mollitia', 'completed', 'high', '2025-01-19 02:26:10', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(809, 'Et repudiandae rerum voluptatem itaque expedita molestias aliquam.', 'For anything tougher than suet; Yet you turned a corner, \'Oh my ears and the shrill voice of thunder, and people began running when they met in the distance, and she very seldom followed it), and.', 'https://via.placeholder.com/640x480.png/00ccaa?text=repellat', 'in_progress', 'high', '2024-12-12 12:59:27', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(810, 'Quaerat sint aut et laudantium.', 'Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very much,\' said Alice; \'I might as well be at school at.', 'https://via.placeholder.com/640x480.png/00bb99?text=accusantium', 'pending', 'low', '2025-11-09 22:30:03', 1, 1, 1, 27, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(811, 'Itaque non modi est quaerat quia quae nihil.', 'Queen jumped up in spite of all the right size to do so. \'Shall we try another figure of the lefthand bit of the Lobster; I heard him declare, \"You have baked me too brown, I must have been changed.', 'https://via.placeholder.com/640x480.png/0055aa?text=aliquam', 'pending', 'medium', '2025-09-11 23:14:29', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(812, 'Voluptas et sunt adipisci eos qui quia.', 'Hatter and the sound of a water-well,\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps it was indeed: she was now, and she swam nearer to watch them, and then the different.', 'https://via.placeholder.com/640x480.png/0077aa?text=vel', 'in_progress', 'high', '2025-01-02 12:05:44', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(813, 'Non praesentium doloremque aut et unde.', 'Duchess sneezed occasionally; and as for the White Rabbit: it was a dead silence instantly, and Alice looked very anxiously into her eyes; and once again the tiny hands were clasped upon her knee.', 'https://via.placeholder.com/640x480.png/00aa55?text=dignissimos', 'pending', 'medium', '2025-05-15 05:49:49', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(814, 'Iure quis nisi quia non tempore.', 'Duchess said in an offended tone. And she kept fanning herself all the right thing to nurse--and she\'s such a nice little dog near our house I should understand that better,\' Alice said nothing; she.', 'https://via.placeholder.com/640x480.png/00dd00?text=saepe', 'pending', 'medium', '2025-04-02 10:37:45', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(815, 'Nam tempora voluptas soluta quo voluptatem aut voluptate.', 'Alice thought to herself, \'after such a nice soft thing to get into that lovely garden. I think that will be When they take us up and down, and nobody spoke for some time after the candle is like.', 'https://via.placeholder.com/640x480.png/0000ff?text=sequi', 'pending', 'high', '2024-11-19 01:50:01', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(816, 'Rerum aperiam a voluptate saepe.', 'Caterpillar. \'Is that all?\' said the Hatter, it woke up again as quickly as she was now more than three.\' \'Your hair wants cutting,\' said the Caterpillar; and it set to work very diligently to write.', 'https://via.placeholder.com/640x480.png/009955?text=repudiandae', 'completed', 'high', '2025-10-01 05:01:39', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(817, 'Aliquid voluptatum quibusdam dicta quia assumenda ad molestiae temporibus.', 'That your eye was as much as she went nearer to watch them, and the small ones choked and had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the direction it pointed to, without.', 'https://via.placeholder.com/640x480.png/007799?text=provident', 'pending', 'high', '2025-10-24 04:59:45', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(818, 'Minima corporis nam esse voluptas.', 'Luckily for Alice, the little crocodile Improve his shining tail, And pour the waters of the other arm curled round her head. Still she went hunting about, and called out, \'First witness!\' The first.', 'https://via.placeholder.com/640x480.png/00bb66?text=dicta', 'in_progress', 'low', '2024-11-23 15:15:15', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(819, 'Autem voluptatem pariatur voluptas animi voluptatem vel voluptatibus officiis.', 'Hatter went on, \'you throw the--\' \'The lobsters!\' shouted the Queen, tossing her head was so much frightened that she had but to get into her eyes--and still as she spoke--fancy CURTSEYING as you\'re.', 'https://via.placeholder.com/640x480.png/003388?text=et', 'in_progress', 'medium', '2024-11-21 19:15:09', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(820, 'Dolorem sint eius a.', 'I know?\' said Alice, (she had grown so large a house, that she did not dare to laugh; and, as she could. \'The game\'s going on between the executioner, the King, \'that only makes the matter on, What.', 'https://via.placeholder.com/640x480.png/00ddaa?text=ratione', 'pending', 'medium', '2025-08-11 10:05:57', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(821, 'Voluptatum cumque rerum vel facere suscipit et dignissimos.', 'Mouse, getting up and picking the daisies, when suddenly a White Rabbit hurried by--the frightened Mouse splashed his way through the wood. \'It\'s the oldest rule in the other. \'I beg pardon, your.', 'https://via.placeholder.com/640x480.png/002255?text=possimus', 'pending', 'medium', '2025-06-17 10:21:59', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(822, 'At non exercitationem nisi dolor dolores.', 'ARE OLD, FATHER WILLIAM,\"\' said the King said, turning to the cur, \"Such a trial, dear Sir, With no jury or judge, would be offended again. \'Mine is a raven like a Jack-in-the-box, and up the fan.', 'https://via.placeholder.com/640x480.png/002255?text=repellat', 'in_progress', 'high', '2025-07-16 02:14:59', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(823, 'Laudantium et sed ea inventore.', 'Knave. The Knave did so, and were resting in the grass, merely remarking as it can\'t possibly make me giddy.\' And then, turning to the garden with one eye, How the Owl and the soldiers shouted in.', 'https://via.placeholder.com/640x480.png/003399?text=illo', 'pending', 'medium', '2025-11-02 13:35:54', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(824, 'Dolorum minima veritatis rerum laborum.', 'King. (The jury all wrote down all three dates on their faces, so that altogether, for the baby, it was good manners for her to wink with one elbow against the door, she found she had never left off.', 'https://via.placeholder.com/640x480.png/005599?text=numquam', 'pending', 'high', '2025-05-09 05:36:15', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01');
INSERT INTO `tasks` (`id`, `name`, `description`, `image_path`, `status`, `priority`, `due_date`, `assigned_user_id`, `created_by`, `updated_by`, `project_id`, `created_at`, `updated_at`) VALUES
(825, 'Repudiandae reprehenderit id voluptate cumque sequi expedita provident perspiciatis.', 'Dormouse turned out, and, by the way, and then a great many more than three.\' \'Your hair wants cutting,\' said the King. \'Shan\'t,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are.', 'https://via.placeholder.com/640x480.png/007777?text=fugiat', 'in_progress', 'low', '2025-08-21 06:06:27', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(826, 'Similique quia quasi quia quis voluptatem et numquam.', 'Alice cautiously replied, not feeling at all comfortable, and it said nothing. \'When we were little,\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the jurymen.', 'https://via.placeholder.com/640x480.png/006600?text=ut', 'completed', 'medium', '2025-02-08 21:26:02', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(827, 'Voluptatum magnam consequatur nisi quia.', 'Pigeon in a louder tone. \'ARE you to sit down without being invited,\' said the Mock Turtle, suddenly dropping his voice; and Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said.', 'https://via.placeholder.com/640x480.png/003388?text=ex', 'completed', 'medium', '2025-02-09 08:31:43', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(828, 'Molestiae cupiditate recusandae ea accusantium quo.', 'CHAPTER IV. The Rabbit started violently, dropped the white kid gloves while she ran, as well as she came up to the heads of the officers: but the Gryphon replied rather impatiently: \'any shrimp.', 'https://via.placeholder.com/640x480.png/003333?text=et', 'pending', 'low', '2025-03-20 11:21:40', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(829, 'Aut dolores et ipsum ad velit.', 'March Hare was said to the heads of the bottle was a little three-legged table, all made of solid glass; there was room for YOU, and no more of it now in sight, hurrying down it. There was exactly.', 'https://via.placeholder.com/640x480.png/007700?text=alias', 'in_progress', 'low', '2025-05-04 22:44:18', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(830, 'Ea aliquam praesentium iusto magnam ut ducimus vitae.', 'I\'ve had such a dreadful time.\' So Alice got up and rubbed its eyes: then it watched the Queen had ordered. They very soon came to the table for it, while the Mock Turtle drew a long time with the.', 'https://via.placeholder.com/640x480.png/001188?text=impedit', 'in_progress', 'low', '2025-01-13 11:50:57', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(831, 'Aspernatur delectus facere dicta neque dolor alias.', 'Alice, and she thought of herself, \'I wish I could not even get her head on her face like the largest telescope that ever was! Good-bye, feet!\' (for when she was surprised to see what would happen.', 'https://via.placeholder.com/640x480.png/006622?text=recusandae', 'completed', 'medium', '2025-04-26 04:35:30', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(832, 'Consequatur aperiam eum in consectetur dolor doloribus.', 'Queen shouted at the moment, \'My dear! I shall only look up and repeat something now. Tell her to carry it further. So she stood looking at the Hatter, \'you wouldn\'t talk about wasting IT. It\'s.', 'https://via.placeholder.com/640x480.png/0000ff?text=labore', 'in_progress', 'low', '2025-10-20 09:41:15', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(833, 'Qui nisi praesentium maxime.', 'Seven. \'Yes, it IS his business!\' said Five, in a great many teeth, so she began again: \'Ou est ma chatte?\' which was a body to cut it off from: that he had never had to stop and untwist it. After a.', 'https://via.placeholder.com/640x480.png/00cc00?text=et', 'completed', 'high', '2025-02-14 17:06:40', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(834, 'Sunt et quasi alias dolorem amet.', 'Alice thought the poor little juror (it was exactly one a-piece all round. (It was this last remark that had fluttered down from the shock of being upset, and their slates and pencils had been.', 'https://via.placeholder.com/640x480.png/00dd55?text=qui', 'pending', 'high', '2025-10-03 16:47:19', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(835, 'Temporibus animi suscipit quos pariatur temporibus voluptates et.', 'There ought to have changed since her swim in the common way. So she set to work shaking him and punching him in the window, and on it except a tiny little thing!\' said Alice, who had meanwhile been.', 'https://via.placeholder.com/640x480.png/00cc44?text=aut', 'pending', 'medium', '2025-10-31 18:23:08', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(836, 'Illo quaerat quasi molestias optio distinctio quod non quo.', 'There was no longer to be no sort of meaning in it.\' The jury all brightened up at this moment the door of which was lit up by wild beasts and other unpleasant things, all because they WOULD put.', 'https://via.placeholder.com/640x480.png/00cc66?text=sit', 'in_progress', 'medium', '2025-08-03 16:11:08', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(837, 'Occaecati consequuntur esse blanditiis veritatis repellendus sed.', 'Do come back with the time,\' she said, by way of nursing it, (which was to twist it up into a pig,\' Alice quietly said, just as I\'d taken the highest tree in the world she was considering in her.', 'https://via.placeholder.com/640x480.png/009999?text=beatae', 'in_progress', 'low', '2025-10-15 05:57:58', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(838, 'Maxime aliquid rerum sed quam culpa.', 'SOMETHING interesting is sure to happen,\' she said this last word with such sudden violence that Alice had been broken to pieces. \'Please, then,\' said the cook. \'Treacle,\' said a sleepy voice behind.', 'https://via.placeholder.com/640x480.png/00aaff?text=soluta', 'pending', 'low', '2025-02-08 15:29:42', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(839, 'Voluptas neque dolorum ab culpa mollitia eum veritatis.', 'The Queen had ordered. They very soon finished it off. * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that she let the jury--\' \'If any one left.', 'https://via.placeholder.com/640x480.png/00dd33?text=voluptatum', 'completed', 'medium', '2025-04-23 19:50:40', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(840, 'Doloribus perferendis maxime sit dolore totam quo autem.', 'Alice)--\'and perhaps you haven\'t found it so quickly that the Queen ordering off her unfortunate guests to execution--once more the shriek of the jury wrote it down into its eyes were getting so far.', 'https://via.placeholder.com/640x480.png/00dd99?text=nemo', 'in_progress', 'medium', '2025-07-27 00:53:11', 1, 1, 1, 28, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(841, 'Doloremque quibusdam incidunt ut eligendi ducimus sunt aut.', 'Alas! it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the March Hare meekly replied. \'Yes, but some crumbs must have been ill.\' \'So they were,\' said.', 'https://via.placeholder.com/640x480.png/00aaee?text=quia', 'pending', 'medium', '2024-12-03 13:37:53', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(842, 'Autem sunt cumque accusantium eius enim quis eos.', 'The chief difficulty Alice found at first she thought of herself, \'I wish I hadn\'t cried so much!\' said Alice, whose thoughts were still running on the trumpet, and then dipped suddenly down, so.', 'https://via.placeholder.com/640x480.png/0077bb?text=ut', 'completed', 'medium', '2025-03-01 17:46:26', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(843, 'Exercitationem labore nihil alias hic.', 'Hardly knowing what she did, she picked her way through the wood. \'It\'s the first figure,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said the Cat. \'I said.', 'https://via.placeholder.com/640x480.png/003322?text=quis', 'pending', 'low', '2025-03-08 13:38:19', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(844, 'Saepe neque minima harum animi vitae nisi hic.', 'Who for such dainties would not allow without knowing how old it was, even before she made out that part.\' \'Well, at any rate I\'ll never go THERE again!\' said Alice sadly. \'Hand it over a little now.', 'https://via.placeholder.com/640x480.png/007733?text=molestiae', 'completed', 'low', '2025-02-25 15:26:12', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(845, 'Rerum porro incidunt ea officia.', 'Though they were lying round the rosetree; for, you see, because some of YOUR adventures.\' \'I could tell you my adventures--beginning from this side of the e--e--evening, Beautiful, beautiful Soup!\'.', 'https://via.placeholder.com/640x480.png/00ee55?text=beatae', 'completed', 'medium', '2025-04-17 19:55:24', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(846, 'Ipsa voluptatem sit aperiam voluptas repudiandae.', 'It was high time you were INSIDE, you might catch a bat, and that\'s all the while, and fighting for the White Rabbit: it was very hot, she kept on puzzling about it while the Dodo suddenly called.', 'https://via.placeholder.com/640x480.png/00ff77?text=voluptatem', 'pending', 'medium', '2025-09-24 02:29:24', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(847, 'Eum et voluptatem hic.', 'Alice: \'three inches is such a wretched height to be.\' \'It is wrong from beginning to get hold of this ointment--one shilling the box-- Allow me to him: She gave me a pair of gloves and a scroll of.', 'https://via.placeholder.com/640x480.png/007777?text=maxime', 'completed', 'high', '2025-11-14 22:22:59', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(848, 'Dolorem eius vero aut dolorem deleniti voluptatem sed eos.', 'IN the well,\' Alice said to Alice, and she felt that this could not help thinking there MUST be more to come, so she set the little thing sobbed again (or grunted, it was too dark to see some.', 'https://via.placeholder.com/640x480.png/00dd88?text=omnis', 'in_progress', 'high', '2025-04-19 06:02:17', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(849, 'Velit dicta voluptate quia sit pariatur corporis.', 'Alice gave a look askance-- Said he thanked the whiting kindly, but he would deny it too: but the Hatter with a kind of authority over Alice. \'Stand up and bawled out, \"He\'s murdering the time! Off.', 'https://via.placeholder.com/640x480.png/0011dd?text=numquam', 'completed', 'low', '2025-01-25 09:00:50', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(850, 'Alias ducimus sunt non accusamus fugiat non nam.', 'Alice did not feel encouraged to ask his neighbour to tell me who YOU are, first.\' \'Why?\' said the Cat, \'if you don\'t know what you mean,\' the March Hare said to herself, \'because of his shrill.', 'https://via.placeholder.com/640x480.png/0011ee?text=harum', 'completed', 'high', '2025-05-29 16:53:38', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(851, 'Numquam quas laudantium molestiae hic.', 'This time Alice waited a little, half expecting to see it trying in a day is very confusing.\' \'It isn\'t,\' said the King, \'that saves a world of trouble, you know, this sort in her life; it was a.', 'https://via.placeholder.com/640x480.png/00bb00?text=suscipit', 'in_progress', 'low', '2025-10-15 05:24:37', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(852, 'Autem aperiam illo doloremque et aut dolore repudiandae.', 'She did it so VERY tired of sitting by her sister was reading, but it said in a VERY good opportunity for making her escape; so she took courage, and went on: \'But why did they live on?\' said the.', 'https://via.placeholder.com/640x480.png/001188?text=magni', 'completed', 'medium', '2024-11-15 03:21:15', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(853, 'Ea assumenda nihil adipisci ducimus eius hic ipsum.', 'There was a little of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, even before she had this fit) An obstacle that came.', 'https://via.placeholder.com/640x480.png/003366?text=odio', 'completed', 'high', '2025-03-27 13:09:16', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(854, 'Consequatur reiciendis excepturi animi.', 'WOULD not remember the simple and loving heart of her knowledge. \'Just think of anything to say, she simply bowed, and took the hookah into its face was quite surprised to see if he doesn\'t begin.\'.', 'https://via.placeholder.com/640x480.png/003388?text=itaque', 'pending', 'low', '2025-06-27 00:44:40', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(855, 'Odio molestias sit praesentium libero.', 'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with that she tipped over the edge with each hand. \'And now which is which?\' she said to the game.', 'https://via.placeholder.com/640x480.png/006622?text=quia', 'completed', 'medium', '2025-08-26 12:49:42', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(856, 'Ducimus fuga consequatur qui impedit fugit qui laboriosam.', 'Alice the moment she felt sure it would be a LITTLE larger, sir, if you like!\' the Duchess and the shrill voice of the tea--\' \'The twinkling of the song. \'What trial is it?\' \'Why,\' said the Footman.', 'https://via.placeholder.com/640x480.png/005566?text=eum', 'pending', 'low', '2024-12-14 18:14:19', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(857, 'Est maiores molestiae fugiat et est rerum velit.', 'How puzzling all these strange Adventures of hers would, in the sky. Alice went on, taking first one side and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can kick a.', 'https://via.placeholder.com/640x480.png/007788?text=autem', 'completed', 'low', '2025-08-18 09:15:54', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(858, 'Iusto quaerat mollitia dolores ad.', 'They\'re dreadfully fond of beheading people here; the great hall, with the day of the Shark, But, when the tide rises and sharks are around, His voice has a timid voice at her with large eyes full.', 'https://via.placeholder.com/640x480.png/001144?text=aut', 'completed', 'low', '2025-06-06 23:24:46', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(859, 'Quibusdam quia voluptatem sed.', 'Bill It was the first figure!\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to the seaside once in her life; it was talking in a loud, indignant voice, but.', 'https://via.placeholder.com/640x480.png/0077ee?text=tempora', 'pending', 'high', '2025-08-07 07:22:07', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(860, 'Quis a non sint nihil sint.', 'I\'d hardly finished the guinea-pigs!\' thought Alice. \'I\'ve tried every way, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, as soon as she swam nearer to watch them, and he wasn\'t.', 'https://via.placeholder.com/640x480.png/001177?text=et', 'completed', 'high', '2025-07-11 23:29:04', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(861, 'Ut qui harum ut.', 'What WILL become of me?\' Luckily for Alice, the little golden key, and when she had caught the flamingo and brought it back, the fight was over, and she walked up towards it rather timidly, saying.', 'https://via.placeholder.com/640x480.png/005533?text=numquam', 'completed', 'low', '2025-07-13 03:52:22', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(862, 'Iusto quae labore hic voluptas.', 'Queen, and in a bit.\' \'Perhaps it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t matter a bit,\' said the Mouse was speaking, and this was the Duchess\'s knee.', 'https://via.placeholder.com/640x480.png/001100?text=qui', 'completed', 'high', '2025-01-20 19:28:48', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(863, 'Qui et quis commodi minus quia blanditiis ex.', 'Mouse only shook its head to hide a smile: some of the Rabbit\'s voice along--\'Catch him, you by the Queen was close behind it when she had plenty of time as she spoke. (The unfortunate little Bill.', 'https://via.placeholder.com/640x480.png/00aa88?text=vel', 'completed', 'high', '2025-04-23 12:04:57', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(864, 'Optio officiis quisquam consequuntur assumenda quae.', 'It sounded an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' the Footman went on saying to herself as she wandered about in the sea. The master was an immense.', 'https://via.placeholder.com/640x480.png/00ff33?text=recusandae', 'pending', 'medium', '2025-01-01 23:45:37', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(865, 'Exercitationem omnis doloribus sit voluptatem magnam.', 'Alice began to repeat it, but her voice close to the door, and tried to fancy to cats if you hold it too long; and that makes you forget to talk. I can\'t take more.\' \'You mean you can\'t help that,\'.', 'https://via.placeholder.com/640x480.png/0011ee?text=perferendis', 'completed', 'low', '2025-01-19 08:29:59', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(866, 'Optio architecto atque qui saepe.', 'There were doors all round the hall, but they were getting extremely small for a minute or two she stood still where she was peering about anxiously among the people that walk with their heads off?\'.', 'https://via.placeholder.com/640x480.png/00aaaa?text=perspiciatis', 'pending', 'low', '2025-10-05 16:06:54', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(867, 'Fugit ex ipsum impedit quos.', 'Hatter. \'You MUST remember,\' remarked the King, \'or I\'ll have you got in as well,\' the Hatter continued, \'in this way:-- \"Up above the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s.', 'https://via.placeholder.com/640x480.png/00eecc?text=aut', 'in_progress', 'medium', '2025-11-04 06:01:52', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(868, 'Hic iste et autem.', 'However, this bottle does. I do it again and again.\' \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle persisted. \'How COULD.', 'https://via.placeholder.com/640x480.png/00ff66?text=quo', 'completed', 'high', '2025-03-16 12:02:50', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(869, 'Consequatur qui expedita ipsa aut.', 'The Rabbit Sends in a furious passion, and went in. The door led right into a doze; but, on being pinched by the end of trials, \"There was some attempts at applause, which was the first question.', 'https://via.placeholder.com/640x480.png/004455?text=velit', 'completed', 'low', '2025-02-02 12:12:21', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(870, 'Deserunt quae quae aut quisquam et facilis.', 'Alice, \'but I know is, it would be very likely true.) Down, down, down. There was a large canvas bag, which tied up at the top of her hedgehog. The hedgehog was engaged in a whisper.) \'That would be.', 'https://via.placeholder.com/640x480.png/0099dd?text=qui', 'completed', 'low', '2025-04-20 23:56:54', 1, 1, 1, 29, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(871, 'Sit laboriosam quibusdam velit delectus nemo.', 'King said to a snail. \"There\'s a porpoise close behind it was a large rabbit-hole under the window, she suddenly spread out her hand, and made believe to worry it; then Alice put down her flamingo.', 'https://via.placeholder.com/640x480.png/00bb88?text=eum', 'in_progress', 'low', '2025-09-16 04:43:50', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(872, 'Est accusantium vel iste consequatur tenetur sint.', 'Dormouse sulkily remarked, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, \'that they WOULD not remember ever having heard of such a curious appearance in the middle, nursing a baby.', 'https://via.placeholder.com/640x480.png/005588?text=earum', 'completed', 'low', '2025-06-20 18:02:00', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(873, 'Cupiditate dolores quas unde accusamus consequatur.', 'White Rabbit with pink eyes ran close by it, and fortunately was just saying to her chin in salt water. Her first idea was that she began again: \'Ou est ma chatte?\' which was the Rabbit coming to.', 'https://via.placeholder.com/640x480.png/00cc55?text=consequatur', 'completed', 'low', '2024-12-27 17:12:21', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(874, 'Commodi et qui qui.', 'At last the Mock Turtle sighed deeply, and began, in rather a hard word, I will tell you what year it is?\' \'Of course not,\' Alice cautiously replied: \'but I know all the jurymen on to the table, but.', 'https://via.placeholder.com/640x480.png/005577?text=dolorem', 'in_progress', 'medium', '2025-07-06 20:36:02', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(875, 'Eaque aut saepe ut itaque dolores expedita illum.', 'Rabbit came up to them she heard was a good deal frightened at the door of which was the only difficulty was, that if you wouldn\'t mind,\' said Alice: \'she\'s so extremely--\' Just then she walked.', 'https://via.placeholder.com/640x480.png/003322?text=est', 'in_progress', 'low', '2025-03-21 00:28:55', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(876, 'Eum explicabo beatae ex fugit et molestiae.', 'I can reach the key; and if I can say.\' This was such a simple question,\' added the Gryphon, \'that they WOULD put their heads downward! The Antipathies, I think--\' (for, you see, as well look and.', 'https://via.placeholder.com/640x480.png/009977?text=reprehenderit', 'in_progress', 'low', '2025-01-30 00:57:08', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(877, 'Tenetur dolorum iusto accusantium.', 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could not taste theirs, and the bright eager eyes were getting extremely small for a few minutes that she was coming to.', 'https://via.placeholder.com/640x480.png/003311?text=doloribus', 'in_progress', 'low', '2025-01-09 21:14:08', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(878, 'Et inventore suscipit possimus provident.', 'Tillie; and they sat down at her rather inquisitively, and seemed not to make personal remarks,\' Alice said nothing; she had known them all her riper years, the simple rules their friends had taught.', 'https://via.placeholder.com/640x480.png/00aacc?text=eligendi', 'pending', 'medium', '2025-06-16 23:50:45', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(879, 'Eligendi et quibusdam recusandae eaque quas est.', 'Gryphon; and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about it!\' and he poured a little timidly.', 'https://via.placeholder.com/640x480.png/0099aa?text=est', 'completed', 'high', '2025-01-03 22:56:31', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(880, 'Illo et similique totam in modi harum minus.', 'I or she fell past it. \'Well!\' thought Alice to herself, \'after such a thing I know. Silence all round, if you cut your finger VERY deeply with a little startled by seeing the Cheshire Cat sitting.', 'https://via.placeholder.com/640x480.png/00ccdd?text=vero', 'in_progress', 'low', '2025-04-07 01:19:40', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(881, 'Est iusto itaque iure voluptatibus occaecati eos sed.', 'Duck. \'Found IT,\' the Mouse to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the Caterpillar decidedly, and the little thing sobbed again (or.', 'https://via.placeholder.com/640x480.png/00bb00?text=et', 'pending', 'medium', '2025-05-31 22:58:07', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(882, 'Est ipsam excepturi ipsam aliquid.', 'Her chin was pressed so closely against her foot, that there was no one could possibly hear you.\' And certainly there was a general clapping of hands at this: it was a dead silence. \'It\'s a Cheshire.', 'https://via.placeholder.com/640x480.png/00cc00?text=qui', 'completed', 'high', '2025-01-05 16:39:21', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(883, 'Nesciunt similique magnam ad aut molestiae suscipit nihil.', 'The only things in the other. In the very middle of one! There ought to tell them something more. \'You promised to tell me your history, she do.\' \'I\'ll tell it her,\' said the Caterpillar. Alice.', 'https://via.placeholder.com/640x480.png/0088bb?text=eos', 'completed', 'low', '2025-02-14 22:52:05', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(884, 'Sed dolor voluptatem vero perspiciatis voluptatibus delectus voluptatum.', 'Alice was not an encouraging opening for a few minutes to see what was coming. It was all dark overhead; before her was another puzzling question; and as it was the first question, you know.\' Alice.', 'https://via.placeholder.com/640x480.png/00ddff?text=veritatis', 'completed', 'high', '2025-01-15 00:04:30', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(885, 'Quisquam placeat laborum omnis beatae.', 'Come on!\' So they got thrown out to sea as you might catch a bat, and that\'s all I can find it.\' And she thought it had gone. \'Well! I\'ve often seen a good way off, and had no reason to be an old.', 'https://via.placeholder.com/640x480.png/007711?text=repudiandae', 'pending', 'low', '2025-09-04 22:30:45', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(886, 'Officia commodi eum et sunt aut reprehenderit.', 'NO mistake about it: it was neither more nor less than no time to hear his history. I must have been changed for any lesson-books!\' And so it was not even get her head made her draw back in their.', 'https://via.placeholder.com/640x480.png/00ffaa?text=ipsam', 'in_progress', 'low', '2025-06-12 13:08:02', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(887, 'Sunt ad ipsa et ut odit veniam et.', 'For some minutes it seemed quite dull and stupid for life to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Dormouse. \'Write that down,\' the King said, for about the reason of.', 'https://via.placeholder.com/640x480.png/00dd44?text=sed', 'pending', 'medium', '2025-06-09 12:01:46', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(888, 'Ut id quos pariatur ipsum facere maiores ut consectetur.', 'The Dormouse had closed its eyes were getting so far off). \'Oh, my poor little juror (it was Bill, the Lizard) could not make out who I WAS when I sleep\" is the capital of Rome, and Rome--no, THAT\'S.', 'https://via.placeholder.com/640x480.png/00bb00?text=optio', 'pending', 'low', '2024-11-15 21:47:42', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(889, 'Voluptatem necessitatibus earum est.', 'Dodo managed it.) First it marked out a history of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the tail, and ending with the end.', 'https://via.placeholder.com/640x480.png/0055bb?text=veritatis', 'completed', 'high', '2025-09-28 09:45:08', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(890, 'Doloremque magnam et esse ducimus.', 'Hatter were having tea at it: a Dormouse was sitting on a three-legged stool in the wood, \'is to grow up any more questions about it, even if my head would go anywhere without a cat! It\'s the most.', 'https://via.placeholder.com/640x480.png/0077ee?text=officiis', 'completed', 'medium', '2025-08-26 17:27:44', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(891, 'Occaecati dicta tempora qui earum.', 'Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon hastily. \'Go on with the lobsters, out to sea as you can--\' \'Swim after them!\' screamed the Queen. \'You make me larger, it must be.', 'https://via.placeholder.com/640x480.png/00aaff?text=quasi', 'completed', 'high', '2025-01-27 08:35:47', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(892, 'Sed quidem repudiandae quis suscipit omnis.', 'Gryphon. \'Turn a somersault in the air. Even the Duchess said after a few minutes to see the Mock Turtle. \'She can\'t explain it,\' said the King. \'I can\'t help it,\' said the Footman, and began.', 'https://via.placeholder.com/640x480.png/0033bb?text=dolorem', 'in_progress', 'high', '2025-08-29 17:26:52', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(893, 'Accusantium velit ratione sit aut voluptas veritatis.', 'I\'d hardly finished the goose, with the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Alice, \'and if it had fallen into a sort of way, \'Do cats eat bats?\' and.', 'https://via.placeholder.com/640x480.png/00ccbb?text=provident', 'completed', 'medium', '2025-02-05 05:35:22', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(894, 'Qui aliquam aut enim ab aut veritatis.', 'And so she took up the conversation dropped, and the other side will make you a couple?\' \'You are not the smallest notice of her own courage. \'It\'s no use speaking to it,\' she said to the door.', 'https://via.placeholder.com/640x480.png/00dd11?text=atque', 'completed', 'medium', '2025-07-19 00:53:14', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(895, 'Et aliquam quisquam voluptas vel nostrum laboriosam provident.', 'Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen to-day?\' \'I should have croqueted the Queen\'s shrill cries to the door. \'Call the.', 'https://via.placeholder.com/640x480.png/0088ff?text=repudiandae', 'pending', 'medium', '2025-06-04 09:24:08', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(896, 'Illo molestiae at numquam cum explicabo.', 'Hatter, and here the Mock Turtle, and said anxiously to herself, and nibbled a little more conversation with her head!\' Those whom she sentenced were taken into custody by the officers of the Shark.', 'https://via.placeholder.com/640x480.png/0044aa?text=in', 'pending', 'high', '2025-09-14 03:45:53', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(897, 'Atque molestiae laboriosam totam explicabo.', 'Down, down, down. Would the fall was over. Alice was too small, but at the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the King, \'that only makes the matter.', 'https://via.placeholder.com/640x480.png/0055aa?text=ut', 'completed', 'medium', '2025-01-26 03:35:55', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(898, 'Possimus eos soluta qui quis et et.', 'Queen was silent. The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said in a VERY turn-up nose, much more like a snout than a pig, my dear,\' said Alice, as she came upon a time there were.', 'https://via.placeholder.com/640x480.png/0099aa?text=quibusdam', 'in_progress', 'high', '2024-12-14 18:56:46', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(899, 'Error sint at eaque error voluptas.', 'I hate cats and dogs.\' It was the Duchess\'s voice died away, even in the house down!\' said the Mouse, sharply and very nearly carried it off. \'If everybody minded their own business!\' \'Ah, well! It.', 'https://via.placeholder.com/640x480.png/0077aa?text=nihil', 'in_progress', 'high', '2025-05-17 01:50:23', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01'),
(900, 'Error voluptas et aut qui qui quae voluptates.', 'III. A Caucus-Race and a fan! Quick, now!\' And Alice was very deep, or she should push the matter on, What would become of me? They\'re dreadfully fond of beheading people here; the great puzzle!\'.', 'https://via.placeholder.com/640x480.png/00dd00?text=modi', 'in_progress', 'low', '2025-08-31 19:36:57', 1, 1, 1, 30, '2024-11-14 19:40:01', '2024-11-14 19:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Tarikul Islam', 'tarikulwebx@gmail.com', '2024-11-14 19:40:00', '$2y$12$zWPGD6zP7BEuiQ7TemfbG.NRfu044mHHHT7v1wvMXZD8RNioQ/Xwa', 'HuzmBkA32YC7iVAuRUsuoJIVm7LxYgMsuXkiUtDqp9L9eI8wPBgfrVvOLN2J', '2024-11-14 19:40:00', '2026-01-31 21:26:01'),
(3, 'hafis', 'hafisardiyanto19@gmail.com', NULL, '$2y$12$ItJNEpVAzsHqrNgR.61ZKeX5MT3YZEQHH7SDxGhVBihaMA90G.xPW', NULL, '2026-01-31 21:29:00', '2026-01-31 21:32:22');

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_created_by_foreign` (`created_by`),
  ADD KEY `projects_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_assigned_user_id_foreign` (`assigned_user_id`),
  ADD KEY `tasks_created_by_foreign` (`created_by`),
  ADD KEY `tasks_updated_by_foreign` (`updated_by`),
  ADD KEY `tasks_project_id_foreign` (`project_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `projects_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `tasks_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
--
-- Database: `laravel_hris`
--
CREATE DATABASE IF NOT EXISTS `laravel_hris` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel_hris`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `status_absensi` enum('Masuk','Izin','Sakit','Alpha') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Alpha',
  `data_karyawan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` bigint UNSIGNED NOT NULL,
  `mulai_cuti` date NOT NULL,
  `selesai_cuti` date NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_cuti` enum('Disetujui','Pending','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `data_karyawan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id_data_karyawan` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_karyawan` enum('Karyawan Tetap','Karyawan Kontrak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keahlian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekrutmen_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` bigint UNSIGNED NOT NULL,
  `gaji_pokok` int NOT NULL,
  `potongan_ketidakhadiran` int NOT NULL,
  `potongan_lain` int NOT NULL,
  `total_potongan` int NOT NULL,
  `total_tunjangan` int NOT NULL,
  `total_gaji` int NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tahun_bulan` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_gaji` enum('Terbayar','Kredit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Kredit',
  `data_karyawan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komponen_gaji`
--

CREATE TABLE `komponen_gaji` (
  `id_komponen_gaji` bigint UNSIGNED NOT NULL,
  `gaji_pokok` int NOT NULL,
  `data_karyawan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '01_create_users_table', 1),
(2, '02_create_rekrutmen_table', 1),
(3, '03_create_data_karyawan_table', 1),
(4, '04_create_absensi_table', 1),
(5, '05_create_cuti_table', 1),
(6, '06_create_gaji_table', 1),
(7, '07_create_komponen_gaji_table', 1),
(8, '08_create_notifikasi_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` bigint UNSIGNED NOT NULL,
  `pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_notifikasi` enum('Dibaca','Belum Dibaca') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Dibaca',
  `jam` time DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekrutmen`
--

CREATE TABLE `rekrutmen` (
  `id_rekrutmen` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keahlian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `status_rekrutmen` enum('Proses','Diterima','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Administrator','Employee') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `absensi_data_karyawan_id_foreign` (`data_karyawan_id`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`),
  ADD KEY `cuti_data_karyawan_id_foreign` (`data_karyawan_id`);

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id_data_karyawan`),
  ADD KEY `data_karyawan_rekrutmen_id_foreign` (`rekrutmen_id`),
  ADD KEY `data_karyawan_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `gaji_data_karyawan_id_foreign` (`data_karyawan_id`);

--
-- Indexes for table `komponen_gaji`
--
ALTER TABLE `komponen_gaji`
  ADD PRIMARY KEY (`id_komponen_gaji`),
  ADD KEY `komponen_gaji_data_karyawan_id_foreign` (`data_karyawan_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`),
  ADD KEY `notifikasi_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `rekrutmen`
--
ALTER TABLE `rekrutmen`
  ADD PRIMARY KEY (`id_rekrutmen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `id_data_karyawan` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komponen_gaji`
--
ALTER TABLE `komponen_gaji`
  MODIFY `id_komponen_gaji` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id_notifikasi` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekrutmen`
--
ALTER TABLE `rekrutmen`
  MODIFY `id_rekrutmen` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_data_karyawan_id_foreign` FOREIGN KEY (`data_karyawan_id`) REFERENCES `data_karyawan` (`id_data_karyawan`) ON DELETE CASCADE;

--
-- Constraints for table `cuti`
--
ALTER TABLE `cuti`
  ADD CONSTRAINT `cuti_data_karyawan_id_foreign` FOREIGN KEY (`data_karyawan_id`) REFERENCES `data_karyawan` (`id_data_karyawan`) ON DELETE CASCADE;

--
-- Constraints for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD CONSTRAINT `data_karyawan_rekrutmen_id_foreign` FOREIGN KEY (`rekrutmen_id`) REFERENCES `rekrutmen` (`id_rekrutmen`),
  ADD CONSTRAINT `data_karyawan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_data_karyawan_id_foreign` FOREIGN KEY (`data_karyawan_id`) REFERENCES `data_karyawan` (`id_data_karyawan`) ON DELETE CASCADE;

--
-- Constraints for table `komponen_gaji`
--
ALTER TABLE `komponen_gaji`
  ADD CONSTRAINT `komponen_gaji_data_karyawan_id_foreign` FOREIGN KEY (`data_karyawan_id`) REFERENCES `data_karyawan` (`id_data_karyawan`) ON DELETE CASCADE;

--
-- Constraints for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;
--
-- Database: `point_of_sales`
--
CREATE DATABASE IF NOT EXISTS `point_of_sales` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `point_of_sales`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `cashier_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `price` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` bigint NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_13_082620_create_permission_tables', 1),
(5, '2024_06_13_091315_add_avatar_field_to_users_table', 1),
(6, '2024_06_13_125039_create_customers_table', 1),
(7, '2024_06_13_130507_create_categories_table', 1),
(8, '2024_06_13_131744_create_products_table', 1),
(9, '2024_06_13_132800_create_transactions_table', 1),
(10, '2024_06_13_133940_create_transaction_details_table', 1),
(11, '2024_06_13_133948_create_carts_table', 1),
(12, '2024_06_13_133955_create_profits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_price` bigint NOT NULL,
  `sell_price` bigint NOT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `total` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3iqZmArckry9WvBfuWoy4RmDkT4n5Pa29GqI9hH7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHN3aTlXaEhoNlpzeEJHaEt2UlNLajJ0OXJ1UFhycFJZRUFOQnpSRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769918465),
('fCOYkCguCgzlFKRclN1HrTJQqLY8J9qcKYTt0kFJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR25FV2xkYncxSG9FSXNYcXRXOHJDdEpxVlVwRlhZR01qUFYyMHh0OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769918417),
('jjjPRss5oiSzMaFXflTBbkIVy6b9y4UDOaWDopU9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWlJMHB4WE5mVVZESkFvQVNLZEowVWVWcm13dEc5NURCZEtzVEV3MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769010939),
('jM7NgG8JBettclCH2F1WAfp8XAmMWEf8QXlv5gor', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUV6RmFDcHh5c0RRcjVLZWFlNUJjdHFTMTdTdVVnNXB3U0VXVUpkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769010836),
('OugfXs1d2eVYjDJ7xKV3xBTQHfkPJnlXwWdpJzi7', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHJvSEM0VzNYS2RnRUlZWmVTVUFLR0Y5a1k2SE1taDd2YUdxemFXMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1769010841),
('zT00RPbhBm5v5teq8D9kJHJFARQXkWTlD68gQ0eu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGZWUzBSTk1HQXlnY3hINHA0RDYzenFMWUVMd1J0RXFudzg1YlM2byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769918424);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `cashier_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cash` bigint NOT NULL,
  `change` bigint NOT NULL,
  `discount` bigint NOT NULL,
  `grand_total` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `price` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Saya', 'hafisardiyanto19@gmail.com', '2026-01-21 15:07:00', '$2a$12$M6JAZNzl2AIfWxX0gcQJ0ehmnFlTrowEJw2TUR7X8VeWL6E9vo0FS', NULL, '2026-01-21 15:07:00', NULL, NULL),
(2, 'saya', 'hafisfirmansyah372@gmail.com', NULL, '$2y$12$mUEr5.yG3dGmzWfZJcXYWOtE.fLaIkvhVNTn121SMtVjnaCYfNjva', NULL, '2026-01-21 08:13:03', '2026-01-21 08:13:03', NULL);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cashier_id_foreign` (`cashier_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profits_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_cashier_id_foreign` (`cashier_id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_cashier_id_foreign` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `profits`
--
ALTER TABLE `profits`
  ADD CONSTRAINT `profits_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_cashier_id_foreign` FOREIGN KEY (`cashier_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
--
-- Database: `poscafe`
--
CREATE DATABASE IF NOT EXISTS `poscafe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `poscafe`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_at` timestamp NOT NULL,
  `login_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_id`, `role`, `login_at`, `login_date`, `created_at`, `updated_at`) VALUES
(1, 2, 'kasir', '2026-01-19 20:24:14', '2026-01-20', '2026-01-19 20:24:14', '2026-01-19 20:24:14'),
(2, 2, 'kasir', '2026-01-19 20:49:34', '2026-01-20', '2026-01-19 20:49:34', '2026-01-19 20:49:34'),
(3, 2, 'kasir', '2026-01-31 09:16:22', '2026-01-31', '2026-01-31 09:16:22', '2026-01-31 09:16:22'),
(4, 2, 'kasir', '2026-01-31 21:39:34', '2026-02-01', '2026-01-31 21:39:34', '2026-01-31 21:39:34'),
(5, 3, 'kasir', '2026-01-31 21:42:38', '2026-02-01', '2026-01-31 21:42:38', '2026-01-31 21:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int DEFAULT NULL,
  `source` enum('internal','umkm') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `availability` enum('open','closed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` json DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `stock`, `source`, `status`, `availability`, `images`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Makanan Ringan', 20000.00, 5, 'umkm', 'approved', NULL, NULL, 2, '2026-01-19 20:25:44', '2026-01-19 20:25:57'),
(2, 'Kentang Goreng', 12000.00, NULL, 'internal', 'approved', NULL, NULL, 1, '2026-01-19 21:24:55', '2026-01-19 21:24:55'),
(3, 'makanan', 100000.00, 10, 'umkm', 'approved', NULL, NULL, 2, '2026-01-31 21:41:06', '2026-01-31 21:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `menu_price_requests`
--

CREATE TABLE `menu_price_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `new_price` decimal(12,2) NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `requested_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_stocks`
--

CREATE TABLE `menu_stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_01_01_062255_create_products_table', 1),
(6, '2026_01_01_062548_create_transactions_table', 1),
(7, '2026_01_01_062200_create_menus_table', 2),
(8, '2026_01_01_062802_create_transaction_items_table', 3),
(9, '2026_01_01_063338_create_shifts_table', 3),
(10, '2026_01_01_071114_create_menu_price_request_table', 3),
(11, '2026_01_01_091549_create_login_logs_table', 3),
(12, '2026_01_01_124822_create_menus_table', 4),
(13, '2026_01_01_125118_create_menu_stocks_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_by` bigint UNSIGNED NOT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `kasir_id` bigint UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `opening_cash` int NOT NULL,
  `closing_cash` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `kasir_id` bigint UNSIGNED NOT NULL,
  `total_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','manager','kasir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'hafisardiyanto19@gmail.com', '$2a$12$5ca5saEWuwtuS5x8FsBjhuD0gJjYuED0rgzZ8DGxpmFdMqmkyaAn2', 'admin', '2026-01-20 03:21:30', '2026-01-20 03:21:30'),
(2, 'Kasir', 'kasir123@gmail.com', '$2y$10$Ck2GD9AUXLWrhsQrMRj4o.cgATtb.9lzkdCE9i/VbO6HIbHJ9t5/S', 'kasir', '2026-01-20 03:25:14', '2026-01-20 03:25:14'),
(3, 'hafisardiyanto', 'hafisfirmansyah372@gmail.com', '$2y$10$l9cxbvoEgVJNs9fRNtGjXumdcXuZt62uSAypo.LXug.S/O7R5zZWG', 'kasir', '2026-01-31 21:40:19', '2026-01-31 21:40:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_created_by_foreign` (`created_by`);

--
-- Indexes for table `menu_price_requests`
--
ALTER TABLE `menu_price_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_price_requests_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_price_requests_requested_by_foreign` (`requested_by`);

--
-- Indexes for table `menu_stocks`
--
ALTER TABLE `menu_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_stocks_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_stocks_user_id_foreign` (`user_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_kasir_id_foreign` (`kasir_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_kasir_id_foreign` (`kasir_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_items_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_items_menu_id_foreign` (`menu_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_price_requests`
--
ALTER TABLE `menu_price_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_stocks`
--
ALTER TABLE `menu_stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD CONSTRAINT `login_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `menu_price_requests`
--
ALTER TABLE `menu_price_requests`
  ADD CONSTRAINT `menu_price_requests_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_price_requests_requested_by_foreign` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `menu_stocks`
--
ALTER TABLE `menu_stocks`
  ADD CONSTRAINT `menu_stocks_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_stocks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_kasir_id_foreign` FOREIGN KEY (`kasir_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_kasir_id_foreign` FOREIGN KEY (`kasir_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `transaction_items_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
--
-- Database: `poskost`
--
CREATE DATABASE IF NOT EXISTS `poskost` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `poskost`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_01_22_141503_create_rooms_table', 1),
(6, '2026_01_22_141621_create_tenants_table', 1),
(7, '2026_01_22_141719_create_payments_table', 1),
(8, '2026_01_22_150344_create_notifications_table', 2),
(9, '2026_01_23_154436_add_deleted_at_to_tenants_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` bigint UNSIGNED NOT NULL,
  `tagihan_total` int NOT NULL,
  `total_dibayar` int NOT NULL DEFAULT '0',
  `metode` enum('Cash','Transfer') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti_tf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Unpaid','Partial','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `periode_bulan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'owner', 'd182f006dae5131d8d1f4a512c1d20e8fbd3bd37d28b8c799b339c51e06094bd', '[\"*\"]', NULL, NULL, '2026-01-23 06:36:01', '2026-01-23 06:36:01'),
(2, 'App\\Models\\User', 1, 'owner', 'aa29c184bab3627b6f75feb4157cc6c60b9cf5cb808ad051db7b45ebbfcc8895', '[\"*\"]', NULL, NULL, '2026-01-23 06:36:10', '2026-01-23 06:36:10'),
(3, 'App\\Models\\User', 1, 'owner', '148ee2ea99d8e7342d5638318fda17be4767ec016788878377afa15de362fc87', '[\"*\"]', NULL, NULL, '2026-01-23 06:36:14', '2026-01-23 06:36:14'),
(4, 'App\\Models\\User', 1, 'owner', '7f8fedbef0ef6345196e3502046e622f88f7a86d622f90295c0a79f2acd62cfb', '[\"*\"]', NULL, NULL, '2026-01-23 06:36:27', '2026-01-23 06:36:27'),
(5, 'App\\Models\\User', 1, 'owner', '3f6fb34bc8b1de2097f990919a1280b83c2f6d529e049f1691b716f0cb3513db', '[\"*\"]', NULL, NULL, '2026-01-23 06:36:46', '2026-01-23 06:36:46'),
(6, 'App\\Models\\User', 1, 'owner', 'd316d0da1fb49ee039fa13bfc90dbd95076f6f9bcc35972ac54fee1a44493454', '[\"*\"]', NULL, NULL, '2026-01-23 06:36:53', '2026-01-23 06:36:53'),
(7, 'App\\Models\\User', 1, 'owner', 'f9e1fdf18198e5f380fa687042da40d9279526d7701dd9d7f2134dea6f1d4a9f', '[\"*\"]', NULL, NULL, '2026-01-23 06:48:50', '2026-01-23 06:48:50'),
(8, 'App\\Models\\User', 1, 'owner', '2875c49989785624108c31ed7bded10bd35fcc2d9a42a90a595d611214d70c64', '[\"*\"]', '2026-01-23 07:12:09', NULL, '2026-01-23 06:48:54', '2026-01-23 07:12:09'),
(9, 'App\\Models\\User', 1, 'owner', 'f5255268e7aae09224c27578b3c25e9caeb31d56ebcb04677d55c7638858ac08', '[\"*\"]', '2026-01-23 07:13:17', NULL, '2026-01-23 07:13:09', '2026-01-23 07:13:17'),
(10, 'App\\Models\\User', 1, 'owner', '885ba0e2586751287780b9ae5be32378fe20dbad8159e382dc92ef017840caf4', '[\"*\"]', NULL, NULL, '2026-01-23 07:13:14', '2026-01-23 07:13:14'),
(11, 'App\\Models\\User', 1, 'owner', 'fa7e3bd76be85ed1aa03131fdf931406243bf9722bf43b60b4affb3ad8381d84', '[\"*\"]', '2026-01-23 07:48:20', NULL, '2026-01-23 07:14:17', '2026-01-23 07:48:20'),
(12, 'App\\Models\\User', 1, 'owner', 'e626c4a655d6fa231d0385aaac14860914cdb12532014cdfaaea240f59337b80', '[\"*\"]', '2026-01-23 08:32:36', NULL, '2026-01-23 08:32:29', '2026-01-23 08:32:36'),
(13, 'App\\Models\\User', 1, 'owner', '355983bf4554f12452157ce954b85efbfbdf1f1e9119719b652b41373e22a489', '[\"*\"]', '2026-01-23 09:00:10', NULL, '2026-01-23 08:32:32', '2026-01-23 09:00:10'),
(14, 'App\\Models\\User', 1, 'owner', '7e7e862db1f0833325aa1a054fbc6e005168f4431e9a0a0f86d3162b3374103c', '[\"*\"]', '2026-01-25 02:55:06', NULL, '2026-01-25 02:55:03', '2026-01-25 02:55:06'),
(15, 'App\\Models\\User', 1, 'owner', '9e0ca5ff312218a2d28a2d665c3e76e1c71c8237074c3f5ab00c2de9b0001be0', '[\"*\"]', '2026-01-25 06:09:10', NULL, '2026-01-25 02:55:05', '2026-01-25 06:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `no_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_sewa` int NOT NULL,
  `status` enum('Tersedia','Terisi') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tersedia',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_jatuh_tempo` int NOT NULL,
  `tgl_mulai_sewa` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Admin', 'hafisardiyanto19@gmail.com', '2026-01-23 13:23:07', '$2a$12$WqhDMbzUs3bSJWKPnxp3A.H5duk9U8eu7iNdvVQIZGNqiHcbidRLi', '', '2026-01-23 13:23:07', '2026-01-23 13:23:07');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenants_email_unique` (`email`),
  ADD KEY `tenants_room_id_foreign` (`room_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);

--
-- Constraints for table `tenants`
--
ALTER TABLE `tenants`
  ADD CONSTRAINT `tenants_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
