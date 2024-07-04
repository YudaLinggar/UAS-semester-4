-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Jul 2024 pada 10.27
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `book_code`, `title`, `cover`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a001-01', 'Laravel Untuk advance', 'Laravel Untuk advance-1720075718.jpg', 'laravel-untuk-pemula', 'in stock', NULL, '2024-07-03 23:48:38', NULL),
(4, 'a001-02', 'PHP untuk Pemula', NULL, 'php-untuk-pemula', 'in stock', '2024-07-01 22:39:31', '2024-07-01 22:39:31', NULL),
(5, 'a001-03', 'Programer Untuk Pemula', NULL, 'programer-untuk-pemula', 'in stock', '2024-07-01 22:44:25', '2024-07-01 22:44:25', NULL),
(6, 'a001-04', 'Pembelajaran Bahasa Inggris', NULL, 'pembelajaran-bahasa-inggris', 'in stock', '2024-07-01 22:56:56', '2024-07-01 22:56:56', NULL),
(8, 'a001-05', 'Modul Pembelajaran', 'Modul Pembelajaran-1719901461.jpg', 'modul-pembelajaran', 'in stock', '2024-07-01 23:24:21', '2024-07-01 23:24:21', NULL),
(9, 'a001-06', 'Count Of Monte Cristo - Alexandre Dumas', 'Count Of Monte Cristo - Alexandre Dumas-1719942421.jpg', 'count-of-monte-cristo', 'not available', '2024-07-02 02:27:34', '2024-07-02 10:47:31', NULL),
(10, 'a001-07', 'contoh', '', 'contoh', 'in stock', '2024-07-02 11:53:24', '2024-07-03 21:36:04', NULL),
(11, 'a001-08', 'Pemrograman Dasar Untuk Pemula', '', 'pemrograman-dasar-untuk-pemula', 'in stock', '2024-07-03 21:34:23', '2024-07-03 21:34:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 9, NULL, NULL, 2),
(4, 9, NULL, NULL, 8),
(5, 9, NULL, NULL, 14),
(6, 8, NULL, NULL, 9),
(7, 10, NULL, NULL, 2),
(8, 11, NULL, NULL, 15),
(9, 1, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'comic', NULL, NULL, 'comic', NULL),
(2, 'novel', NULL, NULL, 'novel', NULL),
(3, 'fantasy', NULL, '2024-07-01 11:29:30', 'fantasy', NULL),
(4, 'fiction', NULL, NULL, 'fiction', NULL),
(5, 'mystery', NULL, NULL, 'mystery', NULL),
(6, 'horror', NULL, NULL, 'horror', NULL),
(7, 'romance', NULL, NULL, 'romance', NULL),
(8, 'western', NULL, NULL, 'western', NULL),
(9, 'Literatur', '2024-07-01 07:56:01', '2024-07-01 07:56:01', 'Literatur', NULL),
(10, 'Eastern', '2024-07-01 08:16:14', '2024-07-01 08:16:14', 'Eastern', NULL),
(11, 'Olahraga', '2024-07-01 08:20:26', '2024-07-01 10:51:59', 'Olahraga', NULL),
(12, 'Komedi', '2024-07-01 08:21:07', '2024-07-01 10:17:16', 'Komedi', '2024-07-01 10:17:16'),
(14, 'Sejarah Fiksi', '2024-07-01 08:59:19', '2024-07-02 10:29:03', 'sejarah-fiksi', NULL),
(15, 'Pendidikan', '2024-07-03 21:32:38', '2024-07-03 21:32:38', 'pendidikan', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jobs`
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
-- Struktur dari tabel `job_batches`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_28_194026_create_roles_table', 1),
(10, '2024_06_28_200832_add_roles_id_column_to_users_table', 2),
(11, '2024_06_28_203720_create_categories_table', 2),
(12, '2024_06_28_203936_create_books_table', 2),
(13, '2024_06_28_204431_create_book_category_table', 2),
(14, '2024_06_28_205709_create_rent_logs_table', 3),
(15, '2024_07_01_153353_add_slug_column_to_categories_table', 4),
(16, '2024_07_01_154743_change_slug_column_into_nullable_in_categories_table', 5),
(17, '2024_07_01_164244_add_soft_delete_column_to_categories_table', 6),
(18, '2024_07_02_043557_add_slug_cover_column_to_books_table', 7),
(19, '2024_07_02_184709_add_soft_delete_to_books_table', 8),
(20, '2024_07_03_175531_add_slug_to_users_table', 9),
(21, '2024_07_03_201028_add_softdelete_to_users_table', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rent_logs`
--

CREATE TABLE `rent_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_dare` date NOT NULL,
  `artual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'client', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E0FARdocOOoFI5xitXKUG1vUg41wguSNyjGE5vQY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibllCTk1uejAwbVJHb2diM2xGYUdCNVNONVo2RGI4a1JWWDZqN01QcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1720075457),
('i1NRUwcav9Ult7Qs1nBhqCtl87KDGiIPubelQh0x', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUw5SEpqeWpkcnRVRVRHbVNMSkdSanBORzVBd2xOYVM4VlpHS2M3TyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib29rTGlzdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1720075722),
('pGt60yKTLS7YigCL7myUV40xE20XFkBrHMjYUkBK', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUlpWG5nOHNCc0hHa0lYUlJ0ZkFXbm5QUTE5R21VVW1TSHJoQkYzRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib29rcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1720075718);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text NOT NULL DEFAULT 'text',
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `password`, `phone`, `address`, `status`, `created_at`, `updated_at`, `role_id`, `deleted_at`) VALUES
(1, 'admin', 'admin', '$2y$12$XP0E1qNgmwGQ1U4ooUtZsOzSbPQ1usEAPmm36CeQvV4OsBbWIhSQy', NULL, 'Toko Buku', 'active', NULL, '2024-06-29 10:55:31', 1, NULL),
(2, 'user1', 'user1', '$2y$12$ygunsn4eukmv3cbjJPtynurm6JAIqzy71j3.ZPGeMDO8PxyW6WAzC', '0882', 'Blitar', 'active', NULL, '2024-07-03 12:31:42', 2, NULL),
(3, 'user2', 'user2', '$2y$12$wY2wYGFnMVDlalZa5u6XoO5QlNLZje.jtJFh8fWKtmdggXX9qO3Ty', NULL, 'Blitar', 'active', NULL, '2024-07-03 21:38:10', 2, NULL),
(4, 'user3', 'user3', '$2y$12$6I3ojUUHBOiM2EgXqXumKONB1HSsW1pnPL8tzzUAP0oWzr2WHivhu', '123123', 'text', 'active', '2024-06-30 11:07:40', '2024-07-03 13:52:48', 2, '2024-07-03 13:52:48'),
(5, 'user4', 'user4', '$2y$12$mQmcMV/8Cpn6pKyWftXff.RbGG1eqx6JD7J.ZsBjUkfWXCbQYsBVW', '12344', 'text', 'active', '2024-06-30 11:21:43', '2024-07-03 21:45:12', 2, NULL),
(6, 'user5', 'user5', '$2y$12$7H3NK7zkoTqDCbzlCLkKtuQNMXnCcgYtd3sJaPuZEWPTBLPzt2O7W', '0851', 'text', 'inactive', '2024-07-03 11:23:53', '2024-07-03 11:23:53', 2, NULL),
(7, 'user6', 'user6', '$2y$12$zo6zDwBp7n4cRDEHzK33euGFwoU9Xr0LWgmk9QBhuDKKQj3XPjkzq', '08117', 'text', 'inactive', '2024-07-03 21:41:06', '2024-07-03 21:41:06', 2, NULL),
(8, 'yuda', 'yuda', '$2y$12$a1uf.Qmip9ANAsw9BXMKW.LzoUHSv5X9E8pn3lSu9bP7S/tAzERfW', '012345', 'text', 'active', '2024-07-03 23:42:47', '2024-07-03 23:43:41', 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_category_book_id_foreign` (`book_id`),
  ADD KEY `book_category_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_logs_user_id_foreign` (`user_id`),
  ADD KEY `rent_logs_book_id_foreign` (`book_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD CONSTRAINT `rent_logs_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rent_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
