-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2021 a las 03:16:47
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `project`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(136, 40, 'si', '2021-03-12 11:19:32', '2021-03-12 11:19:32'),
(137, 40, 'no', '2021-03-12 11:19:32', '2021-03-12 11:19:32'),
(138, 40, 'otros', '2021-03-12 11:19:32', '2021-03-12 11:19:32'),
(145, 43, '4', '2021-03-17 09:20:40', '2021-03-17 09:20:40'),
(146, 43, '5', '2021-03-17 09:20:41', '2021-03-17 09:20:41'),
(147, 43, '6', '2021-03-17 09:20:41', '2021-03-17 09:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `control` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `survey_id`, `name`, `control`, `created_at`, `updated_at`) VALUES
(1, 3, 'javier', '123', '2021-01-06 06:37:38', '2021-01-06 06:37:38'),
(2, 3, 'javier', '123', '2021-01-06 06:44:46', '2021-01-06 06:44:46'),
(3, 3, 'javier', '123', '2021-01-06 06:49:50', '2021-01-06 06:49:50'),
(4, 5, 'manuel', '1231455', '2021-01-06 10:33:19', '2021-01-06 10:33:19'),
(5, 1, 'hola', '123', '2021-01-06 07:03:38', '2021-01-06 07:03:38'),
(6, 7, 'miguel', '123', '2021-02-07 07:06:58', '2021-02-07 07:06:58'),
(7, 7, 'lopez', '456', '2021-02-07 08:31:48', '2021-02-07 08:31:48'),
(8, 7, 'sanchez', '789', '2021-02-07 08:32:03', '2021-02-07 08:32:03'),
(9, 8, 'sanchez', '123', '2021-02-07 08:37:54', '2021-02-07 08:37:54'),
(10, 8, 'tania', '456', '2021-02-07 08:38:19', '2021-02-07 08:38:19'),
(11, 8, 'arturo', '789', '2021-02-07 08:38:38', '2021-02-07 08:38:38'),
(12, 10, 'sanchez', '12345', '2021-02-07 13:03:39', '2021-02-07 13:03:39'),
(13, 10, 'lopez', '7894', '2021-03-12 13:04:34', '2021-03-12 13:04:34'),
(14, 0, 'prueba', '1456665', '2021-03-12 22:27:12', '2021-03-13 03:46:32'),
(15, 15, 'perez', 'sanchez', '2021-03-13 01:29:25', '2021-03-13 01:29:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_11_27_061657_create_sessions_table', 1),
(9, '2021_01_08_005021_create_surveys_table', 1),
(10, '2021_03_03_031931_create_questions_table', 1),
(11, '2021_03_03_032146_create_answers_table', 1),
(12, '2021_03_03_232829_create_encuestas_table', 2),
(13, '2021_03_03_232935_create_survey_responses_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `survey_id`, `question`, `deleted_at`, `created_at`, `updated_at`) VALUES
(40, 25, 'Tienes problemas economicos?', NULL, '2021-03-12 11:19:32', '2021-03-12 11:19:32'),
(43, 25, '3+1', NULL, '2021-03-17 09:20:40', '2021-03-17 09:20:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vMtHIB19PfCS5oSZNNKDptu8HnDSqlJNbw08TKfd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWjJVTmFsOE5hUzZyOGZjSk9sNEZLVFJKU0hLQlpnMGxUZlJJelpEUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jaGFydCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRobWJWSmtLVDJSalJmdm9wOFhibVZ1U0QvUDJGUGlWRmpaUXdhdVhaaW5kMEVHOFlBY1cyLiI7fQ==', 1615951580);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `surveys`
--

INSERT INTO `surveys` (`id`, `title`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'hola', 'mundo', 2, '2021-03-05 19:59:53', '2021-03-05 19:59:53'),
(25, 'SOCIOECONOMICO', 'PROBLEMAS FINANCIEROS', 1, '2021-03-12 10:41:07', '2021-03-12 10:41:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encuesta_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `survey_responses`
--

INSERT INTO `survey_responses` (`id`, `encuesta_id`, `question_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 13, '2021-03-04 06:49:50', '2021-03-04 06:49:50'),
(2, 3, 6, 16, '2021-03-04 06:49:50', '2021-03-04 06:49:50'),
(3, 3, 7, 19, '2021-03-04 06:49:50', '2021-03-04 06:49:50'),
(4, 4, 8, 22, '2021-03-04 10:33:20', '2021-03-04 10:33:20'),
(5, 4, 9, 26, '2021-03-04 10:33:20', '2021-03-04 10:33:20'),
(6, 4, 10, 28, '2021-03-04 10:33:20', '2021-03-04 10:33:20'),
(7, 5, 3, 8, '2021-03-05 07:03:38', '2021-03-05 07:03:38'),
(8, 5, 4, 11, '2021-03-05 07:03:38', '2021-03-05 07:03:38'),
(9, 6, 12, 34, '2021-03-05 07:06:58', '2021-03-05 07:06:58'),
(10, 7, 12, 36, '2021-03-05 08:31:48', '2021-03-05 08:31:48'),
(11, 8, 12, 36, '2021-03-05 08:32:03', '2021-03-05 08:32:03'),
(12, 9, 13, 37, '2021-03-05 08:37:54', '2021-03-05 08:37:54'),
(13, 9, 14, 42, '2021-03-05 08:37:54', '2021-03-05 08:37:54'),
(14, 9, 15, 43, '2021-03-05 08:37:54', '2021-03-05 08:37:54'),
(15, 10, 13, 38, '2021-03-05 08:38:19', '2021-03-05 08:38:19'),
(16, 10, 14, 41, '2021-03-05 08:38:19', '2021-03-05 08:38:19'),
(17, 10, 15, 44, '2021-03-05 08:38:19', '2021-03-05 08:38:19'),
(18, 11, 13, 38, '2021-03-05 08:38:38', '2021-03-05 08:38:38'),
(19, 11, 14, 41, '2021-03-05 08:38:38', '2021-03-05 08:38:38'),
(20, 11, 15, 45, '2021-03-05 08:38:38', '2021-03-05 08:38:38'),
(21, 12, 30, 88, '2021-03-05 13:03:39', '2021-03-05 13:03:39'),
(22, 12, 31, 92, '2021-03-05 13:03:39', '2021-03-05 13:03:39'),
(23, 12, 32, 94, '2021-03-05 13:03:39', '2021-03-05 13:03:39'),
(24, 13, 30, 90, '2021-03-05 13:04:34', '2021-03-05 13:04:34'),
(25, 13, 31, 93, '2021-03-05 13:04:34', '2021-03-05 13:04:34'),
(26, 13, 32, 96, '2021-03-05 13:04:34', '2021-03-05 13:04:34'),
(27, 15, 36, 106, '2021-03-07 01:29:25', '2021-03-07 01:29:25'),
(28, 15, 38, 130, '2021-03-07 01:29:25', '2021-03-07 01:29:25'),
(29, 16, 36, 106, '2021-03-07 01:34:02', '2021-03-07 01:34:02'),
(30, 16, 38, 130, '2021-03-07 01:34:02', '2021-03-07 01:34:02'),
(31, 17, 36, 106, '2021-03-07 01:34:25', '2021-03-07 01:34:25'),
(32, 17, 38, 130, '2021-03-07 01:34:25', '2021-03-07 01:34:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin\'s Team', 1, '2021-03-03 09:46:22', '2021-03-03 09:46:22'),
(2, 2, 'prueba\'s Team', 1, '2021-03-05 19:59:11', '2021-03-05 19:59:11'),
(3, 3, 'hola\'s Team', 1, '2021-03-06 19:57:59', '2021-03-06 19:57:59'),
(4, 4, 'javier\'s Team', 1, '2021-03-10 06:36:23', '2021-03-10 06:36:23'),
(5, 5, 'jjjjj\'s Team', 1, '2021-03-10 07:18:26', '2021-03-10 07:18:26'),
(6, 6, 'prueba\'s Team', 1, '2021-03-10 10:05:11', '2021-03-10 10:05:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$hmbVJkKT2RjRfvop8XbmVuSD/P2FPiVFjZQwauXZind0EG8YAcW2.', NULL, NULL, NULL, 1, NULL, '2021-03-03 09:46:22', '2021-03-05 19:57:36'),
(2, 'prueba', 'prueba@gmail.com', NULL, '$2y$10$pKodzrWMqMTGV9SUO34T5u5mmR2EA/sIIFO0xZGk9JSXZhko2vGAa', NULL, NULL, NULL, NULL, NULL, '2021-03-05 19:59:11', '2021-03-05 19:59:11'),
(3, 'hola', 'hola@gmail.com', NULL, '$2y$10$PMUt/8T/cGS4FF9U.Pswj.L5jfAYJAQFkox3XDoL./e4xj8kVF/la', NULL, NULL, NULL, NULL, NULL, '2021-03-06 19:57:59', '2021-03-06 19:57:59'),
(4, 'javier enrique', 'javier@gmail.com', NULL, '$2y$10$62bFfIDG9svMgjrGIA8rzObexwWAYirbrBL8S1iCAMAPorjiZR/EC', NULL, NULL, NULL, NULL, NULL, '2021-03-10 06:36:23', '2021-03-10 06:36:23'),
(5, 'jjjjj', 'kkkk@gmail.com', NULL, '$2y$10$XX3NoTn1MaNYymNs2zJ90uCvX7Uec9wCiyLNhRhAnS2e8WkUHOyE2', NULL, NULL, NULL, NULL, NULL, '2021-03-10 07:18:26', '2021-03-10 07:18:26'),
(6, 'prueba', 'prueba2@gmail.com', NULL, '$2y$10$VIRNWL.XbQ0BYsucVB.qye9Q3JWng7WqB/bvKsX2wA60ej4fsLnlu', NULL, NULL, NULL, NULL, NULL, '2021-03-10 10:05:11', '2021-03-10 10:05:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Indices de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_survey_id_index` (`survey_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveys_user_id_index` (`user_id`);

--
-- Indices de la tabla `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
